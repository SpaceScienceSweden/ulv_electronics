/* Everything that is commited in here has been verified by Frama-C */

#include <stdint.h>
#include "verified.h"

#if FEATURE_BLOCK
#if FEATURE_ASM == 0
void capture(uint8_t id, uint8_t *stat1_out, uint16_t num_frames)
{
//does the actual sample capturing,
//while taking care of TIMER1
  //discard the first bunch of samples
  //partly to deal with initial F_DRDY
  //but also to allow the sinc3 filter to warm up
  //experiments show that five samples are about the right amount to discard
  uint8_t discard_samples = 5;

  uint8_t *ptr = (uint8_t*)sample_data;
  uint8_t stat1 = 0;

  // Max sample rates @ 7.3728 MHz, 16-bit:
  //
  // 19200 Hz (DIV1 = 0x02, DIV2 = 0x2C), ENOB = 14.79 .. 18.80
  // 28800 Hz (DIV1 = 0x02, DIV2 = 0x2D), ENOB = 13.87 .. 17.92
  // 38400 Hz (DIV1 = 0x02, DIV2 = 0x2E), ENOB = 12.98 .. 17.00
  //
  // In other words at max gain ENOB is low enough that we can get away with 16 bit samples

  cli();
  //just count overflow, adjust timer1_base at the end
  uint8_t timer1_ovfs = 0;

  /*@ loop assigns SPDR, timer1_ovfs, TIFR;
      loop variant discard_samples;
   */
  do {
    //poll /DRDY
    /*@ loop assigns \nothing; */
    while (PINE & (1<<PE7));

    // This grabs ten bytes every time
    // Doing so takes a minimum of 170 clock cycles (SPI2X, no double buffering)
    //
    //  DIV1 = 0x02, DIV2 = 0x2C ==> 4*96 = 384 cy
    //  DIV1 = 0x02, DIV2 = 0x2D ==> 4*64 = 256 cy
    //  DIV1 = 0x02, DIV2 = 0x2E ==> 4*48 = 192 cy <-- you are here
    //  DIV1 = 0x02, DIV2 = 0x2F ==> 4*32 = 128 cu <-- geht nicht!
    //
    // The best we can do is DIV2 = 0x2E (38400 Hz),
    // leaving only 22 cy for housekeeping
    adc_select(id);
    SPDR = 0; 
    if (TIFR & (1<<TOV1)) {
      timer1_ovfs++;
      TIFR = (1<<TOV1);
    }
    /*@ loop assigns \nothing; */
    while(!(SPSR & (1<<SPIF)));
    SPDR = 0;
    /*@ loop assigns \nothing; */
    while(!(SPSR & (1<<SPIF)));
    SPDR = 0;
    /*@ loop assigns \nothing; */
    while(!(SPSR & (1<<SPIF)));
    SPDR = 0;
    /*@ loop assigns \nothing; */
    while(!(SPSR & (1<<SPIF)));
    SPDR = 0;
    /*@ loop assigns \nothing; */
    while(!(SPSR & (1<<SPIF)));
    SPDR = 0;
    /*@ loop assigns \nothing; */
    while(!(SPSR & (1<<SPIF)));
    SPDR = 0;
    /*@ loop assigns \nothing; */
    while(!(SPSR & (1<<SPIF)));
    SPDR = 0;
    /*@ loop assigns \nothing; */
    while(!(SPSR & (1<<SPIF)));
    SPDR = 0;
    /*@ loop assigns \nothing; */
    while(!(SPSR & (1<<SPIF)));
    SPDR = 0;
    discard_samples--;
    /*@ loop assigns \nothing; */
    while(!(SPSR & (1<<SPIF)));
    adc_deselect();
    /*@ loop assigns \nothing; */
    while (!(PINE & (1<<PE7)));
  } while(discard_samples > 0);


  /*@ loop assigns SPDR, timer1_ovfs, TIFR, ptr[0..8*num_frames-1];
      loop variant num_frames;
   */ 
  do {
    /*@ loop assigns \nothing; */
    while (PINE & (1<<PE7));

    adc_select(id);
    SPDR = 0;
    if (TIFR & (1<<TOV1)) {
      timer1_ovfs++;
      TIFR = (1<<TOV1);
    }
    /*@ loop assigns \nothing; */
    while(!(SPSR & (1<<SPIF)));
    //001a aaaa
    SPDR = 0;
    /*@ loop assigns \nothing; */
    while(!(SPSR & (1<<SPIF)));
    //dddd dddd
    SPDR = 0;
    stat1 |= SPDR;
    /*@ loop assigns \nothing; */
    while(!(SPSR & (1<<SPIF)));
    //grab samples in big endian order, store as little endian
    SPDR = 0;
    ptr[1] = SPDR;
    /*@ loop assigns \nothing; */
    while(!(SPSR & (1<<SPIF)));
    SPDR = 0;
    ptr[0] = SPDR;
    /*@ loop assigns \nothing; */
    while(!(SPSR & (1<<SPIF)));
    SPDR = 0;
    ptr[3] = SPDR;
    /*@ loop assigns \nothing; */
    while(!(SPSR & (1<<SPIF)));
    SPDR = 0;
    ptr[2] = SPDR;
    /*@ loop assigns \nothing; */
    while(!(SPSR & (1<<SPIF)));
    SPDR = 0;
    ptr[5] = SPDR;
    /*@ loop assigns \nothing; */
    while(!(SPSR & (1<<SPIF)));
    SPDR = 0;
    ptr[4] = SPDR;
    /*@ loop assigns \nothing; */
    while(!(SPSR & (1<<SPIF)));
    SPDR = 0;
    ptr[7] = SPDR;
    /*@ loop assigns \nothing; */
    while(!(SPSR & (1<<SPIF)));
    ptr[6] = SPDR;
    ptr += 4*(WORDSZ/8);
    adc_deselect();
    /*@ loop assigns \nothing; */
    while (!(PINE & (1<<PE7)));

    //consider moving this into the wait before ptr[6]
    num_frames--;
  } while (num_frames > 0);

  //using 64-bit shift and add is smaller than 32-bit followed by upcasting to 64-bit
  timer1_base += (uint64_t)timer1_ovfs * TIMER1_OVF_INC;
  sei();

  *stat1_out = stat1;
}
#endif
#endif //FEATURE_BLOCK

void compute_min_max(
    uint16_t max_frames,
    sample_t *data_ptr_in, int16_t minmax[4][2],
    uint8_t compute_tach_minmax
) {
  sample_t *data_ptr = data_ptr_in;
  uint8_t max_chan = compute_tach_minmax ? 4 : 3;

  /*@ loop invariant \forall integer x; 0 <= x < max_chan ==>
        minmax[x][0] <= \at(minmax[x][0], LoopEntry);
      loop invariant \forall integer x; 0 <= x < max_chan ==>
        minmax[x][1] >= \at(minmax[x][1], LoopEntry);
      loop invariant data_ptr == data_ptr_in + k*4;
      loop assigns k, data_ptr, ((int16_t*)minmax)[0..2*max_chan-1];
   */
  for (uint16_t k = 0; k < max_frames; k++, data_ptr += 4) {
    /*@ loop invariant \forall integer x; 0 <= x < max_chan ==>
          minmax[x][0] <= \at(minmax[x][0], LoopEntry);
        loop invariant \forall integer x; 0 <= x < max_chan ==>
          minmax[x][1] >= \at(minmax[x][1], LoopEntry);
        loop assigns l, ((int16_t*)minmax)[0..2*max_chan-1];
     */
    for (uint8_t l = 0; l < max_chan; l++) {
      //deal with >=24-bit
      int16_t s = data_ptr[l] / (1 << (WORDSZ-16));
      if (s < minmax[l][0]) minmax[l][0] = s;
      if (s > minmax[l][1]) minmax[l][1] = s;
    }
  }
}

void compute_sum_abs(
  uint16_t p0,
  uint16_t p12,
#ifndef FRAMA_C
  uint32_t sum_abs[4]
#else
  //WP doesn't seem able to deal with unsigned overflow
  int32_t sum_abs[4]
#endif
) {
#ifndef FRAMA_C
  //This is a bit hacky, Frama-C can't seem to figure out
  //that data_ptr == sample_data + i*4..
  sample_t *data_ptr = (sample_t*)sample_data + p0*4;
#endif

  /*@ loop invariant \forall integer x; 0 <= x < 3 ==>
        \at(sum_abs[x], LoopEntry) <= sum_abs[x]
        <= \at(sum_abs[x], LoopEntry) + (i-p0)*(INT16_MAX+1);
      loop invariant
        \at(sum_abs[3], LoopEntry) <= sum_abs[3]
        <= \at(sum_abs[3], LoopEntry) + (i-p0)*INT16_MAX;

      loop invariant p0 <= i <= p12;
      loop assigns i, sum_abs[0..3];
      loop variant p12 - i;
   */
  for (uint16_t i = p0; i < p12; i++
#ifndef FRAMA_C
      , data_ptr += 4
#endif
  ) {
#ifdef FRAMA_C
    //doing things this way is easier to prove,
    //but probably will compile to slower code
    sample_t *data_ptr = (sample_t*)sample_data + i*4;
#endif
    //@ assert data_ok: \valid_read(data_ptr + (0..3));
    sample_t s;
    s = data_ptr[0]; if(s >= 0){sum_abs[0] += s;}else{sum_abs[0] -= s;}
    s = data_ptr[1]; if(s >= 0){sum_abs[1] += s;}else{sum_abs[1] -= s;}
    s = data_ptr[2]; if(s >= 0){sum_abs[2] += s;}else{sum_abs[2] -= s;}

#ifdef FRAMA_C
    //the prover doesn't know channel 4 is always positive
    if (data_ptr[3] >= 0)
#endif
    sum_abs[3] += data_ptr[3]; /* no need to abs tach, always positive */
  }
}

sample_t bootstrap_tach_mean(uint16_t num_frames, const sample_t *data_ptr_in) {
  accu_t sum = 0;
  const sample_t *data_ptr = data_ptr_in;
  uint16_t k;
  /*@ loop invariant data_ptr == data_ptr_in + k*4;
      loop invariant INT16_MIN*k <= sum <= INT16_MAX*k;

      // this lets WP figure out k == num_frames on exit,
      // which leads to mean_ok being proven
      loop invariant k <= num_frames;

      loop assigns sum, k, data_ptr;
   */
  for (k = 0; k < num_frames; k++, data_ptr += 4) {
    sum += data_ptr[3];
  }

  //@ assert k: k == num_frames;
  accu_t ret = sum / num_frames;
  //@ assert mean_ok: INT16_MIN <= ret <= INT16_MAX;
  return ret;
}

void adc2volts(const uint16_t *adc_codes, float *volts) {
  float v33 = 0;
  /*@ loop assigns x, v33, volts[0..4];
   */
  for (uint8_t x = 0; x < 5; x++) {
    //values taken from schematic
    static const float scale[4] = {
       (18.0+18.0)/18.0 * 2.56 / 1024,
      (150.0+10.0)/10.0 * 2.56 / 1024,
      (150.0+10.0)/10.0 * 2.56 / 1024,
       (18.0+10.0)/10.0 * 2.56 / 1024,
    };
    float v;
    if (x < 4) {
      v = adc_codes[x] * scale[x];
      //remember where the 3.3V bus is at
      if (x == 0) v33 = v;
    } else {
      //this calculation is a bit more convoluted
      float temp = adc_codes[x] * 2.56/1024;
      v = temp * (10.0+22.0)/10.0 - /*3.3*/ v33 * 22.0/10.0;
    }
    volts[x] = v;
  }
}

uint8_t ocr2osr(uint16_t ocr) {
  //table entries assigned such that ocr=TIMER1_TOP/2 -> 14 (osrtab[0x0E] == 48)
  static const uint16_t ocr2osrtab[14] = {
    TIMER1_TOP*24L/4096, TIMER1_TOP*24L/2048, TIMER1_TOP*24L/1024, TIMER1_TOP*24L/800,
    TIMER1_TOP*24L/768,  TIMER1_TOP*24L/512,  TIMER1_TOP*24L/400,  TIMER1_TOP*24L/384,
    TIMER1_TOP*24L/256,  TIMER1_TOP*24L/200,  TIMER1_TOP*24L/192,  TIMER1_TOP*24L/128,
    TIMER1_TOP*24L/96,   TIMER1_TOP*24L/64,   //TIMER1_TOP*24L/48, TIMER1_TOP*24L/32
  };
  /*@ // ocr is greater than all entries in ocr2osrtab[] so far:
      loop invariant \forall integer y; 0 <= y < x ==> ocr > ocr2osrtab[y];
      loop assigns x;
   */
  for (uint8_t x = 0; x < 14; x++) {
    if (ocr <= ocr2osrtab[x]) {
      return x;
    }
  }

  return 14;
}

void binary_iq(
  const accu_t *Q1,
  const accu_t *Q2,
  const accu_t *Q3,
  const accu_t *Q4,
  uint16_t N,
  int16_t IQ[3][2],
  int16_t mean[4],
  uint8_t compute_mean
) {
  /*@ loop invariant \forall integer x;
        0 <= x <= 2 && compute_mean == 0 ==>
          mean[x] == \at(mean[x], LoopEntry);
      loop assigns j, ((int16_t*)IQ)[0..5], mean[0..2];
   */
  for (uint8_t j = 0; j < 3; j++) {
    //avr-gcc probably won't know that Q1..Q4 don't alias,
    //so load q1..4 to avoid accessesing memory more than necessary
    accu_t q1 = Q1[j];
    accu_t q2 = Q2[j];
    accu_t q3 = Q3[j];
    accu_t q4 = Q4[j];

    // I = q1-q2-q3+q4
    // Q = q1+q2-q3-q4
    IQ[j][0]  = (q1 - q2 - q3 + q4) / N;
    IQ[j][1]  = (q1 + q2 - q3 - q4) / N;
    if (compute_mean) {
      mean[j] = (q1 + q2 + q3 + q4) / N;
    }
  }
}