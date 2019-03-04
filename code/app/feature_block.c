//not being static inline is faster? 136 ms vs 98 ms
/*static inline*/ void accumulate_square_interval(
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
  __uint24 psize = p12 - p0;
  __uint24 paccu = psize + rounding;
  sample_t *data_ptr = p0*4 + (sample_t*)sample_data;

  //i = offset in interval [p0,p12)
  uint16_t i = 0;
#define DO_QUADRANT(Q, k)\
  do {\
    uint16_t p = (paccu*1398101LL) >> 24 /*paccu / 12, 98 ms -> 96 ms*/;\
    NQ[k] += p-i;\
    accu_t q0 = Q[0], q1 = Q[1], q2 = Q[2];\
    for (; i < p; i++, data_ptr += 4) {\
      q0 += data_ptr[0];\
      q1 += data_ptr[1];\
      q2 += data_ptr[2];\
    }\
    Q[0] = q0; Q[1] = q1; Q[2] = q2;\
  } while (0)

  //ROM: 51326 -> 57456, but 106 ms -> 98 ms
  for (uint8_t j = 0; j < 3; j++) {
  DO_QUADRANT(Q1, 0); paccu += psize;
  DO_QUADRANT(Q2, 1); paccu += psize;
  DO_QUADRANT(Q3, 2); paccu += psize;
  DO_QUADRANT(Q4, 3); paccu += psize;
  }/*
  DO_QUADRANT(Q1, 0); paccu += psize;
  DO_QUADRANT(Q2, 1); paccu += psize;
  DO_QUADRANT(Q3, 2); paccu += psize;
  DO_QUADRANT(Q4, 3); paccu += psize;
  DO_QUADRANT(Q1, 0); paccu += psize;
  DO_QUADRANT(Q2, 1); paccu += psize;
  DO_QUADRANT(Q3, 2); paccu += psize;
  DO_QUADRANT(Q4, 3); //no need to paccu here*/
}

//only works with 16-bit samples
static inline void binary_iq(
  accu_t *Q1,
  accu_t *Q2,
  accu_t *Q3,
  accu_t *Q4,
  uint16_t N, //N > 0
  int16_t IQ[3][2],
  int16_t mean[4],
  uint8_t compute_mean
) {
  for (uint8_t j = 0; j < 3; j++) {
    //avr-gcc probably won't know that Q1..Q4 don't alias,
    //so load q1..4 to avoid accessesing memory more than necessary
    accu_t q1 = Q1[j];
    accu_t q2 = Q2[j];
    accu_t q3 = Q3[j];
    accu_t q4 = Q4[j];

    // I = q1-q2-q3+q4
    // Q = q1+q2-q3-q4
    IQ[j][0]= (q1 - q2 - q3 + q4) / N;
    IQ[j][1]= (q1 + q2 - q3 - q4) / N;
    if (compute_mean) {
      mean[j] = (q1 + q2 + q3 + q4) / N;
    }
  }
}

//captures and demodulates data coming out of a single FM
//capturing one at a time is better phase-jitter-wise
//returns non-zero on error
uint8_t capture_and_demod(
        uint8_t id,
        uint16_t max_frames,
        uint8_t *stat1_out,
        int16_t minmax[4][2],
        uint16_t NQ[4],
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
        ) {

  if ((intptr_t)sample_data < 0x1100) {
    start_section("ERROR");
    printf_P(PSTR("sample_data not in XMEM\r\n"));
    return 1;
  }

  // There might be some stray error codes if num_fms > 1
  // In one case STAT_P=7 and STAT_N=7 would always get set,
  // but reading them here before capture() clears them.
  // My hypothesis is that this has to do with dV/dt's during
  // VGND change inducing out-of-range signals in channels 1-3.
  rreg(id, STAT_1);
  rreg(id, STAT_P);
  rreg(id, STAT_N);
  rreg(id, STAT_S);

  set_74153(id);
  DDRD |= 1;    //debug
  capture(id, stat1_out, max_frames);
  PORTD &= ~1;  //debug

  if (biased_round) {
    compute_min_max(max_frames, (sample_t*)sample_data, minmax, first_round);
  }

  //synthesize TACH from fourth channel in each FM data stream
  //if we don't have a decent tach trigger value yet then bootstrap one from the mean of the captured samples
  if (*tach_mean == 0) {
    *tach_mean = bootstrap_tach_mean(max_frames, (sample_t*)sample_data);
  }

  //have a bit of hysteresis
  //I don't want to have to deal with overflow if tach_mean is close to INT16_MAX,
  //so just let on = mid
  int16_t mid = *tach_mean;
  int16_t on  = mid;          //100% of mean
  int16_t off = mid - mid/4;  //75% of mean

  sample_t *data_ptr = (sample_t*)sample_data;
  uint8_t state = data_ptr[3]/(1 << (WORDSZ-16)) > mid;
  uint16_t p0 = 0; //index of last tach, or zero

  //demodulation stuff
  accu_t Q1[3] = {0};
  accu_t Q2[3] = {0};
  accu_t Q3[3] = {0};
  accu_t Q4[3] = {0};

  //sum_abs[3] is just the sum, should save some cycles
  uint32_t sum_abs[4] = {0,0,0,0};
  uint16_t tach_min = UINT16_MAX;
  uint16_t tach_max = 0;

  uint8_t num_tachs = 0;
  uint8_t rounding = *rounding_inout;
  uint16_t skip = *tach_skip;
  for (uint16_t k = 0;
        k < max_frames && num_tachs < 255;) {
    int16_t s = data_ptr[3] / (1 << (WORDSZ-16));
    //look for rising edge
    if (state == 0 && s > on) {
      state = 1;
      uint16_t p12 = k;
      if (p0 > 0) {
        num_tachs++;

        // gather tach duration statistics
        uint16_t cur_tach = p12 - p0;
        if (cur_tach > tach_max) {
          tach_max = cur_tach;
        }
        if (cur_tach < tach_min) {
          tach_min = cur_tach;
        }

        if (last_round) {
          compute_sum_abs(p0, p12, sum_abs);
        }

        //~85% of time between captures is spent here
        accumulate_square_interval(
          p0, p12,
          Q1, Q2, Q3, Q4, NQ,
          rounding
        );

        //four numbers are relative prime 12: 1, 5, 7, 11
        rounding = (rounding + 5) % 12;

        //continually update the skip, so that we always skip 90°
        skip = (p12 - p0) / 4;
      } else {
        //first sample - record discard
        *discard = p12;
      }
      p0 = p12;

      //skip 90° ahead
      k += skip;
      data_ptr += skip*4;
    } else if (state == 1 && s < off) {
      state = 0;

      //skip 90° ahead
      k += skip;
      data_ptr += skip*4;
    } else {
      //no rising or falling edge. keep looking
      k++;
      data_ptr += 4;
    }
  }

  if (tach_min == 0) {
    //this shouldn't happen, but guard against it either way
    *tach_ratio = 255;
  } else {
    uint32_t ratio = (uint32_t)tach_max * 100 / tach_min;
    if (ratio < 254) {
      *tach_ratio = ratio;
    } else {
      *tach_ratio = 254;
    }
  }

  uint16_t N = NQ[0] + NQ[1] + NQ[2] + NQ[3];
  if (N > 0) {
    if (last_round) {
      mean_abs[0] = sum_abs[0] / N;
      mean_abs[1] = sum_abs[1] / N;
      mean_abs[2] = sum_abs[2] / N;
      //mean[0..2] are computed in binary_iq
      mean[3]     = sum_abs[3] / N;
    }

    binary_iq(Q1, Q2, Q3, Q4, N, entry->IQ, mean, last_round);
  }

  entry->num_tachs = num_tachs;
  *rounding_inout = rounding;
  *tach_mean = mean[3];
  *tach_skip = skip;
  return 0;
}

// Uses the analog signal in channel 4 in each FM for synchronization
// ocr_lo, ocr_hi: if non-zero, OCR1* low/high setting, alternated between capture blocks
void square_demod_analog(uint8_t fm_mask, uint16_t max_frames_max, uint16_t ocr_lo, uint16_t ocr_hi) {
  fm_mask &= 7;
  uint8_t num_fms = popcount(fm_mask);

#if WORDSZ > 16
  start_section("ERROR");
  printf_P(PSTR("can only square_demod_analog with 16-bit samples for now\r\n"));
  return;
#endif

  if (fm_mask == 0) {
    start_section("ERROR");
    printf_P(PSTR("fm_mask == 0\r\n"));
    return;
  }

  //for each desired FM, enable all channels
  if ((/*adc_connected[0]*/(fm_mask & 1) && wreg(0, ADC_ENA, (fm_mask & 1) ? 0x0F : 0x00)) ||
      (/*adc_connected[1]*/(fm_mask & 2) && wreg(1, ADC_ENA, (fm_mask & 2) ? 0x0F : 0x00)) ||
      (/*adc_connected[2]*/(fm_mask & 4) && wreg(2, ADC_ENA, (fm_mask & 4) ? 0x0F : 0x00))) {
    return;
  }

  //maps FM order to FM id
  uint8_t fm_map[3] = {0};
  switch (fm_mask) {
  case 1: fm_map[0] = 0;                               break;
  case 2: fm_map[0] = 1;                               break;
  case 3: fm_map[0] = 0; fm_map[1] = 1;                break;
  case 4: fm_map[0] = 2;                               break;
  case 5: fm_map[0] = 0; fm_map[1] = 2;                break;
  case 6: fm_map[0] = 1; fm_map[1] = 2;                break;
  case 7: fm_map[0] = 0; fm_map[1] = 1; fm_map[2] = 2; break;
  }

  if (!adc_connected[fm_map[0]]) {
    start_section("ERROR");
    printf_P(PSTR("ADCs %hhu not connected\r\n"), fm_map[0]);
    return;
  }

  //make sure they're all configured the same way
  for (uint8_t i = fm_map[0] + 1; i < 3; i++) {
    if (fm_mask & (1<<i)) {
      if (!adc_connected[i]) {
        start_section("ERROR");
        printf_P(PSTR("ADCs %hhu not connected\r\n"), fm_map[0]);
        return;
      }
      if (rreg(fm_map[0], CLK1) != rreg(i, CLK1) ||
          rreg(fm_map[0], CLK2) != rreg(i, CLK2)) {
        start_section("ERROR");
        printf_P(PSTR("ADCs %hhu and %hhu don't seem to be configured for the same samplerate\r\n"), fm_map[0], i);
        return;
      }
    }
  }

  //FIXME: necessary?
  //cli();
  if (adc_wakeup(0)) {
    //fail
    goto square_demod_analog_done;
  }
  //sei();
  
#if WORDSZ > 24
#error WORDSZ > 24 not supported currently
#endif

  uint32_t cycles_per_sample = adc_cycles_per_sample();

  //note that this makes use of the entire sample_data array
  //we're not doing any double buffering here,
  //and we're not indexing into the array
  //this makes it possible to make use of all 32k of it
  uint16_t max_frames = sizeof(sample_data)/(WORDSZ/8*4);

  //measure no longer than one second
  uint32_t frames_per_second = F_CPU / cycles_per_sample;

  //measure no longer than then number of Timer1 overflows
  //we can keep track of in one byte, comfortably
  //                                 1024000    / 256 = 4000;
  uint32_t max_ovf_frames = ((uint32_t)TIMER1_OVF_INC * TIMER1_OVFS_MAX) / cycles_per_sample;

  if (frames_per_second < max_frames) {
    max_frames = frames_per_second;
  }
  if (max_frames > max_ovf_frames) {
    max_frames = max_ovf_frames;
  }
  if (max_frames_max > 0 && max_frames > max_frames_max) {
    max_frames = max_frames_max;
  }

  //sanity check, to prevent q1..3 from having to deal with overflow
  //we can probably bump this to 65535 (see computation of fm->mean[j]):
  //  (+)2147483647 / (-)32768 = 65535
  //   ^               ^         ^ maximum no. frames
  //   ^               ^ maximum sample amplitude
  //   ^ minimum accu_t range
  if (max_frames > 16383) {
    max_frames = 16383;
  }

  //longer WDT than normal to not have to do WDR inside loops
  wdt_enable(WDTO_2S);

  if (max_frames > 0) {
    start_section("INFO");
  } else {
    start_section("ERROR");
  }
  printf_P(PSTR("rate: %lu Hz, %u frames, max_ovf_frames = %lu\n"), frames_per_second, max_frames, max_ovf_frames);
  READY();
  if (max_frames == 0) {
    return;
  }
  uint8_t got_esc = 0;
  uint64_t t = gettime64();

  //keep track of mean tachometer value
  //a value of zero is understood as "not intialized"
  int16_t tach_mean[3] = {0,0,0};
  //default distance to skip after each flank in tachometer trigger logic
  uint16_t default_skip = F_CPU/400/cycles_per_sample;  //90° at 6000 RPM
  uint16_t tach_skip[3] = {default_skip,default_skip,default_skip};
  uint8_t max_max_tach_ratio = 0; //max_tach_ratio over the entire run so far
  uint8_t block_idx = 0;
  uint8_t temp_conversion_in_progress = 0;

  while (!have_esc() && !got_esc) {
    //alternate OCR1*
    //set ADC sample rates while we're at it
    uint16_t ocr = (block_idx & 1) ? ocr_hi : ocr_lo;
    if (ocr) {
      uint8_t clk2 = 0x20 | ocr2osr(ocr);
      if (fm_mask & 1) {
        OCR1A = ocr;
        wreg(0, CLK2, clk2);
      }
      if (fm_mask & 2) {
        OCR1B = ocr;
        wreg(1, CLK2, clk2);
      }
      if (fm_mask & 4) {
        OCR1C = ocr;
        wreg(2, CLK2, clk2);
      }
    }

    memset(&cb, 0, sizeof(cb));
    memset(&cbc,0, sizeof(cbc));
    cb.version        = 2;
    cb.f_cpu          = F_CPU;
    cb.t              = gettime64();
    cb.fm_mask        = fm_mask;
    cb.num_frames     = max_frames;
    cb.stats[0].OCR1n = OCR1A;
    cb.stats[1].OCR1n = OCR1B;
    cb.stats[2].OCR1n = OCR1C;
    cb.vgnd_rounds    = 5;    //should be <= 7, else >50% time is spent biasing
    cb.vgnd_zero      = 512;
    cb.vgnd_minus     = cb.vgnd_zero - 100;
    cb.vgnd_plus      = cb.vgnd_zero + 100;
    memcpy(cb.stat_marker, "STAT", 4);
    memcpy(cb.temp_marker, "TEMP", 4);
    memcpy(cb.volt_marker, "VOLT", 4);
    memcpy(cb.entr_marker, "ENTR", 4);
    memcpy(cbc.samp_marker,"SAMP", 4);

    //zero vgnds if they weren't already
    set_vgnds(cb.vgnd_zero);

    //start temperature conversion
    if (!temp_conversion_in_progress) {
      ds18b20convert( &ONEWIRE_PORT, &ONEWIRE_DDR, &ONEWIRE_PIN, ONEWIRE_MASK, NULL );
      temp_conversion_in_progress = 1;
    }

    for (uint8_t id = 0; id < 3; id++) {
      if (fm_mask & (1<<id)) {
        cb.stats[id].minmax[0][0] = INT16_MAX;
        cb.stats[id].minmax[1][0] = INT16_MAX;
        cb.stats[id].minmax[2][0] = INT16_MAX;
        cb.stats[id].minmax[3][0] = INT16_MAX;
        cb.stats[id].minmax[0][1] = INT16_MIN;
        cb.stats[id].minmax[1][1] = INT16_MIN;
        cb.stats[id].minmax[2][1] = INT16_MIN;
        cb.stats[id].minmax[3][1] = INT16_MIN;
      }
    }

    uint16_t nentries_vgnd = 2 * cb.vgnd_rounds * num_fms * num_fms;
    static const uint16_t entries_capacity = sizeof(cb.entries)/sizeof(cb.entries[0]);
    uint16_t nentries_max = (entries_capacity / num_fms) * num_fms;
    if (nentries_max > 2*nentries_vgnd) {
      nentries_max = 2*nentries_vgnd;
    }
    uint16_t bias_start = nentries_max - nentries_vgnd;
    uint16_t nentries_last = nentries_max - num_fms; //where the last round starts
    uint8_t stat1[3] = {0};
    //what to add before clamping division by 12 in accumulate_square_interval()
    //moves around in the interval [0,12) in order to unbias Q1..4 binning
    uint8_t rounding[3] = {0};
    uint32_t tot_tachs[3] = {0};

    //start_section("INFO");
    //printf_P(PSTR("Capturing block @ t = %f\r\n"), cb.t / (float)F_CPU);
    //READY();

    for (; cb.nentries < nentries_max && !got_esc; cb.nentries++) {
      uint16_t NQ[4] = {0};
      uint8_t id = fm_map[cb.nentries % num_fms];
      //ramp VGND up/down. this avoids saturating the op-amps and ADCs
      uint16_t target_vgnds[3] = {cb.vgnd_zero, cb.vgnd_zero, cb.vgnd_zero};

      //biasing/calibration is done at the end of the block
      if (cb.nentries >= bias_start) {
        uint16_t temp = (cb.nentries - bias_start) / (cb.vgnd_rounds * num_fms);
        uint8_t vgnd_pm = temp % 2;
        uint8_t vgnd_id = fm_map[temp / 2];
        target_vgnds[vgnd_id] = vgnd_pm ? cb.vgnd_plus : cb.vgnd_minus;
        //printf_P(PSTR("cb.nentries = %hhu / %hhu bias %hhu %c\r\n"), cb.nentries, nentries_max, vgnd_id, vgnd_pm ? '+' : '-');
      }

      //since is +-100 of zero, this takes up to 21 ms each time vgnd changes during calibration
      while (vgnds[0] != target_vgnds[0] ||
             vgnds[1] != target_vgnds[1] ||
             vgnds[2] != target_vgnds[2]) {
        for (uint8_t id = 0; id < 3; id++) {
          if (vgnds[id] < target_vgnds[id]) {
            set_vgnd(id, vgnds[id] + 1);
          } else if (vgnds[id] > target_vgnds[id]) {
            set_vgnd(id, vgnds[id] - 1);
          }
        }
        _delay_us(100);
      }
      _delay_us(1000);

      //a few µs before the actual first sample, probably fine
      cb.entries[cb.nentries].t = gettime24();

      uint16_t discard; //don't think we need this
      uint8_t tach_ratio;
      if (capture_and_demod(
        id,
        max_frames,
        &stat1[id],
        cb.stats[id].minmax,
        NQ,
        &cb.entries[cb.nentries],
        cb.stats[id].mean,
        &tach_mean[id],
        &tach_skip[id],
        &tach_ratio,
        &discard,
        cb.stats[id].mean_abs,
        &rounding[id],
        cb.nentries <  num_fms,
        cb.nentries >= bias_start,
        cb.nentries >= nentries_last
      )) {
        //pretend we got an ESC
        got_esc = 1;
      }

      cb.stats[id].NQ[0] += NQ[0];
      cb.stats[id].NQ[1] += NQ[1];
      cb.stats[id].NQ[2] += NQ[2];
      cb.stats[id].NQ[3] += NQ[3];
      cb.entries[cb.nentries].N = NQ[0] + NQ[1] + NQ[2] + NQ[3];
      tot_tachs[id] += cb.entries[cb.nentries].num_tachs;

      if (tach_ratio > cb.stats[id].max_tach_ratio) {
        cb.stats[id].max_tach_ratio = tach_ratio;
      }

      if (have_esc()) {
        got_esc = 1;
      }

      wdt_reset();
    }

    //check if temp conversion finished (it should have)
    if (temp_conversion_in_progress &&
        onewireReadBit( &ONEWIRE_PORT, &ONEWIRE_DDR, &ONEWIRE_PIN, ONEWIRE_MASK )) {
      temp_conversion_in_progress = 0;
      cb.num_temps = romcnt;
      read_temps(cb.temps);
    }

    //grab analog voltages
    cb.volt_mask = 31;
    enable_adc();
    for (uint8_t x = 0; x < 8; x++) {
      if (cb.volt_mask & (1<<x)) {
        cb.volts[x] = read_adc(x);
      }
    }
    disable_adc();

    if (stat1[0] || stat1[1] || stat1[2]) {
      start_section("ERROR");
    }
    for (uint8_t id = 0; id < 3; id++) {
      if (fm_mask & (1<<id)) {
        for (uint8_t addr = 0x00; addr <= 0x14; addr++) {
          if (addr == STAT_1) {
            //use aggregate STAT_1
            cb.stats[id].ads131a04_regs[addr] = stat1[id];
            if (stat1[id]) {
              printf_P(PSTR("STAT_1[%hhu] = %hh02x\n"), id, stat1[id]);
            }
          } else {
            uint8_t val = rreg(id, addr);
            if (addr == STAT_S && val) {
              printf_P(PSTR("STAT_S[%hhu] = %hh02x\n"), id, val);
            }
            if (addr == STAT_P && val) {
              printf_P(PSTR("STAT_P[%hhu] = %hh02x\n"), id, val);
            }
            if (addr == STAT_N && val) {
              printf_P(PSTR("STAT_N[%hhu] = %hh02x\n"), id, val);
            }
            cb.stats[id].ads131a04_regs[addr] = val;
          }
        }
      }
    }

    uint64_t t2 = gettime64();
    uint16_t cbsz = sizeof(cb) - (entries_capacity - cb.nentries)*sizeof(capture_entry_s);
    uint16_t sz = cbsz + sizeof(cbc);

    for (uint8_t id = 0; id < 3; id++) {
      if (cb.stats[id].max_tach_ratio > max_max_tach_ratio) {
        max_max_tach_ratio = cb.stats[id].max_tach_ratio;
      }
    }

    //don't need to print every time
    //print both 0 and 1 tho, since we're alternating speeds
    if (block_idx < 2) {
     start_section("INFO");
     printf_P(PSTR("dt = %.2f, sz = %u\r\n"), (t2-t)/(float)F_CPU, sz);
     printf_P(PSTR("max_max_tach_ratio = %hhu\r\n"), max_max_tach_ratio);
     for (uint8_t id = 0; id < 3; id++) {
      if (tot_tachs[id]) {
        uint32_t N = cb.stats[id].NQ[0] +
          cb.stats[id].NQ[1] +
          cb.stats[id].NQ[2] +
          cb.stats[id].NQ[3];
        float f = tot_tachs[id] / (float)N * F_CPU / cycles_per_sample; //  eller nåt;
        printf_P(PSTR("id = %hhu, N=%lu, tachs=%lu, %f RPM\r\n"), id, N, tot_tachs[id], 60*f);
      }
      printf_P(PSTR("id = %hhu, min/mean/max tach: %i/%i/%i\r\n"), id, cb.stats[id].minmax[3][0], cb.stats[id].mean[3], cb.stats[id].minmax[3][1]);
     }
     print_temps(cb.temps);
     print_volts(cb.volts);
    }
    block_idx = (block_idx + 1) & 0xF;
    t = t2;

    start_section("BLOCK");
    sendbuf(&cb, cbsz);
    sendbuf(&cbc, sizeof(cbc));
    READY();
  }

square_demod_analog_done:
  stop_measurement();
  set_vgnds(512);
  wdt_enable(WDTO_DEFAULT);
  return;
}

