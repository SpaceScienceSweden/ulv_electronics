#ifndef _FRAMA_C_STUB
#define _FRAMA_C_STUB

//detect Frama-C, fake some things
#ifndef F_CPU

volatile uint8_t PINE;
volatile uint8_t SPDR;
volatile uint8_t TIFR;
volatile uint8_t PINE;
volatile uint8_t SPSR;
volatile uint64_t timer1_base;
uint8_t sample_data[32767];

#define PE7 7
#define TOV1 2
#define SPIF 7
#define WORDSZ 16

#define TIMER1_TOP 0x1FFF
#define TIMER1_PRESCALER 1
#define TIMER1_OVF_INC (TIMER1_PRESCALER*(TIMER1_TOP + 1))

#define cli()
#define sei()
#define adc_select(x)
#define adc_deselect()

//pretend relevant features are enabled
#define FEATURE_BLOCK 1
#define FEATURE_ASM   0 //so capture gets implemented

#endif //F_CPU aka Frama-C detect

#endif //_FRAMA_C_STUB

