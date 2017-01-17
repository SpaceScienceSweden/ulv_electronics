#ifndef MAIN_H
#define MAIN_H

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <stdint.h>
#include <stdio.h>
#include <math.h>
#include <string.h>

#define FADC      (F_CPU/2)
#define BAUD      115200
#define WORDSZ    32    //ADC word size
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

typedef __uint24 timer_t;

typedef struct {
  uint8_t nchan;
  uint16_t stat_1;
  uint16_t stat_s;
} adc_state_t;

extern volatile adc_state_t adc_state[2];
extern FILE mystdout;
extern char sintab[256];

void setup_adc_pins();
void disable_adc(uint8_t id);
void config_adc(uint8_t id);
void enable_adc(uint8_t id);
void disable_tachs();
void setup_tach(uint8_t id);
void disable_timer3();
void setup_timer3();

//background printf, format string in PROGMEM
//NOTE: %s is SRAM strings, %S is PROGMEM strings 
void bprintf_P(const char *format, ...);

void setup();

static inline void adc_end_frame2() {
  //de-assert /CS
  PORTD |= (1<<6) | (1<<7);
}

static inline void adc_start_frame2(uint8_t id) {
  //end last frame, if any
  adc_end_frame2();

  //assert relevant /CS pin
  if (id == 0) {
    PORTD &= ~(1 << PD6);
  } else {
    PORTD &= ~(1 << PD7);
  }
}

static inline uint8_t spi_comm_byte(uint8_t in) {
  //we could write this in asm
  //16 cy delay between setting and reading SPDR should be enough
  SPDR = in;
  while(!(SPSR & (1<<SPIF)));
  return SPDR;
}

#endif //MAIN_H