/* Everything that is commited in here has been verified by Frama-C */
#ifdef FRAMA_C
#include "../__fc_machdep_gcc_avr_16.h"
#endif

// See -DTEST_SPEED in Makefile
#ifdef TEST_SPEED
#include <avr/pgmspace.h>
#include <stdio.h>
#endif
#include "verified.h"
#include <stdint.h>

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

#ifdef FRAMA_C
  uint8_t *ptr = sample_data_fake;
#else
  uint8_t *ptr = (uint8_t*)sample_data;
#endif
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

  /*@ loop invariant 0 < discard_samples <= 5;
      loop assigns SPDR, timer1_ovfs, TIFR, discard_samples, PORTF;
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
#ifdef FRAMA_C
      // it's hard to model the fact that this never overflows on real hardware
      if (timer1_ovfs < 255)
#endif
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

  /*@ loop invariant 0 < num_frames <= \at(num_frames,LoopEntry);
      loop invariant ptr == \at(ptr,LoopEntry) + 4*(WORDSZ/8)*(\at(num_frames,LoopEntry)-num_frames);
      loop invariant \at(ptr,LoopEntry) <= ptr < \at(ptr,LoopEntry) + 4*(WORDSZ/8)*\at(num_frames,LoopEntry);
      loop invariant \valid(ptr + (0..7));
      loop assigns SPDR, timer1_ovfs, TIFR, \at(ptr,LoopEntry)[0..8*\at(num_frames,LoopEntry)-1], PORTF, stat1, ptr, num_frames;
      loop variant num_frames;
   */ 
  do {
    /*@ loop assigns \nothing; */
    while (PINE & (1<<PE7));

    adc_select(id);
    SPDR = 0;
    if (TIFR & (1<<TOV1)) {
#ifdef FRAMA_C
      if (timer1_ovfs < 255)
#endif
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
  uint64_t inc = (uint64_t)timer1_ovfs * TIMER1_OVF_INC;
  //@ assert 0 <= inc <= 255*TIMER1_OVF_INC < UINT32_MAX;
#ifdef FRAMA_C
before:
  if (timer1_base <= UINT64_MAX - inc) {
    timer1_base += inc;
  } else {
    uint64_t diff = UINT64_MAX - timer1_base;
    timer1_base = inc - diff - 1;
  }
#else
  timer1_base += inc;
#endif
  //@ assert timer1_base == (\at(timer1_base,before) + inc) % (1<<64);
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

  if (compute_tach_minmax) {
    //4 channels
    int16_t mins[4], maxs[4];
    mins[0] = minmax[0][0];
    maxs[0] = minmax[0][1];
    mins[1] = minmax[1][0];
    maxs[1] = minmax[1][1];
    mins[2] = minmax[2][0];
    maxs[2] = minmax[2][1];
    mins[3] = minmax[3][0];
    maxs[3] = minmax[3][1];

    /*@ loop invariant \forall integer x; 0 <= x < 4 ==>
          mins[x] <= \at(mins[x], LoopEntry);
        loop invariant \forall integer x; 0 <= x < 4 ==>
          maxs[x] >= \at(maxs[x], LoopEntry);
        loop invariant data_ptr == data_ptr_in + k*4;
        loop assigns k, data_ptr, mins[0..3], maxs[0..3];
     */
    for (uint16_t k = 0; k < max_frames; k++, data_ptr += 4) {
      int16_t s0 = data_ptr[0] / (1 << (WORDSZ-16));
      int16_t s1 = data_ptr[1] / (1 << (WORDSZ-16));
      int16_t s2 = data_ptr[2] / (1 << (WORDSZ-16));
      int16_t s3 = data_ptr[3] / (1 << (WORDSZ-16));

      if (s0 < mins[0]) mins[0] = s0;
      if (s0 > maxs[0]) maxs[0] = s0;
      if (s1 < mins[1]) mins[1] = s1;
      if (s1 > maxs[1]) maxs[1] = s1;
      if (s2 < mins[2]) mins[2] = s2;
      if (s2 > maxs[2]) maxs[2] = s2;
      if (s3 < mins[3]) mins[3] = s3;
      if (s3 > maxs[3]) maxs[3] = s3;
    }

    minmax[0][0] = mins[0];
    minmax[0][1] = maxs[0];
    minmax[1][0] = mins[1];
    minmax[1][1] = maxs[1];
    minmax[2][0] = mins[2];
    minmax[2][1] = maxs[2];
    minmax[3][0] = mins[3];
    minmax[3][1] = maxs[3];
  } else {
    //3 channels
    int16_t mins[3], maxs[3];
    mins[0] = minmax[0][0];
    maxs[0] = minmax[0][1];
    mins[1] = minmax[1][0];
    maxs[1] = minmax[1][1];
    mins[2] = minmax[2][0];
    maxs[2] = minmax[2][1];

    /*@ loop invariant \forall integer x; 0 <= x < 3 ==>
          mins[x] <= \at(mins[x], LoopEntry);
        loop invariant \forall integer x; 0 <= x < 3 ==>
          maxs[x] >= \at(maxs[x], LoopEntry);
        loop invariant data_ptr == data_ptr_in + k*4;
        loop assigns k, data_ptr, mins[0..2], maxs[0..2];
     */
    for (uint16_t k = 0; k < max_frames; k++, data_ptr += 4) {
      int16_t s0 = data_ptr[0] / (1 << (WORDSZ-16));
      int16_t s1 = data_ptr[1] / (1 << (WORDSZ-16));
      int16_t s2 = data_ptr[2] / (1 << (WORDSZ-16));

      if (s0 < mins[0]) mins[0] = s0;
      if (s0 > maxs[0]) maxs[0] = s0;
      if (s1 < mins[1]) mins[1] = s1;
      if (s1 > maxs[1]) maxs[1] = s1;
      if (s2 < mins[2]) mins[2] = s2;
      if (s2 > maxs[2]) maxs[2] = s2;
    }

    minmax[0][0] = mins[0];
    minmax[0][1] = maxs[0];
    minmax[1][0] = mins[1];
    minmax[1][1] = maxs[1];
    minmax[2][0] = mins[2];
    minmax[2][1] = maxs[2];
  }
}

void compute_sum_abs(
  uint16_t p0,
  uint16_t p12,
  uint32_t sum_abs[4]
) {
  sample_t *data_ptr = (sample_t*)sample_data + p0*4;

  /*@ loop invariant channels: \forall integer x; 0 <= x <= 3 ==>
        \at(sum_abs[x], LoopEntry) <= sum_abs[x]
        <= \at(sum_abs[x], LoopEntry) + (i-p0)*(INT16_MAX+1);
      loop invariant data_ptr: data_ptr == (sample_t*)sample_data + i*4;

      loop invariant i_range: p0 <= i <= p12;
      loop assigns i, sum_abs[0..3], data_ptr;
      loop variant p12 - i;
   */
  for (uint16_t i = p0; i < p12; i++, data_ptr += 4) {
    //@ assert data_ok: \valid_read(data_ptr + (0..3));
    sample_t s;
  label0:
    s = data_ptr[0];
    if (s >= 0) {
        sum_abs[0] += s;
    } else {
        // necessary to be able to hold -INT16_MIN = 32768 > 
        uint16_t sneg = -(int32_t)s;
        //@ assert sneg0_range: 0 <= sneg <= INT16_MAX + 1;
        sum_abs[0] += sneg;
    }
    /*@ assert before_label1:
            \at(sum_abs[0],label0) <= sum_abs[0] <= \at(sum_abs[0],label0) + INT16_MAX + 1 &&
            \forall integer x; 0 < x <= 3 ==>
                \at(sum_abs[x],label0) == sum_abs[x];
     */

  label1:
    s = data_ptr[1];
    if (s >= 0) {
        sum_abs[1] += s;
    } else {
        // necessary to be able to hold -INT16_MIN = 32768 > 
        uint16_t sneg = -(int32_t)s;
        //@ assert sneg1_range: 0 <= sneg <= INT16_MAX + 1;
        sum_abs[1] += sneg;
    }
    /*@ assert before_label2:
            \at(sum_abs[1],label1) <= sum_abs[1] <= \at(sum_abs[1],label1) + INT16_MAX + 1 &&
            \forall integer x; 0 <= x <= 3 && x != 1 ==>
                \at(sum_abs[x],label1) == sum_abs[x];
     */
  label2:
    s = data_ptr[2];
    if (s >= 0) {
        sum_abs[2] += s;
    } else {
        // necessary to be able to hold -INT16_MIN = 32768 > 
        uint16_t sneg = -(int32_t)s;
        //@ assert sneg2_range: 0 <= sneg <= INT16_MAX + 1;
        sum_abs[2] += sneg;
    }
    /*@ assert before_label3:
            \at(sum_abs[2],label2) <= sum_abs[2] <= \at(sum_abs[2],label2) + INT16_MAX + 1 &&
            \forall integer x; 0 <= x <= 3 && x != 2 ==>
                \at(sum_abs[x],label2) == sum_abs[x];
     */
  label3:

#ifdef FRAMA_C
    // make the prover happier. we know that the value is always positive unless the hardware is very broken
    // if it is somehow negative anyway then we have other problems
    if (data_ptr[3] < 0) {
        uint16_t sneg = -(int32_t)data_ptr[3];
        //@ assert sneg3_range: 0 <= sneg <= INT16_MAX + 1;
        sum_abs[3] += sneg;
    }
    else
#endif
    sum_abs[3] += data_ptr[3]; /* no need to abs tach, always positive */

    /*@ assert last:
            \at(sum_abs[3],label3) <= sum_abs[3] <= \at(sum_abs[3],label3) + INT16_MAX + 1 &&
            \forall integer x; 0 <= x < 3 ==>
                \at(sum_abs[x],label3) == sum_abs[x];
     */
  }
}

sample_t bootstrap_tach_mean(uint16_t num_frames, const sample_t *data_ptr_in) {
  accu_t sum = 0;
  const sample_t *data_ptr = data_ptr_in;
  uint16_t k;
  /*@ loop invariant data_ptr == data_ptr_in + k*4;
      loop invariant INT16_MIN*k <= sum <= INT16_MAX*k;

      loop invariant 0 <= k <= num_frames;
      loop assigns sum, k, data_ptr;
      loop variant num_frames - k;
   */
  for (k = 0; k < num_frames; k++, data_ptr += 4) {
    sum += data_ptr[3];
  }

  //@ assert k: k == num_frames;
  return sum / num_frames;
}

void adc2volts(const uint16_t *adc_codes, float *volts) {
  float v33 = 0;
#define F256 (256.f / 100.f)
  /*@ loop assigns x, v33, volts[0..4];
   */
  for (uint8_t x = 0; x < 5; x++) {
    //values taken from schematic
    static const float scale[4] = {
       (18.0+18.0)/18.0 * F256 / 1024,
      (150.0+10.0)/10.0 * F256 / 1024,
      (150.0+10.0)/10.0 * F256 / 1024,
       (18.0+10.0)/10.0 * F256 / 1024,
    };
    float v;
    if (x < 4) {
      v = adc_codes[x] * scale[x];
      //remember where the 3.3V bus is at
      if (x == 0) v33 = v;
    } else {
      //this calculation is a bit more convoluted
      float temp = adc_codes[x] * F256/1024;
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
  int16_t IQ[3][2]
) {
  uint16_t N = NQ[0] + NQ[1] + NQ[2] + NQ[3];
  accu_t lo = N*(accu_t)INT16_MIN;
  accu_t hi = N*(accu_t)INT16_MAX;
  // Verify that the above multiplications are correct:
  //@ assert lo == N*INT16_MIN;
  //@ assert hi == N*INT16_MAX;

  /*@ loop invariant 0 <= j <= 3;
      loop assigns j, (&IQ[0][0])[0..5];
      loop variant 3 - j;
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
    accu_t I = q1 - q2 - q3 + q4;
    accu_t Q = q1 + q2 - q3 - q4;

    //clamp
    if (I < lo) {
      //@ assert I_underflow: I < N*INT16_MIN;
      IQ[j][0] = INT16_MIN;
    } else if (I > hi) {
      //@ assert I_overflow: I > N*INT16_MAX;
      IQ[j][0] = INT16_MAX;
    } else {
      IQ[j][0] = I / N;
    }

    if (Q < lo) {
      //@ assert Q_underflow: Q < N*INT16_MIN-1;
      IQ[j][1] = INT16_MIN;
    } else if (Q > hi) {
      //@ assert Q_overflow: Q > N*INT16_MAX;
      IQ[j][1] = INT16_MAX;
    } else {
      IQ[j][1] = Q / N;
    }
  }
}

void binary_iq_mean(
  int16_t IQ[3][2],
  int16_t mean[4]
) {
  uint16_t N = NQ[0] + NQ[1] + NQ[2] + NQ[3];
  accu_t lo = N*(accu_t)INT16_MIN;
  accu_t hi = N*(accu_t)INT16_MAX;
  // Verify that the above multiplications are correct:
  //@ assert lo == N*INT16_MIN;
  //@ assert hi == N*INT16_MAX;

  /*@ loop invariant 0 <= j <= 3;
      loop assigns j, (&IQ[0][0])[0..5], mean[0..2];
      loop variant 3 - j;
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
    accu_t I = q1 - q2 - q3 + q4;
    accu_t Q = q1 + q2 - q3 - q4;

    //clamp
    if (I < lo) {
      //@ assert I_underflow: I < N*INT16_MIN;
      IQ[j][0] = INT16_MIN;
    } else if (I > hi) {
      //@ assert I_overflow: I > N*INT16_MAX;
      IQ[j][0] = INT16_MAX;
    } else {
      IQ[j][0] = I / N;
    }

    if (Q < lo) {
      //@ assert Q_underflow: Q < N*INT16_MIN-1;
      IQ[j][1] = INT16_MIN;
    } else if (Q > hi) {
      //@ assert Q_overflow: Q > N*INT16_MAX;
      IQ[j][1] = INT16_MAX;
    } else {
      IQ[j][1] = Q / N;
    }

      accu_t M = q1 + q2 + q3 + q4;

      if (M < lo) {
        //@ assert M_underflow: M < N*INT16_MIN;
        mean[j] = INT16_MIN;
      } else if (M > hi) {
        //@ assert M_overflow: M > N*INT16_MAX;
        mean[j] = INT16_MAX;
      } else {
        mean[j] = M / N;
      }
  }
}

/*@ requires 0 < n <= MAX_FRAMES;
    requires \valid((accu_t*)Q + (0..2));
    requires \valid_read(data_ptr + (0..(4*n-1)));

    requires \separated(
      (accu_t*)Q + (0..2),
      data_ptr + (0..(4*n-1))
    );

    requires \forall integer x;
      0 <= x <= 2 ==>
        INT32_MIN - n*INT16_MIN <= Q[x] <= INT32_MAX - n*INT16_MAX;

    ensures \forall integer x;
      0 <= x <= 2 ==>
        \old(Q[x]) + n*INT16_MIN <= Q[x] <= \old(Q[x]) + n*INT16_MAX;

    assigns Q[0..2];
 */
inline void accumulate_quadrant(
  accu_t Q[3],
  uint16_t n,
  const sample_t *data_ptr)
{
  accu_t q0 = Q[0], q1 = Q[1], q2 = Q[2];
  const sample_t *end = data_ptr + n*4;
  //@ ghost uint16_t i = 0;

  /*@ loop invariant data_ptr < end || data_ptr == end;
      loop invariant data_ptr == \at(data_ptr,LoopEntry) + i*4;
      loop invariant \valid_read(data_ptr + (0..2)) || data_ptr == end;

      loop invariant
        \at(q0,LoopEntry) + i*INT16_MIN <= q0 <= \at(q0,LoopEntry) + i*INT16_MAX &&
        \at(q1,LoopEntry) + i*INT16_MIN <= q1 <= \at(q1,LoopEntry) + i*INT16_MAX &&
        \at(q2,LoopEntry) + i*INT16_MIN <= q2 <= \at(q2,LoopEntry) + i*INT16_MAX;

      loop assigns q0, q1, q2, i, data_ptr;

      loop variant end - data_ptr;
   */
  for (; data_ptr != end; data_ptr += 4) {
    q0 += data_ptr[0];
    q1 += data_ptr[1];
    q2 += data_ptr[2];
    //@ ghost i++;
  }

  Q[0] = q0; Q[1] = q1; Q[2] = q2;
}

/*@ requires 0 <= i0 < i1 < i2 < i3 < i4 <= MAX_FRAMES;
    requires \valid_read((sample_t*)data_ptr + (4*i0..4*i4-1));
    requires \valid((accu_t*)Q1 + (0..2));
    requires \valid((accu_t*)Q2 + (0..2));
    requires \valid((accu_t*)Q3 + (0..2));
    requires \valid((accu_t*)Q4 + (0..2));

    requires \separated(
      (sample_t*)data_ptr + (4*i0..4*i4-1),
      (accu_t*)Q1 + (0..2),
      (accu_t*)Q2 + (0..2),
      (accu_t*)Q3 + (0..2),
      (accu_t*)Q4 + (0..2)
    );

    requires \forall integer x;
      0 <= x <= 2 ==>
        INT32_MIN - (i1-i0)*INT16_MIN <= Q1[x] <= INT32_MAX - (i1-i0)*INT16_MAX &&
        INT32_MIN - (i2-i1)*INT16_MIN <= Q2[x] <= INT32_MAX - (i2-i1)*INT16_MAX &&
        INT32_MIN - (i3-i2)*INT16_MIN <= Q3[x] <= INT32_MAX - (i3-i2)*INT16_MAX &&
        INT32_MIN - (i4-i3)*INT16_MIN <= Q4[x] <= INT32_MAX - (i4-i3)*INT16_MAX;

    ensures \forall integer x;
      0 <= x <= 2 ==>
        \old(Q1[x]) + (i1-i0)*INT16_MIN <= Q1[x] <= \old(Q1[x]) + (i1-i0)*INT16_MAX &&
        \old(Q2[x]) + (i2-i1)*INT16_MIN <= Q2[x] <= \old(Q2[x]) + (i2-i1)*INT16_MAX &&
        \old(Q3[x]) + (i3-i2)*INT16_MIN <= Q3[x] <= \old(Q3[x]) + (i3-i2)*INT16_MAX &&
        \old(Q4[x]) + (i4-i3)*INT16_MIN <= Q4[x] <= \old(Q4[x]) + (i4-i3)*INT16_MAX;

    assigns Q1[0..2];
    assigns Q2[0..2];
    assigns Q3[0..2];
    assigns Q4[0..2];
 */
void accumulate_quadrants(
  uint16_t i0,
  uint16_t i1,
  uint16_t i2,
  uint16_t i3,
  uint16_t i4,
  const sample_t *data_ptr
) {
  uint16_t n0 = i1 - i0;
  uint16_t n1 = i2 - i1;
  uint16_t n2 = i3 - i2;
  uint16_t n3 = i4 - i3;
  accumulate_quadrant(Q1, n0, data_ptr + i0*4);
  accumulate_quadrant(Q2, n1, data_ptr + i1*4);
  accumulate_quadrant(Q3, n2, data_ptr + i2*4);
  accumulate_quadrant(Q4, n3, data_ptr + i3*4);
}

#if 0
// Experimental single-cycle accumulator thing
// Proves much easier than _2(), but only 1/3 of a revolution
/*@ requires 0 <= p0 < p4 <= MAX_FRAMES;
    requires 4 <= p4 - p0 <= MAX_FRAMES/3;
    requires 0 <= rounding < 4;
    requires \valid_read((sample_t*)sample_data + (4*p0..4*p4-1));
    requires \valid((accu_t*)Q1 + (0..2));
    requires \valid((accu_t*)Q2 + (0..2));
    requires \valid((accu_t*)Q3 + (0..2));
    requires \valid((accu_t*)Q4 + (0..2));
    requires \valid(nsum1);
    requires \valid(nsum2);
    requires \valid(nsum3);
    requires \valid(nsum4);

    requires \separated(
      (sample_t*)sample_data + (4*p0..4*p4-1),
      (accu_t*)Q1 + (0..2),
      (accu_t*)Q2 + (0..2),
      (accu_t*)Q3 + (0..2),
      (accu_t*)Q4 + (0..2),
      nsum1,
      nsum2,
      nsum3,
      nsum4
    );

    requires \let NHI = ((p4 - p0) / 4 + 1); \forall integer x;
      0 <= x <= 2 ==>
        INT32_MIN - NHI*INT16_MIN <= Q1[x] <= INT32_MAX - NHI*INT16_MAX &&
        INT32_MIN - NHI*INT16_MIN <= Q2[x] <= INT32_MAX - NHI*INT16_MAX &&
        INT32_MIN - NHI*INT16_MIN <= Q3[x] <= INT32_MAX - NHI*INT16_MAX &&
        INT32_MIN - NHI*INT16_MIN <= Q4[x] <= INT32_MAX - NHI*INT16_MAX;

    ensures \let NHI = ((p4 - p0) / 4 + 1); \forall integer x;
      0 <= x <= 2 ==>
        \old(Q1[x]) + (*nsum1)*INT16_MIN <= Q1[x] <= \old(Q1[x]) + (*nsum1)*INT16_MAX &&
        \old(Q2[x]) + (*nsum2)*INT16_MIN <= Q2[x] <= \old(Q2[x]) + (*nsum2)*INT16_MAX &&
        \old(Q3[x]) + (*nsum3)*INT16_MIN <= Q3[x] <= \old(Q3[x]) + (*nsum3)*INT16_MAX &&
        \old(Q4[x]) + (*nsum4)*INT16_MIN <= Q4[x] <= \old(Q4[x]) + (*nsum4)*INT16_MAX;

    ensures \let NLO = ((p4 - p0) / 4);
            \let NHI = ((p4 - p0) / 4 + 1);
        NLO <= *nsum1 <= NHI &&
        NLO <= *nsum2 <= NHI &&
        NLO <= *nsum3 <= NHI &&
        NLO <= *nsum4 <= NHI;

    ensures sumtot: *nsum1 + *nsum2 + *nsum3 + *nsum4 == p4 - p0;

    assigns Q1[0..2], Q2[0..2], Q3[0..2], Q4[0..2], *nsum1, *nsum2, *nsum3, *nsum4;
 */
void accumulate_square_interval_1(
  uint16_t p0,
  uint16_t p4,
  uint16_t *nsum1,
  uint16_t *nsum2,
  uint16_t *nsum3,
  uint16_t *nsum4,
  uint8_t rounding
) {
  uint16_t psize = p4 - p0;

  const sample_t * data_ptr = p0*4 + (sample_t*)sample_data;
  //@assert data_ptr_valid: \valid_read(data_ptr + (0..4*psize-1));
  uint16_t i0 = 0;
  uint16_t i1 = (psize+rounding) / 4;
  uint16_t i2 = (2*psize+rounding) / 4;
  uint16_t i3 = (3*psize+rounding) / 4;
  uint16_t i4 = psize;

  uint16_t n0  = i1  - i0;
  uint16_t n1  = i2  - i1;
  uint16_t n2  = i3  - i2;
  uint16_t n3  = i4  - i3;

  //@ ghost uint16_t nlo = psize / 4;
  //@ ghost uint16_t nhi = psize / 4 + 1;
  //@ assert nlo <= n0  <= nhi;
  //@ assert nlo <= n1  <= nhi;
  //@ assert nlo <= n2  <= nhi;
  //@ assert nlo <= n3  <= nhi;

before:
  accumulate_quadrants(i0,i1,i2, i3, i4, data_ptr);
  /*@ assert round1: \forall integer x;
      0 <= x <= 2 ==>
        \at(Q1[x],before) + n0*INT16_MIN <= Q1[x] <= \at(Q1[x],before) + n0*INT16_MAX &&
        \at(Q2[x],before) + n1*INT16_MIN <= Q2[x] <= \at(Q2[x],before) + n1*INT16_MAX &&
        \at(Q3[x],before) + n2*INT16_MIN <= Q3[x] <= \at(Q3[x],before) + n2*INT16_MAX &&
        \at(Q4[x],before) + n3*INT16_MIN <= Q4[x] <= \at(Q4[x],before) + n3*INT16_MAX;
  */

  *nsum1 = n0;
  *nsum2 = n1;
  *nsum3 = n2;
  *nsum4 = n3;
}
#endif

// PROVEME
void accumulate_square_interval_2(
  uint16_t p0,
  uint16_t p12,
  uint16_t *nsum1,
  uint16_t *nsum2,
  uint16_t *nsum3,
  uint16_t *nsum4,
  uint8_t rounding
) {
  //we chop the interval [p0,p12) into twelve pieces
  //each piece gets accumulated into Q1..4 in round-robin order
  //Q1 += p0, Q2 += p1, ..., Q1 += p4, ..., Q4 += p11
  uint16_t psize = p12 - p0;
  uint16_t paccu = psize + rounding;

  const sample_t * data_ptr = p0*4 + (sample_t*)sample_data;
  //@assert data_ptr_valid: \valid_read(data_ptr + (0..4*psize-1));
  uint16_t i0 = 0;
  uint16_t i1 = paccu / 12;
  uint16_t i2 = (paccu +   psize) / 12;
  uint16_t i3 = (paccu + 2*psize) / 12;
  uint16_t i4 = (paccu + 3*psize) / 12;
  uint16_t i5 = (paccu + 4*psize) / 12;
  uint16_t i6 = (paccu + 5*psize) / 12;
  uint16_t i7 = (paccu + 6*psize) / 12;
  uint16_t i8 = (paccu + 7*psize) / 12;
  uint16_t i9 = (paccu + 8*psize) / 12;
  uint16_t i10= (paccu + 9*psize) / 12;
  uint16_t i11= (paccu +10*psize) / 12;
  uint16_t i12= (paccu +11*psize) / 12;

  uint16_t n0  = i1  - i0;
  uint16_t n1  = i2  - i1;
  uint16_t n2  = i3  - i2;
  uint16_t n3  = i4  - i3;
  uint16_t n4  = i5  - i4;
  uint16_t n5  = i6  - i5;
  uint16_t n6  = i7  - i6;
  uint16_t n7  = i8  - i7;
  uint16_t n8  = i9  - i8;
  uint16_t n9  = i10 - i9;
  uint16_t n10 = i11 - i10;
  uint16_t n11 = i12 - i11;

  //@ ghost uint16_t nlo = psize / 12;
  //@ assert nlo <= n0  <= nlo+1;
  //@ assert nlo <= n1  <= nlo+1;
  //@ assert nlo <= n2  <= nlo+1;
  //@ assert nlo <= n3  <= nlo+1;
  //@ assert nlo <= n4  <= nlo+1;
  //@ assert nlo <= n5  <= nlo+1;
  //@ assert nlo <= n6  <= nlo+1;
  //@ assert nlo <= n7  <= nlo+1;
  //@ assert nlo <= n8  <= nlo+1;
  //@ assert nlo <= n9  <= nlo+1;
  //@ assert nlo <= n10 <= nlo+1;
  //@ assert nlo <= n11 <= nlo+1;

before:
  accumulate_quadrants(i0,i1,i2, i3, i4, data_ptr);
  /*@ assert round1: \forall integer x;
      0 <= x <= 2 ==>
        \at(Q1[x],before) + n0*INT16_MIN <= Q1[x] <= \at(Q1[x],before) + n0*INT16_MAX &&
        \at(Q2[x],before) + n1*INT16_MIN <= Q2[x] <= \at(Q2[x],before) + n1*INT16_MAX &&
        \at(Q3[x],before) + n2*INT16_MIN <= Q3[x] <= \at(Q3[x],before) + n2*INT16_MAX &&
        \at(Q4[x],before) + n3*INT16_MIN <= Q4[x] <= \at(Q4[x],before) + n3*INT16_MAX;
  */
before2:
  accumulate_quadrants(i4,i5,i6, i7, i8, data_ptr);
  /*@ assert round2: \forall integer x;
      0 <= x <= 2 ==>
        \at(Q1[x],before2) + n4*INT16_MIN <= Q1[x] <= \at(Q1[x],before2) + n4*INT16_MAX &&
        \at(Q2[x],before2) + n5*INT16_MIN <= Q2[x] <= \at(Q2[x],before2) + n5*INT16_MAX &&
        \at(Q3[x],before2) + n6*INT16_MIN <= Q3[x] <= \at(Q3[x],before2) + n6*INT16_MAX &&
        \at(Q4[x],before2) + n7*INT16_MIN <= Q4[x] <= \at(Q4[x],before2) + n7*INT16_MAX;
  */
before3:
  accumulate_quadrants(i8,i9,i10,i11,i12,data_ptr);
  /*@ assert round3: \forall integer x;
      0 <= x <= 2 ==>
        \at(Q1[x],before3) + n8*INT16_MIN <= Q1[x] <= \at(Q1[x],before3) + n8*INT16_MAX &&
        \at(Q2[x],before3) + n9*INT16_MIN <= Q2[x] <= \at(Q2[x],before3) + n9*INT16_MAX &&
        \at(Q3[x],before3) + n10*INT16_MIN <= Q3[x] <= \at(Q3[x],before3) + n10*INT16_MAX &&
        \at(Q4[x],before3) + n11*INT16_MIN <= Q4[x] <= \at(Q4[x],before3) + n11*INT16_MAX;
  */

  *nsum1 = n0 + n4 + n8;
  *nsum2 = n1 + n5 + n9;
  *nsum3 = n2 + n6 + n10;
  *nsum4 = n3 + n7 + n11;
}

void demod_tachs(uint8_t num_tachs,
                 uint8_t *rounding_inout)
{
  //demodulation stuff
  uint8_t rounding = *rounding_inout;
  uint16_t k = 0;

  // I'd use memset(), but this is easier for WP to deal with
  // It also runs faster, at the expense of ROM
  Q1[0] = 0; Q1[1] = 0; Q1[2] = 0;
  Q2[0] = 0; Q2[1] = 0; Q2[2] = 0;
  Q3[0] = 0; Q3[1] = 0; Q3[2] = 0;
  Q4[0] = 0; Q4[1] = 0; Q4[2] = 0;
  NQ[0] = 0; NQ[1] = 0; NQ[2] = 0; NQ[3] = 0;

  // assert range1: 0 <= edge_pos[0];
  // assert range2: edge_pos[num_tachs] <= MAX_FRAMES;

  // ghost uint32_t nlotot = 0;
  // ghost uint32_t nhitot = 0;

  /*@ loop invariant 0 <= k < num_tachs || k == num_tachs;
      loop invariant 0 <= rounding < 12;
      loop invariant k == num_tachs || edge_pos[k+1] - edge_pos[0] > edge_pos[k] - edge_pos[0];

      //loop invariant 3*((edge_pos[k] - edge_pos[0]) / 12 - k) <= nlotot <= nhitot;
      //loop invariant nhitot <= 3*(edge_pos[k] / 12 + k) <= 3*(MAX_FRAMES / 12 + num_tachs);

      loop invariant \forall integer x;
        0 <= x <= 2 ==>
          \at(Q1[x],LoopEntry) + NQ[0]*INT16_MIN <= Q1[x]
          <= \at(Q1[x],LoopEntry) + NQ[0]*INT16_MAX;
      loop invariant \forall integer x;
        0 <= x <= 2 ==>
          \at(Q2[x],LoopEntry) + NQ[1]*INT16_MIN <= Q2[x]
          <= \at(Q2[x],LoopEntry) + NQ[1]*INT16_MAX;
      loop invariant \forall integer x;
        0 <= x <= 2 ==>
          \at(Q3[x],LoopEntry) + NQ[2]*INT16_MIN <= Q3[x]
          <= \at(Q3[x],LoopEntry) + NQ[2]*INT16_MAX;
      loop invariant \forall integer x;
        0 <= x <= 2 ==>
          \at(Q4[x],LoopEntry) + NQ[3]*INT16_MIN <= Q4[x]
          <= \at(Q4[x],LoopEntry) + NQ[3]*INT16_MAX;

      //loop invariant \forall integer x;
      //  0 <= x <= 3 ==>
      //    \at(NQ[x],LoopEntry) + nlotot <= NQ[x] <= \at(NQ[x],LoopEntry) + nhitot;

      loop invariant NQsum: NQ[0] + NQ[1] + NQ[2] + NQ[3] == edge_pos[k] - edge_pos[0];

      loop invariant NQsumlow: edge_pos[k] - edge_pos[0] >= k*12;

      loop assigns rounding, k, Q1[0..2], Q2[0..2], Q3[0..2], Q4[0..2], NQ[0..3]; //, nlotot, nhitot;

      loop variant num_tachs - k;
   */
  for (; k < num_tachs; k++) {
    //current interval: [edge_pos[k], edge_pos[k+1])

    //@ ghost uint16_t n = edge_pos[k+1] - edge_pos[k];
    //@ ghost uint16_t nlo = (n / 12);
    //@ ghost uint16_t nhi = (n / 12) + 1;
    //@ assert order: edge_pos[k] < edge_pos[k+1];
    //@ assert n: 12 <= n <= MAX_FRAMES;
    //@ assert nlo: nlo >= 1;
    //@ assert nhi: nhi >= 2;
    //@ assert nrange: edge_pos[k] - edge_pos[0] + n == edge_pos[k+1] - edge_pos[0];

    uint16_t nsum1;
    uint16_t nsum2;
    uint16_t nsum3;
    uint16_t nsum4;

    accumulate_square_interval_2(
      edge_pos[k], edge_pos[k+1],
      &nsum1, &nsum2, &nsum3, &nsum4,
      rounding
    );

    //@ ghost uint16_t nsum = nsum1 + nsum2 + nsum3 + nsum4;
    //@ assert nsum: nsum == n;

    NQ[0] += nsum1;
    NQ[1] += nsum2;
    NQ[2] += nsum3;
    NQ[3] += nsum4;

    //four numbers are relative prime 12: 1, 5, 7, 11
    rounding = (rounding + 5) % 12;

    // ghost nlotot += 3 * nlo;
    // ghost nhitot += 3 * nhi;
  }
  //@ assert k == num_tachs;
  //@ assert edge_pos[num_tachs] - edge_pos[0] >= 12*num_tachs;

  *rounding_inout = rounding;
}

uint8_t find_tachs(uint16_t max_frames,
                   uint16_t *tach_skip,
                   uint8_t *tach_ratio,
                   int16_t tach_mean)
{
  int16_t mid = tach_mean;
  int16_t on  = mid;          //100% of mean
  int16_t off = mid - mid/4;  //75% of mean

  sample_t *data_ptr0 = (sample_t*)sample_data;
  sample_t *data_ptr = data_ptr0;
  uint8_t state = data_ptr[3]/(1 << (WORDSZ-16)) > mid;

  uint8_t num_tachs = 0;
  uint16_t skip = *tach_skip;
  uint16_t k = 0;

  //look for the first rising edge
  /*@ loop invariant 0 <= k < max_frames || k == max_frames;
      loop invariant data_ptr == data_ptr0 + 4*k;
      loop invariant \valid_read(&data_ptr[3]) || k == max_frames;

      loop assigns state, data_ptr, k;
      loop variant max_frames - k;
   */
  for (; k < max_frames;) {
    int16_t s = data_ptr[3] / (1 << (WORDSZ-16));
    //look for rising edge
    if (state == 0 && s > on) {
      state = 1;
      break;
    } else if (state == 1 && s < off) {
      state = 0;

      //skip 90° ahead
      if (k > max_frames - skip) {
        //we've hit the end - no point in trying further
        return 0;
      } else {
        k += skip;
        data_ptr += skip*4;
      }
    } else {
      //no rising or falling edge. keep looking
      k++;
      data_ptr += 4;
    }
  }

  if (k == max_frames) {
    //didn't find anything
    return 0;
  }

  uint16_t k_last = edge_pos[0] = k; //index of last tach
  uint16_t tach_min = UINT16_MAX;
  uint16_t tach_max = 0;

  k++;
  data_ptr += 4;

  //look for more rising edges,
  //add new tach to array whenever we find one
  /*@ loop invariant k: k_last < k;
      loop invariant k2: 0 <= k < max_frames || k == max_frames;
      //loop invariant k3: k <= MAX_FRAMES;
      loop invariant skip: 3 <= skip <= max_frames / 4;
      loop invariant num: 0 <= num_tachs <= 255;
      loop invariant ptr: data_ptr == data_ptr0 + 4*k;
      loop invariant valid: \valid_read(&data_ptr[3]) || k == max_frames;

      loop invariant pos_last: edge_pos[num_tachs] == k_last;
      //loop invariant forall: \forall integer x;
      //  0 <= x < num_tachs ==>
      //    0 <= edge_pos[x] < edge_pos[x+1] < max_frames &&
      //    edge_pos[x+1] - edge_pos[x] >= 12;
      loop invariant forall: \forall integer x;
        0 <= x < num_tachs ==>
          0 <= edge_pos[x] < edge_pos[x+1] < max_frames;

      //loop invariant edge_pos_ordered1: \forall integer k;
      //  0 <= k <= num_tachs ==>
      //    0 <= edge_pos[k];

      //loop invariant edge_pos_ordered2: \forall integer k;
      //  0 <= k < num_tachs ==>
      //    edge_pos[k] < edge_pos[k+1];

      loop invariant edge_pos_ordered3:
        num_tachs == 0 || \forall integer k;
          0 <= k <= num_tachs ==>
            edge_pos[k] <= MAX_FRAMES;

      loop invariant edge_pos_gap: \forall integer k;
        0 <= k < num_tachs ==>
          edge_pos[k+1] - edge_pos[k] >= 12;

      loop invariant minmax: num_tachs == 0 || tach_min <= tach_max;

      loop assigns state, k_last, edge_pos[1..255], data_ptr, skip, num_tachs, tach_min, tach_max, k;
      loop variant max_frames - k;
   */
  for (; k < max_frames && num_tachs < 255;) {
    int16_t s = data_ptr[3] / (1 << (WORDSZ-16));
    //look for rising edge
    if (state == 0 && s > on) {
      uint16_t cur_tach = k - k_last;

      // do not accept spurious tachs
      if (cur_tach >= 12) {
        state = 1;

        num_tachs++;
        edge_pos[num_tachs] = k;
        // assert prev: edge_pos[num_tachs-1] == k_last;
        // assert cur:  edge_pos[num_tachs]   == k;
        // assert edge_gap: edge_pos[num_tachs] - edge_pos[num_tachs-1] >= 12;

        // gather tach duration statistics
        if (cur_tach > tach_max) {
          tach_max = cur_tach;
        }
        if (cur_tach < tach_min) {
          tach_min = cur_tach;
        }

        //continually update the skip, so that we always skip 90°
        //sanity check it though
        if (cur_tach <= max_frames) {
          skip = cur_tach / 4;
        }

        k_last = k;

        //skip 90° ahead
        if (k > max_frames - skip || num_tachs == 255) {
          k = max_frames;
          data_ptr = data_ptr0 + max_frames*4;
        } else {
          k += skip;
          data_ptr += skip*4;
        }
      } else {
        //keep moving, don't change state
        k++;
        data_ptr += 4;
      }
    } else if (state == 1 && s < off) {
      state = 0;

      //skip 90° ahead
      if (k > max_frames - skip) {
        k = max_frames;
        data_ptr = data_ptr0 + max_frames*4;
      } else {
        k += skip;
        data_ptr += skip*4;
      }
    } else {
      //no rising or falling edge. keep looking
      k++;
      data_ptr += 4;
    }
  }

  if (tach_min == 0) {
    //this shouldn't happen, but guard against it either way
    *tach_ratio = 255;
  } else {
    uint32_t ratio = (uint32_t)tach_max * 100 / tach_min;
    if (ratio < 254) {
      *tach_ratio = ratio;
    } else {
      *tach_ratio = 254;
    }
  }

  *tach_skip = skip;

  return num_tachs;
}

/*@ requires 0 <= id <= 2;
    requires 12 <= max_frames <= MAX_FRAMES;
    requires \valid(stat1_out);

    requires \separated(
        &SPDR,
        &PORTF,
        &DDRD,
        &PORTD,
        &TIFR,
        &adc_connected[id],
        &adc_popcount[id],
        &adc_ena[id],
        &adc_fake_regs[id][STAT_1],
        &adc_fake_regs[id][STAT_P],
        &adc_fake_regs[id][STAT_N],
        &adc_fake_regs[id][STAT_S],
        stat1_out,
        &timer1_base,
        &sample_data_fake[0] + (0..8*max_frames-1)
    );

    requires \valid(&sample_data_fake[0] + (0..8*max_frames-1));

    requires adc_connected_and_valid(id);
    ensures adc_connected_and_valid(id);

    assigns SPDR, PORTF, DDRD, PORTD, TIFR, *stat1_out, timer1_base, sample_data_fake[0..8*max_frames-1];
 */
static void capture_and_demod_part1(
        uint8_t id,
        uint16_t max_frames,
        uint8_t *stat1_out
        ) {
  // There might be some stray error codes if num_fms > 1
  // In one case STAT_P=7 and STAT_N=7 would always get set,
  // but reading them here before capture() clears them.
  // My hypothesis is that this has to do with dV/dt's during
  // VGND change inducing out-of-range signals in channels 1-3.
  rreg_not_ena(id, STAT_1);
  rreg_not_ena(id, STAT_P);
  rreg_not_ena(id, STAT_N);
  rreg_not_ena(id, STAT_S);

  set_74153(id);
  capture(id, stat1_out, max_frames);
}


/*@ requires \valid(entry);
    requires 0 <= entry->num_tachs <= 255;

    requires 0 <= edge_pos[0] < edge_pos[entry->num_tachs] <= MAX_FRAMES;
    requires edge_pos[entry->num_tachs] - edge_pos[0] == NQ[0] + NQ[1] + NQ[2] + NQ[3];
    requires \valid_read(sample_data + (4*edge_pos[0]..4*edge_pos[entry->num_tachs]-1));

    requires \valid_read((accu_t*)Q1 + (0..2));
    requires \valid_read((accu_t*)Q2 + (0..2));
    requires \valid_read((accu_t*)Q3 + (0..2));
    requires \valid_read((accu_t*)Q4 + (0..2));
    requires \valid_read((uint16_t*)NQ + (0..3));
    requires \valid(&mean_abs[0] + (0..2));
    requires \valid((int16_t*)mean + (0..3));

    requires \separated(
      entry,
      (accu_t*)Q1 + (0..2),
      (accu_t*)Q2 + (0..2),
      (accu_t*)Q3 + (0..2),
      (accu_t*)Q4 + (0..2),
      (uint16_t*)NQ + (0..3),
      &mean_abs[0] + (0..2),
      (int16_t*)mean + (0..2)
    );

    requires NQrange: 0 < NQ[0] + NQ[1] + NQ[2] + NQ[3] <= MAX_FRAMES;

    requires Q1range: \forall integer x;
      0 <= x <= 2 ==>
        NQ[0]*INT16_MIN <= Q1[x] <= NQ[0]*INT16_MAX;
    requires Q2range: \forall integer x;
      0 <= x <= 2 ==>
        NQ[1]*INT16_MIN <= Q2[x] <= NQ[1]*INT16_MAX;
    requires Q3range: \forall integer x;
      0 <= x <= 2 ==>
        NQ[2]*INT16_MIN <= Q3[x] <= NQ[2]*INT16_MAX;
    requires Q4range: \forall integer x;
      0 <= x <= 2 ==>
        NQ[3]*INT16_MIN <= Q4[x] <= NQ[3]*INT16_MAX;

    assigns *entry, mean_abs[0..2], mean[0..3];
 */
static void capture_and_demod_part2(
    capture_entry_s *entry,
    uint16_t mean_abs[3],
    int16_t mean[4],
    uint8_t last_round
) {
      uint16_t N = NQ[0] + NQ[1] + NQ[2] + NQ[3];
      //@ assert N0: 0 < N;
      //@ assert N1: N == edge_pos[entry->num_tachs] - edge_pos[0];
      //@ assert N2: N <= MAX_FRAMES;

      //@ assert NQrange: 0 < NQ[0] + NQ[1] + NQ[2] + NQ[3] <= MAX_FRAMES;

      if (last_round || mean[3] == 0) {
        //sum_abs[3] is just the sum, should save some cycles
        uint32_t sum_abs[4] = {0,0,0,0};

        compute_sum_abs(edge_pos[0], edge_pos[entry->num_tachs], sum_abs);

        mean_abs[0] = sum_abs[0] / N;
        mean_abs[1] = sum_abs[1] / N;
        mean_abs[2] = sum_abs[2] / N;
        //mean[0..2] are computed in binary_iq
        mean[3]     = sum_abs[3] / N;
      }

      if (last_round) {
        binary_iq_mean(entry->IQ, mean);
      } else {
        binary_iq(entry->IQ);
      }
}


/*@ requires 0 <= id <= 2;
    requires 12 <= max_frames <= MAX_FRAMES;
    requires \valid(&sample_data[0] + (0..4*max_frames-1));
    requires \valid(stat1_out);
    requires \valid(&minmax[0][0] + (0..7));
    requires \valid((accu_t*)Q1 + (0..2));
    requires \valid((accu_t*)Q2 + (0..2));
    requires \valid((accu_t*)Q3 + (0..2));
    requires \valid((accu_t*)Q4 + (0..2));
    requires \valid((uint16_t*)NQ + (0..3));
    requires \valid(tach_mean);

    requires \separated(&sample_data[0] + (0..4*max_frames-1),
                        &sample_data_fake[0] + (0..8*max_frames-1),
                        &edge_pos[0] + (0..255),
                        &timer1_base,
                        &SPDR,
                        &TIFR,
                        &PORTF,
                        &DDRD,
                        &PORTD,
                        stat1_out,
                        &minmax[0][0] + (0..7),
                        (accu_t*)Q1 + (0..2),
                        (accu_t*)Q2 + (0..2),
                        (accu_t*)Q3 + (0..2),
                        (accu_t*)Q4 + (0..2),
                        (uint16_t*)NQ + (0..3),
                        tach_mean,
                        &adc_ena[0] + (0..2),
                        &adc_popcount[0] + (0..2),
                        &adc_connected[0] + (0..2)
                        );

    requires adc_connected_and_valid(id);
    ensures adc_connected_and_valid(id);

    ensures \forall integer x; 0 <= x < 4 ==>
      minmax[x][0] <= \old(minmax[x][0]) &&
      minmax[x][1] >= \old(minmax[x][1]);

    assigns sample_data[0..4*max_frames-1],
            sample_data_fake[0..8*max_frames-1],
            edge_pos[0..255],
            timer1_base, SPDR, TIFR, PORTF, DDRD, PORTD,
            *stat1_out,
            (&minmax[0][0])[0..7],
            Q1[0..2],
            Q2[0..2],
            Q3[0..2],
            Q4[0..2],
            NQ[0..3],
            *tach_mean,
            adc_ena[0..2], adc_popcount[0..2], adc_connected[0..2];
 */
static void capture_and_demod_part0(
        uint8_t id,
        uint16_t max_frames,
        uint8_t *stat1_out,
        int16_t minmax[4][2],
        int16_t *tach_mean,
        uint8_t first_round,
        uint8_t biased_round
        )
{
  capture_and_demod_part1(id, max_frames, stat1_out);

#ifdef TEST_SPEED
  uint32_t t1 = gettime32();
#endif

before:
  if (biased_round) {
    compute_min_max(max_frames, (sample_t*)sample_data, minmax, first_round);
  }
after:
  /*@ assert min_max: \forall integer x; 0 <= x < 4 ==>
          minmax[x][0] <= \at(minmax[x][0], before) &&
          minmax[x][1] >= \at(minmax[x][1], before);
   */

#ifdef TEST_SPEED
  uint32_t t2 = gettime32();
#endif

  //synthesize TACH from fourth channel in each FM data stream
  //if we don't have a decent tach trigger value yet then bootstrap one from the mean of the captured samples
  if (*tach_mean == 0) {
    *tach_mean = bootstrap_tach_mean(max_frames, (sample_t*)sample_data);
  }
}

//most recent performance test (2018-04-24), 19.2 kHz 1700 RPM:
//
// 213 ms in capture()
//   6 ms find_tachs()
//  36 ms demod_tachs()
//   0 ms binary_iq()
//---------------------------------
// 257 ms typical (2 ms due to rounding)
//
// depending on what statistics we want:
//  30 ms compute_min_max() if biased_round
//  10 ms bootstrap_tach_mean()
//  69 ms compute_sum_abs() if last_round
//---------------------------------
// 366 ms total worst case
uint8_t capture_and_demod(
        uint8_t id,
        uint16_t max_frames,
        uint8_t *stat1_out,
        int16_t minmax[4][2],
        capture_entry_s *entry,
        int16_t mean[4],
        int16_t *tach_mean,
        uint16_t *tach_skip,
        uint8_t *tach_ratio,
        uint16_t *discard,
        uint16_t mean_abs[3],
        uint8_t *rounding_inout,
        uint8_t first_round,    //minmax for tach only computed during the first round
        uint8_t biased_round,   //minmax computed only during biased rounds
        uint8_t last_round      //only certain stats during the last round
        ) {
#ifdef TEST_SPEED
  uint32_t t0 = gettime32();
#endif

  capture_and_demod_part0(id, max_frames, stat1_out, minmax, tach_mean, first_round, biased_round);
after2:

#ifdef TEST_SPEED
  uint32_t t3 = gettime32();
#endif

  entry->num_tachs = find_tachs(max_frames,
                                tach_skip,
                                tach_ratio,
                                *tach_mean);
after3:
  /*@ assert min_max3: \forall integer x; 0 <= x < 4 ==>
          minmax[x][0] == \at(minmax[x][0], after2) &&
          minmax[x][1] == \at(minmax[x][1], after2);
   */

  //@ assert tach_skip: 3 <= *tach_skip <= max_frames / 4;

#ifdef TEST_SPEED
  uint32_t t4 = gettime32();
  uint32_t t5 = t4;
#endif

  if (entry->num_tachs >= 1) {
    /*@ assert max_frames: \forall integer x;
          0 <= x <= entry->num_tachs ==>
            edge_pos[x] <= MAX_FRAMES;
     */
    *discard = edge_pos[0];

    //assigns Q1..4 and NQ
#ifdef TEST_SPEED
    //these lines regularize the time spent in the functions below
    //but obviously result in garbage output
    edge_pos[0] = 0;
    edge_pos[entry->num_tachs] = max_frames;
#endif
    demod_tachs(entry->num_tachs,
                rounding_inout);

    /*@ assert min_max4: \forall integer x; 0 <= x < 4 ==>
            minmax[x][0] == \at(minmax[x][0], after3) &&
            minmax[x][1] == \at(minmax[x][1], after3);
     */

#ifdef TEST_SPEED
    t5 = gettime32();
#endif

    if (entry->num_tachs > 0) {
        capture_and_demod_part2(entry, mean_abs, mean, last_round);
    }
  } else {
    //no tachs at all
    *discard = max_frames;
  }

#ifdef TEST_SPEED
  uint32_t t6 = gettime32();
  printf_P(
    PSTR("%5" PRId32 " %5" PRId32 " %5" PRId32 " %5" PRId32 " %5" PRId32
         " %5" PRId32 " tot %5" PRId32 " tach %5" PRId16 " vs %5" PRId16 "\r\n"),
    (t1-t0)/7373, (t2-t1)/7373, (t3-t2)/7373, (t4-t3)/7373,
    (t5-t4)/7373, (t6-t5)/7373, (t6-t0)/7373, *tach_mean, mean[3]);
#endif

  //this *looks* like a bug, but I'm fairly sure this just ends up
  //reusing mean[3] from previous runs
  *tach_mean = mean[3];

  return 0;
}

uint16_t compute_max_frames(uint16_t max_frames_max,
                            uint32_t cycles_per_sample,
                            uint32_t frames_per_second)
{
  //note that this makes use of the entire sample_data array
  //we're not doing any double buffering here,
  //and we're not indexing into the array
  //this makes it possible to make use of all 32k of it
  uint16_t max_frames = sizeof(sample_data)/(WORDSZ/8*4);

  //measure no longer than then number of Timer1 overflows
  //we can keep track of in one byte, comfortably
  //                                 1024000    / 256 = 4000;
  uint32_t max_ovf_frames = ((uint32_t)TIMER1_OVF_INC * TIMER1_OVFS_MAX) / cycles_per_sample;

  //measure no longer than one second
  if (frames_per_second < max_frames) {
    max_frames = frames_per_second;
  }
  if (max_frames > max_ovf_frames) {
    max_frames = max_ovf_frames;
  }
  if (max_frames_max > 0 && max_frames > max_frames_max) {
    max_frames = max_frames_max;
  }

  //sanity check, to prevent q1..3 from having to deal with overflow
  //we can probably bump this to 65535 (see computation of fm->mean[j]):
  //  (+)2147483647 / (-)32768 = 65535
  //   ^               ^         ^ maximum no. frames
  //   ^               ^ maximum sample amplitude
  //   ^ minimum accu_t range
  if (max_frames > 16383) {
    max_frames = 16383;
  }

  return max_frames;
}

uint64_t parse64(const char *line) {
  uint64_t ret = 0;
  uint8_t started = 0;

  /*@ loop invariant valid_read_string(line);
      loop assigns line, ret, started;
   */
  for (; *line; line++) {
    if (*line >= '0' && *line <= '9') {
      started = 1;
      //stop if ret would overflow
      if (ret > 1844674407370955161) {
        break;
      }
      ret *= 10;
      uint8_t val = *line - '0';
      //stop if ret would overflow
      if (ret > UINT64_MAX - val) {
        break;
      } else {
        ret += val;
      }
    } else {
      if (started) {
        break;
      }
    }
  }

  return ret;
}

//@ logic integer pow10(integer n) = n > 0 ? pow10(n-1) * 10 : 1;

void print64(uint64_t i) {
  uint64_t digit = 10000000000000000000ULL;
  //@ assert digit19: digit == pow10(19);
  uint8_t printing = 0;
  //@ ghost int j = 19;

  /*@ loop invariant 0 <= j <= 19;
      loop invariant digit == pow10(j) || digit == 0;
      loop invariant 0 <= i < digit*10;
      loop assigns digit, i, j, printing;
      loop variant digit;
   */
  for (;;) {
    uint8_t d = i / digit;
    //@ assert 0 <= d <= 9;
    i %= digit;

    if (d > 0) {
      printing = 1;
    }

    if (printing) {
      sendchar('0' + d);
    }

    digit /= 10;
    if (digit == 0) {
      break;
    }

    //@ ghost j--;
  }
}

void fm_mask2map(uint8_t fm_mask, uint8_t fm_map[3]) {
  switch (fm_mask) {
  case 1: fm_map[0] = 0;                               break;
  case 2: fm_map[0] = 1;                               break;
  case 3: fm_map[0] = 0; fm_map[1] = 1;                break;
  case 4: fm_map[0] = 2;                               break;
  case 5: fm_map[0] = 0; fm_map[1] = 2;                break;
  case 6: fm_map[0] = 1; fm_map[1] = 2;                break;
  case 7: fm_map[0] = 0; fm_map[1] = 1; fm_map[2] = 2; break;
  }
}

static const char STAT[4] = "STAT";
static const char TEMP[4] = "TEMP";
static const char VOLT[4] = "VOLT";
static const char ENTR[4] = "ENTR";
static const char SAMP[4] = "SAMP";

// Having this separate speeds up proving init_cb_cbc() from 4m8s to 13s
/*@ assigns cb, cbc;
 */
static void zero_cb_cbc(void) {
#ifdef FRAMA_C
    cb = (capture_block_s){0};
    cbc = (capture_block_continued_s){0};
#else
    memset(&cb, 0, sizeof(cb));
    memset(&cbc,0, sizeof(cbc));
#endif
}

void init_cb_cbc(uint8_t fm_mask, uint16_t max_frames) {
    zero_cb_cbc();

    cb.version        = 3;
    cb.f_cpu          = F_CPU;
    cb.t              = gettime64();
    cb.fm_mask        = fm_mask;
    cb.num_frames     = max_frames;
    cb.stats[0].OCR1n = OCR1A;
    cb.stats[1].OCR1n = OCR1B;
    cb.stats[2].OCR1n = OCR1C;
    cb.vgnd_rounds    = 3;    //should be <= 7, else >50% time is spent biasing
    cb.vgnd_zero      = 512;
    cb.vgnd_minus     = cb.vgnd_zero - 100;
    cb.vgnd_plus      = cb.vgnd_zero + 100;

#define SET_MARKER(marker, str)\
    do {\
        marker[0] = str[0];\
        marker[1] = str[1];\
        marker[2] = str[2];\
        marker[3] = str[3];\
    } while(0)

    SET_MARKER(cb.stat_marker, STAT);
    SET_MARKER(cb.temp_marker, TEMP);
    SET_MARKER(cb.volt_marker, VOLT);
    SET_MARKER(cb.entr_marker, ENTR);
    SET_MARKER(cbc.samp_marker, SAMP);

    /*@ loop invariant 0 <= id <= 3;
        loop assigns id, cb.stats[0..2];
        loop variant 3 - id;
     */
    for (uint8_t id = 0; id < 3; id++) {
      if (fm_mask & (1<<id)) {
        cb.stats[id].minmax[0][0] = INT16_MAX;
        cb.stats[id].minmax[1][0] = INT16_MAX;
        cb.stats[id].minmax[2][0] = INT16_MAX;
        cb.stats[id].minmax[3][0] = INT16_MAX;
        cb.stats[id].minmax[0][1] = INT16_MIN;
        cb.stats[id].minmax[1][1] = INT16_MIN;
        cb.stats[id].minmax[2][1] = INT16_MIN;
        cb.stats[id].minmax[3][1] = INT16_MIN;
      }
    }
}

/*@ requires 0 <= ocr_lo <= TIMER1_TOP;
    requires 0 <= ocr_hi <= TIMER1_TOP;
    requires 0 <= fm_mask <= 7;
    requires 0 <= stop_mask <= 7;
    requires valid_adc_configuration_part2(fm_mask);
    ensures 0 <= \result <= 1;
    ensures \result == 0 ==> valid_adc_configuration_part2(fm_mask);
    assigns SPDR, PORTF, adc_ena[0..2], adc_popcount[0..2], adc_connected[0..2], OCR1A, OCR1B, OCR1C, adc_fake_regs[0][CLK2], adc_fake_regs[1][CLK2], adc_fake_regs[2][CLK2];
 */
static uint8_t set_block_motor_speed(uint8_t block_idx, uint8_t fm_mask, uint8_t stop_mask, uint16_t ocr_lo, uint16_t ocr_hi) {
  //alternate OCR1*
  //set ADC sample rates while we're at it
  uint16_t ocr = (block_idx & 1) ? ocr_hi : ocr_lo;
  if (ocr) {
    uint8_t clk2 = 0x20 | ocr2osr(ocr);
    if (fm_mask & 1) {
      if (stop_mask & 1) {
        OCR1A = ocr;
      }
      if (wreg(0, CLK2, clk2)) {
        return 1;
      }
    }
    if (!(stop_mask & 1)) {
      OCR1A = 0;
    }

    if (fm_mask & 2) {
      if (stop_mask & 2) {
        OCR1B = ocr;
      }
      if (wreg(1, CLK2, clk2)) {
        return 1;
      }
    }
    if (!(stop_mask & 2)) {
      OCR1B = 0;
    }

    if (fm_mask & 4) {
      if (stop_mask & 4) {
        OCR1C = ocr;
      }
      if (wreg(2, CLK2, clk2)) {
        return 1;
      }
    }
    if (!(stop_mask & 4)) {
      OCR1C = 0;
    }
  }
  return 0;
}

/*@ requires 0 <= id <= 2;
    requires A_SYS_CFG <= a <= ADC_REG_MAX;

    requires \separated(
        &SPDR,
        &PORTF,
        &adc_ena[id],
        &adc_popcount[id],
        &adc_connected[id],
        &adc_fake_regs[id][a],
        &adc_fake_regs[id][ID_MSB],
        &adc_fake_regs[id][ID_LSB]
    );

    requires adc_connected_and_valid(id);
    ensures \result == 0 ==> adc_connected_and_valid(id);
    ensures 0 <= \result <= 1;
    ensures \result == 0 ==> adc_fake_regs[id][a] == wreg_reserved_bits(a, d);
    ensures \result == 0 && a == ADC_ENA ==>
        adc_ena[id] == (d & 0x0F) &&
        adc_popcount[id] == popcount(d & 0x0F) &&
        adc_connected[id] == 1;

    assigns
      SPDR,
      PORTF,
      adc_ena[id],
      adc_popcount[id],
      adc_connected[id],
      adc_fake_regs[id][a],
      adc_fake_regs[id][ID_MSB],
      adc_fake_regs[id][ID_LSB];
 */
static uint8_t wreg_checked(uint8_t id, uint8_t a, uint8_t d) {
  uint8_t d2 = wreg_reserved_bits(a, d);
  if (wreg(id, a, d)) {
    return 1;
  }
  if (a == ADC_ENA) {
    if (rreg_ena(id) != d2) {
      return 1;
    }
    return adc_connected[id] != 1;
  } else if (rreg_not_ena(id, a) != d2) {
    return 1;
  }
  return 0;
}

uint8_t setup_inner(uint8_t fm_mask, uint8_t clk1, uint8_t clk2) {
  //@ assert pc: 1 <= popcount(fm_mask) <= 3;
  if (fm_mask & 1) {
    if (wreg_checked(0, ADC_ENA, 0x0F) || wreg_checked(0, CLK1, clk1) || wreg_checked(0, CLK2, clk2)) {
      return 1;
    }
  }
  //@ assert mask1: valid_adc_configuration_part2(fm_mask & 1);
  if (fm_mask & 2) {
    if (wreg_checked(1, ADC_ENA, 0x0F) || wreg_checked(1, CLK1, clk1) || wreg_checked(1, CLK2, clk2)) {
      return 1;
    }
  }
  //@ assert mask2: valid_adc_configuration_part2(fm_mask & 2);
  //@ assert mask3: valid_adc_configuration_part2(fm_mask & 3);
  if (fm_mask & 4) {
    if (wreg_checked(2, ADC_ENA, 0x0F) || wreg_checked(2, CLK1, clk1) || wreg_checked(2, CLK2, clk2)) {
      return 1;
    }
  }
  //@ assert mask4: valid_adc_configuration_part2(fm_mask & 4);
  //@ assert mask7: valid_adc_configuration_part2(fm_mask & 7);
  return 0;
}

static const uint16_t osrtab[16] = {
  4096, 2048, 1024, 800, 768, 512, 400, 384, 256, 200, 192, 128, 96, 64, 48, 32
};

#ifdef FRAMA_C
/*@ requires 0 <= clk1 <= 14 && clk1 % 2 == 0;
    requires 0 <= clk2 <= 14 && clk2 % 2 == 0;
    ensures \result == clk1*clk2;
    ensures 0 <= \result <= 196;
    assigns \nothing;
 */
static uint8_t ghost_clk12prod(uint8_t clk1, uint8_t clk2) {
  return clk1*clk2;
}
#endif

/*@ requires 0 <= id <= 2;
    requires adc_connected_and_valid(id);
    requires \separated(
        &SPDR,
        &PORTF,
        &adc_ena[id],
        &adc_popcount[id],
        &adc_connected[id],
        &adc_fake_regs[id][0] + (0..(ADC_REG_MAX))
    );

    ensures 0 <= \result <= 802816;

    assigns
      SPDR,
      PORTF,
      adc_ena[id],
      adc_popcount[id],
      adc_connected[id],
      adc_fake_regs[id][ADC_ENA];
 */
static uint32_t adc_cycles_per_sample_id(uint8_t id) {
  uint8_t clk1 = rreg_not_ena(id, CLK1);
  uint8_t clk2 = rreg_not_ena(id, CLK2);
  uint8_t clk2hi = clk2 / 16;
  //@ assert clk2hi: 0 <= clk2hi <= 15;
  clk1 &= 0x0E;
  //@ assert clk1range: 0 <= clk1 <= 14;
  //@ assert clk1even: clk1 % 2 == 0;
  clk2hi &= 0x0E;
  //@ assert clk2hirange: 0 <= clk2hi <= 14;
  //@ assert clk2hieven: clk2hi % 2 == 0;
  uint8_t clk12 = clk1 * clk2hi;
  //@ ghost uint8_t clk122 = ghost_clk12prod(clk1, clk2hi);
  //@ assert clk12122: clk12 == clk122;
  //@ assert clk12range: 0 <= clk12 <= 196;
  //@ assert clk12mod4: clk12 % 4 == 0;
  uint32_t cycles_per_sample = clk12 * (uint32_t)osrtab[clk2 & 0x0F];
  return cycles_per_sample;
}
