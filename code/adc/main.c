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

void adc_read_channel(uint8_t id) {
  //TACH ISR needs to know at what time this sample was
  //use the volatile version of the buffer so the write actually happens
  uint8_t curbuffer = adc_state[id].curbuffer;

  busy();

  uint8_t x;
  int32_t samples[3] = {0,0,0};
  uint8_t iphase, qphase;

  //cast away volatile
  //this is fine since only this ISR and the main thread access the adc_data_t array
  adc_data_t *data = (adc_data_t*)&adc_state[id].buffer[curbuffer];

  iphase = data->phi >> 8;
  qphase = iphase + 64;
  data->phi += data->dphi;

  adc_start_frame2(id);

  //ignore control word
  spi_comm_byte(0);
  spi_comm_byte(0);
  spi_comm_byte(0);
#if WORDSZ==32
  spi_comm_byte(0);
#endif

  //warm-up
  SPDR = 0;
  while(!(SPSR & (1<<SPIF)));

  //read and demodulate at the same time
  for (x = 0; x < 3; x++) {
    uint8_t b;
    //use 32-bit integers locally here, both because we don't
    //need 64 bits and because adc_state is volatile
    int32_t I, Q;

    //this XOR switches signed to unsigned
    //in other words, we add a DC offset of Vref (2.4 V or so),
    //which gets removed by the demodulation
    //
    // 0x800000 .. 0xFFFFFF 0x000000 0x000001 ... 0x7FFFFF
    //
    //becomes
    //
    // 0x000000 .. 0x7FFFFF 0x800000 0x800001 ... 0xFFFFFF
    //
    //the demodulation done here fits nicely in 32 bits
    //
    // 127*(2^24-1) => +-2130706305

    //we have a byte here because we did the warm-up further up
    b = SPDR ^ 0x80;
    SPDR = 0;
    //uint8_t * int8_t * int32_t
    I = b * sintab[iphase] * (1L<<16);
    Q = b * sintab[qphase] * (1L<<16);
    //above computation is >16 cy  while(!(SPSR & (1<<SPIF)));
    b = SPDR;
    SPDR = 0;
    I += b * sintab[iphase] * (1L<<8);
    Q += b * sintab[qphase] * (1L<<8);
    //above computation is >16 cy  while(!(SPSR & (1<<SPIF)));
    b = SPDR;
#if WORDSZ == 32
    SPDR = 0;
#endif
    I += b * sintab[iphase];
    Q += b * sintab[qphase];
#if WORDSZ == 32
    while(!(SPSR & (1<<SPIF)));
    b = SPDR;
#endif

    //start transfer of first byte of next sample, unless we're done
    if (x < 2) {
      SPDR = 0;
      //computation below is > 16 cy  while(!(SPSR & (1<<SPIF)));
    }

    //add to 64-bit state
    //TODO: we need to deal with 
    data->I[x] += I;
    data->Q[x] += Q;
  }

  adc_end_frame2();

  if (data->numsamples < MAX_SAMPLES_PER_TACH-1) {
    data->numsamples++;
  } else {
    adc_state[id].fault = 1;
  }

  unbusy();
}

static void handle_tach(uint8_t id) {
  timer_t t = currenttime();

  busy();

  //TODO: reevaluate this thing, see if we can use __uint24 here and there
  //the phase calculations are especially suspect
  uint8_t x;
  uint32_t K = 2UL*CLK_DIV*ICLK_DIV*osrtab[OSR];
  uint32_t tachlen, endphase;
  //cast away volatile
  //we can't be interrupted unless we sei()
  adc_state_t *state = (adc_state_t*)&adc_state[id];
  adc_data_t *curdata  = (adc_data_t*)&state->buffer[ state->curbuffer];
  adc_data_t *nextdata = (adc_data_t*)&state->buffer[!state->curbuffer];
  state->curbuffer = !state->curbuffer;
  state->buffersswapped = 1;

  //clear next buffer
  memset((void*)nextdata->I, 0, sizeof(nextdata->I));
  memset((void*)nextdata->Q, 0, sizeof(nextdata->Q));
  nextdata->numsamples = 0;

  curdata->tachend = t;
  nextdata->tachstart = t;
  tachlen = curdata->tachend - curdata->tachstart;

  //1 Hz cutoff
  if (tachlen < FCPU) {
    nextdata->d = tachlen * TIMER3_N * SIGNAL_D;
    nextdata->dphi = (65536UL * SIGNAL_N * K + nextdata->d/2) / nextdata->d;
    //derive the starting phase from where we expect the next sample will be taken
    //this works because currenttime() gives us time in CPU cycles,
    //and K is the time it takes for the ADC to do one conversion, also in CPU cycles
    uint32_t endphase = curdata->tachend - curdata->lastt;
    nextdata->phi = (uint32_t)nextdata->dphi * (K - endphase) / K;
  } else {
    nextdata->d = 1337;
    state->discard = 1;
  }

  unbusy();
}

//ISR for TACHa
ISR(INT4_vect) {
  handle_tach(0);
}

//ISR for TACHb
ISR(INT5_vect) {
  handle_tach(1);
}

//ISR for /DRDYa
ISR(INT6_vect) {
  adc_state[0].buffer[adc_state[0].curbuffer].lastt = currenttime();
  //allow ourselves to be interrupted
  sei();
  adc_read_channel(0);
}

//ISR for /DRDYb
ISR(INT7_vect) {
  adc_state[1].buffer[adc_state[1].curbuffer].lastt = currenttime();
  //allow ourselves to be interrupted
  sei();
  adc_read_channel(1);
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

int main(void)
{
  cli();
  setup();
  sei();

  bprintf_P(PSTR("ADC state size: %i\r\n"), sizeof(adc_state));
  bprintf_P(PSTR("Done setting up\r\n"));

  for (;;) {
    uint16_t outsamples = 0, numrevs = 0, last_phi = 0, last_dphi = 0;
    uint32_t last_d = 0, last_tachstart = 0, last_tachend = 0;
    int32_t last_endphase = 0;
    uint32_t last_lastt = 0;
    int64_t I[3] = {0}, Q[3] = {0};

    while (numrevs < TACHS_PER_PRINT) {
      cli();
      uint8_t curbuffer  = adc_state[0].curbuffer;
      uint8_t buffersswapped = adc_state[0].buffersswapped;
      sei();

      if (adc_state[0].fault) {
        printf_P(PSTR("Fault :(\r\n"));
        adc_state[0].fault = 0;
      }
      if (buffersswapped) {
        adc_state[0].buffersswapped = 0;

        //old buffer
        adc_data_t *data = (adc_data_t*)&adc_state[0].buffer[!curbuffer];
        uint8_t x;

        if (adc_state[0].discard) {
          adc_state[0].discard = 0;
          continue;
        }

        outsamples += data->numsamples;
        numrevs++;
        last_d          = data->d;
        last_tachstart  = data->tachstart;
        last_tachend    = data->tachend;
        last_endphase   = data->tachend - data->lastt;
        last_lastt      = data->lastt;
        last_phi        = data->phi;
        last_dphi       = data->dphi;

        for (x = 0; x < 3; x++) {
          I[x] += data->I[x];
          Q[x] += data->Q[x];
        }
      }
    }

    bprintf_P(PSTR("%u, %7li : %7li, %7lu, %5u, %5u,% 12.0f,% 12.0f,% 12.0f,% 12.0f,% 12.0f,% 12.0f\r\n"),
      outsamples, last_lastt-last_tachstart, last_tachend-last_lastt, last_d, last_phi, last_dphi,
      (float)I[0]/outsamples, (float)Q[0]/outsamples,
      (float)I[1]/outsamples, (float)Q[1]/outsamples,
      (float)I[2]/outsamples, (float)Q[2]/outsamples
    );

    //TODO: there should be a flag in adc_state that we finished dealing the the results
  }

  return 0;
}


