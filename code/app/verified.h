#ifndef _PROVEN_H
#define _PROVEN_H

#include <string.h>
#include "app.h"
#include "wire_structs.h"

/*@ requires 0 <= id <= 2;
    requires \valid(stat1_out);
    requires \valid(&sample_data_fake[0] + (0..8*num_frames-1));
    requires 1 <= num_frames <= MAX_FRAMES;
    assigns *stat1_out, timer1_base, SPDR, TIFR, PORTF, sample_data_fake[0..8*num_frames-1];
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

/*@ requires 0 <= p0 < p12 <= MAX_FRAMES;
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
    requires \valid((accu_t*)Q1 + (0..2));
    requires \valid((accu_t*)Q2 + (0..2));
    requires \valid((accu_t*)Q3 + (0..2));
    requires \valid((accu_t*)Q4 + (0..2));
    requires \valid(nsum1);
    requires \valid(nsum2);
    requires \valid(nsum3);
    requires \valid(nsum4);
    requires 0 <= rounding < 12;

    requires \separated(
      (sample_t*)sample_data + (4*p0..4*p12-1),
      (accu_t*)Q1 + (0..2),
      (accu_t*)Q2 + (0..2),
      (accu_t*)Q3 + (0..2),
      (accu_t*)Q4 + (0..2),
      nsum1,
      nsum2,
      nsum3,
      nsum4
    );

    requires \let NHI = 3*((p12 - p0) / 12 + 1); \forall integer x;
      0 <= x <= 2 ==>
        INT32_MIN - NHI*INT16_MIN <= Q1[x] <= INT32_MAX - NHI*INT16_MAX &&
        INT32_MIN - NHI*INT16_MIN <= Q2[x] <= INT32_MAX - NHI*INT16_MAX &&
        INT32_MIN - NHI*INT16_MIN <= Q3[x] <= INT32_MAX - NHI*INT16_MAX &&
        INT32_MIN - NHI*INT16_MIN <= Q4[x] <= INT32_MAX - NHI*INT16_MAX;

    ensures \let NHI = 3*((p12 - p0) / 12 + 1); \forall integer x;
      0 <= x <= 2 ==>
        \old(Q1[x]) + (*nsum1)*INT16_MIN <= Q1[x] <= \old(Q1[x]) + (*nsum1)*INT16_MAX &&
        \old(Q2[x]) + (*nsum2)*INT16_MIN <= Q2[x] <= \old(Q2[x]) + (*nsum2)*INT16_MAX &&
        \old(Q3[x]) + (*nsum3)*INT16_MIN <= Q3[x] <= \old(Q3[x]) + (*nsum3)*INT16_MAX &&
        \old(Q4[x]) + (*nsum4)*INT16_MIN <= Q4[x] <= \old(Q4[x]) + (*nsum4)*INT16_MAX;

    ensures \let NLO = 3*((p12 - p0) / 12);
            \let NHI = 3*((p12 - p0) / 12 + 1);
        NLO <= *nsum1 <= NHI &&
        NLO <= *nsum2 <= NHI &&
        NLO <= *nsum3 <= NHI &&
        NLO <= *nsum4 <= NHI;

    ensures sumtot: *nsum1 + *nsum2 + *nsum3 + *nsum4 == p12 - p0;

    assigns Q1[0..2], Q2[0..2], Q3[0..2], Q4[0..2], *nsum1, *nsum2, *nsum3, *nsum4;
 */
void accumulate_square_interval_2(
  uint16_t p0,
  uint16_t p12,
  uint16_t *nsum1,
  uint16_t *nsum2,
  uint16_t *nsum3,
  uint16_t *nsum4,
  uint8_t rounding
);

//only works with 16-bit samples
/*@ requires \valid_read((accu_t*)Q1 + (0..2));
    requires \valid_read((accu_t*)Q2 + (0..2));
    requires \valid_read((accu_t*)Q3 + (0..2));
    requires \valid_read((accu_t*)Q4 + (0..2));
    requires \valid_read((uint16_t*)NQ + (0..3));
    requires \valid((int16_t*)IQ + (0..5));
    requires \valid((int16_t*)mean + (0..2));

    requires \separated(
      (accu_t*)Q1 + (0..2),
      (accu_t*)Q2 + (0..2),
      (accu_t*)Q3 + (0..2),
      (accu_t*)Q4 + (0..2),
      (uint16_t*)NQ + (0..3),
      (int16_t*)IQ + (0..5),
      (int16_t*)mean + (0..2)
    );

    requires NQrange: 0 < NQ[0] + NQ[1] + NQ[2] + NQ[3] <= MAX_FRAMES;

    //requires Qrange: \forall integer x; 0 <= x <= 2 ==>
    //  -N*INT16_MAX/4 <= Q1[x] <= N*INT16_MAX/4 &&
    //  -N*INT16_MAX/4 <= Q2[x] <= N*INT16_MAX/4 &&
    //  -N*INT16_MAX/4 <= Q3[x] <= N*INT16_MAX/4 &&
    //  -N*INT16_MAX/4 <= Q4[x] <= N*INT16_MAX/4;


    //requires Qrange1: \forall integer x; 0 <= x <= 2 ==>
    //  -N*INT16_MAX <= Q1[x] - Q2[x] - Q3[x] + Q4[x] <= N*INT16_MAX;
    //requires Qrange2: \forall integer x; 0 <= x <= 2 ==>
    //  -N*INT16_MAX <= Q1[x] + Q2[x] - Q3[x] - Q4[x] <= N*INT16_MAX;
    //requires Qrange3: \forall integer x; 0 <= x <= 2 ==>
    //  -N*INT16_MAX <= Q1[x] + Q2[x] + Q3[x] + Q4[x] <= N*INT16_MAX;

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

    assigns ((int16_t*)IQ)[0..5], mean[0..2];

    ensures \forall integer x;
      0 <= x <= 2 && compute_mean == 0 ==>
        mean[x] == \old(mean[x]);
 */
void binary_iq(
  int16_t IQ[3][2],
  int16_t mean[4],
  uint8_t compute_mean
);

/*@ requires 1 <= num_tachs <= 255;

    //edge_pos[] contains num_tachs+1 entries
    requires \valid_read(edge_pos + (0..num_tachs));
    requires \valid(rounding_inout);
    requires \valid((accu_t*)Q1 + (0..2));
    requires \valid((accu_t*)Q2 + (0..2));
    requires \valid((accu_t*)Q3 + (0..2));
    requires \valid((accu_t*)Q4 + (0..2));
    requires \valid((uint16_t*)NQ + (0..3));

    requires \separated(edge_pos + (0..num_tachs),
                        rounding_inout,
                        (accu_t*)Q1 + (0..2),
                        (accu_t*)Q2 + (0..2),
                        (accu_t*)Q3 + (0..2),
                        (accu_t*)Q4 + (0..2),
                        (uint16_t*)NQ + (0..3));

    //requires edge_pos_ordered1: \forall integer k;
    //  0 <= k <= num_tachs ==>
    //    0 <= edge_pos[k];

    //requires edge_pos_ordered2: \forall integer k;
    //  0 <= k < num_tachs ==>
    //    edge_pos[k] < edge_pos[k+1];

    //requires edge_pos_ordered3: \forall integer k;
    //  0 <= k <= num_tachs ==>
    //    edge_pos[k] <= MAX_FRAMES;

    requires \forall integer x;
      0 <= x < num_tachs ==>
        0 <= edge_pos[x] < edge_pos[x+1] < MAX_FRAMES;

    requires edge_pos_gap: \forall integer k;
      0 <= k < num_tachs ==>
        edge_pos[k+1] - edge_pos[k] >= 12;

    requires 0 <= *rounding_inout <= 11;
    ensures 0 <= *rounding_inout <= 11;

    ensures Q1range: \forall integer x;
      0 <= x <= 2 ==>
        NQ[0]*INT16_MIN <= Q1[x] <= NQ[0]*INT16_MAX;
    ensures Q2range: \forall integer x;
      0 <= x <= 2 ==>
        NQ[1]*INT16_MIN <= Q2[x] <= NQ[1]*INT16_MAX;
    ensures Q3range: \forall integer x;
      0 <= x <= 2 ==>
        NQ[2]*INT16_MIN <= Q3[x] <= NQ[2]*INT16_MAX;
    ensures Q4range: \forall integer x;
      0 <= x <= 2 ==>
        NQ[3]*INT16_MIN <= Q4[x] <= NQ[3]*INT16_MAX;

    //ensures NQrange: \forall integer x;
    //  0 <= x <= 3 ==>
    //    3*((edge_pos[num_tachs] - edge_pos[0]) / 12 - num_tachs)
    //      <= NQ[x]
    //      <= 3*(edge_pos[num_tachs] / 12 + num_tachs);

    ensures NQsum: 12*num_tachs <= NQ[0] + NQ[1] + NQ[2] + NQ[3] == edge_pos[num_tachs] - edge_pos[0];

    assigns *rounding_inout, Q1[0..2], Q2[0..2], Q3[0..2], Q4[0..2], NQ[0..3];
 */
void demod_tachs(uint8_t num_tachs,
                 uint8_t *rounding_inout);

/*@ requires 12 <= max_frames <= MAX_FRAMES;
    requires \valid(tach_skip);
    requires \valid(tach_ratio);
    requires \valid(edge_pos + (0..255));
    requires \valid_read((sample_t*)sample_data + (0..(4*max_frames-1)));
    requires \separated(tach_skip,
                        tach_ratio,
                        edge_pos + (0..255),
                        (sample_t*)sample_data + (0..(4*max_frames-1)));
    requires 3 <= *tach_skip <= max_frames / 4;

    ensures 3 <= *tach_skip <= max_frames / 4;
    ensures 0 <= \result <= 255;
    //ensures \forall integer x;
    //  0 <= x < \result ==>
    //    0 <= edge_pos[x] < edge_pos[x+1] < max_frames &&
    //    edge_pos[x+1] - edge_pos[x] >= 12;

    ensures \forall integer x;
      0 <= x < \result ==>
        0 <= edge_pos[x] < edge_pos[x+1] < max_frames;

    //ensures edge_pos_ordered1: \forall integer k;
    //  0 <= k <= \result ==>
    //    0 <= edge_pos[k];

    //ensures edge_pos_ordered2: \forall integer k;
    //  0 <= k < \result ==>
    //    edge_pos[k] < edge_pos[k+1];

    ensures edge_pos_ordered3:
      \result == 0 || \forall integer k;
        0 <= k <= \result ==>
          edge_pos[k] <= MAX_FRAMES;

    ensures edge_pos_gap: \forall integer k;
      0 <= k < \result ==>
        edge_pos[k+1] - edge_pos[k] >= 12;


    assigns *tach_ratio, *tach_skip, edge_pos[0..255];
 */
uint8_t find_tachs(uint16_t max_frames,
                   uint16_t *tach_skip,
                   uint8_t *tach_ratio,
                   int16_t tach_mean);

//captures and demodulates data coming out of a single FM
//capturing one at a time is better phase-jitter-wise
//returns non-zero on error
/*@ requires 0 <= id <= 2;
    requires 12 <= max_frames <= MAX_FRAMES;
    requires \valid(&sample_data[0] + (0..4*max_frames-1));
    requires \valid(stat1_out);
    requires \valid((int16_t*)minmax + (0..7));
    requires \valid((accu_t*)Q1 + (0..2));
    requires \valid((accu_t*)Q2 + (0..2));
    requires \valid((accu_t*)Q3 + (0..2));
    requires \valid((accu_t*)Q4 + (0..2));
    requires \valid((uint16_t*)NQ + (0..3));
    requires \valid(entry);
    requires \valid((int16_t*)mean + (0..3));
    requires \valid(tach_mean);
    requires \valid(tach_skip);
    requires \valid(tach_ratio);
    requires \valid(discard);
    requires \valid((uint16_t*)mean_abs + (0..2));
    requires \valid(rounding_inout);

    requires \separated(&sample_data[0] + (0..4*max_frames-1),
                        &sample_data_fake[0] + (0..8*max_frames-1),
                        stat1_out,
                        (int16_t*)minmax + (0..7),
                        (accu_t*)Q1 + (0..2),
                        (accu_t*)Q2 + (0..2),
                        (accu_t*)Q3 + (0..2),
                        (accu_t*)Q4 + (0..2),
                        (uint16_t*)NQ + (0..3),
                        entry,
                        (int16_t*)mean + (0..3),
                        tach_mean,
                        tach_skip,
                        tach_ratio,
                        discard,
                        (uint16_t*)mean_abs + (0..2),
                        rounding_inout);

    requires 3 <= *tach_skip <= max_frames / 4;
    requires 0 <= *rounding_inout <= 11;

    ensures 3 <= *tach_skip <= max_frames / 4;
    ensures 0 <= *rounding_inout <= 11;

    ensures \forall integer x; 0 <= x < 4 ==>
      minmax[x][0] <= \old(minmax[x][0]) &&
      minmax[x][1] >= \old(minmax[x][1]);

    assigns sample_data[0..4*max_frames-1],
            sample_data_fake[0..8*max_frames-1],
            edge_pos[0..255],
            timer1_base, SPDR, TIFR, PORTF, DDRD, PORTD,
            *stat1_out,
            ((int16_t*)minmax)[0..7],
            Q1[0..2],
            Q2[0..2],
            Q3[0..2],
            Q4[0..2],
            NQ[0..3],
            *entry,
            mean[0..3],
            *tach_mean,
            *tach_skip,
            *tach_ratio,
            *discard,
            mean_abs[0..2],
            *rounding_inout;
 */
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
        );

/*@ requires 12 <= max_frames_max <= MAX_FRAMES || max_frames_max == 0;
    requires 2*2*32 <= cycles_per_sample <= 14*14*4096;
    requires frames_per_second == F_CPU / cycles_per_sample;
    ensures (\result <= max_frames_max || max_frames_max == 0) &&
            \result <= frames_per_second &&
            \result <= ((uint32_t)TIMER1_OVF_INC * TIMER1_OVFS_MAX) / cycles_per_sample &&
            \result <= 16383;
    assigns \nothing;
 */
uint16_t compute_max_frames(uint16_t max_frames_max,
                            uint32_t cycles_per_sample,
                            uint32_t frames_per_second);

//avr-libc doesn't support %llu, implement our own crappy versions
//both have been tested with 18446744073709551615, seem to work fine
/*@ requires valid_read_string(line);
    assigns \nothing;
 */
uint64_t parse64(const char *line);

/*@ assigns \nothing;
 */
void print64(uint64_t i);

/*@ ensures 0 <= \result <= 16;
    assigns \nothing;
 */
static uint8_t popcount(uint16_t a) {
  uint8_t ret = 0;
  //@ ghost uint32_t i = 16;
  //@ ghost uint32_t e = 65536;

  /*@ loop invariant 0 <= i <= 16;
      loop invariant 1 <= e <= 65536;
      loop invariant e == (1<<i);
      loop invariant a == 0 || 1 <= a <= 65535;
      loop invariant 0 <= a < e;
      loop invariant 0 <= ret <= (16-i);
      loop assigns ret, a, i, e;
      loop variant a;
   */
  while (a) {
    ret += a&1;
  before:
    //a >>= 1;
    a /= 2;
    //@ assert exp1: 0 <= a < \at(a,before) && e == (1<<i)     && 0 <= a < (1<<(i-1)) && 1 <= i <= 16 && e/2 == (1<<i)/2 == (1<<(i-1));
    //@ ghost i--;
    //@ assert exp2: 0 <= a < \at(a,before) && e == (1<<(i+1)) && 0 <= a < (1<<i)     && 0 <= i <= 15 && e/2 == (1<<(i+1))/2 == (1<<i);
    //@ ghost e /= 2;
  }
  return ret;
}

/*@ requires 0 <= x <= 2;
    requires 0 <= codein <= 1023;
    assigns vgnds[x], DDRE, PORTE;
 */
static void set_vgnd(uint8_t x, uint16_t codein) {
  vgnds[x] = codein;

  //set all DACs to -1.024 V, enable ADG601's
  DDRE |= (1<<2) | (1<<3) | (1<<4);
  PORTE |= (1<<2) | (1<<3) | (1<<4); //de-assert /CS

  dac_spi_fast();

    PORTE &= ~(1<<(x+2));

    //   0 = -2.048 V
    // 256 = -1.024 V
    // 512 =  0.000 V
    // 768 =  1.024 V
    //1023 =  2.046 V
    uint16_t code = codein;

    //from the MAX504 datasheet:
    //16 bits of serial data are
    //clocked into the DAC in the following order: 4 fill (dummy)
    //bits, 10 data bits, and 2 sub-LSB 0s.
    code <<= 2; //dddd CCCC CCCC CC00

    //from the ATmega128 datasheet:
    //When the DORD bit is written to zero, the MSB of the data word is transmitted first.
    //SPCR &= ~(1<<DORD); //just to be sure
    //SPCR |= (1<<DORD);

    spi_comm_byte(code >> 8);
    spi_comm_byte(code);

    //de-assert all /CS
    PORTE |= (1<<2) | (1<<3) | (1<<4);

  //enable ADG601s
  //DDRE |= (1<<5);
  //PORTE |= (1<<5);
  //DDRF |= (1<<5) | (1<<6);
  //PORTF |= (1<<5) | (1<<6);

  //restore SPI to ADC settings
  adc_spi_fast();
}

/*@ requires 0 <= codein <= 1023;
    assigns vgnds[0..2], DDRE, PORTE;
 */
static void set_vgnds(uint16_t codein) {
  /*@ loop invariant 0 <= id <= 3;
      loop assigns id, vgnds[0..2], DDRE, PORTE;
      loop variant 3 - id;
   */
  for (uint8_t id = 0; id < 3; id++) {
    set_vgnd(id, codein);
  }
}


/*@ axiomatic popcount_axiomatic {
        logic integer popcount(integer x);
        axiom pop0: popcount(0) == 0;
        axiom popn: \forall integer x; x > 0 ==> popcount(x) == (x%2) + popcount(x/2);
    }
 */

/*@ requires 1 <= fm_mask <= 7;
    requires \valid(&fm_map[0] + (0..2));
    ensures \forall integer x; 0 <= x < popcount(fm_mask) ==> 0 <= fm_map[x] <= 2;
    ensures \forall integer x; 1 <= x < popcount(fm_mask) ==> 0 <= fm_map[x-1] < fm_map[x] <= 2;
    assigns fm_map[0..2];
 */
void fm_mask2map(uint8_t fm_mask, uint8_t fm_map[3]);

/*@ requires 1 <= fm_mask <= 7;
    requires 12 <= max_frames <= MAX_FRAMES;
    requires \separated(&cb, &cbc);
    assigns cb, cbc;
 */
void init_cb_cbc(uint8_t fm_mask, uint16_t max_frames);

#endif //_PROVEN_H

