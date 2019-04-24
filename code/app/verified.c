/* Everything that is commited in here has been verified by Frama-C */

#include <stdint.h>
#include "verified.h"

#ifdef FRAMA_C

/*@ assigns PORTF;
 */
void adc_select(uint8_t id) {
}

/*@ assigns PORTF;
 */
void adc_deselect(void) {
}


// fake rreg() that returns void, so we don't try to verify things that
// depend on values in registers
uint8_t rreg(uint8_t id, uint8_t a) {
  adc_select(id);
  SPDR = 1;
  adc_deselect();
  return 0;
}

// similar fake stub
void set_74153(uint8_t ch) {
}
#endif

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
  uint16_t NQ[4],
  int16_t IQ[3][2],
  int16_t mean[4],
  uint8_t compute_mean
) {
  uint16_t N = NQ[0] + NQ[1] + NQ[2] + NQ[3];
  accu_t lo = N*(accu_t)INT16_MIN;
  accu_t hi = N*(accu_t)INT16_MAX;
  // Verify that the above multiplications are correct:
  //@ assert lo == N*INT16_MIN;
  //@ assert hi == N*INT16_MAX;

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

    if (compute_mean) {
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
  const sample_t *data_ptr,
  accu_t Q1[3],
  accu_t Q2[3],
  accu_t Q3[3],
  accu_t Q4[3]
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

void accumulate_square_interval_2(
  uint16_t p0,
  uint16_t p12,
  accu_t Q1[3],
  accu_t Q2[3],
  accu_t Q3[3],
  accu_t Q4[3],
  uint16_t *nsum1,
  uint16_t *nsum2,
  uint16_t *nsum3,
  uint16_t *nsum4,
  uint8_t rounding
) {
  //we chop the interval [p0,p12) into twelve pieces
  //each piece gets accumulated into Q1..4 in round-robin order
  //Q1 += p0, Q2 += p1, ..., Q1 += p4, ..., Q4 += p11
  const __uint24 psize = p12 - p0;
  __uint24 paccu = psize + rounding;
  //@ assert valid_uint24(psize) && valid_uint24(paccu);

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
  //@ ghost uint16_t nhi = psize / 12 + 1;
  //@ assert nlo <= n0  <= nhi;
  //@ assert nlo <= n1  <= nhi;
  //@ assert nlo <= n2  <= nhi;
  //@ assert nlo <= n3  <= nhi;
  //@ assert nlo <= n4  <= nhi;
  //@ assert nlo <= n5  <= nhi;
  //@ assert nlo <= n6  <= nhi;
  //@ assert nlo <= n7  <= nhi;
  //@ assert nlo <= n8  <= nhi;
  //@ assert nlo <= n9  <= nhi;
  //@ assert nlo <= n10 <= nhi;
  //@ assert nlo <= n11 <= nhi;

before:
  accumulate_quadrants(i0,i1,i2, i3, i4, data_ptr,Q1,Q2,Q3,Q4);
  /*@ assert round1: \let nhi = (p12 - p0) / 12 + 1; \forall integer x;
      0 <= x <= 2 ==>
        \at(Q1[x],before) + n0*INT16_MIN <= Q1[x] <= \at(Q1[x],before) + n0*INT16_MAX &&
        \at(Q2[x],before) + n1*INT16_MIN <= Q2[x] <= \at(Q2[x],before) + n1*INT16_MAX &&
        \at(Q3[x],before) + n2*INT16_MIN <= Q3[x] <= \at(Q3[x],before) + n2*INT16_MAX &&
        \at(Q4[x],before) + n3*INT16_MIN <= Q4[x] <= \at(Q4[x],before) + n3*INT16_MAX;
  */
before2:
  accumulate_quadrants(i4,i5,i6, i7, i8, data_ptr,Q1,Q2,Q3,Q4);
  /*@ assert round2: \let nhi = (p12 - p0) / 12 + 1; \forall integer x;
      0 <= x <= 2 ==>
        \at(Q1[x],before2) + n4*INT16_MIN <= Q1[x] <= \at(Q1[x],before2) + n4*INT16_MAX &&
        \at(Q2[x],before2) + n5*INT16_MIN <= Q2[x] <= \at(Q2[x],before2) + n5*INT16_MAX &&
        \at(Q3[x],before2) + n6*INT16_MIN <= Q3[x] <= \at(Q3[x],before2) + n6*INT16_MAX &&
        \at(Q4[x],before2) + n7*INT16_MIN <= Q4[x] <= \at(Q4[x],before2) + n7*INT16_MAX;
  */
before3:
  accumulate_quadrants(i8,i9,i10,i11,i12,data_ptr,Q1,Q2,Q3,Q4);
  /*@ assert round3: \let nhi = (p12 - p0) / 12 + 1; \forall integer x;
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
                 uint8_t *rounding_inout,
                 accu_t Q1out[3],
                 accu_t Q2out[3],
                 accu_t Q3out[3],
                 accu_t Q4out[3],
                 uint16_t NQout[4])
{
  //demodulation stuff
  accu_t Q1[3] = {0,0,0};
  accu_t Q2[3] = {0,0,0};
  accu_t Q3[3] = {0,0,0};
  accu_t Q4[3] = {0,0,0};
  uint16_t NQ[4] = {0,0,0,0};

  uint8_t rounding = *rounding_inout;
  uint16_t k = 0;

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
      Q1, Q2, Q3, Q4,
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

  // Extremely tedious, but helps WP actually finish its proofs
  // Most likely optimized away by gcc
  Q1out[0] = Q1[0]; Q1out[1] = Q1[1]; Q1out[2] = Q1[2];
  Q2out[0] = Q2[0]; Q2out[1] = Q2[1]; Q2out[2] = Q2[2];
  Q3out[0] = Q3[0]; Q3out[1] = Q3[1]; Q3out[2] = Q3[2];
  Q4out[0] = Q4[0]; Q4out[1] = Q4[1]; Q4out[2] = Q4[2];
  NQout[0] = NQ[0]; NQout[1] = NQ[1]; NQout[2] = NQ[2]; NQout[3] = NQ[3];
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

uint8_t capture_and_demod(
        uint8_t id,
        uint16_t max_frames,
        uint8_t *stat1_out,
        int16_t minmax[4][2],
        uint16_t NQ[4],
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
  // There might be some stray error codes if num_fms > 1
  // In one case STAT_P=7 and STAT_N=7 would always get set,
  // but reading them here before capture() clears them.
  // My hypothesis is that this has to do with dV/dt's during
  // VGND change inducing out-of-range signals in channels 1-3.
  rreg(id, STAT_1);
  rreg(id, STAT_P);
  rreg(id, STAT_N);
  rreg(id, STAT_S);

  set_74153(id);
  capture(id, stat1_out, max_frames);

  if (biased_round) {
    compute_min_max(max_frames, (sample_t*)sample_data, minmax, first_round);
  }

  //synthesize TACH from fourth channel in each FM data stream
  //if we don't have a decent tach trigger value yet then bootstrap one from the mean of the captured samples
  if (*tach_mean == 0) {
    *tach_mean = bootstrap_tach_mean(max_frames, (sample_t*)sample_data);
  }

  //FIXME: somewhat out of date values
  //most recent performance test (2018-04-17), 19.2 kHz 1700 RPM:
  //
  // 213 ms in capture() (further up)
  //  77 ms spent in this loop
  //        of which 36 ms in accumulate_square_interval_2()
  //  11 ms other
  //---------------------------------
  // 301 ms total

  entry->num_tachs = find_tachs(max_frames,
                                tach_skip,
                                tach_ratio,
                                *tach_mean);

  if (entry->num_tachs >= 1) {
    /*@ assert max_frames: \forall integer x;
          0 <= x <= entry->num_tachs ==>
            edge_pos[x] <= MAX_FRAMES;
     */
    accu_t Q1[3], Q2[3], Q3[3], Q4[3];

    *discard = edge_pos[0];

    //assigns Q1..4 and NQ
    demod_tachs(entry->num_tachs,
                rounding_inout,
                Q1, Q2, Q3, Q4, NQ);

    if (entry->num_tachs > 0) {
      uint16_t N = NQ[0] + NQ[1] + NQ[2] + NQ[3];
      //@ assert N0: 0 < N;
      //@ assert N1: N == edge_pos[entry->num_tachs] - edge_pos[0];
      //@ assert N2: N <= MAX_FRAMES;

      //@ assert NQrange: 0 < NQ[0] + NQ[1] + NQ[2] + NQ[3] <= MAX_FRAMES;

      if (last_round) {
        //sum_abs[3] is just the sum, should save some cycles
#ifndef FRAMA_C
        uint32_t sum_abs[4] = {0,0,0,0};
#else
        //WP doesn't seem able to deal with unsigned overflow
        int32_t sum_abs[4] = {0,0,0,0};
#endif

        compute_sum_abs(edge_pos[0], edge_pos[entry->num_tachs], sum_abs);

        mean_abs[0] = sum_abs[0] / N;
        mean_abs[1] = sum_abs[1] / N;
        mean_abs[2] = sum_abs[2] / N;
        //mean[0..2] are computed in binary_iq
        mean[3]     = sum_abs[3] / N;
      }

      binary_iq(Q1, Q2, Q3, Q4, NQ, entry->IQ, mean, last_round);
    }
  } else {
    //no tachs at all
    *discard = max_frames;
  }

  //this *looks* like a bug, but I'm fairly sure this just ends up
  //reusing mean[3] from previous runs
  *tach_mean = mean[3];

  return 0;
}
