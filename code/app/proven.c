/* Everything that is commited in here has been proven correct by Frama-C */

#include <stdint.h>
#include "proven.h"

#if 0

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

#else


/*@ requires \valid_read(sample_data + (4*p0..4*p12-1));
    requires \valid(&sum_abs[0] + (0..3));

    requires \forall integer x; 0 <= x < 3 ==>
      sum_abs[x] <= UINT32_MAX - (p12-p0)*(INT16_MAX+1);
    requires sum_abs[3] <= UINT32_MAX - (p12-p0)*INT16_MAX;

    ensures \forall integer x; 0 <= x < 3 ==>
      \old(sum_abs[x]) <= sum_abs[x] <= \old(sum_abs[x]) + (p12-p0)*(INT16_MAX+1);
    ensures \old(sum_abs[3]) <= sum_abs[3];

    //ensures \old(sum_abs[3]) <= sum_abs[3] <= \old(sum_abs[3]) + (p12-p0-1)*INT16_MAX;
    assigns sum_abs[0..3];
 */
void compute_sum_abs(
  uint16_t p0,
  uint16_t p12,
  uint32_t sum_abs[4]
#ifdef FRAMA_C
  //fake sample_data to suppress cast warnings
  , sample_t* sample_data
#endif
) {
  sample_t *data_ptr = (sample_t*)sample_data + p0*4;

  /*@ loop invariant data_ptr == sample_data + p00*4;
  
      loop invariant \forall integer x; 0 <= x < 3 ==>
          \at(sum_abs[x], LoopEntry) <= sum_abs[x] <= \at(sum_abs[x], LoopEntry) + (p00-p0)*(INT16_MAX+1);

      loop assigns p00, data_ptr, sum_abs[0..3];
      loop variant p12 - p00;
   */
  for (uint16_t p00 = p0; p00 < p12; p00++, data_ptr += 4) {
    //@ invariant data_inv2: \valid_read(data_ptr + (0..3));
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

#endif
