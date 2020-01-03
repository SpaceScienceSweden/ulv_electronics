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

#define PE7 7
#define TOV1 2
#define SPIF 7

#define cli()
#define sei()

//pretend relevant features are enabled
#define FEATURE_BLOCK 1
#define FEATURE_ASM   0 //so capture gets implemented

/*@ assigns PORTF;
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

// fake rreg() that returns void, so we don't try to verify things that
// depend on values in registers
static uint8_t rreg(uint8_t id, uint8_t a) {
  adc_select(id);
  SPDR = 1;
  adc_deselect();
  return 0;
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

/*@ assigns \nothing;
 */
inline uint8_t spi_comm_byte(uint8_t in) {
    return 0;
}

#endif //FRAMA_C

#endif //_FRAMA_C_STUB

