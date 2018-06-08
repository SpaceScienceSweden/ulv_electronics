typedef struct square_demod_header_s {
  uint8_t version;      // format version (1)
  uint16_t num_frames;  // number of frames sampled

  // Fieldmill bitmask
  // Bits 0..2 -> corresponding FM is enabled
  uint8_t fm_mask;
} square_demod_header_s;

// square_demod_header_s is followed by popcount(fm_mask)
// instances of this struct, one for each FM:
typedef struct fm_s {
  int16_t tach_min; // min of all tach samples
  int16_t tach_max; // max of all tach samples
  uint16_t discard; // how many samples were discarded before the first tach
  uint8_t num_tachs;// number of tachometer impulses
  uint16_t NQ[4];   // number of frames collected in each quadrant
  int16_t IQ[4][2]; // IQ data (IQIQIQIQ)
} fm_s;

