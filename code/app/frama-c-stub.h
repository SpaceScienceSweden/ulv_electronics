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
    predicate valid_uint24(integer a) = 0 <= a <= 16777215;
*/

volatile uint8_t PINE;
volatile uint8_t SPDR;
volatile uint8_t TIFR;
volatile uint8_t SPSR;
volatile uint8_t PORTF;
uint64_t timer1_base = 0;
volatile uint8_t DDRD;
volatile uint8_t PORTD;
volatile uint8_t DDRE;
volatile uint8_t PORTE;
volatile uint8_t DDRF;
volatile uint8_t PORTF;
volatile uint8_t OCR1A;
volatile uint8_t OCR1B;
volatile uint8_t OCR1C;

#include "wire_structs.h"

extern capture_block_s cb;
extern capture_block_continued_s cbc;

extern uint16_t vgnds[3];

extern int16_t sample_data[4*MAX_FRAMES];
extern uint16_t edge_pos[256];
extern accu_t Q1[3];
extern accu_t Q2[3];
extern accu_t Q3[3];
extern accu_t Q4[3];
extern uint16_t NQ[4];
extern uint16_t vgnds[3];
extern uint8_t adc_popcount[3];
extern uint8_t adc_ena[3];
extern uint8_t adc_connected[3];

/*@ axiomatic popcount_axiomatic {
        logic integer popcount(integer x);
        axiom pop0: popcount(0) == 0;
        axiom popn: \forall integer x; x > 0 ==> popcount(x) == (x%2) + popcount(x/2);

        lemma pc0: popcount(0) == 0;
        lemma pc1: popcount(1) == 1;
        lemma pc2: popcount(2) == 1;
        lemma pc3: popcount(3) == 2;
        lemma pc4: popcount(4) == 1;
        lemma pc5: popcount(5) == 2;
        lemma pc6: popcount(6) == 2;
        lemma pc7: popcount(7) == 3;
        lemma pc8: popcount(8) == 1;
        lemma pc9: popcount(9) == 2;
        lemma pc10: popcount(10) == 2;
        lemma pc11: popcount(11) == 3;
        lemma pc12: popcount(12) == 2;
        lemma pc13: popcount(13) == 3;
        lemma pc14: popcount(14) == 3;
        lemma pc15: popcount(15) == 4;
    }
 */

/*@ predicate valid_adc_globals =
        \forall integer id; 0 <= id <= 2 ==>
            0 <= adc_connected[id] <= 1 &&
            (adc_connected[id] == 0 ==> adc_ena[id] == adc_popcount[id] == 0) &&
            (adc_connected[id] == 1 ==> 0 <= adc_ena[id] <= 15 && 0 <= adc_popcount[id] <= 4 && adc_popcount[id] == popcount(adc_ena[id]));
 */

#ifdef FRAMA_C
// Necessary because strict aliasing
extern uint8_t sample_data_fake[sizeof(sample_data)];
#endif

#define PE7 7
#define TOV1 2
#define SPIF 7

#define cli()
#define sei()

//pretend relevant features are enabled
#define FEATURE_BLOCK 1
#define FEATURE_ASM   0 //so capture gets implemented

/*@ requires 0 <= id <= 2;
    assigns PORTF;
 */
static void adc_select(uint8_t id) {
}

/*@ assigns PORTF;
 */
static void adc_deselect(void) {
}

/*@ assigns \nothing;
 */
static void sendchar(uint8_t data) {
}

// similar fake stub
static void set_74153(uint8_t ch) {
}

/*@ assigns \nothing;
 */
static uint64_t gettime64() {
    return 0x12345678;
}

/*@ assigns \nothing;
 */
static void adc_spi_fast(void) {
}

/*@ assigns \nothing;
 */
static void dac_spi_fast(void) {
}

#define printf_P(...)
#define PSTR(s)
#define start_section(s)

#endif //FRAMA_C

#endif //_FRAMA_C_STUB

