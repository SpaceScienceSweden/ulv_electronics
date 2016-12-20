#include "main.h"

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

  spi_comm_byte(0);
  spi_comm_byte(0);
  spi_comm_byte(0);
#if WORDSZ == 32
  spi_comm_byte(0);
#endif

  uint8_t x;
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

static int capture_fm(uint8_t id, uint16_t avg) {
  const uint16_t K = 2U*CLK_DIV*ICLK_DIV*osrtab[OSR];

  //clean start
  cli();
  reset_capture(id);

  setup_timer3();
  enable_adc(id);
  setup_tach(id);
  sei();

  uint16_t avg_cnt;
  uint32_t avg_tot = 0;
  int64_t I[3] = {0,0,0};
  int64_t Q[3] = {0,0,0};
  timer_t tachlen_min = 0, tachlen_max = 0;
  uint32_t tachlen_sum = 0;

  timer_t samplet = 0;
  uint8_t first_tach = 1;
  timer_t first_tachstart = 0;

  int ret = 0;
  for (avg_cnt = 0; avg_cnt < avg;) {
    cli();
    uint8_t cnt = capture_cnt;

    if (cnt >= CAPTURE_MAX) {
      ret = 1;
      printf_P(PSTR("rotor too slow: %i\r\n"), (int)cnt);
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
        samplet = second_samplet - K;
        first_tachstart = tachstart_copy;
      }

      //collect statistics on rotor speed
      if (avg_cnt == 0) {
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
        printf_P(PSTR("avg_cnt = %i\r\n"), avg_cnt);
        for (x = 0; x < capture_cnt; x++) {
          printf_P(PSTR("%li\r\n"), capture_data[x].t);
        }
        for(;;);
      }*/
      cnt = x;

      cli();
      if (cnt < 4) {
        ret = 1;
        printf_P(PSTR("only got %i samples - rotor is spinning too fast\r\n"), cnt);
        break;
      }

      if (avg_cnt != avg-1) {
      //pull capture_data "back" cnt entries
      //a circular buffer would be faster, but then the DRDY ISR becomes more complicated
      if (capture_cnt > cnt) {
        memmove((void*)capture_data, (void*)&capture_data[cnt], (capture_cnt-cnt)*sizeof(capture_t));
      }
      capture_ptr = &capture_data[capture_cnt -= cnt];
      }
      unbusy();
      sei();

      avg_cnt++;
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
  printf_P(PSTR("%5lu,%8lu,%5lu,%5lu,%10.0f,%10.0f,%10.0f,%10.0f,%10.0f,%10.0f\r\n"),
    (uint32_t)tachlen_min, tachlen_sum, (uint32_t)tachlen_max,
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

int main(void)
{
  cli();
  setup();
  sei();

  printf_P(PSTR("ADC state size: %i\r\n"), sizeof(adc_state));
  printf_P(PSTR("Done setting up\r\n"));

  for (;;) {
    capture_fm(0, 100);
  }

  return 0;
}


