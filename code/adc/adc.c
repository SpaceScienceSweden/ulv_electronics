#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <stdint.h>
#include <stdio.h>
#include <math.h>
#include <string.h>

#define FCPU      7372800LL
#define FADC      (FCPU/2)
#define BAUD      115200
#define WORDSZ    32    //ADC word size
#define CLK_DIV   2
#define ICLK_DIV  2
#define OSR       5     //0..15 -> 4096 .. 32, see osrtab below
#define GAIN      0     //0..4, actual gain = 2^GAIN
#define TIMER1_N  1     //timer1 prescaler
#define SIGNAL_N  1     //signal frequency compared to tach, numerator
#define SIGNAL_D  1     //signal frequency compared to tach, denominator
#define TACHS_PER_PRINT  100
#define MAX_SAMPLES_PER_TACH 1000

static const uint16_t osrtab[16] = {
  4096, 2048, 1024, 800, 768, 512, 400, 384, 256, 200, 192, 128, 96, 64, 48, 32
};


//#define UBRR  (((FCPU+8LL*BAUD)/(16LL*BAUD))-1) //lo-speed (U2X=0)
#define UBRR  (((FCPU+4LL*BAUD)/(8LL*BAUD))-1) //hi-speed (U2X=1)
#if UBRR > 65535
#error UBRR too high
#endif
#if WORDSZ < 24
#error We want WORDSZ >= 24
#endif
#if CLK_DIV % 2 != 0 || CLK_DIV < 2 || CLK_DIV > 14
#error Illegal CLK_DIV
#endif
#if ICLK_DIV % 2 != 0 || ICLK_DIV < 2 || ICLK_DIV > 14
#error Illegal ICLK_DIV
#endif
#if OSR < 0 || OSR > 15
#error Illegal OSR
#endif
#if GAIN < 0 || GAIN > 4
#error Illegal GAIN
#endif

typedef __uint24 timer_t;

typedef struct {
  int64_t I[3], Q[3];
  uint16_t numsamples;
  uint16_t phi, dphi;   //phase, phase increment
  timer_t lastt, tachstart, tachend, d;
} adc_data_t;

typedef struct {
  uint8_t nchan;
  uint16_t stat_1;
  uint16_t stat_s;
  uint8_t fault;        //set if we read too many samples, if the main loop wasn't able to print fast enough
  uint8_t discard;      //if set, discard data up to the next TACH
  uint8_t curbuffer;    //0 or 1, depending on which I/Q buffers should be used by the DRDY ISR
  uint8_t buffersswapped; //set to 1 when TACH ISR swapped buffers
  //uint16_t numrevs;
  adc_data_t buffer[2]; //double buffering
} adc_state_t;

volatile adc_state_t adc_state[2] = {{0},{0}};

//volatile *because* we can be interrupted
volatile timer_t timer1_base;

//we might want to put this in PROGMEM, we'll see
char sintab[256];

static void setup_sintab() {
  int x;
  for (x = 0; x < 256; x++) {
    //this approximation minimizes harmonic distortion when limited to 8 bits
    //see optimize_sintab.m
    sintab[x] = 124.72 * sin(2*M_PI*x/256);
    //printf("sintab[%i] = %i\r\n", x, sintab[x]);
  }
}

//stuff to make printf() work
//source: http://efundies.com/avr-and-printf/
//we could probable make scanf() work too
int usart_putchar_printf(char var, FILE *stream) {
  while (!(UCSR1A & (1<<UDRE1)));
  UDR1 = var;
  return 0;
}
static FILE mystdout = FDEV_SETUP_STREAM(usart_putchar_printf, NULL, _FDEV_SETUP_WRITE);

volatile char *usart1_str;
static char usart1_buf[256];

/*ISR(USART1_UDRE_vect) {
  PORTF &= ~(1 << 2);
  if (*usart1_str) {
    UDR1 = *usart1_str++;
  } else {
    //disable UDRE1 interrupt
    UCSR1B &= ~(1<<UDRIE1);
  }
  PORTF |= 1 << 2;
}*/

//background printf, format string in PROGMEM
//NOTE: %s is SRAM strings, %S is PROGMEM strings 
static void bprintf_P(const char *format, ...) {
  int n;
  va_list args;

  //wait for last bprintf_P to finish
  while (UCSR1B & (1<<UDRIE1));

  //va_start() extracts the stack position of the ..., so no need for a va_start_P()
  va_start(args, format);
  n = vsnprintf_P(usart1_buf, sizeof(usart1_buf), format, args);
  va_end(args);

  if (n >= sizeof(usart1_buf)-1) {
    strcpy_P(usart1_buf, PSTR("bprintf_P: vsnprintf_P too long!\r\n"));
  }

  //might happen that the resulting string is empty
  if (usart1_buf[0]) {
    //wait for buffer to be available
    while (!(UCSR1A & (1<<UDRE1)));

    //point to next character
    usart1_str = &usart1_buf[1];

    //start the transfer
    UDR1 = usart1_buf[0];

    //enable USART1 interrupt
    UCSR1B |= (1<<UDRIE1);
  }
}


volatile uint8_t busy_cnt = 0;
//we need to be careful to cli() when using these in the main loop
inline void busy() {
  //PF2 low = CPU busy
  if (busy_cnt++) {
    //already busy - strobe PF2
    PORTF |= 1 << 2;
  }
  PORTF &= ~(1 << 2);
}

inline void unbusy() {
  if (--busy_cnt == 0) {
    PORTF |= 1 << 2;
  }
}

static void setup_adc_pins() {
  //use Timer2 output for f_ADC, run it as fast as possible (4 MHz)
  //CTC mode (TOP=OCR2), toggle OC2 on match, no prescaling
  //on the real thing we'll use the main oscillator (8 MHz)
  TCCR2 = (0<<FOC2) | (1<<WGM21) | (0<<WGM20) | (0<<COM21) | (1<<COM20) | (1<<CS20);
  OCR2 = 0; //period = 1
  DDRB |= (1<<7);

  //CS pins = PD6..7
  PORTD |= (1<<7) | (1<<6);
  DDRD |= (1<<7) | (1<<6);

  //falling edge..
  EICRB |= (2<<ISC60) | (2<<ISC70);

  //setup SPI
  //set MOSI and SCK as output, obviously
  //but also set /SS as output or a low input will put us in SPI slave mode
  PORTB |= (1<<0);
  DDRB |= (1<<0) | (1<<1) | (1<<2);

  //enable spi, run at fck/2 (3.7 Mbps)
  SPCR = (1<<SPE) | (1<<MSTR);
  SPSR |= (1<<SPI2X); //double speed (vroom!)
  //CPOL=0, CPHA=1
  SPCR |= 1<<CPHA;
}

//sets up tachometer interrupts (INT4, INT5)
static void setup_tach() {
  //enable INT4 and INT5
  EIMSK |= (1<<4) | (1<<5);
  //rising edge
  EICRB |= (3<<ISC40) | (3<<ISC50);
}

static void setup_uart0() {
  //double speed for higher UBRR resolution
  UCSR0A |= (1<<U2X);
  //enable RX and TX
  UCSR0B = (1<<RXEN) | (1<<TXEN);
  //8 data bits, 2 stop bits
  UCSR0C = (1<<USBS) | (3<<UCSZ00);
  UBRR0L = UBRR;
  UBRR0H = UBRR / 256;
  
  DDRE |= (1<<PE1);
}

static void setup_uart1() {
  //double speed for higher UBRR resolution
  UCSR1A |= (1<<U2X);
  //enable RX and TX
  UCSR1B = (1<<RXEN) | (1<<TXEN);
  //8 data bits, 2 stop bits
  UCSR1C = (1<<USBS) | (3<<UCSZ10);
  UBRR1L = UBRR;
  UBRR1H = UBRR / 256;
  
  DDRD |= (1<<PD3);
}

static void adc_end_frame2() {
  //de-assert /CS
  PORTD |= (1<<6) | (1<<7);
}

static void adc_start_frame2(uint8_t id) {
  //end last frame, if any
  adc_end_frame2();

  //assert relevant /CS pin
  if (id == 0) {
    PORTD &= ~(1 << PD6);
  } else {
    PORTD &= ~(1 << PD7);
  }
}

static uint8_t spi_comm_byte(uint8_t in) {
  //we could write this in asm
  //16 cy delay between setting and reading SPDR should be enough
  SPDR = in;
  while(!(SPSR & (1<<SPIF)));
  return SPDR;
}

static uint32_t spi_comm_word(uint32_t in) {
  uint32_t out = 0;
  uint8_t x;

  for (x = 0; x < WORDSZ; x += 8) {
    out |= ((uint32_t)spi_comm_byte(in >> (WORDSZ-8-x)) << (24-x));
  }

  return out;
}

/**
 * Communicate with ADC. Ignores measurement data
 * id: ADC ID
 * cmd: device command
 * return: device word out
 */
static uint32_t adc_comm(uint8_t id, uint32_t cmd) {
  uint8_t x;
  uint32_t out;

  adc_start_frame2(id);
  out = spi_comm_word(cmd);

  for (x = 0; x < adc_state[id].nchan; x++) {
    //ignore data
    spi_comm_word(0);
  }
  //printf("%08lX -> %08lX\r\n", in, out);
  adc_end_frame2();

  return out;
}

#define RESET   (0x0011L << (WORDSZ-16))
#define STANDBY (0x0022L << (WORDSZ-16))
#define WAKEUP  (0x0033L << (WORDSZ-16))
#define LOCK    (0x0555L << (WORDSZ-16))
#define UNLOCK  (0x0655L << (WORDSZ-16))

//RREG looks like it's the same as RREGS?
#define RREGS(a,n)  ((0x2000L | (a<<8) | (n-1)) << (WORDSZ-16))
#define RREG(a) RREGS(a,1)
//write d to register a
#define WREG(a,d)   ((0x4000L | (a<<8) | d)     << (WORDSZ-16))
#define WREGS(a,n)  ((0x6000L | (a<<8) | (n-1)) << (WORDSZ-16))

//registers
#define ID_MSB    0x00
#define ID_LSB    0x01
#define STAT_1    0x02
#define STAT_P    0x03
#define STAT_N    0x04
#define STAT_S    0x05
#define STAT_M2   0x07
#define A_SYS_CFG 0x0B
#define D_SYS_CFG 0x0C
#define CLK1      0x0D
#define CLK2      0x0E
#define ADC_ENA   0x0F
#define ADC1      0x11
#define ADC2      0x12
#define ADC3      0x13
#define ADC4      0x14

static void wreg(uint8_t id, uint8_t a, uint8_t d) {
  for (;;) {
    uint32_t word;
    adc_comm(id, WREG(a,d));
    word = adc_comm(id, 0);
    if (((word >> (WORDSZ-16)) & 0x1FFF) == ((a<<8) | d)) {
      break;
    } else {
      printf("wreg having problems (a=%02x, d=%02x vs %08lX)\r\n", a, d, word);
    }
  }
}

static uint8_t rreg(uint8_t id, uint8_t a) {
  adc_comm(id, RREG(a));
  return (adc_comm(id, 0) >> (WORDSZ-16)) & 0xFF;
}

static uint8_t popcount(uint8_t a) {
  uint8_t ret = 0;
  while (a) {
    ret += a&1;
    a >>= 1;
  }
  return ret;
}

static void printit() {
  float fdata = FADC;
  int32_t hi, lo;
  fdata /= CLK_DIV;
  fdata /= ICLK_DIV;
  fdata /= osrtab[OSR];

  //can't printf() floats for some reason, so do a bit of hackery
  hi = fdata;
  lo = 100*(fdata - hi);

  printf(" f_mod = %li\r\n", (int32_t)(FADC / CLK_DIV / ICLK_DIV));
  printf("f_data = %li.%02li\r\n", hi, lo);
  printf("gain = %i\r\n", 1<<GAIN);
}

static void disable_adc(uint8_t id) {
  //just disable interrupt for now
  EIMSK &= ~(1<<(6+id));
}

static void config_adc(uint8_t id) {
  uint8_t msb, lsb, gain, x;
  uint32_t word;

  printf("Resetting ADC %i (nchan = %i)\r\n", id, adc_state[id].nchan);
  //reset procedure:
  //- reset
  //- figure out how large frame size we have (since dynamic)
  //- ensure there are no faults
  adc_comm(id, STANDBY);
  //count active channels (some may be active after a reset, and we have to get the frame size right)
  adc_state[id].nchan = popcount(rreg(id, ADC_ENA));

  adc_comm(id, RESET);
  x = 0;
  while (((word = adc_comm(id, 0)) >> (WORDSZ-16)) != 0xFF04 && x < 10) {
    x++;
    printf("Waiting for FF04, got %08lX\r\n", word);
    word >>= (WORDSZ-16);
    if ((word >> 8) == 0x22) {
      if (word & 0x10) {
        printf("STAT_N: %02X\r\n", rreg(id, STAT_N));
        printf("STAT_P: %02X\r\n", rreg(id, STAT_P));
      }
      if (word & 0x20) {
        printf("STAT_S: %02X\r\n", rreg(id, STAT_S));
      }
      if (word == 0x2200 || word == 0x2210) {
        //probably did a soft reset
        //ignore threshold errors
        break;
      }
    }
  }

  //count active channels (some may be active after a reset, and we have to get the frame size right)
  adc_state[id].nchan = popcount(rreg(id, ADC_ENA));
  printf("STAT_S: %02X\r\n", rreg(id, STAT_S));
  printf("STAT_1: %02X\r\n", rreg(id, STAT_1));
  printf("ADC_ENA during startup: %02X\r\n", rreg(id, ADC_ENA));

  //unlock
  adc_comm(id, UNLOCK);
  while ((adc_comm(id, 0) >> (WORDSZ-16)) != 0x0655) {
    printf("Waiting for UNLOCK\r\n");
  }

  printf("STAT_1: %02X\r\n", rreg(id, STAT_1));
  msb = rreg(id, ID_MSB);
  lsb = rreg(id, ID_LSB);

  printf("ID_MSB: %02X, ADS131A%02i\r\n", msb, msb);
  printf("ID_LSB: %02X, rev. %i\r\n", lsb, lsb);
  printf("STAT_1: %02X\r\n", rreg(id, STAT_1));

  //configure analog stuff
  //VNCP disabled
  //high-resolution mode (HRM) on
  //reserved = 1
  //internal VREF used and enabled
  //comp_th = 95%
  wreg(id, A_SYS_CFG, (1<<6) | (1<<5) | (1<<3));

  //digital stuff
  //WDT off
  //CRC off
  // /DONE delay = 12ns
  //hi-Z delay = 12ns
  //dynamic wod size
  wreg(id, D_SYS_CFG, (3<<4) | (3<<2));

  //setup f_mod and f_data
  //CLKSRC = external
  wreg(id, CLK1, CLK_DIV/2);
  wreg(id, CLK2, ((ICLK_DIV/2)<<5) | OSR);

  printit();
  wreg(id, ADC1, GAIN);
  wreg(id, ADC2, GAIN);
  wreg(id, ADC3, GAIN);
  printf("ADCn STAT_1: %02X\r\n", rreg(id, STAT_1));

  printf("STAT_1: %02X\r\n", rreg(id, STAT_1));
  printf("STAT_S: %02X\r\n", rreg(id, STAT_S));
  printf("STAT_M2: %02X\r\n", rreg(id, STAT_M2));
  printf("Final STAT_1: %02X\r\n\r\n", rreg(id, STAT_1));

  //enable channels 0..2
  adc_state[id].nchan = 3;
  wreg(id, ADC_ENA, 0x07);
  //printf("ADC_ENA STAT_1: %02X\r\n", rreg(id, STAT_1));

  adc_comm(id, WAKEUP);
  while ((adc_comm(id, 0) >> (WORDSZ-16)) != 0x0033) {
    printf("Waiting for WAKEUP\r\n");
  }

  adc_comm(id, LOCK);
  //wait for ACK (0x0555)
  while ((adc_comm(id, 0) >> (WORDSZ-16)) != 0x0555) {
    printf("Waiting for LOCK\r\n");
  }

  //enable /DRDYx interrupts on PE6..7
  EIMSK |= (1<<(6+id));
}

inline timer_t currenttime() {
  return timer1_base + TCNT1;
}

void adc_read_channel(uint8_t id) {
  //TACH ISR needs to know at what time this sample was
  //use the volatile version of the buffer so the write actually happens
  uint8_t curbuffer = adc_state[id].curbuffer;

  busy();

  uint8_t x;
  int32_t samples[3] = {0,0,0};
  uint8_t iphase, qphase;

  //cast away volatile
  //this is fine since only this ISR and the main thread access the adc_data_t array
  adc_data_t *data = (adc_data_t*)&adc_state[id].buffer[curbuffer];

  iphase = data->phi >> 8;
  qphase = iphase + 64;
  data->phi += data->dphi;

  adc_start_frame2(id);

  //ignore control word
  spi_comm_byte(0);
  spi_comm_byte(0);
  spi_comm_byte(0);
#if WORDSZ==32
  spi_comm_byte(0);
#endif

  //warm-up
  SPDR = 0;
  while(!(SPSR & (1<<SPIF)));

  //read and demodulate at the same time
  for (x = 0; x < 3; x++) {
    uint8_t b;
    //use 32-bit integers locally here, both because we don't
    //need 64 bits and because adc_state is volatile
    int32_t I, Q;

    //this XOR switches signed to unsigned
    //in other words, we add a DC offset of Vref (2.4 V or so),
    //which gets removed by the demodulation
    //
    // 0x800000 .. 0xFFFFFF 0x000000 0x000001 ... 0x7FFFFF
    //
    //becomes
    //
    // 0x000000 .. 0x7FFFFF 0x800000 0x800001 ... 0xFFFFFF
    //
    //the demodulation done here fits nicely in 32 bits
    //
    // 127*(2^24-1) => +-2130706305

    //we have a byte here because we did the warm-up further up
    b = SPDR ^ 0x80;
    SPDR = 0;
    //uint8_t * int8_t * int32_t
    I = b * sintab[iphase] * (1L<<16);
    Q = b * sintab[qphase] * (1L<<16);
    //above computation is >16 cy  while(!(SPSR & (1<<SPIF)));
    b = SPDR;
    SPDR = 0;
    I += b * sintab[iphase] * (1L<<8);
    Q += b * sintab[qphase] * (1L<<8);
    //above computation is >16 cy  while(!(SPSR & (1<<SPIF)));
    b = SPDR;
#if WORDSZ == 32
    SPDR = 0;
#endif
    I += b * sintab[iphase];
    Q += b * sintab[qphase];
#if WORDSZ == 32
    while(!(SPSR & (1<<SPIF)));
    b = SPDR;
#endif

    //start transfer of first byte of next sample, unless we're done
    if (x < 2) {
      SPDR = 0;
      //computation below is > 16 cy  while(!(SPSR & (1<<SPIF)));
    }

    //add to 64-bit state
    //TODO: we need to deal with 
    data->I[x] += I;
    data->Q[x] += Q;
  }

  adc_end_frame2();

  if (data->numsamples < MAX_SAMPLES_PER_TACH-1) {
    data->numsamples++;
  } else {
    adc_state[id].fault = 1;
  }

  unbusy();
}

static void handle_tach(uint8_t id) {
  timer_t t = currenttime();

  busy();

  //TODO: reevaluate this thing, see if we can use __uint24 here and there
  //the phase calculations are especially suspect
  uint8_t x;
  uint32_t K = 2UL*CLK_DIV*ICLK_DIV*osrtab[OSR];
  uint32_t tachlen, endphase;
  //cast away volatile
  //we can't be interrupted unless we sei()
  adc_state_t *state = (adc_state_t*)&adc_state[id];
  adc_data_t *curdata  = (adc_data_t*)&state->buffer[ state->curbuffer];
  adc_data_t *nextdata = (adc_data_t*)&state->buffer[!state->curbuffer];
  state->curbuffer = !state->curbuffer;
  state->buffersswapped = 1;

  //clear next buffer
  memset((void*)nextdata->I, 0, sizeof(nextdata->I));
  memset((void*)nextdata->Q, 0, sizeof(nextdata->Q));
  nextdata->numsamples = 0;

  curdata->tachend = t;
  nextdata->tachstart = t;
  tachlen = curdata->tachend - curdata->tachstart;

  //1 Hz cutoff
  if (tachlen < FCPU) {
    nextdata->d = tachlen * TIMER1_N * SIGNAL_D;
    nextdata->dphi = (65536UL * SIGNAL_N * K + nextdata->d/2) / nextdata->d;
    //derive the starting phase from where we expect the next sample will be taken
    //this works because currenttime() gives us time in CPU cycles,
    //and K is the time it takes for the ADC to do one conversion, also in CPU cycles
    uint32_t endphase = curdata->tachend - curdata->lastt;
    nextdata->phi = (uint32_t)nextdata->dphi * (K - endphase) / K;
  } else {
    nextdata->d = 1337;
    state->discard = 1;
  }

  unbusy();
}

//ISR for TACHa
ISR(INT4_vect) {
  handle_tach(0);
}

//ISR for TACHb
ISR(INT5_vect) {
  handle_tach(1);
}

//ISR for /DRDYa
ISR(INT6_vect) {
  adc_state[0].buffer[adc_state[0].curbuffer].lastt = currenttime();
  //allow ourselves to be interrupted
  sei();
  adc_read_channel(0);
}

//ISR for /DRDYb
ISR(INT7_vect) {
  adc_state[1].buffer[adc_state[1].curbuffer].lastt = currenttime();
  //allow ourselves to be interrupted
  sei();
  adc_read_channel(1);
}

ISR(TIMER0_OVF_vect) {
  static uint8_t c;
  busy();
  c++;
  //generate in-phase and quadrature signals
  PORTF = (PORTF & ~3) | (((c/2)&1)*3);
  PORTB = (PORTB & ~16) | ((((c/2+(c&1)))&1)*16);
  unbusy();
}

ISR(TIMER1_COMPA_vect) {
  //this ISR is hit in the middle of Timer1's range
  //its purpose is to prevent an overflow from ever occuring
  //the reason is so that we're guaranteed that TOV1 is never set in currenttime()

  uint16_t tcnt1 = TCNT1;
  TCNT1 = 6;  //number of cycles taken by this exchange

  //the code for the above will look something like the following:
/*
     e40:	2c b5       	in	r18, 0x2c	; 44
     e42:	3d b5       	in	r19, 0x2d	; 45
     e44:	86 e0       	ldi	r24, 0x06	; 6
     e46:	90 e0       	ldi	r25, 0x00	; 0
     e48:	9d bd       	out	0x2d, r25	; 45
     e4a:	8c bd       	out	0x2c, r24	; 44
*/
  //which works out to 6 cycles

  timer1_base += tcnt1;
}

ISR(TIMER1_OVF_vect) {
  //this shouldn't happen
  timer1_base += 65536;
  printf("TIMER1_OVF_vect was hit :(\r\n");
}

static void setup_timer1() {
  //normal port operation, normal counter mode
  TCCR1A = 0;
#if TIMER1_N == 1
  //no noise canceller, no input capture, normal mode, prescaler=1
  TCCR1B = 1;
#else
#error Only prescaler=1 supported for timer1 at the moment
#endif

  //trigger TIMER1_COMPA_vect in the middle of the range
  OCR1A = 0x8000;

  //pre-emptively clear TOV1
  TCNT1 = 0;
  TIFR &= ~(1<<TOV1);

  //enable Timer1 overflow and COMPA match interrupts
  TIMSK |= (1<<TOIE1) | (1<<OCIE1A);
}

static void setup_fake_tach_signals() {
  //use Timer0. normal mode is good enough (TOP = 0xFF)
  //prescaler = 1024
  TCCR0 = 5;
  //OCR0 = 0xFF;
  TIMSK |= 1<<TOIE0;

  //use 32.768 kHz crystal
  //ASSR |= (1<<AS0);
  

  //tachometer is faked on PF0 and PF1
  DDRF |= 3;

  //PB4 is free for the quadrature part
  DDRB |= 1<<4;
}

static void cls() {
  //clear screen. maybe there's a better way?
  int y;
  for (y = 0; y < 100; y++) {
    printf("\033[%i;0H", y);
    printf("                                                                      ");
  }
}

//avr-libc doesn't seem able to handle 64-bit integers
/*static void print_int64_t(int64_t in) {
  if (in == (1LL << 63)) {
    printf("-9223372036854775808");
  } else {
    uint64_t tens = 1000000000000000000ULL;
    uint64_t u;
    uint8_t doit = 0;

    if (in < 0) {
      u = -in;
      printf("-");
    } else {
      u = in;
    }

    for (; tens; tens /= 10) {
      int p = 0;
      if (u >= tens) {
        doit = 1;
        p = u/tens;
        u = u%tens;
      }
      if (doit) {
        printf("%1i", p);
      }
    }
    //printf("%i")
  }
}*/

//http://stackoverflow.com/questions/960389/how-can-i-visualise-the-memory-sram-usage-of-an-avr-program
static int freeRam () {
  extern int __heap_start, *__brkval; 
  int v; 
  return (int) &v - (__brkval == 0 ? (int) &__heap_start : (int) __brkval); 
}


int main(void)
{
  cli();

  //setup stdout for printf()
  stdout = &mystdout;

  setup_uart0();
  setup_uart1();
  setup_tach();

  if (1) {
    //enable analog power (PF0 connected to EN_APWR)
    DDRF |= 1;
    PORTF |= 1;

    //put RS-485 bus in TX mode (not yet connected)
    //this could also be done in the UDRE ISR
    DDRF |= 2;
    PORTF |= 2;
  } else {
    setup_fake_tach_signals();
  }

  cls();

  printf("\033[0;0HHello, world!\r\n");
  printf("%i B SRAM free\r\n", freeRam());
  memset((void*)adc_state, 0, sizeof(adc_state));
  setup_adc_pins(); disable_adc(0); disable_adc(1);
  config_adc(0);
  //config_adc(1);

  //CPU usage monitor on PF2
  DDRF |= 1 << 2;

  //ISP disabler on PF3
  //turns out this isn't really needed, since the 4016 on the ISP signals
  //is enough to provide decent termination
  //still probably a good idea to keep around
  DDRF  |=   1<<3;
  PORTF &= ~(1<<3);

  setup_sintab();
  adc_state[0].discard = 1;
  adc_state[1].discard = 1;

  //Timer1 must be set up just before enabling interrupts,
  //else an overflow might occur while we're setting up
  setup_timer1();
  sei();

  bprintf_P(PSTR("ADC state size: %i\r\n"), sizeof(adc_state));
  bprintf_P(PSTR("Done setting up\r\n"));

  for (;;) {
    uint16_t outsamples = 0, numrevs = 0, last_phi = 0, last_dphi = 0;
    uint32_t last_d = 0, last_tachstart = 0, last_tachend = 0;
    int32_t last_endphase = 0;
    uint32_t last_lastt = 0;
    int64_t I[3] = {0}, Q[3] = {0};

    while (numrevs < TACHS_PER_PRINT) {
      cli();
      uint8_t curbuffer  = adc_state[0].curbuffer;
      uint8_t buffersswapped = adc_state[0].buffersswapped;
      sei();

      if (adc_state[0].fault) {
        printf("Fault :(\r\n");
        adc_state[0].fault = 0;
      }
      if (buffersswapped) {
        adc_state[0].buffersswapped = 0;

        //old buffer
        adc_data_t *data = (adc_data_t*)&adc_state[0].buffer[!curbuffer];
        uint8_t x;

        if (adc_state[0].discard) {
          adc_state[0].discard = 0;
          continue;
        }

        outsamples += data->numsamples;
        numrevs++;
        last_d          = data->d;
        last_tachstart  = data->tachstart;
        last_tachend    = data->tachend;
        last_endphase   = data->tachend - data->lastt;
        last_lastt      = data->lastt;
        last_phi        = data->phi;
        last_dphi       = data->dphi;

        for (x = 0; x < 3; x++) {
          I[x] += data->I[x];
          Q[x] += data->Q[x];
        }
      }
    }

    /*cli();
    uint32_t t = currenttime();
    sei();*/
    /*printf("%u, %7li : %7li, %7lu, %5u, %5u", outsamples, last_lastt-last_tachstart, last_tachend-last_lastt, last_d, last_phi, last_dphi);
    uint8_t x;
    for (x = 0; x < 3; x++) {
      printf(",% 12.0f,% 12.0f", (float)I[x]/outsamples, (float)Q[x]/outsamples);
    }
    printf("\r\n");*/

    bprintf_P(PSTR("%u, %7li : %7li, %7lu, %5u, %5u,% 12.0f,% 12.0f,% 12.0f,% 12.0f,% 12.0f,% 12.0f\r\n"),
      outsamples, last_lastt-last_tachstart, last_tachend-last_lastt, last_d, last_phi, last_dphi,
      (float)I[0]/outsamples, (float)Q[0]/outsamples,
      (float)I[1]/outsamples, (float)Q[1]/outsamples,
      (float)I[2]/outsamples, (float)Q[2]/outsamples
    );

    //TODO: there should be a flag in adc_state that we finished dealing the the results
  }

  return 0;
}


