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

// Temperature reading structure.
// Since temperature conversions take around 750 ms
// not every sample packet will have temperatures.
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
