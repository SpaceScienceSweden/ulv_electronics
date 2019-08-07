static void set_block_motor_speed(uint8_t block_idx, uint8_t fm_mask, uint8_t stop_mask, uint16_t ocr_lo, uint16_t ocr_hi) {
  //alternate OCR1*
  //set ADC sample rates while we're at it
  uint16_t ocr = (block_idx & 1) ? ocr_hi : ocr_lo;
  if (ocr) {
    uint8_t clk2 = 0x20 | ocr2osr(ocr);
    if (fm_mask & 1) {
      if (stop_mask & 1) {
        OCR1A = ocr;
      }
      wreg(0, CLK2, clk2);
    }
    if (!(stop_mask & 1)) {
      OCR1A = 0;
    }

    if (fm_mask & 2) {
      if (stop_mask & 2) {
        OCR1B = ocr;
      }
      wreg(1, CLK2, clk2);
    }
    if (!(stop_mask & 2)) {
      OCR1B = 0;
    }

    if (fm_mask & 4) {
      if (stop_mask & 4) {
        OCR1C = ocr;
      }
      wreg(2, CLK2, clk2);
    }
    if (!(stop_mask & 4)) {
      OCR1C = 0;
    }
  }
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

  if ((intptr_t)sample_data < 0x1100) {
    start_section("ERROR");
    printf_P(PSTR("sample_data not in XMEM\r\n"));
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

  //longer WDT than normal to not have to do WDR inside loops
  wdt_enable(WDTO_2S);

  uint8_t got_esc = 0;
  uint64_t t = gettime64();

  //keep track of mean tachometer value
  //a value of zero is understood as "not intialized"
  int16_t tach_mean[3] = {0,0,0};
  uint8_t max_max_tach_ratio = 0; //max_tach_ratio over the entire run so far
  uint8_t block_idx = 0;
  uint8_t temp_conversion_in_progress = 0;

  set_block_motor_speed(block_idx, fm_mask, fm_mask, ocr_lo, ocr_hi);
  wait_ms(3000);

  //zero for any motor which has been explicitly stop due to jamming
  uint8_t motor_stop_mask = 7;
  //in terms of inner capture loop
#define JAMMED_COUNT 2
  uint8_t motor_jam_counters[3] = {0};
  //in terms of outer loop
#define UNJAM_COUNT 1
  uint8_t motor_unjam_counters[3] = {0};

  while (!have_esc() && !got_esc) {
    uint32_t cycles_per_sample = adc_cycles_per_sample();
    uint32_t frames_per_second = F_CPU / cycles_per_sample;
    uint16_t max_frames = compute_max_frames(max_frames_max,
                                             cycles_per_sample,
                                             frames_per_second);
    //default distance to skip after each flank in tachometer trigger logic
    uint16_t default_skip = F_CPU/400/cycles_per_sample;  //90° at 6000 RPM
    uint16_t tach_skip[3] = {default_skip,default_skip,default_skip};

    if (max_frames > 0) {
      start_section("INFO");
    } else {
      start_section("ERROR");
    }
    printf_P(PSTR("rate: %lu Hz, %u frames\n"), frames_per_second, max_frames);
    READY();
    if (max_frames == 0) {
      return;
    }

    memset(&cb, 0, sizeof(cb));
    memset(&cbc,0, sizeof(cbc));
    cb.version        = 3;
    cb.f_cpu          = F_CPU;
    cb.t              = gettime64();
    cb.fm_mask        = fm_mask;
    cb.num_frames     = max_frames;
    cb.stats[0].OCR1n = OCR1A;
    cb.stats[1].OCR1n = OCR1B;
    cb.stats[2].OCR1n = OCR1C;
    cb.vgnd_rounds    = 3;    //should be <= 7, else >50% time is spent biasing
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

#ifdef TEST_SPEED
    //for printing timings
    start_section("INFO");
#endif

    for (; cb.nentries < nentries_max && !got_esc; cb.nentries++) {
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

      if (cb.entries[cb.nentries].num_tachs == 0) {
        //jammed?
        if (motor_jam_counters[id] < JAMMED_COUNT) {
          //not yet
          motor_jam_counters[id]++;
        } else {
          //yep!
          motor_stop_mask &= ~(1<<id);
          //stop it immediately
          if (id == 0) {
            OCR1A = 0;
          } else if (id == 1) {
            OCR1B = 0;
          } else {
            OCR1C = 0;
          }
        }
      } else {
        //doesn't look like it
        //just reset the flag and counter, let the set_block_motor_speed()
        //call further down take care of things
        motor_jam_counters[id] = 0;
        motor_unjam_counters[id] = 0;
        motor_stop_mask |= (1<<id);
      }

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
        float f = tot_tachs[id] / (float)N * frames_per_second; //  eller nåt;
        printf_P(PSTR("id = %hhu, N=%lu, tachs=%lu, %f RPM\r\n"), id, N, tot_tachs[id], 60*f);
      }
      printf_P(PSTR("id = %hhu, min/mean/max tach: %i/%i/%i\r\n"), id, cb.stats[id].minmax[3][0], cb.stats[id].mean[3], cb.stats[id].minmax[3][1]);
     }
     print_temps(cb.temps);
     print_volts(cb.volts);
    }

    //try unjamming motors if we should
    for (uint8_t id = 0; id < 3; id++) {
      if ((fm_mask & (1<<id)) && !(motor_stop_mask & (1<<id))) {
        //FM is enabled but motor stopped
        if (motor_unjam_counters[id] < UNJAM_COUNT) {
          //it hasn't been long enough yet
          motor_unjam_counters[id]++;
        } else {
          //time to try to unjam it
          motor_stop_mask |= (1<<id);
          motor_unjam_counters[id] = 0;
          motor_jam_counters[id] = 0;
        }
      }
    }

    block_idx = (block_idx + 1) & 0xF;
    t = t2;

    // start changing motor speed while we're doing the stuff below
    set_block_motor_speed(block_idx, fm_mask, motor_stop_mask, ocr_lo, ocr_hi);

    // this takes ~4 second
    start_section("BLOCK");
    sendbuf(&cb, cbsz);

    cbc.samplesz = max_frames * 4 * 2;
    sendbuf(&cbc, sizeof(cbc));
    sendbuf(sample_data, cbc.samplesz);
    READY();
  }

square_demod_analog_done:
  stop_measurement();
  set_vgnds(512);
  wdt_enable(WDTO_DEFAULT);
  return;
}

