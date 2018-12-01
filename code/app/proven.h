#ifndef _PROVEN_H
#define _PROVEN_H

#include "config.h"
#include "frama-c-stub.h"

//used when computing max_frames
//typically timer1_ovfs will reach TIMER1_OVFS_MAX+1
#define TIMER1_OVFS_MAX 250L

#define MAX_FRAMES (sizeof(sample_data)/8)

/*@ requires 0 <= id <= 2;
    requires \valid(stat1_out);
    requires \valid((uint8_t*)sample_data + (0..8*num_frames-1));
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

#endif //_PROVEN_H

