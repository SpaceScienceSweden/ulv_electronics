/* Everything that is commited in here has been proven correct by Frama-C,
   minus signed overflow which is explicitly not checked for in this file.
 */

#include <stdint.h>
#include "proven.h"

/*@ requires \valid((accu_t*)Q + (0..3));
    requires 0 < n <= MAX_FRAMES;
    requires \valid_read(data_ptr + (0..(4*n-1)));
    assigns Q[0..2];
 */
inline void accumulate_quadrant(
  accu_t Q[3],
  uint16_t n,
  const sample_t *data_ptr)
{
  accu_t q0 = Q[0], q1 = Q[1], q2 = Q[2];

  /*@ loop invariant data_ptr == \at(data_ptr,LoopEntry) + i*4;
      loop invariant \valid_read(data_ptr + (0..2)) || i == n;
      loop assigns q0, q1, q2, i, data_ptr;
   */
  for (uint16_t i = 0; i < n; i++, data_ptr += 4) {
    q0 += data_ptr[0];
    q1 += data_ptr[1];
    q2 += data_ptr[2];
  }

  Q[0] = q0; Q[1] = q1; Q[2] = q2;
}

void accumulate_square_interval_2(
  uint16_t p0,
  uint16_t p12,
  accu_t Q1[3],
  accu_t Q2[3],
  accu_t Q3[3],
  accu_t Q4[3],
  uint16_t NQ[4],
  uint8_t rounding
) {
  //we chop the interval [p0,p12) into twelve pieces
  //each piece gets accumulated into Q1..4 in round-robin order
  //Q1 += p0, Q2 += p1, ..., Q1 += p4, ..., Q4 += p11
  const __uint24 psize = p12 - p0;
  __uint24 paccu = psize + rounding;
  //@ assert valid_uint24(psize) && valid_uint24(paccu);

  const sample_t * const data_ptr = p0*4 + (sample_t*)sample_data;
  //@assert data_ptr_valid: \valid_read(data_ptr + (0..4*psize-1));

  //i0 = offset in interval [p0,p12)
  uint16_t i0 = 0;

  /*@ loop invariant 0 <= j <= 3;
      loop invariant paccu == rounding + (1 + j*4)*psize;
      loop invariant valid_uint24(paccu);
      loop invariant i0 == (paccu - psize) / 12;
      loop assigns i0, j, paccu, NQ[0..3], Q1[0..2], Q2[0..2], Q3[0..2], Q4[0..2];
   */
  for (uint8_t j = 0; j < 3; j++) {
    uint16_t i1 = paccu / 12;
    //@ assert i1eq: i1 == (rounding + (1 + j*4)*psize) / 12;
    //@ assert i1: 1 <= i1 < psize;

    NQ[0] += i1 - i0;
    accumulate_quadrant(Q1, i1 - i0, data_ptr + i0*4);

    paccu += psize;
    uint16_t i2 = paccu / 12;
    //@ assert i2: i1 < i2 < psize;

    NQ[1] += i2 - i1;
    accumulate_quadrant(Q2, i2 - i1, data_ptr + i1*4);

    paccu += psize;
    uint16_t i3 = paccu / 12;
    //@ assert i3: i2 < i3 < psize;

    NQ[2] += i3 - i2;
    accumulate_quadrant(Q3, i3 - i2, data_ptr + i2*4);

    paccu += psize;
    uint16_t i4 = paccu / 12;
    //@ assert p4: i3 < i4 <= psize;

    NQ[3] += i4 - i3;
    accumulate_quadrant(Q4, i4 - i3, data_ptr + i3*4);

    paccu += psize;
    i0 = i4;
  }
}
