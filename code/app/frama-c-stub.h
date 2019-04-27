#ifndef _FRAMA_C_STUB
#define _FRAMA_C_STUB

#ifdef FRAMA_C

typedef uint32_t __uint24;
/*@ // Type invariants are not supported in Silicon,
    // especially not strong type invariants (parse error).
    // Frama-C ignores regular type invariants however, so leave them in for now.
    // They should be upgraded to strong once a newer version of Frama-C
    // makes it into Debian testing.
    type invariant uint24_min(__uint24 a) = a >= 0;
    type invariant uint24_max(__uint24 a) = a <= 16777215;

    // Poor man's type invariant
    logic boolean valid_uint24(__uint24 a) = 0 <= a <= 16777215;
*/

volatile uint8_t PINE;
volatile uint8_t SPDR;
volatile uint8_t TIFR;
volatile uint8_t SPSR;
volatile uint8_t PORTF;
volatile uint64_t timer1_base;

#define PE7 7
#define TOV1 2
#define SPIF 7

#define cli()
#define sei()

//pretend relevant features are enabled
#define FEATURE_BLOCK 1
#define FEATURE_ASM   0 //so capture gets implemented

#endif //FRAMA_C

#endif //_FRAMA_C_STUB

