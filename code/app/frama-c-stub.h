#ifndef _FRAMA_C_STUB
#define _FRAMA_C_STUB

#ifdef FRAMA_C

typedef uint32_t __uint24;
/*@ // Type invariants are not supported in Silicon,
    // especially not strong type invariants (parse error).
    // Frama-C ignores regular type invariants however, so leave them in for now.
    // They should be upgraded to strong once a newer version of Frama-C
    // makes it into Debian testing.
    //type invariant uint24_min(__uint24 a) = a >= 0;
    //type invariant uint24_max(__uint24 a) = a <= 16777215;

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
// ideally we'd not have both adc_ena[] and adc_fake_regs[][], only adc_regs[][]
// but I only want to verify things for now
extern uint8_t adc_ena[3];
extern uint8_t adc_connected[3];

// Necessary because strict aliasing
extern uint8_t sample_data_fake[sizeof(sample_data)];

// Used for emulating ADC register behavior
extern uint8_t adc_fake_regs[3][ADC_REG_MAX+1];

/*@ axiomatic popcount_axiomatic {
        logic integer popcount(integer x);
        axiom pop0: popcount(0) == 0;
        axiom popn: \forall integer x; x > 0 ==> popcount(x) == (x%2) + popcount(x/2);
    }
 */

/*@ predicate adc_connected_and_valid(integer id) =
        adc_connected[id] == 1 &&
        0 <= adc_ena[id] <= 15 &&
        adc_ena[id] == adc_fake_regs[id][ADC_ENA] &&
        0 <= adc_popcount[id] <= 4 &&
        adc_popcount[id] == popcount(adc_ena[id]);

    predicate adc_disconnected_xor_valid(integer id) =
        (adc_connected[id] == 0 &&
         adc_ena[id] == 0 &&
         adc_fake_regs[id][ADC_ENA] == 0 &&
         adc_popcount[id] == 0
        ) ^^
         adc_connected_and_valid(id);

    predicate adc_connected_and_valid_by_mask(integer fm_mask) =
        \forall integer x; 0 <= x <= 2 ==> ((fm_mask & (1<<x)) ==> adc_connected_and_valid(x));

    predicate valid_adc_configuration_part1(integer fm_mask) =
                \forall integer x; 0 <= x <= 2 ==>
                    ((fm_mask & (1<<x)) ==>
                        adc_fake_regs[x][ADC_ENA] == 0x0F == adc_ena[x] &&
                        adc_popcount[x] == 4 &&
                        adc_connected[x] == 1
                    );

    // Ensures that part 1 of configuration that we want (all channels enabled)
    // is a subset of the valid configurations.
    lemma valid_adc_configuration_part1_subset:
        \forall integer fm_mask;
            1 <= fm_mask <= 7 ==>
                (valid_adc_configuration_part1(fm_mask) ==>
                    adc_connected_and_valid_by_mask(fm_mask));

    // Second stage of ADC setup -> all enabled ADCs have the same sample rate
    predicate valid_adc_configuration_part2(integer fm_mask) =
        valid_adc_configuration_part1(fm_mask) &&
            \forall integer x, y;
                0 <= x < y <= 2 && (fm_mask & (1<<x)) && (fm_mask & (1<<y)) ==>
                    adc_fake_regs[x][CLK1] == adc_fake_regs[y][CLK1] &&
                    adc_fake_regs[x][CLK2] == adc_fake_regs[y][CLK2];

    lemma valid_adc_configuration_part2_equiv:
        \forall integer fm_mask; 0 <= fm_mask <= 7 ==>
            (valid_adc_configuration_part2(fm_mask) <==>
             (valid_adc_configuration_part1(fm_mask) && !\exists integer x, y;
                0 <= x < y <= 2 && (fm_mask & (1<<x)) && (fm_mask & (1<<y)) &&
                    (adc_fake_regs[x][CLK1] != adc_fake_regs[y][CLK1] ||
                     adc_fake_regs[x][CLK2] != adc_fake_regs[y][CLK2])));


    // Same as before but between part 1 and part 2
    lemma valid_adc_configuration_part2_subset:
        \forall integer fm_mask;
            1 <= fm_mask <= 7 ==>
                (valid_adc_configuration_part2(fm_mask) ==>
                    valid_adc_configuration_part1(fm_mask));

    lemma valid_adc_configuration_part2_reverse:
        \forall integer fm_mask, id;
            1 <= fm_mask <= 7 && 0 <= id <= 2 && (fm_mask & (1<<id)) ==>
                (valid_adc_configuration_part2(fm_mask) ==>
                    adc_connected_and_valid(id));

    // A part 3 could be that all ADCs have some specific sample rate configured
    // At the moment the code only requires that they are identical

    predicate valid_read_fm_map(integer fm_mask, uint8_t *fm_map) =
        1 <= fm_mask <= 7 &&
        \valid_read(&fm_map[0] + (0..2)) &&
        (\forall integer x; 0 <= x < popcount(fm_mask) ==> 0 <= fm_map[x] <= 2) &&
        (\forall integer x; 1 <= x < popcount(fm_mask) ==> 0 <= fm_map[x-1] < fm_map[x] <= 2) &&
            (fm_mask == 1 ==> fm_map[0] == 0) &&
            (fm_mask == 2 ==> fm_map[0] == 1) &&
            (fm_mask == 4 ==> fm_map[0] == 2) &&
            (fm_mask == 3 ==> fm_map[0] == 0 && fm_map[1] == 1) &&
            (fm_mask == 5 ==> fm_map[0] == 0 && fm_map[1] == 2) &&
            (fm_mask == 6 ==> fm_map[0] == 1 && fm_map[1] == 2) &&
            (fm_mask == 7 ==> fm_map[0] == 0 && fm_map[1] == 1 && fm_map[2] == 2);
 */

/*@ // Gives data bytes with reserved bits set/cleared depending on address
    logic integer wreg_reserved_bits(integer a, integer d) =
      (
          a == A_SYS_CFG ? (d | 0x20) :
          a == CLK1 ? (d & 0x8E) :
          a == CLK2 ? (d & 0xEF) :
          a == ADC_ENA ? (d & 0x0F) :
          a == 0x10 ? 0x00 :
          a >= ADC1 && a <= ADC4 ? (d & 0x03) :
          d
      );

      lemma wreg_ena_bits:
        \forall integer x; 0 <= x <= 255 ==>
          0 <= wreg_reserved_bits(ADC_ENA, x) <= 15;
 */

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

