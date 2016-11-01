#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdint.h>
#include <stdio.h>

#define FCPU    7372800LL
#define BAUD    115200
#define WORDSZ  32    //ADC word size

//#define UBRR  (((FCPU+8LL*BAUD)/(16LL*BAUD))-1) //lo-speed (U2X=0)
#define UBRR  (((FCPU+4LL*BAUD)/(8LL*BAUD))-1) //hi-speed (U2X=1)
#if UBRR > 65535
#error UBRR too high
#endif
#if WORDSZ < 24
#error We want WORDSZ >= 24
#endif

static volatile struct {
  uint8_t nchan;
  uint8_t have_sample;
  uint8_t cnt;          //counter
  uint16_t stat_1;
  uint16_t stat_s;
  int32_t lastsample[3];
} adc_state[2];

//stuff to make printf() work
//source: http://efundies.com/avr-and-printf/
//we could probable make scanf() work too
int usart_putchar_printf(char var, FILE *stream) {
  //print to both UARTs
  while (!(UCSR0A & (1<<UDRE0)));
  UDR0 = var;
  while (!(UCSR1A & (1<<UDRE1)));
  UDR1 = var;
  return 0;
}
static FILE mystdout = FDEV_SETUP_STREAM(usart_putchar_printf, NULL, _FDEV_SETUP_WRITE);

static void setup_adc() {
  //use Timer2 output for f_ADC, run it as fast as possible (4 MHz)
  //CTC mode (TOP=OCR2), toggle OC2 on match, no prescaling
  //on the real thing we'll use the main oscillator (8 MHz)
  TCCR2 = (0<<FOC2) | (1<<WGM21) | (0<<WGM20) | (0<<COM21) | (1<<COM20) | (1<<CS20);
  OCR2 = 0; //period = 1
  DDRB |= (1<<7);

  //CS pins = PD6..7
  PORTD |= (1<<7) | (1<<6);
  DDRD |= (1<<7) | (1<<6);

  //enable /DRDYx interrupts on PE6..7
  EIMSK |= (1<<6) | (1<<7);
  //falling edge..
  EICRB |= (2<<ISC60) | (2<<ISC70);

  //setup SPI
  //set MOSI and SCK as output, obviously
  //but also set /SS as output or a low input will put us in SPI slave mode
  PORTB |= (1<<0);
  DDRB |= (1<<0) | (1<<1) | (1<<2);

  /* Enable SPI, Master, set clock rate fck/16 */
  SPCR = (1<<SPE)|(1<<MSTR)|(1<<SPR0);
  //CPOL=0, CPHA=1
  SPCR |= 1<<CPHA;
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

static uint32_t spi_comm_word(uint32_t in) {
  uint32_t out = 0;
  uint8_t x;

  for (x = 0; x < WORDSZ; x += 8) {
    SPDR = (in >> (WORDSZ-8-x));
    while(!(SPSR & (1<<SPIF))) {
    }
    out |= ((uint32_t)SPDR << (24-x));
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

inline uint32_t adc_comm_samples(uint8_t id, uint32_t cmd, volatile int32_t *samples_out) {
  uint8_t x;
  uint32_t out;

  adc_start_frame2(id);
  out = spi_comm_word(cmd);

  for (x = 0; x < adc_state[id].nchan; x++) {
    samples_out[x] = ((int32_t)spi_comm_word(0)) / 256;
  }

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

static void config_adc(uint8_t id) {
  uint8_t msb, lsb, gain;
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
  while (((word = adc_comm(id, 0)) >> (WORDSZ-16)) != 0xFF04) {
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

  //CLKSRC = external
  //CLK_DIV = 14
  wreg(id, CLK1, (7<<1));

  //f_mod = f_iclk/2 (1.8432 MHz), f_data = f_mod/512 (3600 Hz)
  //wreg(id, CLK2, (1<<5) | 3);
  //printf("CLK2 STAT_1: %02X\r\n", rreg(id, STAT_1));
  //DIV=14, OSR=4096
  wreg(id, CLK2, (7<<5));

  gain = 4;
  printf("gain = %i\r\n", 1<<gain);
  wreg(id, ADC1, gain);
  wreg(id, ADC2, gain);
  wreg(id, ADC3, gain);
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
}

inline void adc_read_channel(int id) {
  adc_state[id].cnt++;
  adc_state[id].stat_1 = adc_comm_samples(id, RREG(STAT_1), adc_state[id].lastsample);
}

//ISR for /DRDYa
ISR(INT6_vect) {
  cli();
  adc_read_channel(0);
  sei();
  printf("INT6\r\n");
}

//ISR for /DRDYb
ISR(INT7_vect) {
  cli();
  adc_read_channel(1);
  sei();
  printf("INT7\r\n");
}

static void cls() {
  //clear screen. maybe there's a better way?
  int y;
  for (y = 0; y < 100; y++) {
    printf("\033[%i;0H", y);
    printf("                                                                      ");
  }
}

int main(void)
{
  unsigned int x;
  uint8_t lastcnt = 0;

  //setup stdout for printf()
  stdout = &mystdout;

  setup_adc();
  setup_uart0();
  setup_uart1();

  cls();

  printf("\033[0;0HHello, world!\r\n");
  config_adc(0);
  config_adc(1);
  printf("Done setting up\r\n");
  sei();

  for (;;) {
    char temp[128];
    if (adc_state[0].cnt != lastcnt) {
      lastcnt = adc_state[0].cnt;
      snprintf(temp,  128, "%X%X %04X%04X % 8li % 8li % 8li % 8li % 8li % 8li\r\n",
        adc_state[0].cnt & 0xF, (adc_state[1].cnt - adc_state[0].cnt) & 0xF, adc_state[0].stat_1, adc_state[1].stat_1,
        adc_state[0].lastsample[0], adc_state[0].lastsample[1], adc_state[0].lastsample[2],
        adc_state[1].lastsample[0], adc_state[1].lastsample[1], adc_state[1].lastsample[2]);
      //printf("Bluh\r\n");
      printf(temp);
    }
  }
  //*/

  return 0;
}


