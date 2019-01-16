uint8_t measurement_on = 0;
uint16_t measurement_num_frames = 0;
volatile uint16_t num_captured_frames = 0;
uint16_t measurement_gap = 0;
uint8_t measurement_sample_fmt = 0;
uint16_t num_measurements = 0;

uint8_t sample_data_idx = 0;  //which of the two buffers are currently being used for the ISR?
volatile uint8_t sample_data[2][16383];
volatile uint8_t *sample_ptr;
uint8_t *sample_end;
volatile uint16_t gap_left = 0;
volatile uint8_t sample_overflow = 0; //whether we got a sample beyond sample_end

#define MAX_TACHS 512
uint8_t last_tach_pin[3];   //last tachometer pin value, for detecting rising edge
//num_tachs and tachs are [2] for double buffering, just like sample_data
uint16_t num_tachs[2][3];
__uint24 tachs[2][3][MAX_TACHS];
__uint24 first_frame;  //set to gettime24() while we're  the first sample

//header, for bsend()
sample_packet_header_s header;

//returns size of sample buffer
static size_t sample_setup(uint8_t idx) {
  num_captured_frames = 0;
  sample_data_idx = idx;
  sample_ptr = sample_data[sample_data_idx];
  //assume 24-bit samples
  size_t nbytes = 3*measurement_num_frames*(adc_popcount[0] + adc_popcount[1] + adc_popcount[2]);
  sample_end = (uint8_t*)sample_ptr + nbytes;
  gap_left = measurement_gap;
  sample_overflow = 0;
  num_tachs[idx][0] = 0;
  num_tachs[idx][1] = 0;
  num_tachs[idx][2] = 0;
  return nbytes;
}

// /DRDY ISR
// also IC3
ISR(INT7_vect) {
  //sei();  //only 14.4 kHz max of we enable interrupts inside
            //without interrupts we can do up to 19.2 kHz

  uint8_t do_store = 1;
  //cast away volatile
  uint8_t *ptr = (uint8_t*)sample_ptr;

  if (num_captured_frames == 0) {
    first_frame = gettime24();
  }

  //in gap or overflow?
  if (gap_left > 0 || ptr >= sample_end) {
    //talk to the ADCs but don't store the sample data anywhere
    do_store = 0;

    if (gap_left > 0) {
      //being in the gap is perfectly OK
      gap_left--;
    } else {
      //getting samples beyond sample_end is not
      if (sample_overflow < 255) {
        sample_overflow++;
      }
    }
  }

  for (uint8_t id = 0; id < 3; id++) {
    if (adc_popcount[id]) {
      adc_select(id);
#if WORDSZ > 24
#error WORDSZ > 24 not supported currently
#endif
      //skip status
      SPDR = 0; while(!(SPSR & (1<<SPIF)));
#if WORDSZ == 24
      SPDR = 0; while(!(SPSR & (1<<SPIF)));
#endif
      SPDR = 0;

      if (do_store) {
        while(!(SPSR & (1<<SPIF)));
        SPDR = 0; while(!(SPSR & (1<<SPIF)));
#if WORDSZ == 24
        SPDR = 0; *ptr++ = SPDR; while(!(SPSR & (1<<SPIF)));
#endif
        SPDR = 0; *ptr++ = SPDR;
        if (adc_popcount[id] < 3) {
          if (adc_popcount[id] == 1) {
            while(!(SPSR & (1<<SPIF)));
          } else { // 2
            while(!(SPSR & (1<<SPIF)));
            SPDR = 0; *ptr++ = SPDR; while(!(SPSR & (1<<SPIF)));
            SPDR = 0; *ptr++ = SPDR; while(!(SPSR & (1<<SPIF)));
#if WORDSZ == 24
            SPDR = 0; *ptr++ = SPDR; while(!(SPSR & (1<<SPIF)));
#endif
          }
        } else {
          if (adc_popcount[id] == 3) {
            while(!(SPSR & (1<<SPIF)));
            SPDR = 0; *ptr++ = SPDR; while(!(SPSR & (1<<SPIF)));
            SPDR = 0; *ptr++ = SPDR; while(!(SPSR & (1<<SPIF)));
            SPDR = 0; *ptr++ = SPDR; while(!(SPSR & (1<<SPIF)));
            SPDR = 0; *ptr++ = SPDR; while(!(SPSR & (1<<SPIF)));
#if WORDSZ == 24
            SPDR = 0; *ptr++ = SPDR; while(!(SPSR & (1<<SPIF)));
            SPDR = 0; *ptr++ = SPDR; while(!(SPSR & (1<<SPIF)));
#endif
          } else { // 4
            while(!(SPSR & (1<<SPIF)));
            SPDR = 0; *ptr++ = SPDR; while(!(SPSR & (1<<SPIF)));
            SPDR = 0; *ptr++ = SPDR; while(!(SPSR & (1<<SPIF)));
            SPDR = 0; *ptr++ = SPDR; while(!(SPSR & (1<<SPIF)));
            SPDR = 0; *ptr++ = SPDR; while(!(SPSR & (1<<SPIF)));
            SPDR = 0; *ptr++ = SPDR; while(!(SPSR & (1<<SPIF)));
            SPDR = 0; *ptr++ = SPDR; while(!(SPSR & (1<<SPIF)));
#if WORDSZ == 24
            SPDR = 0; *ptr++ = SPDR; while(!(SPSR & (1<<SPIF)));
            SPDR = 0; *ptr++ = SPDR; while(!(SPSR & (1<<SPIF)));
            SPDR = 0; *ptr++ = SPDR; while(!(SPSR & (1<<SPIF)));
#endif
          }
        }
        *ptr++ = SPDR;
      } else {
        //discard
        while(!(SPSR & (1<<SPIF)));
        SPDR = 0; while(!(SPSR & (1<<SPIF)));
#if WORDSZ == 24
        SPDR = 0; while(!(SPSR & (1<<SPIF)));
#endif
        SPDR = 0;
        if (adc_popcount[id] < 3) {
          if (adc_popcount[id] == 1) {
            while(!(SPSR & (1<<SPIF)));
          } else { // 2
            while(!(SPSR & (1<<SPIF)));
            SPDR = 0; while(!(SPSR & (1<<SPIF)));
            SPDR = 0; while(!(SPSR & (1<<SPIF)));
#if WORDSZ == 24
            SPDR = 0; while(!(SPSR & (1<<SPIF)));
#endif
          }
        } else {
          if (adc_popcount[id] == 3) {
            while(!(SPSR & (1<<SPIF)));
            SPDR = 0; while(!(SPSR & (1<<SPIF)));
            SPDR = 0; while(!(SPSR & (1<<SPIF)));
            SPDR = 0; while(!(SPSR & (1<<SPIF)));
            SPDR = 0; while(!(SPSR & (1<<SPIF)));
#if WORDSZ == 24
            SPDR = 0; while(!(SPSR & (1<<SPIF)));
            SPDR = 0; while(!(SPSR & (1<<SPIF)));
#endif
          } else { // 4
            while(!(SPSR & (1<<SPIF)));
            SPDR = 0; while(!(SPSR & (1<<SPIF)));
            SPDR = 0; while(!(SPSR & (1<<SPIF)));
            SPDR = 0; while(!(SPSR & (1<<SPIF)));
            SPDR = 0; while(!(SPSR & (1<<SPIF)));
            SPDR = 0; while(!(SPSR & (1<<SPIF)));
            SPDR = 0; while(!(SPSR & (1<<SPIF)));
            SPDR = 0; while(!(SPSR & (1<<SPIF)));
#if WORDSZ == 24
            SPDR = 0; while(!(SPSR & (1<<SPIF)));
            SPDR = 0; while(!(SPSR & (1<<SPIF)));
#endif
          }
        }
      }

      adc_deselect();
    }
  }

  if (do_store) {
    sample_ptr = ptr;
    num_captured_frames++;
  }
}

//in-place compress 24-bit samples to 8-bit, update header
static void compress_24bit_to_8bit(sample_packet_header_s *header, void *data) {
  uint16_t num_samples;
  uint8_t *data_in;
  int8_t *samples_out = data;
  __int24 compress_s;      //current sample value (big-endian)
  __uint24 compress_smax;  //maximum sample value (after bit flip)


  //TODO: compute mean square instead, removes crappiness due to peaking
  num_samples = header->num_frames * popcount(header->channel_conf);
  data_in = data;
  compress_smax = 0;

  for (; num_samples > 0; num_samples--) {
    //big endian
    compress_s = ((__int24)(int8_t)data_in[0]<<16) |
                                  (data_in[1]<<8) |
                                   data_in[2];
    if (compress_s < 0) {
      compress_s = ~compress_s;
    }
    if (compress_s > compress_smax) {
      compress_smax = compress_s;
    }

    data_in += 3;
    wdt_reset();
  }


  //compute shift needed
  //shift is needed until value range falls within [-128,127],
  //in other words until compress_smax <= 127
  uint8_t shift = 0;
  while (compress_smax >= 128) {
    shift++;
    compress_smax >>= 1;
  }

  //do the compressilating
  header->sample_shift = shift;
  num_samples = header->num_frames * popcount(header->channel_conf);
  data_in = data;

  for (; num_samples > 0; num_samples--) {
    compress_s = ((__int24)(int8_t)data_in[0]<<16) |
                                  (data_in[1]<<8) |
                                   data_in[2];
    data_in += 3;
    *samples_out++ = compress_s >> shift;
    wdt_reset();
  }
}

static void reset_measurement(void) {
  measurement_on = 0;
  measurement_num_frames = 0;
  measurement_gap = 0;
  num_measurements = 0;
  measurement_sample_fmt = 0;
}

