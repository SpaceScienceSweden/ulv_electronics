#ifndef _PROVEN_H
#define _PROVEN_H

#include "config.h"
#include "frama-c-stub.h"

//used when computing max_frames
//typically timer1_ovfs will reach TIMER1_OVFS_MAX+1
#define TIMER1_OVFS_MAX 250L

#define MAX_FRAMES 4095

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

#endif //_PROVEN_H

