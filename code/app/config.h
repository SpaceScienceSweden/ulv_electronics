#ifndef _CONFIG_H
#define _CONFIG_H

#include <stdint.h>

#define WORDSZ    16    //ADC word size

#if WORDSZ > 16
typedef uint32_t adc_word_t;
#else
typedef uint16_t adc_word_t;
#endif
#if WORDSZ == 16
typedef int16_t sample_t;
#elif WORDSZ == 24
typedef __int24 sample_t;
#else
typedef int32_t sample_t;
#endif
#if WORDSZ == 16
typedef int32_t accu_t;
#else
typedef int64_t accu_t;
#endif

//used when computing max_frames
//typically timer1_ovfs will reach TIMER1_OVFS_MAX+1
#define TIMER1_OVFS_MAX 250L

#define MAX_FRAMES 4095

#define TIMER1_PRESCALER 1  //6% CPU  (WGM=7)
//#define TIMER1_PRESCALER 8  //<1% CPU (WGM=7)
#define TIMER1_WGM        14

#if TIMER1_WGM == 7         // Fast PWM, 10-bit
#define TIMER1_TOP  0x03FF  // 7200 Hz
#elif TIMER1_WGM == 10      // PWM, Phase Correct
// TOP = OCR1
// Using TIMER1_TOP = 0xFFFF would be nice, but the motor's speed becomes wobbly.
// The EC20 datasheet says motor PWM frequency must be >= 500 Hz,
// while WGM=10 -> ~56 Hz if TIMER1_TOP == 0xFFFF.
#define TIMER1_TOP  0x0FFF  // ~900.2 Hz
#elif TIMER1_WGM == 14      // Fast PWM
#define TIMER1_TOP  0x1FFF  // 900 Hz
#else
#error Unsupported TIMER1_WGM
#endif

#define TIMER1_OVF_INC (TIMER1_PRESCALER*(TIMER1_TOP + 1 /* TOP + 1 = 1024 */))

#define TIMER3_PRESCALER TIMER1_PRESCALER
#define TIMER3_TOP        0xFFFF

//when doing TCNT1 = 0, what value should we give TCNT3 for them both to line up?
//because gcc is not very smart it turns out that the answer is six
//2x ldi followed by 2x sts = 6 cy
#if TIMER1_PRESCALER == 1
#define TIMER3_OFS    6
#else
#define TIMER3_OFS    1
#endif

#endif //_CONFIG_H

