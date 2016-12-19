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

  if (tach_cnt < 2) {
    tach_cnt++;
  }

  if (tach_cnt >= 2) {
    got_tach = 1;
  }
  unbusy();
}

typedef struct {
  timer_t t;
  __int24 sample[3];
  uint8_t dummy[4];   //pad to 16 bytes
} capture_t;

#define CAPTURE_MAX 30
volatile capture_t capture_data[CAPTURE_MAX];
volatile capture_t *capture_ptr;
volatile uint8_t capture_cnt;
volatile uint8_t cur_adc;

inline void adc_read_channel() {
  if (tach_cnt == 0) {
    return;
  }

  capture_ptr->t = currenttime();

  sei();

  busy();
  if (capture_cnt >= CAPTURE_MAX) {
    printf_P(PSTR("CAPTURE_MAX\r\n"));
    for(;;);
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

static void capture_fm(uint8_t id, uint16_t avg) {
  const uint16_t K = 2U*CLK_DIV*ICLK_DIV*osrtab[OSR];

  //clean start
  cli();
  disable_timer3();
  disable_adc(0);
  disable_adc(1);
  enable_adc(id);
  disable_tachs();
  setup_tach(id);

  capture_ptr = capture_data;
  capture_cnt = 0;
  tach_cnt = 0;
  got_tach = 0;
  cur_adc = id;

  setup_timer3();
  sei();

  uint16_t avg_cnt;
  int64_t I[3] = {0,0,0};
  int64_t Q[3] = {0,0,0};
  uint16_t dphi, phi;
  timer_t tachlen_min = 0, tachlen_max = 0;
  uint32_t tachlen_sum = 0;

  for (avg_cnt = 0; avg_cnt < avg;) {
    cli();
    uint8_t cnt = capture_cnt;
    timer_t tachstart_copy = tachstart;
    timer_t tachend_copy = tachend;

    if (got_tach) {
      busy();
      sei();

      got_tach = 0;

      timer_t tachlen = tachend_copy - tachstart_copy;

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

      //compute start phase and phase increment
      dphi = (65536UL * K) / tachlen;
       phi = (uint32_t)dphi*((capture_data[1].t - tachstart_copy) % K) / K;

      //purposefully non-volatile
      capture_t *loop_ptr = (capture_t*)capture_data;

      //demodulate
      uint8_t x;
      for (x = 0; x < cnt && loop_ptr->t - tachstart_copy < tachend_copy - tachstart_copy; x++, loop_ptr++) {
        uint8_t y;
        uint8_t iphase = phi >> 8;
        uint8_t qphase = iphase + 64;

        for (y = 0; y < 3; y++) {
          I[y] += (int32_t)loop_ptr->sample[y] * sintab[iphase];
          Q[y] += (int32_t)loop_ptr->sample[y] * sintab[qphase];
        }

        phi += dphi;
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
      //pull capture_data "back" cnt entries
      //a circular buffer would be faster, but then the DRDY ISR becomes more complicated
      if (capture_cnt > cnt) {
        memmove((void*)capture_data, (void*)&capture_data[cnt], (capture_cnt-cnt)*sizeof(capture_t));
      }
      capture_ptr = &capture_data[capture_cnt -= cnt];
      unbusy();
      sei();

      avg_cnt++;
    } else {
      sei();

      //TODO: check for lack of TACH in X seconds
    }
  }

  cli();
  disable_timer3();
  disable_adc(0);
  disable_adc(1);
  disable_tachs();
  sei();

  //TODO: print Is and Qs as 64-bit integers
  printf_P(PSTR("%5i,%5i,%8lu,%9lu,%8lu,%10.0f,%10.0f,%10.0f,%10.0f,%10.0f,%10.0f\r\n"),
    phi, dphi,
    (uint32_t)tachlen_min, tachlen_sum, (uint32_t)tachlen_max,
    (float)I[0] / avg, (float)Q[0] / avg,
    (float)I[1] / avg, (float)Q[1] / avg,
    (float)I[2] / avg, (float)Q[2] / avg
  );
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


