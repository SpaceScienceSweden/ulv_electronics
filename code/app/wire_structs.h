// Overview of the IQ demodulated packet format:
//
// +---------------------------------------+
// | Header                (6  bytes)      |
// +---------------------------------------+
// | "TEMP"                (4 bytes)       |
// | Temperature values    (variable size) |
// +---------------------------------------+
// | "VOLT"                (4 bytes)       |
// | Voltage ADC values    (variable size) |
// +---------------------------------------+
// | "FMIQ"                (4 bytes)       |
// | Demodulated FM data   (variable size) |
// +---------------------------------------+
//
// TEMP, VOLT and FMIQ are convenient markers and
// always present. The amount of data between markers
// depends on values in the header.
// The size of the packet can be summarized as:
//
//   packet_size =
//     6 +
//     4 + num_temps*4 +
//     4 + popcount(adc_mask)*2 +
//     4 + popcount(fm_mask)*57
//
// The largest this will typically get (6 temperature
// readings, 5 voltages, 3 FM IQ data structs) is 145 B

typedef struct square_demod_header_s {
  uint8_t version;      // format version (5)
  uint16_t num_frames;  // number of frames sampled

  // Number of DS18B20Z outputs (0..6)
  // Each output is a temperature_s (4 bytes)
  uint8_t num_temps;

  // Voltage ADC channel bitmask.
  // Used for reporting system voltages.
  // Bit n -> ADCn value present (2 bytes).
  // Currently only channels ADC0..4 are used.
  // All values are 10-bit single-ended conversions
  // with 2.56 V reference, transmitted in 16-bit ints.
  // Values are ADCL + 256*ADCH.
  // See the implementation of the 'v' command in app.c
  // for how to convert these values.
  uint8_t volt_mask;

  // Fieldmill bitmask
  // Bits 0..2 -> corresponding FM is enabled
  // See fm_s struct
  uint8_t fm_mask;
} square_demod_header_s;

// TEMP

// Temperature reading structure.
// Since temperature conversions take around 750 ms
// not every packet will have temperatures.
typedef struct temperature_s {
  // Bytes 1-2 of DS18B20Z ROM is enough to uniquely
  // identify the ones we have:
  //
  //  286a1a690900005e -> 6a 1a
  //  28f72a6909000021 -> f7 2a
  uint8_t   rom12[2];

  // Temperature in degrees Celsius * 16
  int16_t   temp;
} temperature_s;

// VOLT

// Inbetween VOLT and TEMP are the system voltages
// 10-bit values contained in 16-bit integers

// FMIQ

typedef struct {
  uint8_t stat_1;   // STAT_1 (or'd during capture)
  uint8_t stat_p;   // STAT_P
  uint8_t stat_n;   // STAT_N
  uint8_t stat_s;   // STAT_S
} stat_1pns_s;

// There are popcount(fm_mask) instances of this
typedef struct fm_s {
  uint16_t discard; // how many samples were discarded
                    // before the first tach
  uint8_t num_tachs;// number of tachometer impulses
  uint16_t NQ[4];   // number of frames collected in
                    // each quadrant
  int16_t IQ[3][2]; // IQ data (IQIQIQ)

  // ADS131A04 registers:
  stat_1pns_s stat;

  // min/max of all samples in each channel
  int16_t minmax[4][2];

  // mean value of samples within tachometer interval
  int16_t mean[4];

  // mean absolute value of samples within tachometer
  // channel 4 excluded since it would equal mean[3],
  // due to wiring
  uint16_t mean_abs[3];

  // MAX504 setting (0..1023)
  uint16_t vgnd;
} fm_s;


// Overview of the sample packet format:
//
// +---------------------------------------+
// | Header                (21 bytes)      |
// +---------------------------------------+
// | "TEMP"                (4 bytes)       |
// | Temperature values    (variable size) |
// +---------------------------------------+
// | "TACH"                (4 bytes)       |
// | Tachometer timestamps (variable size) |
// +---------------------------------------+
// | "SAMP"                (4 bytes)       |
// | Sample data           (variable size) |
// +---------------------------------------+
//
// The size of the packet can be summarized as:
//
//   packet_size = 21 +
//     4 + num_temps*4 +
//     4 + sum(num_tachs)*3 +
//     4 + num_frames*popcount(channel_conf)*
//         bytes_per_sample(sample_fmt)
//
// A more detailed view follows, in the form of C
// structs which are shared between code and manual.

// Sample packet header. Fixed size.
typedef struct sample_packet_header_s {
  uint8_t   version;      // format version (4)
  __uint24  first_frame;  // timestamp of first frame
  uint8_t   num_temps;    // DS18B20Z outputs (0..6)
  uint16_t  num_tachs[3]; // tach impulses per channel
  uint16_t  num_frames;   // number of frames
  uint16_t  gap;          // gap between packets
  uint16_t  channel_conf; // channel bitmap. 3 nybbles

  // Sample format
#define SAMPLE_FMT_S24 0  // raw 24-bit
#define SAMPLE_FMT_S8  1  // signed 8-bit with shift
  uint8_t   sample_fmt;

  // If SAMPLE_FMT_S8, multiply each sample by
  // (1<<sample_shift)
  uint8_t   sample_shift;

  // If gap was insufficient than overflow says many
  // frames had to be thrown away. In other words
  // overflow represents "unplanned" gap.
  // Value is capped at 255, which may mean "255 or more".
  uint8_t   overflow;

  // Prescaler used for timers. Multiply timers
  // by this value to get time in clock cycles.
  // Typical values: 1 or 8.
  uint8_t   prescaler;
} sample_packet_header_s;

// Sample packet itself is variable size.
typedef struct sample_packet_s {
  // Header defined above
  sample_packet_header_s header;

  // Temperatures with structures defined above.
  // A reading like:
  //
  //  286a1a690900005e 23.12
  //  28f72a6909000021 -3.87
  //
  // will be encoded as:
  //
  //  6a 1a 71 01 f7 2a c2 ff
  //
  char temp_marker[4];  //TEMP
  temperature_s *temps;

  // Tachometer timestamps.
  // Number of entries is sum(num_tachs).
  // Values are stored one channel after the other,
  // NOT interleaved. If num_tachs = {3, 5, 4} then
  // the order will be like this:
  //
  //   0 0 0 1 1 1 1 1 2 2 2 2
  //
  // Keep in mind num_tachs can be zero for one or more
  // channel. num_tachs = {3, 0, 4} would look like:
  //
  //   0 0 0 2 2 2 2
  //
  char tach_marker[4];  //TACH
  __uint24  *tachs;

  // Sample data is stored as a series of frames.
  // Each frame is built up of samples, and the number
  // of samples is the same as the number of bits in
  // channel_conf. Or: popcount(channel_conf).
  // The order of the samples is the same as the order
  // of ones in channel_conf.
  //
  // If all three ADCs are used, but only the first
  // three channels in each ADC, then channel_conf will
  // be "0000 0111 0111 0111" (most significant bit
  // first). Each frame will consist of 9 samples.
  //
  // The size of each sample depends on sample_fmt.
  // If 24-bit samples are used then the total amount
  // of sample data is:
  //
  //   num_frames * popcount(channel_conf) * 3  (bytes)
  //
  // In the example above, if we have 1000 frames then
  // the size of the sample data is 1000*9*3 = 27000 B.
  char samp_marker[4];  //SAMP
  uint8_t   *sample_data;

} sample_packet_s;


typedef struct {
  __uint24 t;       // timestamp, in cycles (mod 2^24)
  uint8_t num_tachs;// number of tachometer impulses
  uint16_t N;       // number of frames in tach interval
  int16_t IQ[3][2]; // IQ data (IQIQIQ)
} capture_entry_s;


typedef struct {
  // ADS131A04 registers ($00 .. $14)
  // Collected at the end of each block so that STAT_* ($02 .. $05) applies to
  // the block just captured.
  uint8_t ads131a04_regs[21];

  // Number of frames collected in each quadrant, across the entire block
  uint32_t NQ[4];

  // Min/max of all samples in each channel across the entire block
  int16_t minmax[4][2]; //min,max,min,max,...

  // Mean value of samples within tachometer interval
  // Only computed for the last capture of each FM
  int16_t mean[4];

  // Mean absolute value of samples within tachometer intervals
  // Channel 4 is excluded since its voltages are always positive, thus its
  // values would equal mean[3]
  // Like mean, only computed for the last capture of each FM
  uint16_t mean_abs[3];

  // Motor OCR1A/B/C (PWM) settings
  uint16_t OCR1n;

  // Maximum of ratio between longest and shortest tach period
  // in each capture block, in percent.
  // Anything above 110% = suspicious, probably missed tach transition
  // or rapid acceleration.
  // 0..99 shouldn't happen, indicates faulty logic
  // 254 = maximum value
  // 255 = tach_min was zero somehow
  uint8_t max_tach_ratio;
} fm_stat_s;

typedef struct {
  uint8_t version;  // version (2)
  uint32_t f_cpu;   // CPU clock in Hz
  uint64_t t;       // full timestamp at start of block
  uint8_t fm_mask;  // bits 0..2 = corresponding FM enabled

  // Number of frames collected for each entry
  // entris[x].N <= num_frames
  uint16_t num_frames;

  // How many FM capture rounds there are for each VGND setting
  // Unbiased data starts at round 2*vgnd_rounds*popcount(fm_mask)
  uint8_t vgnd_rounds;

  // MAX504 settings (0..1023)
  // Each VGND is toggled negative and positive in turn, meaning that for
  // fm_mask = 7 each VGND is set thusly:
  //
  // VGND0 VGND1 VGND2
  // -     0     0    For vgnd_rounds rounds for each of these
  // +     0     0
  // 0     -     0
  // 0     +     0
  // 0     0     -
  // 0     0     +
  // 0     0     0   For the rest of the block
  uint16_t vgnd_zero;   // 0 level
  uint16_t vgnd_minus;  // - level
  uint16_t vgnd_plus;   // + level

  // Statistics for each FM. Zeroed for all disabled FMs.
  char stat_marker[4];  //"STAT"
  fm_stat_s stats[3];

  // Temperature values
  char temp_marker[4];  //"TEMP"
  uint8_t num_temps;
  temperature_s temps[6];

  // Voltage values
  char volt_marker[4];  //"VOLT"
  uint8_t volt_mask;    //usually 31 (ADC0..4)
  uint16_t volts[8];    //raw ADC values

  // If instrument is not interrupted, the following should hold:
  //   nentries > 2*vgnd_rounds*popcount(fm_mask)^2
  //   nentries = 0 (mod popcount(fm_mask))
  char entr_marker[4];  //"ENTR"
  uint16_t nentries;

  // Entries for each FM in each round are stored in round-robin order
  // For example, if fm_mask = 7:
  //   0, 1, 2, 0, 1, 2, etc.
  // Truncated to nentries*sizeof(capture_entry_s) bytes
  capture_entry_s entries[255];
} capture_block_s;

