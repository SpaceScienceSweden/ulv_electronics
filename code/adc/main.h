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
#define TIMER3_N  1     //timer3 prescaler
#define SIGNAL_N  1     //signal frequency compared to tach, numerator
#define SIGNAL_D  1     //signal frequency compared to tach, denominator
#define TACHS_PER_PRINT  100
#define MAX_SAMPLES_PER_TACH 1000

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

static const uint16_t osrtab[16] = {
  4096, 2048, 1024, 800, 768, 512, 400, 384, 256, 200, 192, 128, 96, 64, 48, 32
};

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

extern volatile adc_state_t adc_state[2];
extern FILE mystdout;
extern char sintab[256];

void adc_end_frame2();
void adc_start_frame2(uint8_t id);
uint8_t spi_comm_byte(uint8_t in);
void setup_adc_pins();
void disable_adc(uint8_t id);
void config_adc(uint8_t id);

//background printf, format string in PROGMEM
//NOTE: %s is SRAM strings, %S is PROGMEM strings 
void bprintf_P(const char *format, ...);

void setup();
