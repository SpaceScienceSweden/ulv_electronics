#ifndef _CONFIG_H
#define _CONFIG_H

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

#endif //_CONFIG_H

