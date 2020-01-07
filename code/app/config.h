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

#define RESET   (0x0011L << (WORDSZ-16))
#define STANDBY (0x0022L << (WORDSZ-16))
#define WAKEUP  (0x0033L << (WORDSZ-16))
#define LOCK    (0x0555L << (WORDSZ-16))
#define UNLOCK  (0x0655L << (WORDSZ-16))

//registers
#define ID_MSB    0x00
#define ID_LSB    0x01
#define STAT_1    0x02
#define STAT_P    0x03
#define STAT_N    0x04
#define STAT_S    0x05
#define STAT_M2   0x07
#define A_SYS_CFG 0x0B
#define D_SYS_CFG 0x0C
#define CLK1      0x0D
#define CLK2      0x0E
#define ADC_ENA   0x0F
#define ADC1      0x11
#define ADC2      0x12
#define ADC3      0x13
#define ADC4      0x14
#define ADC_REG_MAX ADC4

#endif //_CONFIG_H

