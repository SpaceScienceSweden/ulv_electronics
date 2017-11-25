//very minimal application
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <avr/wdt.h>
#include <util/delay.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include "../eeprom.h"
#include <ds18b20/ds18b20.h>
#include <ds18b20/romsearch.h>

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
#define UART_CTRL  UCSR1B
#define UART_CTRL_DATA_TX (1<<TXEN1)
#define UART_CTRL_DATA_RX (1<<RXEN1)
#define UART_CTRL2  UCSR1C
#define UART_CTRL2_DATA  ((1<<UCSZ11) | (1<<UCSZ10))
#define UART_DATA  UDR1

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

static void start_transfer(const char *section_name) {
  enable_tx();
  printf_P(PSTR("BEGIN\r\n*%s\r\n"), section_name);
}

static void end_transfer(void) {
  printf_P(PSTR("END\r\n"));
  disable_tx();
}

static void sendchar(uint8_t data)
{
  //don't enable_tx() here, that is dangerous
  while (!(UART_STATUS & (1<<UART_TXREADY)));
  //clear TXC so we can detect it being set later, by writing a one to it
  UART_STATUS |= (1<<UART_TXCOMPLETE);
  UART_DATA = data;
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
char line[256];
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
      start_transfer("ESC");
      end_transfer();

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
        start_transfer("ERROR");
        printf_P(PSTR("Buffer overflow in recvline()\r\n"));
        end_transfer();
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

//called before main()
__attribute__ ((naked)) __attribute__ ((section (".init3"))) void setup_xmem (void) {
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
  UART_STATUS = ( 1<<UART_DOUBLE );
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

uint8_t bsend_buf[16384];
//using two pointers is slightly faster than offset + size
uint8_t *bsend_ptr;
uint8_t *bsend_end;

ISR(USART1_UDRE_vect) {
  //send data, clear TXC1
  UART_DATA = *bsend_ptr++;
  UART_STATUS |= (1<<UART_TXCOMPLETE);

  if (bsend_ptr == bsend_end) {
    //disable USART1 interrupt
    UCSR1B &= ~(1<<UDRIE1);
  }
}

static void bwait() {
  //wait for last bsend to finish
  while (UCSR1B & (1<<UDRIE1));
}


//send PSTR in background
static void bsend_P(const char *str) {
  if (!(SREG & (1<<7))) {
    printf_P(PSTR("Can't bsend() without sei()..\r\n"));
    for(;;);
  }

  size_t len = strlen_P(str);

  if (len == 0) {
    return;
  }

  bwait();
  memcpy_P(bsend_buf, str, len);
  bsend_ptr = &bsend_buf[1];
  bsend_end = &bsend_buf[len];

  sendchar(bsend_buf[0]);

  if (len > 1) {
    //enable USART1 interrupt
    UCSR1B |= (1<<UDRIE1);
  }
}

//a 32-bit timer is not enough to not overflow over the mission duration
volatile uint64_t timer1_base = 0;

//used to get view of how much CPU we're using
//undefine to save some CPU
#define CPU_USAGE_ON()  do { /*PORTF |= (1<<6);*/  } while (0)
#define CPU_USAGE_OFF() do { /*PORTF &= ~(1<<6);*/ } while (0)

#define TIMER1_PRESCALER 1  //6% CPU
//#define TIMER1_PRESCALER 8  //<1% CPU
#define MOTOR_TOP        0x3FF

ISR(TIMER1_OVF_vect) {
  CPU_USAGE_ON();
  timer1_base += TIMER1_PRESCALER*(MOTOR_TOP + 1 /* TOP + 1 = 1024 */);
  CPU_USAGE_OFF();
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

static uint32_t gettime32() {
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
  TIFR |= (1<<TOV1);
  sei();
}


static void setup_motor_pwm() {
  //PB5 = OC1A, PB6 = OC1B, PB7 = OC1C. inverted drive signals
  //pwm frequency range is 500 Hz .. 20 kHz
  //WGM=3 -> TOP=0x3FF -> (7372800/1024) = 7200 Hz (10-bit fast PWM)
  uint8_t wgm = 7;
  TCCR1A = (3<<COM1A0) | (3<<COM1B0) | (3<<COM1C0) | ((wgm&3) << WGM10);
  //enable clock, set prescaler
#if TIMER1_PRESCALER == 1
  int cs = 1;
#elif TIMER1_PRESCALER == 8
  int cs = 2;
#else
#error Unsupported TIMER1_PRESCALER
#endif
  TCCR1B = (((wgm>>2)&3) << WGM12) | (cs<<CS10);
  TCCR1C = 0;

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
  TIFR |= (1<<TOV1);
}

static void setup_spi(void) {
  //set MOSI and SCK as output, obviously
  //but also set /SS as output or a low input will put us in SPI slave mode
  //incidentally this also asserts EN_APWR
  //enable pull-up on MISO (PB3) too, ADS131A04 requires it
  PORTB |= (1<<0) | (1<<3);
  DDRB |= (1<<0) | (1<<1) | (1<<2);

  //enable spi, run at fck/2 (3.7 Mbps)
  SPCR = (1<<SPE) | (1<<MSTR);
  //SPSR |= (1<<SPI2X); //double speed (vroom!)
  //1/128 speed (57600 bps)
  SPCR |= (1<<SPR0) | (1<<SPR1);
  //CPOL=0, CPHA=1
  SPCR |= 1<<CPHA;
}

static inline uint8_t spi_comm_byte(uint8_t in) {
  //we could write this in asm
  //16 cy delay between setting and reading SPDR should be enough
  SPDR = in;
  while(!(SPSR & (1<<SPIF)));
  return SPDR;
}

static void set_vgnd(uint16_t codein) {
  uint8_t spcr_before = SPCR;

  //set all DACs to -1.024 V, enable ADG601's
  DDRE |= (1<<2) | (1<<3) | (1<<4);
  PORTE |= (1<<2) | (1<<3) | (1<<4); //de-assert /CS

  //CPOL=0, CPHA=0
  SPCR &= ~(1<<CPHA);

  for (uint8_t x = 0; x < 3; x++) {
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
  }

  //enable ADG601s
  DDRE |= (1<<5);
  PORTE |= (1<<5);
  //DDRF |= (1<<5) | (1<<6);
  //PORTF |= (1<<5) | (1<<6);

  //restore SPCR
  SPCR = spcr_before;
}

static void disable_vgnd(void) {
  DDRE |= (1<<5);
  PORTE &= ~(1<<5);
  //DDRF |= (1<<5) | (1<<6);
  //PORTF &= ~((1<<5) | (1<<6));
}

//each program consists of a number of lines
//each line is NUL terminated
char program_store[4096];

struct {
  char name[16];      //"" = free slot
  char *start, *end;  //pointers into program_store
} programs[16];
static const int max_programs = sizeof(programs)/sizeof(programs[0]);

static size_t free_program_space(void) {
  if (programs[0].name[0] == 0) {
    return sizeof(program_store);
  }
  uint8_t x;
  for (x = 0; x < max_programs - 1 && programs[x+1].name[0]; x++);
  return &program_store[sizeof(program_store)] - programs[x].end;
}

static void list_programs(void) {
  start_transfer("PROGRAMS");
  uint8_t x;
  for (x = 0; x < max_programs; x++) {
    if (!programs[x].name[0]) {
      break;
    }
    printf_P(PSTR("%i: %s\r\n"), (int)x, programs[x].name);
    char *ptr = programs[x].start;
    while (ptr < programs[x].end) {
      size_t sz = strlen(ptr)+1;
      printf_P(PSTR("%s\r\n"), ptr);
      ptr += sz;
      wdt_reset();
    }
    printf_P(PSTR("\r\n"));
  }
  printf_P(PSTR("%i/%i programs (%u B free)\r\n"), (int)x, max_programs, free_program_space());
  end_transfer();
}

static void delete_program_slot(uint8_t x) {
  uint16_t sz = programs[x].end - programs[x].start;
  memmove(programs[x].start, programs[x].end, &program_store[sizeof(program_store)] - programs[x].end);
  memmove(&programs[x], &programs[x+1], (max_programs-x-1)*sizeof(programs[0]));

  for (; x < max_programs; x++) {
    programs[x].start -= sz;
    programs[x].end -= sz;
  }

  //last slot is always free
  programs[max_programs-1].name[0] = 0;
}

static char delete_program(const char *name) {
  //delete program if we can find it
  //then memmove() program data and pointers around
  uint8_t x;
  for (x = 0; x < max_programs; x++) {
    if (!strcmp(programs[x].name, name)) {
      delete_program_slot(x);
      return 0;
    }
  }
  //no such program found
  return -1;
}

static char add_program(const char *name) {
  size_t l = strlen(name);
  if (l <= 0 || l > 15) {
    return -1;
  }
  //find a free spot
  for (uint8_t x = 0; x < max_programs; x++) {
    if (programs[x].name[0] == 0) {
      strcpy(programs[x].name, name);
      if (x == 0) {
        programs[x].end = programs[x].start = program_store;
      } else {
        programs[x].end = programs[x].start = programs[x-1].end;
      }
      return x;
    }
  }
  return -2;
}

//adds line to last program
static char add_program_line(const char *line) {
  //include NUL in size
  size_t sz = strlen(line) + 1;
  uint8_t x;
  for (x = 0; x < max_programs - 1 && programs[x+1].name[0]; x++);

  //how much space have we got?
  size_t maxsz = &program_store[sizeof(program_store)] - programs[x].end;

  if (sz > maxsz) {
    return -1;
  }

  memcpy(programs[x].end, line, sz);
  programs[x].end += sz;

  return 0;
}

static inline uint8_t have_esc(void) {
  //check for escape
  if (UART_STATUS & (1<<UART_RXREADY)) {
    char c = recvchar();
    if (c == ESC) {
      start_transfer("ESC");
      end_transfer();
      return 1;
    }
  }
  return 0;
}

//avr-libc doesn't support %llu, implement our own crappy versions
//both have been tested with 18446744073709551615, seem to work fine
static uint64_t parse64(const char *line) {
  uint64_t ret = 0;
  uint8_t started = 0;

  for (; *line; line++) {
    if (*line >= '0' && *line <= '9') {
      started = 1;
      ret *= 10;
      ret += *line - '0';
    } else {
      if (started) {
        break;
      }
    }
  }

  return ret;
}

static void print64(uint64_t i) {
  uint64_t digit = 10000000000000000000ULL;
  uint8_t printing = 0;
  for (; digit > 0; digit /= 10) {
    char c = '0';
    while (i >= digit) {
      printing = 1;
      i -= digit;
      c++;
    }
    if (printing) {
      sendchar(c);
    }
  }
}

#if 0
//24-bit only
#define RESET     (0x0011UL << 8)
#define STANDBY   (0x0022UL << 8)
#define WAKEUP    (0x0033UL << 8)
#define LOCK      (0x0555UL << 8)
#define UNLOCK    (0x0655UL << 8)

//READY for ADS131A04
#define READY     (0xFF04UL << 8)

//RREG looks like it's the same as RREGS?
#define RREGS(a,n)  ((0x2000UL | (a<<8) | (n-1)) << 8)
#define RREG(a) RREGS(a,1)
//write d to register a
#define WREG(a,d)   ((0x4000UL | (a<<8) | d)     << 8)
#define WREGS(a,n)  ((0x6000UL | (a<<8) | (n-1)) << 8)

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

static __uint24 spi_comm_word(__uint24 in) {
  __uint24 out = 0;
  uint8_t x;

  for (x = 0; x < 24; x += 8) {
    out |= ((__uint24)spi_comm_byte(in >> (24-8-x)) << (24-x));
  }

  return out;
}

static uint8_t popcount(uint8_t a) {
  uint8_t ret = 0;
  while (a) {
    ret += a&1;
    a >>= 1;
  }
  return ret;
}

static void adc_select(uint8_t id) {
  //PF5..7 = /CS_ADC0..2
  DDRF |= (1<<5) | (1<<6) | (1<<7);
  PORTF |= (1<<5) | (1<<6) | (1<<7);
  PORTF &= ~(1<<(id+5));
  //t_d(CSSC) = 16 ns, each instruction takes 135 ns
  //hence no need to delay further after asserting /CS
}

static void adc_deselect() {
  PORTF |= (1<<5) | (1<<6) | (1<<7);
}

static uint8_t rreg(uint8_t id, uint8_t a) {
  //adc_comm(id, RREG(a));
  //return (adc_comm(id, 0) >> (WORDSZ-16)) & 0xFF;
  adc_select(id);
  spi_comm_word(RREG(a));
  adc_deselect();
  adc_select(id);
  __uint24 out = spi_comm_word(0);
  adc_deselect();
  return (out >> 8) & 0xFF;
}

static void adc_reset_all() {
  enable_tx();

  for (uint8_t id = 1; id < 2; id++) {

    for (;;) {
      adc_select(id);
      __uint24 ready = spi_comm_word(0);
      adc_deselect();

      printf_P(PSTR("ADC %i: RESET  -> %06lx (READY = FF0400)\r\n"), (int)id, (uint32_t)ready);

      if (ready == READY) {
        //POR successful
        break;
      }

      adc_select(id);
      spi_comm_word(RESET);
      adc_deselect();

      //spec says it takes 4.5 ms for ADS131A04 to reset
      _delay_ms(5);
    }

    adc_select(id);
    spi_comm_word(UNLOCK);
    adc_deselect();

    adc_select(id);
    __uint24 ack = spi_comm_word(0);
    adc_deselect();

    printf_P(PSTR("ADC %i: UNLOCK -> %06lx (ACK   = 065500)\r\n"), (int)id, (uint32_t)ack);

    for (uint8_t a = 0; a < 0x15; a++) {
      printf_P(PSTR("ADC %i reg %02x: %02x\r\n"), (int)id, (int)a, (int)rreg(id, a));
    }
  }

  disable_tx();
}

static void adc_config() {
}

static void adc_start() {
}
#else
#define FADC      F_CPU
#define WORDSZ    24    //ADC word size
#define CLK_DIV   2
#define ICLK_DIV  2
#define OSR       5     //0..15 -> 4096 .. 32, see osrtab below
#define GAIN      4     //0..4, actual gain = 2^GAIN

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

static const uint16_t osrtab[16] = {
  4096, 2048, 1024, 800, 768, 512, 400, 384, 256, 200, 192, 128, 96, 64, 48, 32
};

typedef struct {
  uint8_t nchan;
  uint16_t stat_1;
  uint16_t stat_s;
} adc_state_t;

static adc_state_t adc_state[3] = {
  {
    .nchan = 0,
    .stat_1 = 0,
    .stat_s = 0,
  },
  {
    .nchan = 0,
    .stat_1 = 0,
    .stat_s = 0,
  },
  {
    .nchan = 0,
    .stat_1 = 0,
    .stat_s = 0,
  },
};

static void adc_end_frame2() {
  PORTF |= (1<<5) | (1<<6) | (1<<7);
}

static inline void adc_start_frame2(uint8_t id) {
  //end last frame, if any
  adc_end_frame2();

  //assert relevant /CS pin
  if (id == 0) {
    PORTF &= ~(1 << PF5);
  } else if (id == 1) {
    PORTF &= ~(1 << PF6);
  } else {
    PORTF &= ~(1 << PF7);
  }

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

static uint32_t spi_comm_word(uint32_t in) {
  uint32_t out = 0;
  uint8_t x;

  for (x = 0; x < WORDSZ; x += 8) {
    out |= ((uint32_t)spi_comm_byte(in >> (WORDSZ-8-x)) << (WORDSZ-8-x));
  }

  return out;
}


static void setup_adc_pins() {
  //PF5..7 = /CS_ADC0..2
  DDRF |= (1<<5) | (1<<6) | (1<<7);
  adc_end_frame2();

  //TODO: input capture + interrupt for Timer3 (/DRDYn) and Timer1 (TACHn)
  //tach interrupt = falling edge
  //falling edge..
  //EICRB |= (2<<ISC60) | (2<<ISC70);
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
  //printf_P(PSTR("%08lX -> %08lX\r\n"), cmd, out);
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
      printf_P(PSTR("wreg having problems (a=%02x, d=%02x vs %08lX)\r\n"), a, d, word);
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

void config_adc(uint8_t id) {
  uint8_t msb, lsb, gain, x;
  uint32_t word;

restart:
  printf_P(PSTR("Resetting ADC %i (nchan = %i)\r\n"), id, adc_state[id].nchan);
  //reset procedure:
  //- reset
  //- figure out how large frame size we have (since dynamic)
  //- ensure there are no faults
  adc_comm(id, STANDBY);
  //count active channels (some may be active after a reset, and we have to get the frame size right)
  adc_state[id].nchan = popcount(rreg(id, ADC_ENA));

  adc_comm(id, RESET);
  //spec says to wait at least 4.5 ms
  _delay_ms(5);
  x = 0;
  while ((word = adc_comm(id, 0) >> (WORDSZ-16)) != 0xFF04) {
    if (++x >= 10) {
      printf_P(PSTR("Giving up\r\n"));
      return;
    }
    //printf_P(PSTR("Waiting for FF04, got %08lX\r\n"), word);
    if ((word >> 8) == 0x22) {
      if (word & 0x10) {
        printf_P(PSTR("STAT_N: %02X\r\n"), rreg(id, STAT_N));
        printf_P(PSTR("STAT_P: %02X\r\n"), rreg(id, STAT_P));
      }
      if (word & 0x20) {
        printf_P(PSTR("STAT_S: %02X\r\n"), rreg(id, STAT_S));
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
  printf_P(PSTR("STAT_S: %02X\r\n"), rreg(id, STAT_S));
  printf_P(PSTR("STAT_1: %02X\r\n"), rreg(id, STAT_1));
  printf_P(PSTR("ADC_ENA during startup: %02X\r\n"), rreg(id, ADC_ENA));

  //unlock
  adc_comm(id, UNLOCK);
  int w = 0;
  while ((adc_comm(id, 0) >> (WORDSZ-16)) != 0x0655) {
    printf_P(PSTR("Waiting for UNLOCK\r\n"));
    if (++w >= 10) {
      goto restart;
    }
  }

#if 0
  printf_P(PSTR("STAT_1: %02X\r\n"), rreg(id, STAT_1));
  msb = rreg(id, ID_MSB);
  lsb = rreg(id, ID_LSB);

  printf_P(PSTR("ID_MSB: %02X, ADS131A%02i\r\n"), msb, msb);
  printf_P(PSTR("ID_LSB: %02X, rev. %i\r\n"), lsb, lsb);
  printf_P(PSTR("STAT_1: %02X\r\n"), rreg(id, STAT_1));

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

  //printit();
  wreg(id, ADC1, GAIN);
  wreg(id, ADC2, GAIN);
  wreg(id, ADC3, GAIN);
  printf_P(PSTR("ADCn STAT_1: %02X\r\n"), rreg(id, STAT_1));

  printf_P(PSTR("STAT_1: %02X\r\n"), rreg(id, STAT_1));
  printf_P(PSTR("STAT_S: %02X\r\n"), rreg(id, STAT_S));
  printf_P(PSTR("STAT_M2: %02X\r\n"), rreg(id, STAT_M2));
  printf_P(PSTR("Final STAT_1: %02X\r\n\r\n"), rreg(id, STAT_1));

  //enable channels 0..2
  adc_state[id].nchan = 3;
  wreg(id, ADC_ENA, 0x07);
  //printf_P(PSTR("ADC_ENA STAT_1: %02X\r\n"), rreg(id, STAT_1));

  adc_comm(id, WAKEUP);
  while ((adc_comm(id, 0) >> (WORDSZ-16)) != 0x0033) {
    printf_P(PSTR("Waiting for WAKEUP\r\n"));
  }

  adc_comm(id, LOCK);
  //wait for ACK (0x0555)
  while ((adc_comm(id, 0) >> (WORDSZ-16)) != 0x0555) {
    printf_P(PSTR("Waiting for LOCK\r\n"));
  }
#else
  rreg(id, STAT_1);
  rreg(id, STAT_S);
#endif
}

static void poll_adcs(uint8_t *mask, uint8_t maskin) {
  static const uint8_t default_conf[] = {
  0x04 ,0x03 ,0x00 ,0x00 ,
  0x00 ,0x00 ,0x00 , WORDSZ == 24 ? 0x01 : 0x05,
  0x00 ,0x00 ,0x00 ,0x60 ,
  0x3c ,0x08 ,0x86 ,0x00 ,
  0x00 ,0x00 ,0x00 ,0x00 ,
  0x00
  };

  for (uint8_t id = 0; id < 3; id++) {
    if (!(maskin & (1<<id))) {
      continue;
    }
    //adc_comm(id, STANDBY);
    //adc_comm(id, RESET);

    uint8_t ok = 1;
    printf_P(PSTR("ADC %i: "), id);
    for (uint8_t a = 0; a <= 0x14; a++) {
      //rreg(id,a);
      uint8_t r = rreg(id,a);
      printf_P(PSTR("%02x "), r);
      if (r != default_conf[a]) {
        ok = 0;
      }
    }
    printf_P(ok ? PSTR("Online\r\n") : PSTR("OFF\r\n"));

    if (ok) {
      *mask |= 1<<id;
    }
  }
}
#endif

int main(void)
{
  wdt_enable(WDTO_250MS);

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
  setup_motor_pwm();
  sei();

  //search for 1-wire devices
  uint8_t roms[6*8];
  uint8_t romcnt = 0;
  ds18b20search( &ONEWIRE_PORT, &ONEWIRE_DDR, &ONEWIRE_PIN, ONEWIRE_MASK, &romcnt, roms, sizeof(roms) );

  start_transfer("INFO");
  bsend_P(PSTR("Hello, Earth! 👽\r\n"));
  bwait();
  end_transfer();

  for (;;) {
retry:
    //take a peek at the USART
    //commands are single bytes
    if (UART_STATUS & (1<<UART_RXREADY)) {
      int len = recvline();
      if (len < 1) {
        continue;
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
            if (pwm0 > MOTOR_TOP || pwm1 > MOTOR_TOP || pwm2 > MOTOR_TOP) {
              start_transfer("ERROR");
              printf_P(PSTR("One or more of PWMS %u, %u, and %u is greater than MOTOR_TOP = %u\r\n"), pwm0, pwm1, pwm2, MOTOR_TOP);
              end_transfer();
            } else {
              OCR1A = pwm0;
              OCR1B = pwm1;
              OCR1C = pwm2;
            }
          } else if (n == 2) {
            //set some specific motor
            //pwm0 = motor index
            //pwm1 = value
            if (pwm1 > MOTOR_TOP) {
              start_transfer("ERROR");
              printf_P(PSTR("PWM %u greater than MOTOR_TOP = %u\r\n"), pwm1, MOTOR_TOP);
              end_transfer();
            } else if (pwm0 == 0) {
              OCR1A = pwm1;
            } else if (pwm0 == 1) {
              OCR1B = pwm1;
            } else if (pwm0 == 2) {
              OCR1C = pwm1;
            } else {
              start_transfer("ERROR");
              printf_P(PSTR("bad motor ID: %u\r\n"), pwm0);
              end_transfer();
            }
          } else {
            start_transfer("ERROR");
            printf_P(PSTR("sscanf: n=%i\r\n"), n);
            end_transfer();
          }
        } else if (c == 'K') {
          //start motors with default speed (50%)
          OCR1A = MOTOR_TOP/2;
          OCR1B = MOTOR_TOP/2;
          OCR1C = MOTOR_TOP/2;
        }

        //report motor speeds
        int pwm0 = OCR1A;
        int pwm1 = OCR1B;
        int pwm2 = OCR1C;
        start_transfer("MTR_PWM");
        printf_P(PSTR("%i %i %i\r\n"), pwm0, pwm1, pwm2);
        end_transfer();

        //be helpful if motor power is off
        if (!(PORTB & (1<<0))) {
          start_transfer("INFO");
          printf_P(PSTR("+24V and +-5V OFF\r\n"));
          end_transfer();
        }
      } else if (c == 'v') {
        //measure system voltages
        start_transfer("ERROR");
        printf_P(PSTR("TODO\r\n"));
        end_transfer();
      } else if (c == 'V') {
        PORTB |= (1<<0);
        start_transfer("INFO");
        printf_P(PSTR("+24V and +-5V ON\r\n"));
        end_transfer();
      } else if (c == 'B') {
        PORTB &= ~(1<<0);
        start_transfer("INFO");
        printf_P(PSTR("+24V and +-5V OFF\r\n"));
        end_transfer();
      } else if (c == '1' || c == '!') {
        if (c == '!') {
          //search for ROMs again
          romcnt = 0;
          ds18b20search( &ONEWIRE_PORT, &ONEWIRE_DDR, &ONEWIRE_PIN, ONEWIRE_MASK, &romcnt, roms, sizeof(roms) );
        }
        start_transfer("ONEWIRE");
        for (uint8_t x = 0; x < romcnt; x++) {
          for (uint8_t y = 0; y < 8; y++) {
            printf_P(PSTR("%02x"), roms[x*8+y]);
          }
          printf_P(PSTR("\r\n"));
        }
        end_transfer();
      } else if (c == 't') {
        //measure and send temperatures
        start_transfer("INFO");
        printf_P(PSTR("Starting temperature conversion...\r\n"));
        end_transfer();

        //tell all devices to do a temperature conversion
        ds18b20convert( &ONEWIRE_PORT, &ONEWIRE_DDR, &ONEWIRE_PIN, ONEWIRE_MASK, NULL );

        //issue read slots, wait for all devices to transmit 1
        while (!onewireReadBit( &ONEWIRE_PORT, &ONEWIRE_DDR, &ONEWIRE_PIN, ONEWIRE_MASK )) {
          wdt_reset();
        }

        start_transfer("TEMPS");
        for (uint8_t x = 0; x < romcnt; x++) {
          for (uint8_t y = 0; y < 8; y++) {
            printf_P(PSTR("%02x"), roms[x*8+y]);
          }
          int16_t temp, templo;
          ds18b20read( &ONEWIRE_PORT, &ONEWIRE_DDR, &ONEWIRE_PIN, ONEWIRE_MASK, &roms[x*8], &temp );

          //poor man's binary to decimal conversion
          if (temp >= 0) {
            templo = temp & 15;
          } else {
            templo = (-temp) & 15;
          }
          temp /= 16;
          printf_P(PSTR(" %i.%02i\r\n"), temp, (625*templo)/100);
        }
        end_transfer();
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
      } else if (c == 'r') {
        //measure motor speeds
        start_transfer("INFO");
        printf_P(PSTR("Measuring motor speeds\r\n"));
        end_transfer();

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
            PORTD = (PORTD & ~((1<<6)|(1<<7))) | (x << 6);
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

        start_transfer("MTR_SPD");
        for (uint8_t x = 0; x < 3; x++) {
          int rpm = 0;
          if (ntachs[x] >= 2) {
            uint32_t period = (lasttach[x] - firsttach[x]) / (ntachs[x]-1);
            rpm = F_CPU * 60 / period;
          }
          printf_P(PSTR("Motor %i: %i tachs (%i RPM)\r\n"), (int)x, ntachs[x], rpm);
        }
        end_transfer();
      } else if (c == ';') {
        uint16_t sintab[1024];

        start_transfer("INFO");
        for (uint16_t x = 0; x <1024; x++) {
          //sintab[x] = (1+sin(x*2*M_PI / 1024))*512 - 0.5; //-2 .. +2 V
          //sintab[x] = sin(x*2*M_PI / 1024)*128 + 512 - 0.5; //-0.5 .. +0.5 V
          //sintab[x] = sin(x*2*M_PI / 1024)*64 + 512 - 0.5; //-0.25 .. +0.25 V
          sintab[x] = sin(x*2*M_PI / 1024)*50 + 512 - 0.5; //-0.2 .. +0.2 V
          wdt_reset();
          printf_P(PSTR("%u: %u\r\n"), x, sintab[x]);
        }
        end_transfer();

        for (;;) {
          //stuff for testing MAX504 + ADG601
          uint16_t a = 0;
          uint16_t b = 1024;
          uint16_t step = 1;
          for (uint16_t x = a; x < b; x += step) {
            set_vgnd(sintab[x]);
            _delay_us(600);
            wdt_reset();
            /*set_vgnd(512);
            _delay_ms(100);
            wdt_reset();
            //set_vgnd(512 + (111-8)/4);
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
        set_vgnd(512);
      } else if (c == 'p') {
        //list programs
        list_programs();
      } else if (c == 'D') {
        //delete program
        if (delete_program(line) < 0) {
          start_transfer("ERROR");
          printf_P(PSTR("Found no program called \"%s\"\r\n"), line);
          end_transfer();
        } else {
          start_transfer("INFO");
          printf_P(PSTR("Program \"%s\" deleted (%u B free)\r\n"), line, free_program_space());
          end_transfer();
        }
      } else if (c == 'P') {
        //add/relace program
        //delete program if it exists
        delete_program(line);
        char slot = add_program(line);

        if (slot == -1) {
          start_transfer("ERROR");
          printf_P(PSTR("\r\nProgram name too long or too short: %s\r\n"), line);
          end_transfer();
        } else if (slot == -2) {
          start_transfer("ERROR");
          printf_P(PSTR("\r\nNo free program slots (%i max)\r\n"), max_programs);
          end_transfer();
        } else {
          start_transfer("INFO");
          printf_P(PSTR("\r\nProgram \"%s\" will be added in slot %i\r\nEnter program below, terminate with empty line:\r\n"), line, (int)slot);
          end_transfer();

          for (;;) {
            start_transfer("INFO");
            printf_P(PSTR("%u B left\r\n"), free_program_space());
            end_transfer();

            len = recvline();
            if (len == 0) {
              start_transfer("INFO");
              printf_P(PSTR("Done.\r\n"));
              end_transfer();
              break;
            } else if (len < 0) {
              start_transfer("INFO");
              printf_P(PSTR("Deleted program.\r\n"));
              end_transfer();
              delete_program_slot(slot);
              break;
            } else {
              char ret = add_program_line(line);
              if (ret < 0) {
                start_transfer("ERROR");
                printf_P(PSTR("Not enough memory.\r\n"));
                end_transfer();
                delete_program_slot(slot);
                break;
              }
            }
          }
        }
      } else if (c == 'w') {
        if (len > 0) {
          uint32_t delay, t0, t1;
          if (sscanf(line, "%lu", &delay) != 1) {
            continue;
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
          start_transfer("INFO");
          printf_P(PSTR("Delayed %lu cycles\r\n"), t1-t0);
          end_transfer();
        }
      } else if (c == 'c' || c == 'C') {
        if (c == 'C') {
          if (len > 0) {
            uint64_t t = parse64(line);
            settime64(t);
          }
        }
        uint64_t t = gettime64();

        start_transfer("CLOCK");
        print64(t);
        printf_P(PSTR("\r\n"));
        end_transfer();
      } else if (c == 'R') {
        //adc_reset_all();
        uint8_t adcmask = 0, maskin;
        int n = sscanf(line, "%hhu", &maskin);
        if (n != 1) maskin = 1;

        start_transfer("RESET_ADCS");
        for (uint8_t x = 0; adcmask != maskin; x++) {
          if (x >= 3) {
            end_transfer();
            start_transfer("ERROR");
            printf_P(PSTR("Failed to bring all ADCs online\r\n"));
            end_transfer();
            break;
          }

          poll_adcs(&adcmask, maskin);
          for (uint8_t id = 0; id < 2; id++) {
            if (!(adcmask & (1<<id)) && (maskin & (1<<id)) ) {
              config_adc(id);
            }
          }
          wdt_reset();
        }
        end_transfer();
      } else if (c == 'q' || c == 'Q') {
        if (c == 'Q') {
          do {
            uint8_t id, index, value;
            int n = sscanf(line, "%hhu %hhx %hhx", &id, &index, &value);
            if (n != 3) {
              start_transfer("ERROR");
              printf_P(PSTR("sscanf(\"%s\") = %i, expected 3\r\n"), line, n);
              end_transfer();
              goto retry;
            }

            wreg(id, index, value);
            n = recvline();
            if (n < 0) {
              goto retry;
            } else if (n == 0) {
              //empty line = done
              break;
            }
          } while (1);
        }
        start_transfer("ADC_REGS");
        for (uint8_t id = 0; id < 3; id++) {
          printf_P(PSTR("%i"), id);
          for (uint8_t a = 0; a <= 0x14; a++) {
            uint8_t r = rreg(id,a);
            printf_P(PSTR(" %02x"), r);
          }
          printf_P(PSTR("\r\n"));
        }
        end_transfer();
      } else if (c == '?') {
        //print help
        start_transfer("INFO");
        printf_P(PSTR("Read manual.pdf 😉\r\n"));
        end_transfer();
      }
    }
    wdt_reset();
  }

  return 0;
}
