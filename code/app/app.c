//very minimal application
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <avr/wdt.h>
#include <util/delay.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include "app.h"
#include "../eeprom.h"
#include <ds18b20/ds18b20.h>
#include <ds18b20/romsearch.h>
#include "wire_structs.h"
#include "verified.h"

#define WDTO_DEFAULT WDTO_250MS

#define FEATURE_TIMER_TEST 0
#define FEATURE_MEASURE_RPMS 1
#define FEATURE_TWIDDLE_VGND 0
#define FEATURE_PROGRAMS 0
#define FEATURE_SAMPLES 0       //raw sample capture, uses INT7 ISR
#define FEATURE_BLOCK 1         //capturing and demodulating samples into blocks
#define FEATURE_BSEND 0         //required for FEATURE_SAMPLES
#define FEATURE_BSEND_SIMPLE 0  //simpler bsend, only a single buffer, aligned
//#define FEATURE_MMC 1           //MMC/µSD card, defined in makefile

#define BS  '\x08'  //backspace
#define DEL '\x7F'  //delete - treat same as backspace
#define ESC '\x1B'
#define START_WAIT_UARTCHAR 'S'
//if non-zero, reset watchdog periodically in recvline()
//this makes it possible to type commands in manually without the watchdog tripping the user up
#define WDR_IN_RECVLINE 1

/* RS-485 needs a DE pin */
#define RS485_DE_PORT PORTD
#define RS485_DE_DDR  DDRD
#define RS485_DE_BIT  (1<<5)

#define ONEWIRE_PORT  PORTG
#define ONEWIRE_PIN   PING
#define ONEWIRE_DDR   DDRG
#define ONEWIRE_MASK  (1<<4)

//bootloader address in bytes
#define BOOTLOADER_ADDRESS (0x20000 - 2*BOOTSIZE)

//sanity check makefile stuff
//512 -> 0x1FC00
//1024 -> 0x1F800
#if BOOTLOADER_ADDRESS != 0x1F800
#error BOOTLOADER_ADDRESS not what we expected
#endif

//#define UBRR  (((F_CPU+8LL*BAUD)/(16LL*BAUD))-1) //lo-speed (U2X=0)
#define UBRR  (((F_CPU+4LL*BAUD)/(8LL*BAUD))-1) //hi-speed (U2X=1)
#if UBRR > 65535
#error UBRR too high
#endif

#define UART_BAUD_HIGH  UBRR1H
#define UART_BAUD_LOW  UBRR1L
#define UART_STATUS  UCSR1A
#define UART_TXREADY  UDRE1
#define UART_TXCOMPLETE  TXC1
#define UART_RXREADY  RXC1
#define UART_DOUBLE  U2X1
#define UART_STATUS_BASE (1<<UART_DOUBLE)
#define UART_CTRL  UCSR1B
#define UART_CTRL_DATA_TX (1<<TXEN1)
#define UART_CTRL_DATA_RX (1<<RXEN1)
#define UART_CTRL2  UCSR1C
#define UART_CTRL2_DATA  ((1<<UCSZ11) | (1<<UCSZ10))
#define UART_DATA  UDR1

#define SPI_FAST_SPEED  (1<<(SPI2X+2))  //f_osc/2 -> 3.7 Mbps

//a 32-bit timer is not enough to not overflow over the mission duration
volatile uint64_t timer1_base = 0;

uint8_t is_busy = 0; //have we sent BUSY?
char line[256];

//1-wire stuff
uint8_t roms[6*8];
uint8_t romcnt = 0;

#if FEATURE_SAMPLES == 0

#if FEATURE_BLOCK
//don't need volatile
//put sample data and capture block in .xmem
int16_t __attribute__((section(".xmem"))) sample_data[4*MAX_FRAMES];
capture_block_s __attribute__((section(".xmem"))) cb;
capture_block_continued_s __attribute__((section(".xmem"))) cbc;

//keep in internal SRAM to speed things up slightly
uint16_t edge_pos[256];
accu_t Q1[3];
accu_t Q2[3];
accu_t Q3[3];
accu_t Q4[3];
uint16_t NQ[4];

#endif

#endif  //FEATURE_SAMPLES

temperature_s temps[6];

const char *TEMP = "TEMP";
const char *TACH = "TACH";
const char *SAMP = "SAMP";

static uint8_t adc_popcount[3] = {0,0,0};
static uint8_t adc_ena[3] = {0,0,0};
static uint8_t adc_connected[3] = {0,0,0};

//initialize MAX504s to 0 V
static uint16_t vgnds[3] = {512, 512, 512};

#if FEATURE_TWIDDLE_VGND == 1
//a bit silly
uint16_t sintab[1024];
#endif

//wait some number of millisecond, resetting WDT during
static void wait_ms(uint16_t x) {
  while (x > 0) {
    _delay_ms(1);
    wdt_reset();
    x--;
  }
}

static void enable_tx(void) {
  UART_CTRL = UART_CTRL_DATA_TX;
  RS485_DE_PORT |= RS485_DE_BIT;
  //a bit higher delay than disable_tx
  //without this we get a whole bunch of crap out
  //4 bits (35 µs) was too little, 10 bits (87 µs) is enough
  //we might get away with less, this will do for now
  _delay_us(10*1000000 / BAUD);
}

static void disable_tx(void) {
  //wait for tx to finish
  while (!(UART_STATUS & (1<<UART_TXCOMPLETE)));
  RS485_DE_PORT &= ~RS485_DE_BIT;
  //wait for ringing to die down a bit before switching to RX mode
  //10 µs is enough, but doesn't hurt to wait longer so long as
  //the RS-485 driver is set up correctly
  _delay_us(4*1000000 / BAUD);
  //_delay_us(100);
  UART_CTRL = UART_CTRL_DATA_RX;
}

static void READY(void) {
  printf_P(PSTR("READ%c\r\n"), 'Y');
  disable_tx();
  is_busy = 0;
}

static void start_section(const char *section_name) {
  if (!is_busy) {
    enable_tx();
    //trickery to prevent programming from interfering with labview
    //"BUSY" -> "BUS" + 'Y'
    printf_P(PSTR("BUS%c\r\n"), 'Y');
  }
  printf_P(PSTR("*%s\r\n"), section_name);
  is_busy = 1;
}

void sendchar(uint8_t data)
{
  //don't enable_tx() here, that is dangerous
  while (!(UART_STATUS & (1<<UART_TXREADY)));
  //clear TXC so we can detect it being set later, by writing a one to it
  UART_STATUS = (1<<UART_TXCOMPLETE) | UART_STATUS_BASE;
  UART_DATA = data;
}

static void sendbuf(void *buf, size_t len) {
  for (size_t x = 0; x < len; x++) {
    sendchar(((uint8_t*)buf)[x]);
    wdt_reset();
  }
}

static uint8_t recvchar(void)
{
  while (!(UART_STATUS & (1<<UART_RXREADY)));
  return UART_DATA;
}

//can't get scanf() to work, so read lines and run sscanf() on them
//purposefully hangs if the user inputs too much data
//returns length of the line, excluding terminating NUL
//returns -1 if the user sent ESC
static int recvline(void) {
  int ofs = 0;
  int comment = -1;     //if >= 0 then the rest of the line is a comment starting at ofs=comment
  int commentofs = -1;  //used to keep track how far into the comment the user is

  for (;;) {
#if WDR_IN_RECVLINE
    //play nice with users typing things in manually
    while (!(UART_STATUS & (1<<UART_RXREADY))) {
      wdt_reset();
    }
#endif
    char c = recvchar();
    if (c == 0) {
      //picocom sends NUL characters sometimes for some reason
      continue;
    } else if (c == BS || c == DEL) {
      //backspace
      //exit comment mode if we get that far back
      if (comment >= 0) {
        if (commentofs > 0) {
          commentofs--;
        } else {
          comment = -1;
        }
      } else if (ofs > 0) {
        ofs--;
      }
    } else if (c == ESC) {
      start_section("ESC");
      line[ofs] = 0;
      return -1;
    } else if (c == '\r' || c == '\n') {
      //minicom sends CR
      //linux sends LF
      //windows users will have to set their terminal up to send either one
      line[ofs] = 0;
      return ofs;
    } else if (comment >= 0) {
      //inside comment
      //need to do this before the # check so we don't get
      //problems with multiple hashes in a row
      commentofs++;
    } else if (c == '#') {
      //rest of the line is a comment
      line[ofs] = 0;
      comment = ofs;
      commentofs = 0;
    } else {
      if (ofs == sizeof(line)-1) {
        line[ofs] = 0;
        start_section("ERROR");
        printf_P(PSTR("Buffer overflow in recvline()\r\n"));
        for (;;);
      }
      line[ofs++] = c;
    }
  }
}

//stuff to make printf() work
//source: http://efundies.com/avr-and-printf/
//we could probable make scanf() work too
int usart_putchar_printf(char var, FILE *stream) {
  sendchar(var);
  return 0;
}
FILE mystdout = FDEV_SETUP_STREAM(usart_putchar_printf, NULL, _FDEV_SETUP_WRITE);

//called by setup_xmem() in .init3 (init3.c), before main()
void clear_xmem (void) {
  //assert /EN_XMEM (PG3)
  DDRG |= (1<<3);
  PORTG &= ~(1<<3);

  //enable XMEM, one single sector (0x1100 - 0xFFFF), no wait states
  MCUCR = (1<<SRE);
  XMCRA = 0;
  //no bus keeper, full address space
  XMCRB = 0;

  //clear all of it (.bss and heap)
  memset((void*)0x1100, 0, 0x10000 - 0x1100);
}

static void setup_uart1() {
  //double speed for higher UBRR resolution
  UART_STATUS = UART_STATUS_BASE;
  //enable RX
  UART_CTRL = UART_CTRL_DATA_RX;
  UART_CTRL2 = UART_CTRL2_DATA;
  UBRR1L = UBRR;
  UBRR1H = UBRR / 256;

  //TX and DE
  DDRD |= (1<<PD3);
  //ensure we're in RX mode
  RS485_DE_DDR |= RS485_DE_BIT;
  RS485_DE_PORT &= ~RS485_DE_BIT;
}

static unsigned freeRam () {
  extern int __heap_start, *__brkval;
  //tested, verified to be correct down to the single byte
  return 0xffff - (__brkval == 0 ? (int) &__heap_start : (int) __brkval);
}

#if FEATURE_MMC == 1
#include "mmc_avr.h"

DWORD get_fattime (void) {
  //TODO
  return 0;
}
#endif

//used to get view of how much CPU we're using
//undefine to save some CPU
#define CPU_USAGE_ON()  do { /*PORTF |= (1<<6);*/  } while (0)
#define CPU_USAGE_OFF() do { /*PORTF &= ~(1<<6);*/ } while (0)

ISR(TIMER1_OVF_vect) {
  //CPU_USAGE_ON();
  uint64_t timer1_new = timer1_base + TIMER1_OVF_INC;
  timer1_base = timer1_new;

#if FEATURE_MMC == 1
  static __uint24 next_100hz = 0;
  __uint24 diff = (__uint24)timer1_new - next_100hz;

  //check if we're past next_100hz, modulo 2^24
  if (diff < (__uint24)0x800000) {
    mmc_disk_timerproc();
    next_100hz += F_CPU / 100;
  }
#endif
}

static __uint24 gettime24() {
  uint16_t t3, t3_2;
  __uint24 ret;

  CPU_USAGE_ON();

  //be extra paranoid
  cli();
  t3 = TCNT1;
  sei();
retry24:
  ret = timer1_base | (t3*TIMER1_PRESCALER);
  //check that we didn't get an overflow
  cli();
  t3_2 = TCNT1;
  sei();
  if (t3_2 < t3) {
    t3 = t3_2;
    goto retry24;
  }
  CPU_USAGE_OFF();
  return ret;
}

#ifdef TEST_SPEED
uint32_t gettime32() {
#else
static uint32_t gettime32() {
#endif
  uint16_t t3, t3_2;
  uint32_t ret;

  CPU_USAGE_ON();

  //be extra paranoid
  cli();
  t3 = TCNT1;
  sei();
retry32:
  ret = timer1_base | (t3*TIMER1_PRESCALER);
  //check that we didn't get an overflow
  cli();
  t3_2 = TCNT1;
  sei();
  if (t3_2 < t3) {
    t3 = t3_2;
    goto retry32;
  }
  CPU_USAGE_OFF();
  return ret;
}

static uint64_t gettime64() {
  uint16_t t3, t3_2;
  uint64_t ret;

  CPU_USAGE_ON();

  //be extra paranoid
  cli();
  t3 = TCNT1;
  sei();
retry64:
  ret = timer1_base | (t3*TIMER1_PRESCALER);
  //check that we didn't get an overflow
  cli();
  t3_2 = TCNT1;
  sei();
  if (t3_2 < t3) {
    t3 = t3_2;
    goto retry64;
  }
  CPU_USAGE_OFF();
  return ret;
}

static void settime64(uint64_t t) {
  cli();
  //set timer base, ensure TOV1 ISR won't happen for a while
  timer1_base = t;
  TCNT1 = 0;
  TCNT3 = TIMER3_OFS;
  TIFR = (1<<TOV1);
  sei();
}


static void setup_timers() {
  //PB5 = OC1A, PB6 = OC1B, PB7 = OC1C. inverted drive signals
  //pwm frequency range is 500 Hz .. 20 kHz
  //WGM=3 -> TOP=0x3FF -> (14745600/1024) = 14400 Hz (10-bit fast PWM)
  uint8_t wgm = TIMER1_WGM;
#if TIMER1_WGM == 10 || TIMER1_WGM == 14
  ICR1 = TIMER1_TOP;
#endif
  TCCR1A = (3<<COM1A0) | (3<<COM1B0) | (3<<COM1C0) | ((wgm&3) << WGM10);
  //enable clock, set prescaler
#if TIMER1_PRESCALER == 1
  int cs = 1;
#elif TIMER1_PRESCALER == 8
  int cs = 2;
#else
#error Unsupported TIMER1_PRESCALER
#endif
  //ICESn = 0 (falling edge)
  TCCR1B = (((wgm>>2)&3) << WGM12) | (cs<<CS10);
  TCCR1C = 0;

  //run timer3 at same speed as timer1, don't do any PWM stuff
  TCCR3A = 0;
#if TIMER3_PRESCALER == 1
  cs = 1;
#elif TIMER3_PRESCALER == 8
  cs = 2;
#else
#error Unsupported TIMER3_PRESCALER
#endif
  TCCR3B = (cs<<CS30);
  TCCR3C = 0;

  //0% duty to start
  OCR1A = 0;
  OCR1B = 0;
  OCR1C = 0;

  //enable outputs
  DDRB |= (1<<5) | (1<<6) | (1<<7);

  //enable TOV1 interrupt
  TIMSK |= (1<<TOIE1);

  //pre-emptively avoid and clear TOV1
  //this gives main() a little time to do stuff before the first TOV1 interrupt fires
  TCNT1 = 0;
  TCNT3 = TIMER3_OFS;
  TIFR = (1<<TOV1);
}

static void adc_spi_fast(void) {
  //enable spi, run at SPI_FAST_SPEED
  //CPOL=0, CPHA=1
  SPCR = (1<<SPE) | (1<<MSTR) | (1<<CPHA) | (SPI_FAST_SPEED & 3);
  SPSR = (SPI_FAST_SPEED >> 2);
}

//max504
static void dac_spi_fast(void) {
  //enable spi, run at SPI_FAST_SPEED
  //CPOL=0, CPHA=0
  SPCR = (1<<SPE) | (1<<MSTR) | (SPI_FAST_SPEED & 3);
  SPSR = (SPI_FAST_SPEED >> 2);
}

static void setup_spi(void) {
  //set MOSI and SCK as output, obviously
  //but also set /SS as output or a low input will put us in SPI slave mode
  //incidentally this also asserts EN_APWR
  //enable pull-up on MISO (PB3) too, ADS131A04 requires it
  PORTB |= (1<<0) | (1<<3);
  DDRB |= (1<<0) | (1<<1) | (1<<2);

  adc_spi_fast();
}

static inline uint8_t spi_comm_byte(uint8_t in) {
  //we could write this in asm
  //16 cy delay between setting and reading SPDR should be enough
  SPDR = in;
  while(!(SPSR & (1<<SPIF)));
  return SPDR;
}

static void set_vgnd(uint8_t x, uint16_t codein) {
  vgnds[x] = codein;

  //set all DACs to -1.024 V, enable ADG601's
  DDRE |= (1<<2) | (1<<3) | (1<<4);
  PORTE |= (1<<2) | (1<<3) | (1<<4); //de-assert /CS

  dac_spi_fast();

    PORTE &= ~(1<<(x+2));

    //   0 = -2.048 V
    // 256 = -1.024 V
    // 512 =  0.000 V
    // 768 =  1.024 V
    //1023 =  2.046 V
    uint16_t code = codein;

    //from the MAX504 datasheet:
    //16 bits of serial data are
    //clocked into the DAC in the following order: 4 fill (dummy)
    //bits, 10 data bits, and 2 sub-LSB 0s.
    code <<= 2; //dddd CCCC CCCC CC00

    //from the ATmega128 datasheet:
    //When the DORD bit is written to zero, the MSB of the data word is transmitted first.
    //SPCR &= ~(1<<DORD); //just to be sure
    //SPCR |= (1<<DORD);

    spi_comm_byte(code >> 8);
    spi_comm_byte(code);

    //de-assert all /CS
    PORTE |= (1<<2) | (1<<3) | (1<<4);

  //enable ADG601s
  //DDRE |= (1<<5);
  //PORTE |= (1<<5);
  //DDRF |= (1<<5) | (1<<6);
  //PORTF |= (1<<5) | (1<<6);

  //restore SPI to ADC settings
  adc_spi_fast();
}

static void set_vgnds(uint16_t codein) {
  for (uint8_t id = 0; id < 3; id++) {
    set_vgnd(id, codein);
  }
}

/*static void disable_vgnd(void) {
  DDRE |= (1<<5);
  PORTE &= ~(1<<5);
  //DDRF |= (1<<5) | (1<<6);
  //PORTF &= ~((1<<5) | (1<<6));
}*/

static inline uint8_t have_esc(void) {
  //check for escape
  if (UART_STATUS & (1<<UART_RXREADY)) {
    char c = recvchar();
    if (c == ESC) {
      start_section("ESC");
      return 1;
    }
  }
  return 0;
}

#define FADC      F_CPU
#define CLK_DIV   2
#define ICLK_DIV  2
#define OSR       5     //0..15 -> 4096 .. 32, see osrtab below
#define GAIN      4     //0..4, actual gain = 2^GAIN

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

static const uint16_t osrtab[16] = {
  4096, 2048, 1024, 800, 768, 512, 400, 384, 256, 200, 192, 128, 96, 64, 48, 32
};

static inline void adc_deselect(void) {
  //PF0..4 = ADC (must be zero)
  //PF5..7 = /CS_ADCn
  PORTF = 7<<5;
}

static inline void adc_select(uint8_t id) {
  //assert relevant /CS pin
  PORTF = (7<<5) & ~(1<<(PF5+id));

  //t_d(CSSC) = 16 ns, each instruction takes 135 ns
  //hence no need to delay further after asserting /CS
}

#if 0
static inline uint8_t spi_comm_byte(uint8_t in) {
  //we could write this in asm
  //16 cy delay between setting and reading SPDR should be enough
  SPDR = in;
  while(!(SPSR & (1<<SPIF)));
  return SPDR;
}
#endif

static adc_word_t spi_comm_word(adc_word_t in) {
  adc_word_t out = 0;
  uint8_t x;

  for (x = 0; x < WORDSZ; x += 8) {
    out |= ((uint32_t)spi_comm_byte(in >> (WORDSZ-8-x)) << (WORDSZ-8-x));
  }

  return out;
}


static void setup_adc_pins() {
  //PF5..7 = /CS_ADC0..2
  DDRF |= (1<<5) | (1<<6) | (1<<7);
  adc_deselect();

  //TODO: input capture + interrupt for Timer3 (/DRDYn) and Timer1 (TACHn)
  //tach interrupt = falling edge
  //falling edge..
  //EICRB |= (2<<ISC60) | (2<<ISC70);
}


static adc_word_t adc_comm_inner(uint8_t pc, adc_word_t cmd) {
  uint8_t x;
  adc_word_t out;

  out = spi_comm_word(cmd);

  for (x = 0; x < pc; x++) {
    //ignore data
    spi_comm_word(0);
  }
  //printf_P(PSTR("%08lX -> %08lX\r\n"), cmd, out);

  return out;
}

/**
 * Communicate with ADC. Ignores measurement data
 * id: ADC ID
 * cmd: device command
 * return: device word out
 */
static adc_word_t adc_comm(uint8_t id, adc_word_t cmd) {
  adc_select(id);
  adc_word_t out = adc_comm_inner(adc_popcount[id], cmd);
  adc_deselect();
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

static int8_t wreg(uint8_t id, uint8_t a, uint8_t d) {
  adc_word_t word;

  //deal with reserved bits, in case the users is careless
  if (a == A_SYS_CFG) {
    d |= 0x20;
  } else if (a == CLK1) {
    d &= 0x8E;
  } else if (a == CLK2) {
    d &= 0xEF;
  } else if (a == ADC_ENA) {
    d &= 0x0F;
  } else if (a == 0x10) {
    d  = 0x00;
  } else if (a >= ADC1 && a <= ADC4) {
    d &= 0x03;
  }

  adc_comm(id, WREG(a,d));

  //if we change ADC_ENA then we need to update popcount since we use dynamic framing
  if (a == ADC_ENA) {
    adc_ena[id]      = d < 0x10 ? d : 0;
    adc_popcount[id] = d < 0x10 ? popcount(d) : 0;
    adc_connected[id]= d < 0x10;
  }

  word = adc_comm(id, 0);
  if (((word >> (WORDSZ-16)) & 0x1FFF) != ((a<<8) | d)) {
    start_section("ERROR");
    printf_P(PSTR("wreg having problems (id=%hhu, a=%02x, d=%02x vs %08lX)\r\n"), id, a, d, word);
    return 1;
  }
  return 0;
}

uint8_t rreg(uint8_t id, uint8_t a) {
  adc_comm(id, RREG(a));
  uint8_t d = (adc_comm(id, 0) >> (WORDSZ-16)) & 0xFF;
  if (a == ADC_ENA) {
    //0xFF is a bad value, consider such to mean no ADC present
    adc_ena[id]      = d < 0x10 ? d : 0;
    adc_popcount[id] = d < 0x10 ? popcount(d) : 0;
    adc_connected[id]= d < 0x10;
  }
  return d;
}

void adc_regs(void) {
  start_section("ADC_REGS");
  for (uint8_t id = 0; id < 3; id++) {
    printf_P(PSTR("%i"), id);
    for (uint8_t a = 0; a <= 0x14; a++) {
      uint8_t r = rreg(id,a);
      printf_P(PSTR(" %02x"), r);
    }
    printf_P(PSTR("\r\n"));
  }
}

static uint8_t adc_unlock_standby_disable(uint8_t id) {
  adc_word_t word;

  //unlock and enter standby, halting any ongoing conversion
  adc_comm(id, UNLOCK);

  if ((word = adc_comm(id, 0) >> (WORDSZ-16)) != 0x0655) {
    start_section("ERROR");
    printf_P(PSTR("ADC %hhu UNLOCK got %04lXh, not 0655h\r\n"), id, word);
    return 1;
  }

  adc_comm(id, STANDBY);

  if ((word = adc_comm(id, 0) >> (WORDSZ-16)) != 0x0022) {
    start_section("ERROR");
    printf_P(PSTR("ADC %hhu STANDBY got %04lXh, not 0022h\r\n"), id, word);
    return 1;
  }

  //9.4.3 Standby and Wake-Up Mode
  //To enter standby mode again, send the STANDBY command and
  //disable all ADC channels by writing to the ADC_ENA register.
  wreg(id, ADC_ENA, 0);

  return 0;
}

//wait for RESET, then UNLOCK
void unlock_adcs(void) {
  for (uint8_t id = 0; id < 3; id++) {
    adc_word_t word;
    adc_ena[id] = 0;
    adc_popcount[id] = 0;

    //spec says to wait at least 4.5 ms
    _delay_ms(5);

    int x = 0;
    while ((word = adc_comm(id, 0) >> (WORDSZ-16)) != 0xFF04) {
      if (++x >= 3) {
        start_section("ERROR");
        printf_P(PSTR("ADC %hhu seems to be offline\r\n"), id);
        goto next_adc;
      }

      //check if we're already reset, by inspecting ID_MSB and ID_LSB
      if (rreg(id, ID_MSB) == 4 && rreg(id, ID_LSB) == 3) {
        goto adc_ok;
      }

      start_section("INFO");
      printf_P(PSTR("ADC %hhu: Got %04lX, sending RESET\r\n"), id, word);

      //send RESET, wait some more
      adc_comm(id, RESET);
      _delay_ms(5);
    }

  adc_ok:
    if (adc_unlock_standby_disable(id)) {
      return;
    }

    //everything looks OK
    start_section("INFO");
    printf_P(PSTR("ADC %hhu up\r\n"), id);
  next_adc:
    ;
  }

  adc_regs();
}

uint32_t adc_cycles_per_sample(void) {
  uint32_t cycles_per_sample = 0;

  for (uint8_t id = 0; id < 3; id++) {
    if (rreg(id, ID_MSB) == 4 && rreg(id, ID_LSB) == 3) {
      uint8_t ena = rreg(id, ADC_ENA);
      if (ena == 0) {
        continue;
      }
      uint8_t clk1 = rreg(id, CLK1);
      uint8_t clk2 = rreg(id, CLK2);
      uint32_t cycles_per_sample2 = (clk1 & 0x0E) * ((clk2 >> 4) & 0x0E) * osrtab[clk2 & 0x0F];

      if (cycles_per_sample == 0) {
        cycles_per_sample = cycles_per_sample2;
      } else if (cycles_per_sample != cycles_per_sample2) {
        start_section("ERROR");
        printf_P(PSTR("ADC %hhu: cycles_per_sample inconsistent: %llu vs %llu\n"), cycles_per_sample, cycles_per_sample2);
        return 0;
      }
    }
  }
  return cycles_per_sample;
}

//returns total number of enabled channels
uint8_t adc_total_popcount(void) {
  uint8_t ret = 0;
  for (uint8_t id = 0; id < 3; id++) {
    if (rreg(id, ID_MSB) == 4 && rreg(id, ID_LSB) == 3) {
      //let rreg() logic set adc_popcount
      rreg(id, ADC_ENA);
      ret += adc_popcount[id];
    }
  }
  return ret;
}

//returns number of active adcs
//assumes adc_ena has been set up already
uint8_t num_active_adcs(void) {
  uint8_t ret = 0;
  for (uint8_t id = 0; id < 3; id++) {
    if (adc_ena[id]) {
      ret++;
    }
  }
  return ret;
}

void set_74153(uint8_t ch) {
  DDRD |= (1<<PD6) | (1<<PD7);
  PORTD = (PORTD & ~((1<<PD6) | (1<<PD7))) | (ch << PD6);
}

//must be called with an id of an ADC which is active
static uint8_t get_tach_pin(uint8_t id) {
  set_74153(id);
  return PIND & (1<<PD4);
}

#if FEATURE_SAMPLES == 1
#include "feature_samples.c"
#endif

static void stop_measurement(void) {
  EIMSK &= ~(1<<INT7);
#if FEATURE_SAMPLES == 1
  measurement_on = 0;
#endif

  //put ADCs back in STANDBY mode
  for (uint8_t id = 0; id < 3; id++) {
    if (adc_ena[id]) {
      adc_unlock_standby_disable(id);
    }
  }

  start_section("INFO");
  printf_P(PSTR("Measurement stopped\r\n"));
}

//cli() must be done prior to calling adc_wakeup()
//doing sei() afterward is optional
//int7 says whether to enable INT7 ISR or not
static uint8_t adc_wakeup(uint8_t int7) {
#if FEATURE_SAMPLES == 0
  //there's no INT7 ISR in non-sample mode
  if (int7 && !FEATURE_SAMPLES) {
    start_section("ERROR");
    printf_P(PSTR("adc_wakeup() called with int7 and FEATURE_SAMPLES == 0\r\n"));
    return 0;
  }
#endif

  uint8_t portf = PORTF;
  uint8_t lastena = 0, pc = 0;
  uint8_t someid = 0; //ID of any enabled ADC, for configuring 74153

  //WAKEUP all ADCs that have valid ADC_ENA != 0
  for (uint8_t id = 0; id < 3; id++) {
    uint8_t ena = rreg(id, ADC_ENA);
    if (ena > 0x00 && ena < 0x10 && rreg(id, ID_MSB) == 4 && rreg(id, ID_LSB) == 3) {
      start_section("INFO");
      printf_P(PSTR("ADC %hhu: ADC_ENA=%hhx\r\n"), id, ena);

      portf &= ~(1<<(PF5+id));
      if (pc == 0) {
        lastena = ena;
        pc = popcount(ena);
        someid = id;
      } else if (pc != popcount(ena)) {
        start_section("ERROR");
        printf_P(PSTR("ADC %hhu: Inconsistent ADC_ENA: %hhx vs %hhx\r\n"), id, lastena, ena);
        return 1;
      }
    }
  }

  if (pc == 0) {
    start_section("ERROR");
    printf_P(PSTR("No ADCs online or all ADC_ENA = 0. Can't WAKEUP (wake me up inside)\r\n"));
    return 1;
  }

  //74153
  set_74153(someid);

#if FEATURE_SAMPLES == 1
  sample_setup(sample_data_idx);
#endif

  if (int7) {
    //set up interrupt before WAKEUP, so we don't miss the falling edge

    //interrupt on falling edge of INT7
    EICRB |= (1<<ISC71);
    //clear INT7 flag
    EIFR  |= (1<<INTF7);
    //enable the interrupt
    EIMSK |= (1<<INT7);
  } else {
    //disable the interrupt
    EIMSK &= ~(1<<INT7);
    //clear flag just in case
    EIFR  |= (1<<INTF7);
  }
#if FEATURE_SAMPLES == 1
  measurement_on = 1;
#endif

  //select all ADCs at the same time
  //this works because MISO is open collector
  PORTF = portf;
  adc_comm_inner(pc, WAKEUP);
  adc_deselect();

  //free up serial before waking up
  READY();

  PORTF = portf;
  adc_word_t wakeup_res = adc_comm_inner(pc, 0) >> (WORDSZ-16);
  adc_deselect();

  if (wakeup_res != 0x0033) {
    stop_measurement();
    start_section("ERROR");
    printf_P(PSTR("wakeup_res = %04lX, expected 0033h\r\n"), wakeup_res);
    return 1;
  }

  /*PORTF = portf;
  adc_comm_inner(pc, LOCK);
  adc_deselect();

  PORTF = portf;
  adc_word_t lock_res = adc_comm_inner(pc, 0) >> (WORDSZ-16);
  adc_deselect();

  if (lock_res != 0x0555) {
    stop_measurement();
    start_section("ERROR");
    printf_P(PSTR("lock_res = %04lX, expected 0555h\r\n"), lock_res);
    return 1;
  }*/

  /*start_section("INFO");
  printf_P(PSTR("sei()\r\n"));
  start_section("INFO");
  printf_P(PSTR("Measurement started\r\n"));*/
  return 0;
}

// If >= 0, exactly that ADC is enabled
// IF <  0, not exactly one ADC enabled
static int8_t exactly_one_adc(void) {
  if (adc_ena[0]) {
    if (adc_ena[1] || adc_ena[2]) {
      return -1;
    }
    return 0;
  } else if (adc_ena[1]) {
    if (adc_ena[2]) {
      return -1;
    }
    return 1;
  } else if (adc_ena[2]) {
    return 2;
  } else {
    return -1;
  }
}

static void read_temps(temperature_s *temps) {
  for (uint8_t x = 0; x < romcnt; x++) {
    temps[x].rom12[0] = roms[x*8+1];
    temps[x].rom12[1] = roms[x*8+2];
    ds18b20read( &ONEWIRE_PORT, &ONEWIRE_DDR, &ONEWIRE_PIN, ONEWIRE_MASK, &roms[x*8], &temps[x].temp );
  }
}

static void enable_adc(void) {
  ADCSRA = (1<<ADEN) | (7<<ADPS0);
  //make sure pull-ups are disabled
  PORTF &= 7<<5;
}

static void disable_adc(void) {
  ADCSRA = 0;
}

static uint16_t read_adc(uint8_t x) {
  //2.56V reference
  ADMUX = x | (3<<REFS0);
  ADCSRA |= 1<<ADSC;
  while (ADCSRA & (1<<ADSC));

  uint16_t adc = ADCL;
  adc += ADCH*256;  //0..1023 (right-adjusted)
  return adc;
}

static void print_temps(temperature_s *temps) {
  start_section("TEMPS");
  for (uint8_t x = 0; x < romcnt; x++) {
    for (uint8_t y = 0; y < 8; y++) {
      printf_P(PSTR("%02x"), roms[x*8+y]);
    }
    int16_t temp = temps[x].temp, templo;

    //poor man's binary to decimal conversion
    if (temp >= 0) {
      templo = temp & 15;
    } else {
      templo = (-temp) & 15;
    }
    temp /= 16;
    printf_P(PSTR(" %i.%02i\r\n"), temp, (625*templo)/100);
  }
}

//assumes volt_mask == 31
static void print_volts(uint16_t *adc_codes) {
  float volts[5];
  adc2volts(adc_codes, volts);

  start_section("VOLTS");
  for (uint8_t x = 0; x < 5; x++) {
    const char *strs[5] = {"+3.3V", "+24V", "VIN", "+5V", "-5V"};
    printf_P(PSTR("%s:\t%+.2f V (%i)\r\n"), strs[x], volts[x], adc_codes[x]);
  }
}

#if FEATURE_PROGRAMS == 1
#include "feature_programs.c"
#endif

#if FEATURE_BSEND || FEATURE_BSEND_SIMPLE
#include "feature_bsend.c"
#endif

#if FEATURE_BLOCK
#include "feature_block.c"
#endif

static void handle_input(void) {
      int len = recvline();
      if (len < 0) {
        //ESC -> stop measurement, if any
        stop_measurement();
      }
      if (len < 1) {
        return;
      }
      char c = line[0];
      //shift line by one character
      memmove(&line[0], &line[1], len);
      len--;

      if (c == START_WAIT_UARTCHAR) {
        //go to bootloader
        //stupid and simple, therefore the best way:
        wdt_enable(WDTO_15MS);
        for (;;);
      } else if (c == 'm' || c == 'M' || c == 'K') {
        //get/set motor speeds
        if (c == 'M') {
          //set motor speeds
          unsigned pwm0, pwm1, pwm2;
          int n = sscanf(line, "%u %u %u", &pwm0, &pwm1, &pwm2);
          if (n == 3) {
            if (pwm0 > TIMER1_TOP || pwm1 > TIMER1_TOP || pwm2 > TIMER1_TOP) {
              start_section("ERROR");
              printf_P(PSTR("One or more of PWMS %u, %u, and %u is greater than TIMER1_TOP = %u\r\n"), pwm0, pwm1, pwm2, TIMER1_TOP);
            } else {
              OCR1A = pwm0;
              OCR1B = pwm1;
              OCR1C = pwm2;
            }
          } else if (n == 2) {
            //set some specific motor
            //pwm0 = motor index
            //pwm1 = value
            if (pwm1 > TIMER1_TOP) {
              start_section("ERROR");
              printf_P(PSTR("PWM %u greater than TIMER1_TOP = %u\r\n"), pwm1, TIMER1_TOP);
            } else if (pwm0 == 0) {
              OCR1A = pwm1;
            } else if (pwm0 == 1) {
              OCR1B = pwm1;
            } else if (pwm0 == 2) {
              OCR1C = pwm1;
            } else {
              start_section("ERROR");
              printf_P(PSTR("bad motor ID: %u\r\n"), pwm0);
            }
          } else {
            start_section("ERROR");
            printf_P(PSTR("sscanf: n=%i\r\n"), n);
          }
        } else if (c == 'K') {
          //start motors with default speed (50%)
          OCR1A = TIMER1_TOP/2;
          OCR1B = TIMER1_TOP/2;
          OCR1C = TIMER1_TOP/2;
        }

        //report motor speeds
        int pwm0 = OCR1A;
        int pwm1 = OCR1B;
        int pwm2 = OCR1C;
        start_section("MTR_PWM");
        printf_P(PSTR("%i %i %i\r\n"), pwm0, pwm1, pwm2);

        //be helpful if motor power is off
        if (!(PORTB & (1<<0))) {
          start_section("INFO");
          printf_P(PSTR("+24V and +-5V OFF\r\n"));
        }
      } else if (c == 'v') {
        //measure system voltages
        //enable ADC, set prescaler such that the ADC clock is 50..200 kHz
#if F_CPU < 6400000 || F_CPU > 25600000
#error You need to compute some new value for the ADC prescaler
#endif
        enable_adc();
        uint16_t volts[5];
        //ADC0..4
        for (uint8_t x = 0; x < 5; x++) {
          volts[x] = read_adc(x);
        }
        disable_adc();

        print_volts(volts);
      } else if (c == 'V') {
        PORTB |= (1<<0);
        start_section("INFO");
        printf_P(PSTR("+24V and +-5V ON\r\n"));
      } else if (c == 'B') {
        PORTB &= ~(1<<0);
        start_section("INFO");
        printf_P(PSTR("+24V and +-5V OFF\r\n"));
      } else if (c == '1' || c == '!') {
        if (c == '!') {
          //search for ROMs again
          romcnt = 0;
          ds18b20search( &ONEWIRE_PORT, &ONEWIRE_DDR, &ONEWIRE_PIN, ONEWIRE_MASK, &romcnt, roms, sizeof(roms) );
          if (romcnt > 6) romcnt = 6; //just to be sure
        }
        start_section("ONEWIRE");
        for (uint8_t x = 0; x < romcnt; x++) {
          for (uint8_t y = 0; y < 8; y++) {
            printf_P(PSTR("%02x"), roms[x*8+y]);
          }
          printf_P(PSTR("\r\n"));
        }
      } else if (c == 't') {
        //measure and send temperatures
        start_section("INFO");
        printf_P(PSTR("Starting temperature conversion...\r\n"));

        //tell all devices to do a temperature conversion
        ds18b20convert( &ONEWIRE_PORT, &ONEWIRE_DDR, &ONEWIRE_PIN, ONEWIRE_MASK, NULL );

        //issue read slots, wait for all devices to transmit 1
        while (!onewireReadBit( &ONEWIRE_PORT, &ONEWIRE_DDR, &ONEWIRE_PIN, ONEWIRE_MASK )) {
          wdt_reset();
        }

        read_temps(temps);
        print_temps(temps);

#if FEATURE_TIMER_TEST == 1
      } else if (c == ':') {
        //test timer1
        __uint24 last = gettime24();
        for (uint32_t x = 0; x < (1ULL<<24); x++) {
          __uint24 t = gettime24();
          if (x > 0) {
            __int24 dt = (__int24)(t - last);
            if (dt > 700 || dt < 0) {
              enable_tx();
              printf_P(PSTR("\r\nx = %lu "), x);
              printf_P(PSTR("%9lu %9lu"), (uint32_t)last, (uint32_t)t);
              printf_P(PSTR(" (dt = %li)\r\n"), (int32_t)dt);
              disable_tx();
              break;
            } else if ((x & 65535) == 65535) {
              enable_tx();
              printf_P(PSTR("."));
              disable_tx();
              //avoid bork here too
              last = gettime24();
            } else {
              last = t;
            }
          } else {
            enable_tx();
            printf_P(PSTR("%9lu\r\n"), (uint32_t)t);
            disable_tx();
            //avoid bork the first time around due to the printing
            last = gettime24();
          }
          wdt_reset();

          //check for escape
          if (have_esc()) {
            break;
          }
        }
#endif //FEATURE_TIMER_TEST
#if FEATURE_MEASURE_RPMS == 1
      } else if (c == 'r') {
        //measure motor speeds
        start_section("INFO");
        printf_P(PSTR("Measuring motor speeds\r\n"));

        //set up TACH mux pins
        DDRD = (DDRD & ~(1<<4)) | (1<<6) | (1<<7);

        uint32_t t0 = gettime32();

        int ntachs[3] = {0,0,0};
        uint32_t firsttach[3];
        uint32_t lasttach[3];
        int lastpin[3] = {0,0,0};

        //sample for one second
        while (gettime32() - t0 < F_CPU) {
          for (uint8_t x = 0; x < 3; x++) {
            set_74153(x);
            _delay_us(10);
            int p = PIND & (1<<4);
            if (p && !lastpin[x]) {
              //rising edge
              uint32_t t = gettime32();
              if (ntachs[x] == 0) {
                firsttach[x] = t;
              }
              lasttach[x] = t;
              ntachs[x]++;
            }
            lastpin[x] = p;
          }
          wdt_reset();
        }

        start_section("MTR_SPD");
        for (uint8_t x = 0; x < 3; x++) {
          int rpm = 0;
          if (ntachs[x] >= 2) {
            uint32_t period = (lasttach[x] - firsttach[x]) / (ntachs[x]-1);
            rpm = F_CPU * 60 / period;
          }
          printf_P(PSTR("Motor %i: %i tachs (%i RPM)\r\n"), (int)x, ntachs[x], rpm);
        }
#endif //FEATURE_MEASURE_RPMS
#if FEATURE_TWIDDLE_VGND == 1
      } else if (c == ';') {
        start_section("INFO");
        for (uint16_t x = 0; x <1024; x++) {
          //sintab[x] = (1+sin(x*2*M_PI / 1024))*512 - 0.5; //-2 .. +2 V
          //sintab[x] = sin(x*2*M_PI / 1024)*128 + 512 - 0.5; //-0.5 .. +0.5 V
          //sintab[x] = sin(x*2*M_PI / 1024)*64 + 512 - 0.5; //-0.25 .. +0.25 V
          sintab[x] = sin(x*2*M_PI / 1024)*50 + 512 - 0.5; //-0.2 .. +0.2 V
          wdt_reset();
          printf_P(PSTR("%u: %u\r\n"), x, sintab[x]);
        }

        for (;;) {
          //stuff for testing MAX504 + ADG601
          uint16_t a = 0;
          uint16_t b = 1024;
          uint16_t step = 1;
          for (uint16_t x = a; x < b; x += step) {
            set_vgnds(sintab[x]);
            _delay_us(600);
            wdt_reset();
            /*set_vgnds(512);
            _delay_ms(100);
            wdt_reset();
            //set_vgnds(512 + (111-8)/4);
            disable_vgnd();
            _delay_ms(100);
            wdt_reset();*/
            if (have_esc()) {
              goto escapeit;
            }
          }
        }
      escapeit:
        //leave with VGND=0
        set_vgnds(512);
#endif // FEATURE_TWIDDLE_VGND
#if FEATURE_PROGRAMS == 1
      } else if (c == 'p') {
        //list programs
        list_programs();
      } else if (c == 'D') {
        //delete program
        if (delete_program(line) < 0) {
          start_section("ERROR");
          printf_P(PSTR("Found no program called \"%s\"\r\n"), line);
        } else {
          start_section("INFO");
          printf_P(PSTR("Program \"%s\" deleted (%u B free)\r\n"), line, free_program_space());
        }
      } else if (c == 'P') {
        //add/relace program
        //delete program if it exists
        delete_program(line);
        char slot = add_program(line);

        if (slot == -1) {
          start_section("ERROR");
          printf_P(PSTR("\r\nProgram name too long or too short: %s\r\n"), line);
        } else if (slot == -2) {
          start_section("ERROR");
          printf_P(PSTR("\r\nNo free program slots (%i max)\r\n"), max_programs);
        } else {
          start_section("INFO");
          printf_P(PSTR("\r\nProgram \"%s\" will be added in slot %i\r\nEnter program below, terminate with empty line:\r\n"), line, (int)slot);

          for (;;) {
            start_section("INFO");
            printf_P(PSTR("%u B left\r\n"), free_program_space());

            len = recvline();
            if (len == 0) {
              start_section("INFO");
              printf_P(PSTR("Done.\r\n"));
              break;
            } else if (len < 0) {
              start_section("INFO");
              printf_P(PSTR("Deleted program.\r\n"));
              delete_program_slot(slot);
              break;
            } else {
              char ret = add_program_line(line);
              if (ret < 0) {
                start_section("ERROR");
                printf_P(PSTR("Not enough memory.\r\n"));
                delete_program_slot(slot);
                break;
              }
            }
          }
        }
#endif //FEATURE_PROGRAMS
      } else if (c == 'w') {
        if (len > 0) {
          uint32_t delay, t0, t1;
          if (sscanf(line, "%lu", &delay) != 1) {
            return;
          }

          /*enable_tx();
          printf_P(PSTR("Waiting %lu cycles\r\n"), delay);
          disable_tx();*/

          //resolution is roughly 78 cycles = 11 µs
          //measurements show that the actual delay is 0-281 cycles off from the requested value,
          //with 78 being the average
          t0 = gettime32();
          for (;;) {
            t1 = gettime32();
            if (t1 - t0 >= delay || have_esc()) {
              break;
            }
            wdt_reset();
          }

          /*enable_tx();
          printf_P(PSTR("Done. Waited %lu cycles\r\n"), t1-t0);
          disable_tx();*/
          start_section("INFO");
          printf_P(PSTR("Delayed %lu cycles\r\n"), t1-t0);
        }
      } else if (c == 'c' || c == 'C') {
        if (c == 'C') {
          if (len > 0) {
            uint64_t t = parse64(line);
            settime64(t);
          }
        }
        uint64_t t = gettime64();

        start_section("CLOCK");
        print64(t);
        printf_P(PSTR("\r\n"));
      } else if (c == 'q' || c == 'Q') {
        if (c == 'Q') {
            uint8_t id, index, value;
            int n = sscanf(line, "%hhu %hhx %hhx", &id, &index, &value);
            if (n != 3) {
              start_section("ERROR");
              printf_P(PSTR("sscanf(\"%s\") = %i, expected 3\r\n"), line, n);
              return;
            }

            wreg(id, index, value);
        }
        adc_regs();
#if FEATURE_SAMPLES == 1
      } else if (c == 'U') {
        //stop_measurement() 'lite'
        EIMSK &= ~(1<<INT7);
        measurement_on = 0;

        unlock_adcs();
      } else if (c == 'e' || c == 'E') {
        if (c == 'E') {
          //measurement configuration
          int n = sscanf(line, "%u %u %u %hhu", &measurement_num_frames, &measurement_gap, &num_measurements, &measurement_sample_fmt);
          if (n == 2) {
            num_measurements = 65535;
            measurement_sample_fmt = 0;
          } else if (n == 4) {
            if (measurement_sample_fmt > 1) {
              reset_measurement();
              start_section("ERROR");
              printf_P(PSTR("sample_fmt = %hhu invalid\r\n"), measurement_sample_fmt);
              return;
            }
          } else if (n != 3) {
            reset_measurement();
            start_section("ERROR");
            printf_P(PSTR("sscanf(\"%s\") = %i, expected 2, 3 or 4\r\n"), line, n);
            return;
          }

          if (num_measurements == 0) {
            num_measurements = 65535;
          }

          uint32_t cycles_per_sample = adc_cycles_per_sample();
          uint8_t pc = adc_total_popcount();

          if (pc == 0) {
            reset_measurement();
            start_section("ERROR");
            printf_P(PSTR("no channels enabled\n"));
            return;
          }

          //sanity check frame size
          uint32_t sample_data_size = pc*measurement_num_frames*3;
          uint32_t compressed_data_size = pc*measurement_num_frames * (measurement_sample_fmt == 1 ? 1 : 3);
          if (sample_data_size > sizeof(sample_data[0])) {
            reset_measurement();
            start_section("ERROR");
            printf_P(PSTR("sample_data_size = %lu larger than maximum %u\r\n"), sample_data_size, (uint16_t)sizeof(sample_data[0]));
            return;
          }

          //maximum expected packet size
          uint32_t bytes = sizeof(sample_packet_header_s) +
            4 + 6*sizeof(temperature_s) +
            4 + sizeof(tachs[0][0])*num_active_adcs() +
            4 + compressed_data_size;

          //number of cycles needed to collect data from ADCs
          uint32_t cycles_in  = (measurement_num_frames+measurement_gap)*cycles_per_sample;

          //number of cycles needed to transmit data
          //must be less than cycles_in
          //1000 = number of microseconds between packets
          uint32_t cycles_out = bytes*10*F_CPU/BAUD + 1000*F_CPU/1000000;

          start_section(cycles_in > cycles_out ? "INFO" : "ERROR");
          printf_P(PSTR(" sample data size = %lu / %u\r\n"), sample_data_size, (uint16_t)sizeof(sample_data[0]));
          printf_P(PSTR("      packet size = %lu (upper limit)\r\n"), bytes);
          printf_P(PSTR("      sample rate = %lu Hz\r\n"), F_CPU/cycles_per_sample);
          printf_P(PSTR("cycles per sample = %lu\r\n"), cycles_per_sample);
          printf_P(PSTR("         popcount = %hhu\r\n"), pc);
          printf_P(PSTR("--------------------------\r\n"));
          printf_P(PSTR("cycles_out = %12lu\r\n"), cycles_out);
          printf_P(PSTR(" cycles_in = %12lu (%s)\r\n"),
            cycles_in,
            cycles_in > cycles_out ? "OK" :
              (num_measurements == 1 ? "OK (only one measurement)" : "not OK")
          );

          //a single long measurement is OK
          if (cycles_in < cycles_out && num_measurements != 1) {
            reset_measurement();
            return;
          }
        }
        start_section("CONFIG");
        printf_P(PSTR("%u %u %u %hhu\r\n"), measurement_num_frames, measurement_gap, num_measurements, measurement_sample_fmt);
      } else if (c == 'W') {
        if (measurement_num_frames == 0) {
          start_section("ERROR");
          printf_P(PSTR("Bad/missing measurement configuration - can't wake up\r\n"));
          return;
        }
        cli();
        adc_wakeup(1);
#endif
      } else if (c == 'o' || c == 'O') {
        //get/set offset voltages
        if (c == 'O') {
          //set voltages
          unsigned vgnd0, vgnd1, vgnd2;
          int n = sscanf(line, "%u %u %u", &vgnd0, &vgnd1, &vgnd2);
          if (n == 3) {
            if (vgnd0 > 1023 || vgnd1 > 1023 || vgnd2 > 1023) {
              start_section("ERROR");
              printf_P(PSTR("One or more of VGNDs %u, %u, and %u is greater than 1023\r\n"), vgnd0, vgnd1, vgnd2);
            } else {
              set_vgnd(0, vgnd0);
              set_vgnd(1, vgnd1);
              set_vgnd(2, vgnd2);
            }
          } else if (n == 2) {
            //set some specific offset
            //vgnd0 = MAX504 index
            //vgnd1 = value
            if (vgnd1 > 1023) {
              start_section("ERROR");
              printf_P(PSTR("VGND %u greater than 1023\r\n"), vgnd1);
            } else if (vgnd0 >= 0 && vgnd0 <= 2) {
              set_vgnd(vgnd0, vgnd1);
            } else {
              start_section("ERROR");
              printf_P(PSTR("bad VGND ID: %u\r\n"), vgnd0);
            }
          } else {
            start_section("ERROR");
            printf_P(PSTR("sscanf: n=%i\r\n"), n);
          }
        }

        //report voltages
        start_section("VGNDS");
        printf_P(PSTR("%u %u %u\r\n"), vgnds[0], vgnds[1], vgnds[2]);
      } else if (c == 'G') {
#if WORDSZ == 24
        square_demod_tach();
#else
        start_section("ERROR");
        printf_P(PSTR("'G' not ported to 16-bit mode yet\r\n"));
#endif
      } else if (c == 'H') {
        uint8_t fm_mask = 0;
        uint16_t max_frames_max = 0;
        int n = sscanf(line, "%hhu %u", &fm_mask, &max_frames_max);
#if FEATURE_BLOCK
        if (n == 1) {
          square_demod_analog(fm_mask, 0, 0, 0);
        } else if (n == 2) {
          square_demod_analog(fm_mask, max_frames_max, 0, 0);
        } else {
          start_section("ERROR");
          printf_P(PSTR("'H' requires one or two arguments\r\n"));
        }
#else
        start_section("ERROR");
        printf_P(PSTR("FEATURE_BLOCK not enabled\r\n"));
#endif //FEATURE_BLOCK
      } else if (c == '?') {
        //print help
        start_section("INFO");
        printf_P(PSTR("Read manual.pdf\r\n"));
        return;
      }
}

int main(void)
{
  //put pins in known state
  //same include is used in bootloader
#include "../set_pins_to_known_state.h"

  wdt_enable(WDTO_DEFAULT);

  setup_uart1();
  //setup stdout for printf()
  stdout = &mystdout;

  //disable 24V and +-5V
  DDRB |= (1<<0);
  PORTB &= ~(1<<0);

  //CPU utilization on PF6
  //FIXME: this is the same as /CS_ADC1
  //       we don't have any LED installed, so we could use a different pin for CPU
  //       PD0 or PD1 may be suitable
  DDRF |= (1<<6);
  CPU_USAGE_OFF();

  setup_spi();
  setup_adc_pins();

  //setup Timer1 + motor PWM just before enabling interrupts
  setup_timers();
  sei();

  //search for 1-wire devices
  ds18b20search( &ONEWIRE_PORT, &ONEWIRE_DDR, &ONEWIRE_PIN, ONEWIRE_MASK, &romcnt, roms, sizeof(roms) );
  if (romcnt > 6) romcnt = 6; //just to be sure

  set_vgnd(0, vgnds[0]);
  set_vgnd(1, vgnds[1]);
  set_vgnd(2, vgnds[2]);

  start_section("INFO");
  printf_P(PSTR("Hello, Earth!r\n"));

#if FEATURE_MMC == 1
  //must be after sei() because timers
  wdt_reset();
  uint8_t mmc_status = mmc_disk_initialize();
  adc_spi_fast(); //this is likely to get really annoying
  wdt_reset();

  printf_P(PSTR("mmc_status = %hhu\r\n"), mmc_status);

  FATFS fs;
  FRESULT res;
  res = f_mount(&fs, "", 1);
  /*res = f_mkdir("TLMTRY"); printf_P(PSTR("f_mkdir(TLMTRY) = %i\r\n"), res);
  res = f_mkdir("DATA"); printf_P(PSTR("f_mkdir(DATA) = %i\r\n"), res);*/
  wdt_reset();

  if (res == FR_OK) {
    FIL fp;
    if ((res = f_open(&fp, "DATA/DATA1", FA_WRITE | FA_CREATE_NEW)) == FR_OK) {
      UINT bw;
      if ((res = f_write(&fp, "data1", 6, &bw)) == FR_OK) {
        printf_P(PSTR("%u bytes written\r\n"), bw);
      } else {
        printf_P(PSTR("f_write res = %i\r\n"), res);
      }
      f_close(&fp);
    } else {
      printf_P(PSTR("f_open for writing gave res = %i, FR_EXIST = %i\r\n"), res, FR_EXIST);
    }

    if ((res = f_open(&fp, "DATA/DATA1", FA_READ)) == FR_OK) {
      UINT bw;
      char buffer[101] = {0};
      if ((res = f_read(&fp, buffer, 100, &bw)) == FR_OK) {
        printf_P(PSTR("DATA/DATA1 contains: '%s'\r\n"), buffer);
      } else {
        printf_P(PSTR("f_read res = %i\r\n"), res);
      }
      f_close(&fp);
    } else {
      printf_P(PSTR("f_open res = %i\r\n"), res);
    }
  } else {
    printf_P(PSTR("f_mount res = %i\r\n"), res);
  }
  wdt_reset();
#endif

  uint8_t temp_conversion_in_progress = 0;

  unlock_adcs();

  for (uint8_t id = 0; id < 3; id++) {
    if (adc_connected[id]) {
      //default samplerates and gains
      wreg(id, A_SYS_CFG, 0x23); //tightest analog margin
      wreg(id, CLK1, 0x02);
      //wreg(id, CLK2, 0x2E); //38.4 kHz
      wreg(id, CLK2, 0x2C); //19.2 kHz
      wreg(id, ADC1, 0x04); //gain = 16x
      wreg(id, ADC2, 0x04); //gain = 16x
      wreg(id, ADC3, 0x04); //gain = 16x
      wreg(id, ADC4, 0x00); //gain = 1x
    }
  }
  OCR1A = TIMER1_TOP/4;
  OCR1B = 0;
  OCR1C = 0;
  wait_ms(3000);
  OCR1B = TIMER1_TOP/4;
  wait_ms(3000);
  OCR1C = TIMER1_TOP/4;

#if FEATURE_BLOCK
  wait_ms(3000);
  square_demod_analog(7, 0, TIMER1_TOP/4, 5L*TIMER1_TOP/16);
#endif

  for (;;) {
retry:
    if (is_busy
#if FEATURE_BSEND == 1
      && !bsend_busy()
#endif
      ) {
      //READY
      READY();
    }

    //take a peek at the USART
    //commands are single bytes
    if (UART_STATUS & (1<<UART_RXREADY)) {
      handle_input();
    }
    wdt_reset();

#if FEATURE_SAMPLES == 1
    if (measurement_on) {
      //check tachometers
      uint8_t tachs_done = 0; //if 1 then tachs are full
        for (uint8_t x = 0; x < 3; x++) {
          if (adc_ena[x]) {
            uint8_t pin = get_tach_pin(x);
            //look for rising edge after we have captured a couple of frames
            if (pin > last_tach_pin[x] && num_captured_frames > 5) {
              uint8_t idx = sample_data_idx;
              tachs[idx][x][num_tachs[idx][x]] = gettime24();
              if (++num_tachs[idx][x] >= MAX_TACHS) {
                tachs_done = 1;
              }
            }
            last_tach_pin[x] = pin;
          }
        }

      cli();
      if (sample_ptr >= sample_end || tachs_done) {
        //swap buffers
        uint8_t old_idx = sample_data_idx;
        size_t nbytes = sample_setup(!sample_data_idx);

        //bleh
        uint8_t adc_ena_copy[3];
        adc_ena_copy[0] = adc_ena[0];
        adc_ena_copy[1] = adc_ena[1];
        adc_ena_copy[2] = adc_ena[2];

        if (num_measurements != 65535 && --num_measurements == 0) {
          stop_measurement();
        }
        sei();

        if (measurement_sample_fmt == 1) {
          compress_24bit_to_8bit(&header, (void*)sample_data[old_idx]);
          nbytes /= 3;
        }

        bwait();

        memset(&header, 0, sizeof(header));
        header.version = 4;                         // format version
        header.first_frame = first_frame;           // timestamp of first frame
        header.num_temps = 0;                       // DS18B20Z outputs (0..6)
        header.prescaler = TIMER1_PRESCALER;

        //maybe we have some data? :>
        if (temp_conversion_in_progress) {
          //every device transmitting 1?
          if (onewireReadBit( &ONEWIRE_PORT, &ONEWIRE_DDR, &ONEWIRE_PIN, ONEWIRE_MASK )) {
            //hooray!
            header.num_temps = romcnt;
            read_temps(temps);
            temp_conversion_in_progress = 0;
          }
        }

        if (!temp_conversion_in_progress) {
          //tell all devices to do a temperature conversion
          ds18b20convert( &ONEWIRE_PORT, &ONEWIRE_DDR, &ONEWIRE_PIN, ONEWIRE_MASK, NULL );
          temp_conversion_in_progress = 1;
        }

        header.num_tachs[0] = num_tachs[old_idx][0];// tach impulses per channel
        header.num_tachs[1] = num_tachs[old_idx][1];
        header.num_tachs[2] = num_tachs[old_idx][2];
        header.num_frames = measurement_num_frames; // number of frames
        header.gap = measurement_gap;               // gap between packets
        header.channel_conf =  adc_ena_copy[0] |         // channel bitmap. 3 nybbles
                              (adc_ena_copy[1] << 4) |
                              (adc_ena_copy[2] << 8);
        header.sample_fmt = measurement_sample_fmt; // Sample format.
        header.sample_shift = 0;

        memset(bsends, 0, sizeof(bsends));
        bsends[0].ptr = (const uint8_t*)&header;
        bsends[0].end = (const uint8_t*)(&header + 1);
        bsends[1].ptr = (const uint8_t*)TEMP;
        bsends[1].end = (const uint8_t*)(TEMP + 4);
        if (header.num_temps) {
          bsends[2].ptr = (const uint8_t*)&temps[0];
          bsends[2].end = (const uint8_t*)(&temps[header.num_temps]);
        }
        bsends[3].ptr = (const uint8_t*)TACH;
        bsends[3].end = (const uint8_t*)(TACH + 4);
        if (num_tachs[old_idx][0]) {
          bsends[4].ptr = (const uint8_t*)&tachs[old_idx][0][0];
          bsends[4].end = (const uint8_t*)&tachs[old_idx][0][num_tachs[old_idx][0]];
        }
        if (num_tachs[old_idx][1]) {
          bsends[5].ptr = (const uint8_t*)&tachs[old_idx][1][0];
          bsends[5].end = (const uint8_t*)&tachs[old_idx][1][num_tachs[old_idx][1]];
        }
        if (num_tachs[old_idx][2]) {
          bsends[6].ptr = (const uint8_t*)&tachs[old_idx][2][0];
          bsends[6].end = (const uint8_t*)&tachs[old_idx][2][num_tachs[old_idx][2]];
        }
        bsends[7].ptr = (const uint8_t*)SAMP;
        bsends[7].end = (const uint8_t*)(SAMP + 4);
        //cast away volatile - ISR won't touch old data
        bsends[8].ptr = (const uint8_t*)(sample_data[old_idx]);
        bsends[8].end = (const uint8_t*)(&sample_data[old_idx][nbytes]);

        start_section("SAMPLES");
        bsend_start();
      } else {
        sei();
      }
    }
#endif //FEATURE_SAMPLES
  }

  return 0;
}
