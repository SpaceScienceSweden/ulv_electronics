#include "main.h"

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
  //printf_P(PSTR("%08lX -> %08lX\r\n"), in, out);
  adc_end_frame2();

  return out;
}

void setup_adc_pins() {
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
  //incidentally this also asserts EN_APWR
  PORTB |= (1<<0);
  DDRB |= (1<<0) | (1<<1) | (1<<2);

  //enable spi, run at fck/2 (3.7 Mbps)
  SPCR = (1<<SPE) | (1<<MSTR);
  SPSR |= (1<<SPI2X); //double speed (vroom!)
  //CPOL=0, CPHA=1
  SPCR |= 1<<CPHA;
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

static void printit() {
  float fdata = FADC;
  int32_t hi, lo;
  fdata /= CLK_DIV;
  fdata /= ICLK_DIV;
  fdata /= osrtab[OSR];

  //can't printf() floats for some reason, so do a bit of hackery
  hi = fdata;
  lo = 100*(fdata - hi);

  printf_P(PSTR(" f_mod = %li\r\n"), (int32_t)(FADC / CLK_DIV / ICLK_DIV));
  printf_P(PSTR("f_data = %li.%02li\r\n"), hi, lo);
  printf_P(PSTR("gain = %i\r\n"), 1<<GAIN);
}

void disable_adc(uint8_t id) {
  //just disable interrupt for now
  EIMSK &= ~(1<<(6+id));
  EIFR |= 1<<(6+id);
}

void config_adc(uint8_t id) {
  uint8_t msb, lsb, gain, x;
  uint32_t word;

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
  while (((word = adc_comm(id, 0)) >> (WORDSZ-16)) != 0xFF04 && x < 10) {
    x++;
    printf_P(PSTR("Waiting for FF04, got %08lX\r\n"), word);
    word >>= (WORDSZ-16);
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
  while ((adc_comm(id, 0) >> (WORDSZ-16)) != 0x0655) {
    printf_P(PSTR("Waiting for UNLOCK\r\n"));
  }

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

  printit();
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

}

void enable_adc(uint8_t id) {
  //enable /DRDYx interrupts on PE6..7
  EIMSK |= (1<<(6+id));
}
