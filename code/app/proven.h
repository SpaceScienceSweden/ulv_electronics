#ifndef _PROVEN_H
#define _PROVEN_H

#include "frama-c-stub.h"

//used when computing max_frames
//typically timer1_ovfs will reach TIMER1_OVFS_MAX+1
#define TIMER1_OVFS_MAX 250L

#define MAX_FRAMES (sizeof(sample_data)/8)

/*@ requires 0 <= id <= 2;
    requires \valid(stat1_out);
    requires 1 <= num_frames <= MAX_FRAMES;
    assigns *stat1_out, timer1_base, SPDR, TIFR, sample_data[0..8*num_frames-1];
 */
void capture(uint8_t id, uint8_t *stat1_out, uint16_t num_frames);

#endif //_PROVEN_H

