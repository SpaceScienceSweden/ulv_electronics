#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <util/delay.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include "ds18b20.h"

#define FADC      F_CPU
#define BAUD      115200
#define WORDSZ    24    //ADC word size
#define CLK_DIV   2
#define ICLK_DIV  2
#define OSR       5     //0..15 -> 4096 .. 32, see osrtab below
#define GAIN      4     //0..4, actual gain = 2^GAIN
#define TACHS_PER_PRINT  100
#define MAX_SAMPLES_PER_TACH 1000

//#define UBRR  (((F_CPU+8LL*BAUD)/(16LL*BAUD))-1) //lo-speed (U2X=0)
#define UBRR  (((F_CPU+4LL*BAUD)/(8LL*BAUD))-1) //hi-speed (U2X=1)
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


//stuff to make printf() work
//source: http://efundies.com/avr-and-printf/
//we could probable make scanf() work too
int usart_putchar_printf(char var, FILE *stream) {
  while (!(UCSR1A & (1<<UDRE1)));
  UDR1 = var;
  while (!(UCSR0A & (1<<UDRE0)));
  UDR0 = var;
  return 0;
}
FILE mystdout = FDEV_SETUP_STREAM(usart_putchar_printf, NULL, _FDEV_SETUP_WRITE);

char somedata[]="hello\n";
char hello[4000];

static void setup_xmem() {
  //assert /EN_XMEM (PG3)
  DDRG |= (1<<3);
  PORTG &= ~(1<<3);

  //enable XMEM, one single sector (0x1100 - 0xFFFF), no wait states
  MCUCR = (1<<SRE);
  XMCRA = 0;
  //no bus keeper, full address space
  XMCRB = 0;

  //clear all of it (.bss and heap)
  uint8_t *ptr = (uint8_t*)0x1100;
  while (ptr != 0x0000) {
    *ptr++ = 0;
  }
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

  //TX and DE
  DDRD |= (1<<PD3) | (1<<PD5);
}

static unsigned freeRam () {
  extern int __heap_start, *__brkval;
  //tested, verified to be correct down to the single byte
  return 0xffff - (__brkval == 0 ? (int) &__heap_start : (int) __brkval);
}

static inline void adc_end_frame2() {
  //de-assert /CS
  PORTD |= (1<<0) | (1<<1);
  PORTF |= (1<<7);
}

static inline void adc_start_frame2(uint8_t id) {
  //end last frame, if any
  adc_end_frame2();

  //assert relevant /CS pin
  if (id == 0) {
    PORTD &= ~(1 << PD0);
  } else if (id == 1) {
    PORTD &= ~(1 << PD1);
  } else {
    PORTF &= ~(1<<7);
  }
}

static inline uint8_t spi_comm_byte(uint8_t in) {
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
    out |= ((uint32_t)spi_comm_byte(in >> (WORDSZ-8-x)) << (WORDSZ-8-x));
  }

  return out;
}


static void setup_adc_pins() {
  //CS pins = PD0, PD1, PF7
  PORTD |= (1<<0) | (1<<1);
  PORTF |= (1<<7);
  DDRD |= (1<<0) | (1<<1);
  DDRF |= (1<<7);

  //TODO: input capture + interrupt for Timer3 (/DRDYn) and Timer1 (TACHn)
  //tach interrupt = falling edge
  //falling edge..
  EICRB |= (2<<ISC60) | (2<<ISC70);

  //setup SPI
  //set MOSI and SCK as output, obviously
  //but also set /SS as output or a low input will put us in SPI slave mode
  //incidentally this also asserts EN_APWR
  PORTB |= (1<<0);
  DDRB |= (1<<0) | (1<<1) | (1<<2);

  //enable spi, run at fck/2 (3.7 Mbps)
  SPCR = (1<<SPE) | (1<<MSTR);
  SPSR |= (1<<SPI2X); //double speed (vroom!)
  //CPOL=0, CPHA=1
  SPCR |= 1<<CPHA;
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

static void poll_adcs(uint8_t *mask) {
  static const uint8_t default_conf[] = {
  0x04 ,0x03 ,0x00 ,0x00 ,
  0x00 ,0x00 ,0x00 , WORDSZ == 24 ? 0x01 : 0x05,
  0x00 ,0x00 ,0x00 ,0x60 ,
  0x3c ,0x08 ,0x86 ,0x00 ,
  0x00 ,0x00 ,0x00 ,0x00 ,
  0x00
  };

  for (uint8_t id = 0; id < 3; id++) {
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

//based on onewireWrite
void onewireWriteBit(volatile uint8_t *port, volatile uint8_t *direction, volatile uint8_t *portin, uint8_t mask,
                     uint8_t bit) {
  uint8_t sreg = SREG; //Store status register

  cli( );

  *port |= mask; //Write 1 to output
  *direction |= mask;
  *port &= ~mask; //Write 0 to output

  if ( bit ) _delay_us( 8 );
  else _delay_us( 80 );

  *port |= mask;

  if ( bit ) _delay_us( 80 );
  else _delay_us( 2 );

  SREG = sreg;
}

//based on onewireRead
//returns 1 or 0
uint8_t onewireReadBit( volatile uint8_t *port, volatile uint8_t *direction, volatile uint8_t *portin, uint8_t mask ) {
  uint8_t sreg = SREG; //Store status register
  uint8_t data = 0;

  cli( ); //Disable interrupts

  *port |= mask; //Write 1 to output
  *direction |= mask;
  *port &= ~mask; //Write 0 to output
  _delay_us( 2 );
  *direction &= ~mask; //Set port to input
  _delay_us( 5 );
  data = !!( *portin & mask ); //Read input
  _delay_us( 60 );

  SREG = sreg;

  return data;
}

//returns number of devices detected, up to maxroms
int enumerate(volatile uint8_t *port, volatile uint8_t *direction, volatile uint8_t *portin, uint8_t mask,
              uint64_t *roms, int maxroms) {
  int nroms = 0;
  uint64_t last_rom = 0;
  int8_t last_conflict = -1;
  int8_t last_zero = -1;

  int y;
  for (y = 0; y < maxroms; y++) {
    uint64_t cur_rom = 0;
    int8_t x;

    if (onewireInit(port, direction, portin, mask)) {
      //probably no sensors on the bus
      //printf_P(PSTR("1-wire reset failed\r\n"));
      return 0;
    }

    //begin search
    onewireWrite(port, direction, portin, mask, 0xF0);

    for (x = 0; x < 64; x++) {
      uint8_t bits =    onewireReadBit(port, direction, portin, mask);
      bits         |= 2*onewireReadBit(port, direction, portin, mask);

      //algorithm via https://www.maximintegrated.com/en/app-notes/index.mvp/id/187
      uint8_t bit = 0;
      if (bits == 0) {
        if (x == last_conflict ) {
          bit = 1;
        } else if (x < last_conflict) {
          bit = (last_rom >> x) & 1;
        } else {
          last_conflict = x;
          bit = 0;
        }
        if (bit == 0) {
          last_zero = x;
        }
      } else if (bits == 1) {
        bit = 1;
      } else if (bits == 2) {
        bit = 0;
      } else {
        //no more devices
        return nroms;
      }

      cur_rom |= ((uint64_t)bit)<<x;
      onewireWriteBit(port, direction, portin, mask, bit);
    }

    if (cur_rom == last_rom) {
      //looks like we're done
      break;
    }

    last_conflict = last_zero;
    //printf_P(PSTR("found device: %08lX%08lX\r\n"), (uint32_t)(cur_rom >> 32), (uint32_t)cur_rom);
    roms[nroms++] = last_rom = cur_rom;
  }

  return nroms;
}

void read_temperatures(volatile uint8_t *port, volatile uint8_t *direction, volatile uint8_t *portin, uint8_t mask,
                       const uint64_t *roms, int nroms) {
  int y;
  //tell all devices on the bus to perform a conversion
  ds18b20convert(port, direction, portin, mask, NULL );
  _delay_ms( 1000 );

  for (y = 0; y < nroms; y++) {
    int temp;
    ds18b20read(port, direction, portin, mask, (uint8_t*)&roms[y], &temp );
    printf_P(PSTR("temp: %.3f  ROM="), temp * 0.062500f);
    printf_P(PSTR("%08lx"), (uint32_t)(roms[y] >> 32));
    printf_P(PSTR("%08lx\r\n"), (uint32_t)roms[y]);
  }
}

int main(void)
{
  /*PORTB &= ~(1<<0);
  DDRB |= (1<<0);

  for (uint8_t x = 0; x < 200; x++) {
    _delay_ms(30);
  }*/

  setup_xmem();

  DDRF |= (1<<5) | (1<<6); //LEDs
  PORTF &= ~( (1<<5) | (1<<6) ); //LEDs

  setup_uart0();
  setup_uart1();
  setup_adc_pins();
  //setup stdout for printf()
  stdout = &mystdout;
  PORTD |= (1<<5); //enable RS-485 driver

  //turn all motors on, in sequence
  DDRB |= (1<<5) | (1<<6) | (1<<7);
  PORTB |= (1<<5) | (1<<6) | (1<<7);

  PORTF |= (1<<5); //LED
  _delay_ms(500);
  printf_P(PSTR("Motor 0 ON\r\n"));
  PORTB &= ~(1<<5);
  _delay_ms(2000);
  printf_P(PSTR("Motor 1 ON\r\n"));
  PORTB &= ~(1<<6);
  _delay_ms(2000);
  printf_P(PSTR("Motor 2 ON\r\n"));
  PORTB &= ~(1<<7);

  PORTF &= ~(1<<5); //LED
  PORTF |= (1<<6); //LED

  uint8_t adcmask = 0;
  for (uint8_t x = 0; adcmask != 7; x++) {
    if (x >= 10) {
      printf_P(PSTR("Failed to bring all ADCs online\r\n"));
      break;
    }

    poll_adcs(&adcmask);
    for (uint8_t id = 0; id < 3; id++) {
      if (!(adcmask & (1<<id))) {
        config_adc(id);
      }
    }
  }

  if (adcmask == 7) {
    printf_P(PSTR("All ADCs online :)\r\n"));
  }

  PORTF |= (1<<5); //LED

  //read DS18B20Z's
  //temp: 25.438  ROM=040000096919d428
  //temp: 24.625  ROM=d300000969205928
  //temp: 24.875  ROM=2c000009486ab528
  //temp: 24.563  ROM=5000000968ff0728
  uint64_t roms[8];
  int maxroms = sizeof(roms)/sizeof(roms[0]);
  int nroms = enumerate(&PORTG, &DDRG, &PING, 1<<4, roms, maxroms);
  read_temperatures(&PORTG, &DDRG, &PING, 1<<4, roms, nroms);


  for (;;);

  PORTD &= ~(1<<5);

  return 0;
}
