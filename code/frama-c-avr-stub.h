#ifndef _FRAMA_C_AVR_STUB
#define _FRAMA_C_AVR_STUB


#ifdef FRAMA_C
#include "__fc_machdep_gcc_avr_16.h"
#include <stdint.h>

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

typedef char* PGM_P;
#define SPM_PAGESIZE 256

volatile uint8_t PINE;
volatile uint8_t SPDR;
volatile uint8_t TIFR;
volatile uint8_t SPSR;
volatile uint8_t PORTF;
uint64_t timer1_base = 0;
volatile uint8_t DDRA;
volatile uint8_t PORTA;
volatile uint8_t DDRB;
volatile uint8_t PORTB;
volatile uint8_t DDRC;
volatile uint8_t PORTC;
volatile uint8_t DDRD;
volatile uint8_t PORTD;
volatile uint8_t DDRE;
volatile uint8_t PORTE;
volatile uint8_t DDRF;
volatile uint8_t PORTF;
volatile uint8_t DDRG;
volatile uint8_t PORTG;
volatile uint8_t OCR1A;
volatile uint8_t OCR1B;
volatile uint8_t OCR1C;
volatile uint8_t UCSR1A;
volatile uint8_t UCSR1B;
volatile uint8_t UCSR1C;
volatile uint8_t UDR1;
volatile uint8_t UBRR1L;
volatile uint8_t UBRR1H;

// used for assigns clauses in functions below
uint8_t flash, eeprom, wdt;

#define TXEN1 3
#define TXC1 6
#define RXEN1 4
#define RXC1 7
#define UDRE1 5

#define UCPOL1 0
#define UCSZ10 1
#define UCSZ11 2
#define USBS1 3
#define UPM10 4
#define UPM11 5
#define UMSEL1 6

#define BOOTSIZE 0x1FFF
#define FLASHEND 0x1FFFF

#define WDTO_2S 123

#undef ENABLEREADFUSELOCK

/*@ assigns \nothing;
 */
static void _delay_us(int us);

/*@ assigns \nothing;
 */
static void _delay_ms(int ms);

/*@ assigns flash;
 */
static void boot_page_erase(uint32_t);

/*@ assigns \nothing;
 */
static void boot_spm_busy_wait(void);

/*@ assigns wdt;
 */
static void wdt_reset(void);

/*@ assigns wdt;
 */
static void wdt_enable(int t);

/*@ assigns wdt;
 */
static void wdt_disable(void);

/*@ assigns flash;
 */
static void boot_rww_enable(void);

/*@ assigns flash;
 */
static void boot_page_fill(uint32_t baddr, uint16_t data);

/*@ assigns flash;
 */
static void boot_page_write(uint32_t pagestart);

/*@ assigns eeprom;
 */
static void eeprom_write_byte(uint8_t *address, uint8_t data);

/*@ assigns \nothing;
 */
static uint16_t pgm_read_word_near(uint32_t baddr);

/*@ assigns \nothing;
 */
static uint8_t eeprom_read_byte(uint8_t *address);

/*@ requires \valid_read(baddr);
    ensures \result == *baddr;
    assigns \nothing;
 */
static uint16_t pgm_read_word_far(char *baddr);

/*@ ensures \result == s;
    assigns \nothing;
 */
static PGM_P PSTR(char *s);

/*@ assigns \nothing;
 */
static void cli(void);

/*@ assigns \nothing;
 */
static void sei(void);

#else
#include <stdint.h>
#endif

#endif //_FRAMA_C_AVR_STUB
