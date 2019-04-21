#ifndef _FRAMA_C_STUB
#define _FRAMA_C_STUB

//detect Frama-C, fake some things
#ifndef F_CPU
#define FRAMA_C

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

#define TIMER1_TOP 0x1FFF
#define TIMER1_PRESCALER 1
#define TIMER1_OVF_INC (TIMER1_PRESCALER*(TIMER1_TOP + 1))

#define cli()
#define sei()

//pretend relevant features are enabled
#define FEATURE_BLOCK 1
#define FEATURE_ASM   0 //so capture gets implemented

#define STAT_1    0x02
#define STAT_P    0x03
#define STAT_N    0x04
#define STAT_S    0x05

/*@ assigns PORTF;
 */
static void adc_select(uint8_t id) {
}

/*@ assigns PORTF;
 */
static void adc_deselect(void) {
}


// fake rreg() that returns void, so we don't try to verify things that
// depend on values in registers
/*@ assigns SPDR, PORTF;   // the real rreg() assigns SPDR and others
 */
static void rreg(uint8_t id, uint8_t a) {
  adc_select(id);
  SPDR = 1;
  adc_deselect();
}

// similar fake stub
/*@ assigns \nothing;
 */
static void set_74153(uint8_t ch) {
}

#endif //F_CPU aka Frama-C detect

#endif //_FRAMA_C_STUB

