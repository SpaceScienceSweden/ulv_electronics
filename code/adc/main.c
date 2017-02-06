#include "main.h"
#include <util/delay.h>

volatile adc_state_t adc_state[2] = {{0},{0}};

//volatile *because* we can be interrupted
volatile timer_t timer3_base;

//we might want to put this in PROGMEM, we'll see
char sintab[256];

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

inline timer_t currenttime() {
  return timer3_base + TCNT3;
}

ISR(TIMER3_COMPA_vect) {
  //this ISR is hit in the middle of Timer3's range
  //its purpose is to prevent an overflow from ever occuring
  //the reason is so that we're guaranteed that TOV1 is never set in currenttime()

  uint16_t tcnt3 = TCNT3;
  TCNT3 = 6;  //number of cycles taken by this exchange

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

  timer3_base += tcnt3;
}

ISR(TIMER3_OVF_vect) {
  //this shouldn't happen
  timer3_base += 65536;
  printf_P(PSTR("TIMER3_OVF_vect was hit :(\r\n"));
}

volatile uint8_t tach_cnt;
volatile timer_t tachstart, tachend;
volatile uint8_t got_tach;

inline void handle_tach() {
  timer_t t = currenttime();
  busy();

  if (t - tachstart < 1000) {
    //debounce
    //TODO: higher amplitude on analog tach signal maybe?
    //it is ~200 mVp-p at the moment (0.8-1.0 V)
    //470 kOhm -> 3.76-4.70 V
    unbusy();
    return;
  }

  tachstart = tachend;
  tachend = t;

  //ignore the very first TACH, since it might happen before the first sei() in capture_fm()
  if (tach_cnt < 3) {
    tach_cnt++;
  }

  if (tach_cnt > 2) {
    got_tach = 1;
  }
  unbusy();
}

typedef struct {
  __int24 sample[3];
  uint8_t dummy[7];   //pad to 16 bytes
} capture_t;

#define CAPTURE_MAX 80
volatile capture_t capture_data[CAPTURE_MAX];
volatile capture_t *capture_ptr;
volatile uint8_t capture_cnt;
volatile uint8_t cur_adc;
volatile timer_t second_samplet;
volatile uint8_t second_samplet_cnt;

inline void adc_read_channel() {
  if (tach_cnt < 2) {
    return;
  }

  if (second_samplet_cnt == 1) {
    //we could get better accuracy using timer3 input capture
    second_samplet = currenttime();
    //re-enable timer3 interrupts
    ETIMSK |= (1<<TOIE3) | (1<<OCIE3A);
    second_samplet_cnt = 2;
  } else if (second_samplet_cnt == 0) {
    //disable timer3 interrupts until next sample
    //this reduces timing jitter since TIMER3_COMPA might occur just before DRDY
    ETIMSK &= ((1<<TOIE3) | (1<<OCIE3A));
    second_samplet_cnt = 1;
  }

  sei();

  busy();
  if (capture_cnt >= CAPTURE_MAX) {
    return;
  }

  adc_start_frame2(cur_adc);

  //TODO: we could speed this up by writing an inline "skip one byte" asm routine
  //something like out SPDR, r1 followed by 15x NOPs (16 cy total)
  //the regular spi_comm_byte() could be similarly optimized, to 17 cycles
  spi_comm_byte(0);
  spi_comm_byte(0);
  spi_comm_byte(0);
#if WORDSZ == 32
  spi_comm_byte(0);
#endif

  uint8_t x;
  uint8_t *sample_ptr = (uint8_t*)capture_ptr->sample;

  sample_ptr[2] = spi_comm_byte(0);
  sample_ptr[1] = spi_comm_byte(0);
  sample_ptr[0] = spi_comm_byte(0);
#if WORDSZ == 32
    spi_comm_byte(0);
#endif
  sample_ptr[5] = spi_comm_byte(0);
  sample_ptr[4] = spi_comm_byte(0);
  sample_ptr[3] = spi_comm_byte(0);
#if WORDSZ == 32
    spi_comm_byte(0);
#endif
  sample_ptr[8] = spi_comm_byte(0);
  sample_ptr[7] = spi_comm_byte(0);
  sample_ptr[6] = spi_comm_byte(0);
#if WORDSZ == 32
    spi_comm_byte(0);
#endif

  /*
  capture_t *capture_ptr_nv = (capture_t*)capture_ptr;

  for (x = 0; x < 3; x++) {
    ((uint8_t*)&capture_ptr_nv->sample[x])[2] = spi_comm_byte(0);
    ((uint8_t*)&capture_ptr_nv->sample[x])[1] = spi_comm_byte(0);
    ((uint8_t*)&capture_ptr_nv->sample[x])[0] = spi_comm_byte(0);
#if WORDSZ == 32
    if (x < 2) {
      spi_comm_byte(0);
    }
#endif
  }
  */

  adc_end_frame2();
  capture_cnt++;
  capture_ptr++;

  unbusy();
}

static void reset_capture(uint8_t id) {
  busy_cnt = 0;
  disable_timer3();
  disable_adc(0);
  disable_adc(1);
  disable_tachs();

  capture_ptr = capture_data;
  capture_cnt = 0;
  tach_cnt = 0;
  got_tach = 0;
  cur_adc = id;
  second_samplet_cnt = 0;
}

#define REVS 1
#define SAMP 2
//#define DEBUG
static int capture_fm(uint8_t id, uint32_t avg, uint8_t avg_type, char *buf, size_t sz) {
  const uint16_t K = 2U*CLK_DIV*ICLK_DIV*osrtab[OSR];

  if (avg_type != REVS && avg_type != SAMP) {
    printf_P(PSTR("bad avg_type\r\n"));
    return 1;
  }

  //clean start
  cli();
  reset_capture(id);

  setup_timer3();
  enable_adc(id);
  setup_tach(id);
  sei();

  uint16_t revs;
  uint32_t avg_tot = 0;
  int64_t I[3] = {0,0,0};
  int64_t Q[3] = {0,0,0};
  timer_t tachlen_min = 0, tachlen_max = 0;
  uint32_t tachlen_sum = 0;

  timer_t samplet = 0;
  uint8_t first_tach = 1;
  timer_t first_tachstart = 0;

  int ret = 0;
  for (revs = 0; avg_type == REVS ? revs < avg : avg_tot < avg;) {
    cli();
    uint8_t cnt = capture_cnt;

    if (cnt >= CAPTURE_MAX) {
      ret = 1;
#ifdef DEBUG
      printf_P(PSTR("rotor too slow: %i (id=%i)\r\n"), (int)cnt, (int)id);
#endif
      break;
    }

    if (got_tach) {
      busy();
      sei();

      got_tach = 0;

      timer_t tachstart_copy = tachstart;
      timer_t tachend_copy = tachend;
      timer_t tachlen = tachend_copy - tachstart_copy;

      if (first_tach) {
        first_tach = 0;
        //modulo instead of just second_samplet - K, to reduce risk of demodulation loop being aborted early (x=0)
        //this would happen about one every few minutes with avg=2 and a 300 Hz input
        //TODO: fully debug this, or switch to input capture
        samplet = tachstart_copy + ((second_samplet - tachstart_copy) % K);
        first_tachstart = tachstart_copy;
      }

      //collect statistics on rotor speed
      if (revs == 0) {
        tachlen_min = tachlen;
        tachlen_max = tachlen;
      } else {
        if (tachlen < tachlen_min) {
          tachlen_min = tachlen;
        } else if (tachlen > tachlen_max) {
          tachlen_max = tachlen;
        }
      }
      tachlen_sum += tachlen;

      //purposefully non-volatile
      capture_t *loop_ptr = (capture_t*)capture_data;

      //demodulate
      uint8_t x;
      for (x = 0; x < cnt && samplet - tachstart_copy < tachlen; x++, loop_ptr++, samplet += K) {
        uint8_t y;
        uint8_t iphase = 256UL * (samplet - tachstart_copy) / tachlen;
        uint8_t qphase = iphase + 64;

        for (y = 0; y < 3; y++) {
          I[y] += (int32_t)loop_ptr->sample[y] * sintab[iphase];
          Q[y] += (int32_t)loop_ptr->sample[y] * sintab[qphase];
        }
      }

      //deal with capturing samples past tachend
      /*if (x == 0) {
        this should never happen
        cli();
        printf_P(PSTR("%i!=%i\r\n"),(int)cnt,(int)x);
        printf_P(PSTR("%li < %li < %li\r\n"), (int32_t)tachstart_copy, (int32_t)loop_ptr->t, (int32_t)tachend_copy);
        printf_P(PSTR("revs = %i\r\n"), revs);
        for (x = 0; x < capture_cnt; x++) {
          printf_P(PSTR("%li\r\n"), capture_data[x].t);
        }
        for(;;);
      }*/
      cnt = x;

      cli();
      if (cnt < 4) {
        ret = 1;
#ifdef DEBUG
        printf_P(PSTR("only got %i samples - rotor is spinning too fast: %li (id=%i, rev=%i)\r\n"), cnt, (int32_t)(tachend - tachstart), (int)id, (int)revs);
#endif
        break;
      }

      if (revs != avg-1) {
      //pull capture_data "back" cnt entries
      //a circular buffer would be faster, but then the DRDY ISR becomes more complicated
      if (capture_cnt > cnt) {
        memmove((void*)capture_data, (void*)&capture_data[cnt], (capture_cnt-cnt)*sizeof(capture_t));
      }
      capture_ptr = &capture_data[capture_cnt -= cnt];
      }
      unbusy();
      sei();

      revs++;
      avg_tot += cnt;
    } else {
      sei();

      //TODO: check for lack of TACH in X seconds
    }
  }

  cli();
  //printf_P(PSTR("first samplet: %li\r\n"), (int32_t)(__int24)(second_samplet - first_tachstart - K));
  reset_capture(id);
  sei();

  if (ret == 0) {
  //TODO: print Is and Qs as 64-bit integers
  snprintf_P(buf, sz, PSTR("%6lu,%8lu,%6lu,%4u,%5lu,%10.0f,%10.0f,%10.0f,%10.0f,%10.0f,%10.0f"),
    (uint32_t)tachlen_min, tachlen_sum, (uint32_t)tachlen_max, revs,
    avg_tot,
    (float)I[0] / avg_tot, (float)Q[0] / avg_tot,
    (float)I[1] / avg_tot, (float)Q[1] / avg_tot,
    (float)I[2] / avg_tot, (float)Q[2] / avg_tot
  );
  }

  return ret;
}

//ISR for TACHa
ISR(INT4_vect) {
  handle_tach();
}

//ISR for TACHb
ISR(INT5_vect) {
  handle_tach();
}

//ISR for /DRDYa
ISR(INT6_vect) {
  adc_read_channel();
}

//ISR for /DRDYb
ISR(INT7_vect) {
  adc_read_channel();
}

void delay_ms(uint32_t ms) {
  int32_t cycles = F_CPU * ms / 1000;
  setup_timer3();

  cli();
  timer_t t = currenttime();
  sei();

  while (cycles > 0) {
    cli();
    timer_t t2 = currenttime();
    sei();

    cycles -= t2 - t;
    t = t2;
  }
}

void capture_seconds(int s) {
  char buf1[128];
  char buf2[128];
  int x;
  for (x = 0; x < s*10; x++) {
    if (capture_fm(0, 1800/20, SAMP, buf1, sizeof(buf1)) ||
        capture_fm(1, 1800/20, SAMP, buf2, sizeof(buf2))) {
      //something went wrong
      //printf_P(PSTR("fail1\r\n"));
    }
    printf_P(PSTR("%s,%s\r\n"), buf1, buf2);
  }
}

int main(void)
{
  cli();
  setup();
  sei();

#ifdef DEBUG
  printf_P(PSTR("ADC state size: %i\r\n"), sizeof(adc_state));
  printf_P(PSTR("Done setting up\r\n"));
#endif

  printf_P(PSTR("Start motors\r\n"));
  _delay_ms(3000);
  printf_P(PSTR("Spin up\r\n"));

  uint8_t x;
  for (x = 64; x < 200; x++) {
    OCR1B = OCR1A = x;
    delay_ms(20);
  }
  printf_P(PSTR("Done spinup\r\n"));

  for (;;) {
    OCR1B = OCR1A = 200;
    capture_seconds(1);
  }

  return 0;
}


