#ifndef _PROVEN_H
#define _PROVEN_H

#include "config.h"
#include "frama-c-stub.h"

//used when computing max_frames
//typically timer1_ovfs will reach TIMER1_OVFS_MAX+1
#define TIMER1_OVFS_MAX 250L

#define MAX_FRAMES 4095

#define TIMER1_PRESCALER 1  //6% CPU  (WGM=7)
//#define TIMER1_PRESCALER 8  //<1% CPU (WGM=7)
#define TIMER1_WGM        14

#if TIMER1_WGM == 7         // Fast PWM, 10-bit
#define TIMER1_TOP  0x03FF  // 7200 Hz
#elif TIMER1_WGM == 10      // PWM, Phase Correct
// TOP = OCR1
// Using TIMER1_TOP = 0xFFFF would be nice, but the motor's speed becomes wobbly.
// The EC20 datasheet says motor PWM frequency must be >= 500 Hz,
// while WGM=10 -> ~56 Hz if TIMER1_TOP == 0xFFFF.
#define TIMER1_TOP  0x0FFF  // ~900.2 Hz
#elif TIMER1_WGM == 14      // Fast PWM
#define TIMER1_TOP  0x1FFF  // 900 Hz
#else
#error Unsupported TIMER1_WGM
#endif

#define TIMER3_PRESCALER TIMER1_PRESCALER
#define TIMER3_TOP        0xFFFF

//when doing TCNT1 = 0, what value should we give TCNT3 for them both to line up?
//because gcc is not very smart it turns out that the answer is six
//2x ldi followed by 2x sts = 6 cy
#if TIMER1_PRESCALER == 1
#define TIMER3_OFS    6
#else
#define TIMER3_OFS    1
#endif

extern int16_t sample_data[4*MAX_FRAMES];

/*@ requires 0 <= id <= 2;
    requires \valid(stat1_out);
    requires \valid(&sample_data[0] + (0..4*num_frames-1));
    requires 1 <= num_frames <= MAX_FRAMES;
    assigns *stat1_out, timer1_base, SPDR, TIFR, sample_data[0..8*num_frames-1];
 */
void capture(uint8_t id, uint8_t *stat1_out, uint16_t num_frames);

/*@ requires 1 <= max_frames <= MAX_FRAMES;
    requires \valid_read(data_ptr_in + (0..4*max_frames-1));
    requires \valid((int16_t*)minmax + (0..7));
    ensures \forall integer x; 0 <= x < 4 ==>
      minmax[x][0] <= \old(minmax[x][0]) &&
      minmax[x][1] >= \old(minmax[x][1]);
    assigns ((int16_t*)minmax)[0..7];
 */
void compute_min_max(
    uint16_t max_frames,
    sample_t *data_ptr_in, int16_t minmax[4][2],
    uint8_t compute_tach_minmax
);

/*@ requires 0 <= p0 < p12;
    requires \valid_read(sample_data + (4*p0..4*p12-1));
    requires \valid(&sum_abs[0] + (0..3));

    requires \forall integer x; 0 <= x < 3 ==>
      0 <= sum_abs[x]
        <= INT32_MAX - (p12-p0)*(INT16_MAX+1);
    requires
      0 <= sum_abs[3]
        <= INT32_MAX - (p12-p0)*INT16_MAX;

    ensures \forall integer x; 0 <= x < 3 ==>
      \old(sum_abs[x]) <= sum_abs[x]
      <= \old(sum_abs[x]) + (p12-p0)*(INT16_MAX+1);
    ensures
      \old(sum_abs[3]) <= sum_abs[3]
      <= \old(sum_abs[3]) + (p12-p0)*INT16_MAX;

    assigns sum_abs[0..3];
 */
void compute_sum_abs(
  uint16_t p0,
  uint16_t p12,
#ifndef FRAMA_C
  uint32_t sum_abs[4]
#else
  //WP doesn't seem able to deal with unsigned overflow
  int32_t sum_abs[4]
#endif
);

//computes mean of tachometer values in an entire sample capture block.
//not as stable as computing the mean between rising edges of tach signal,
//but useful for bootstrapping
/*@ requires 1 <= num_frames <= UINT16_MAX;
    requires \valid_read(data_ptr_in + (0..4*num_frames-1));
    assigns \result \from data_ptr_in[0..4*num_frames-1];
 */
sample_t bootstrap_tach_mean(uint16_t num_frames, const sample_t *data_ptr_in);

//converts ADC codes into voltages
/*@ requires \valid_read(adc_codes + (0..4));
    requires \valid(volts + (0..4));
    assigns volts[0..4];
 */
void adc2volts(const uint16_t *adc_codes, float *volts);

// Used to set the ADC's samplerate based on the currently selected motor speed
/*@ requires 0 <= ocr <= TIMER1_TOP;
    ensures 0 <= \result <= 14;
    assigns \result \from ocr;
 */
uint8_t ocr2osr(uint16_t ocr);

/*@ requires 0 <= p0 < p12 <= MAX_FRAMES;
    requires 12 <= p12 - p0 <= MAX_FRAMES;
    requires \valid_read((sample_t*)sample_data + (4*p0..4*p12-1));
    requires \valid((accu_t*)Q1 + (0..3));
    requires \valid((accu_t*)Q2 + (0..3));
    requires \valid((accu_t*)Q3 + (0..3));
    requires \valid((accu_t*)Q4 + (0..3));
    requires \valid((uint16_t*)NQ + (0..3));
    requires 0 <= rounding < 12;
    assigns Q1[0..3], Q2[0..3], Q3[0..3], Q4[0..3], NQ[0..3];
 */
void accumulate_square_interval_2(
  uint16_t p0,
  uint16_t p12,
  accu_t Q1[3],
  accu_t Q2[3],
  accu_t Q3[3],
  accu_t Q4[3],
  uint16_t NQ[4],
  uint8_t rounding
);

//only works with 16-bit samples
/*@ requires \valid_read((accu_t*)Q1 + (0..2));
    requires \valid_read((accu_t*)Q2 + (0..2));
    requires \valid_read((accu_t*)Q3 + (0..2));
    requires \valid_read((accu_t*)Q4 + (0..2));
    requires \valid((int16_t*)IQ + (0..5));
    requires \valid((int16_t*)mean + (0..2));

    requires \separated(
      (accu_t*)Q1 + (0..2),
      (accu_t*)Q2 + (0..2),
      (accu_t*)Q3 + (0..2),
      (accu_t*)Q4 + (0..2),
      (int16_t*)IQ + (0..5),
      (int16_t*)mean + (0..2)
    );

    requires 0 < N <= MAX_FRAMES;

    requires \forall integer x; 0 <= x <= 2 ==>
      -N*INT16_MAX/4 <= Q1[x] <= N*INT16_MAX/4 &&
      -N*INT16_MAX/4 <= Q2[x] <= N*INT16_MAX/4 &&
      -N*INT16_MAX/4 <= Q3[x] <= N*INT16_MAX/4 &&
      -N*INT16_MAX/4 <= Q4[x] <= N*INT16_MAX/4;

    assigns ((int16_t*)IQ)[0..5], mean[0..2];

    ensures \forall integer x;
      0 <= x <= 2 && compute_mean == 0 ==>
        mean[x] == \old(mean[x]);
 */
void binary_iq(
  const accu_t *Q1,
  const accu_t *Q2,
  const accu_t *Q3,
  const accu_t *Q4,
  uint16_t N,
  int16_t IQ[3][2],
  int16_t mean[4],
  uint8_t compute_mean
);

#endif //_PROVEN_H

