/*****************************************************************************
*
* AVRPROG compatible boot-loader
* Version  : 0.85 (Dec. 2008)
* Compiler : avr-gcc 4.1.2 / avr-libc 1.4.6
* size     : depends on features and startup ( minmal features < 512 words)
* by       : Martin Thomas, Kaiserslautern, Germany
*            eversmith@heizung-thomas.de
*            Additional code and improvements contributed by:
*           - Uwe Bonnes
*           - Bjoern Riemer
*           - Olaf Rempel
*
* License  : Copyright (c) 2006-2008 M. Thomas, U. Bonnes, O. Rempel
*            Free to use. You have to mention the copyright
*            owners in source-code and documentation of derived
*            work. No warranty! (Yes, you can insert the BSD
*            license here)
*
* Tested with ATmega8, ATmega16, ATmega162, ATmega32, ATmega324P,
*             ATmega644, ATmega644P, ATmega128, AT90CAN128
*
* - Initial versions have been based on the Butterfly bootloader-code
*   by Atmel Corporation (Authors: BBrandal, PKastnes, ARodland, LHM)
*
****************************************************************************
*
*  See the makefile and readme.txt for information on how to adapt 
*  the linker-settings to the selected Boot Size (BOOTSIZE=xxxx) and 
*  the MCU-type. Other configurations futher down in this file.
*
*  With BOOT_SIMPLE, minimal features and discarded int-vectors
*  this bootloader has should fit into a a 512 word (1024, 0x400 bytes) 
*  bootloader-section. 
*
****************************************************************************/


/**
 * ULV notes
 *
 * For our lunar instrument we are only provided power + RS-485 by the lander.
 * We do not have any extra pin to act as an "enable bootloader" signal.
 * Therefore the bootloader should jump to the application only if no signon has
 * happened within some time. A watchdog should be used as well, in case the
 * programming sequence is broken somehow. It should also be possible to
 * re-enter the bootloader from the application, to reduce the number of power
 * cyclings.
 * 
 * Pseudocode:
 * 
 * bootloader_main() {
 *  //we might have entered from the application, so make sure we're not interrupted or anything
 *  cli();
 *  disable_watchdog();
 *  start_timer();
 *  while (!has_received_signon()) {
 *   if (timer_expired()) {
 *    jump_to_app();
 *   }
 *  }
 *  enable_watchdog();
 *  for (;;) {
 *   int c = getchar();
 *   do_reset_watchdog = 1;
 *   while (c) {
 *   case 'a': ... break;
 *   case 'b': ... break;
 *   ...
 *   default:
 *     //don't reset watchdog for unknown commands
 *     do_reset_watchdog = 0;
 *   }
 *   if (do_reset_watchdog) {
 *    reset_watchdog();
 *   }
 *  }
 * }
 * 
 * app_main() {
 *  //maybe enable_watchdog();
 *  for (;;) {
 *   if (received_command() == ENTER_BOOTLOADER) {
 *    jump_to_bootloader();
 *   }
 *  }
 * }
 */

/*
	TODOs:
	- check lock-bits set
	- __bad_interrupt still linked even with modified 
	  linker-scripts which needs a default-handler,
	  "wasted": 3 words for AVR5 (>8kB), 2 words for AVR4
	- Check watchdog-disable-function in avr-libc.
*/
// tabsize: 4
/* MCU frequency */
#if F_CPU != 7372800LL
#error F_CPU not what we expected
#endif

/* UART Baudrate */
#define BAUDRATE BAUD

/* use "Double Speed Operation" */
//#define UART_DOUBLESPEED

/* use second UART on mega128 / can128 / mega162 / mega324p / mega644p */
#define UART_USE_SECOND

/* RS-485 needs a DE pin */
#define RS485_DE_PORT PORTD
#define RS485_DE_DDR  DDRD
#define RS485_DE_BIT  (1<<5)


/* Device-Type:
   For AVRProg the BOOT-option is prefered 
   which is the "correct" value for a bootloader.
   avrdude may only detect the part-code for ISP */
#define DEVTYPE     DEVTYPE_BOOT
// #define DEVTYPE     DEVTYPE_ISP

/*
 * Pin "STARTPIN" on port "STARTPORT" in this port has to grounded
 * (active low) to start the bootloader
 */
/*#define BLPORT		PORTB
#define BLDDR		DDRB
#define BLPIN		PINB
#define BLPNUM		PINB4*/

/*
 * Define if Watchdog-Timer should be disable at startup
 */
#define DISABLE_WDT_AT_STARTUP

/*
 * Watchdog-reset is issued at exit 
 * define the timeout-value here (see avr-libc manual)
 */
#define EXIT_WDT_TIME   WDTO_2S

/*
 * Select startup-mode
 * SIMPLE-Mode - Jump to bootloader main BL-loop if key is
 *   pressed (Pin grounded) "during" reset or jump to the
 *   application if the pin is not grounded. The internal
 *   pull-up resistor is enabled during the startup and
 *   gets disabled before the application is started.
 * POWERSAVE-Mode - Startup is separated in two loops
 *   which makes power-saving a little easier if no firmware
 *   is on the chip. Needs more memory
 * BOOTICE-Mode - to flash the JTAGICE upgrade.ebn file.
 *   No startup-sequence in this mode. Jump directly to the
 *   parser-loop on reset
 *   F_CPU in BOOTICEMODE must be 7372800 Hz to be compatible
 *   with the org. JTAGICE-Firmware
 * WAIT-mode waits 1 sec for the defined character if nothing 
 *    is recived then the user prog is started.
 */
//#define START_SIMPLE
#define START_WAIT
//#define START_POWERSAVE
//#define START_BOOTICE

/* character to start the bootloader in mode START_WAIT */
#define START_WAIT_UARTCHAR 'S'

/* wait-time for START_WAIT mode ( t = WAIT_TIME * 10ms ) */
//#define WAIT_VALUE 1000 /* here: 100*10ms = 1000ms = 1sec */

/*
 * enable/disable readout of fuse and lock-bits
 * (AVRPROG has to detect the AVR correctly by device-code
 * to show the correct information).
 */
#define ENABLEREADFUSELOCK

/* enable/disable write of lock-bits
 * WARNING: lock-bits can not be reseted by bootloader (as far as I know)
 * Only protection no unprotection, "chip erase" from bootloader only
 * clears the flash but does no real "chip erase" (this is not possible
 * with a bootloader as far as I know)
 * Keep this undefined!
 */
//#define WRITELOCKBITS

/*
 * define the following if the bootloader should not output
 * itself at flash read (will fake an empty boot-section)
 */
#define READ_PROTECT_BOOTLOADER


#define VERSION_HIGH '0'
#define VERSION_LOW  '8'

#define HW_VERSION_HIGH '0'
#define HW_VERSION_LOW  '0'

#define GET_LOCK_BITS           0x0001
#define GET_LOW_FUSE_BITS       0x0000
#define GET_HIGH_FUSE_BITS      0x0003
#define GET_EXTENDED_FUSE_BITS  0x0002


#ifdef UART_DOUBLESPEED
// #define UART_CALC_BAUDRATE(baudRate) (((F_CPU*10UL) / ((baudRate) *8UL) +5)/10 -1)
#define UART_CALC_BAUDRATE(baudRate) ((uint32_t)((F_CPU) + ((uint32_t)baudRate * 4UL)) / ((uint32_t)(baudRate) * 8UL) - 1)
#else
// #define UART_CALC_BAUDRATE(baudRate) (((F_CPU*10UL) / ((baudRate)*16UL) +5)/10 -1)
#define UART_CALC_BAUDRATE(baudRate) ((uint32_t)((F_CPU) + ((uint32_t)baudRate * 8UL)) / ((uint32_t)(baudRate) * 16UL) - 1)
#endif


#include <stdint.h>
#include <avr/io.h>
#include <avr/wdt.h>
#include <avr/boot.h>
#include <avr/pgmspace.h>
#include <avr/eeprom.h>
#include <avr/interrupt.h>
#include <util/delay.h>

#include "chipdef.h"

uint8_t gBuffer[SPM_PAGESIZE];

#if defined(BOOTLOADERHASNOVECTORS)
#warning "This Bootloader does not link interrupt vectors - see makefile"
/* make the linker happy - it wants to see __vector_default */
// void __vector_default(void) { ; }
void __vector_default(void) { ; }
#endif

static void enable_tx(void) {
  UART_CTRL = UART_CTRL_DATA_TX;
  RS485_DE_PORT |= RS485_DE_BIT;
}

static void disable_tx(void) {
  //wait for tx to finish
  while (!(UART_STATUS & (1<<UART_TXCOMPLETE)));
  RS485_DE_PORT &= ~RS485_DE_BIT;
  //wait for ringing to die down a bit before switching to RX mode
  //10 µs is enough, but doesn't hurt to wait longer so long as
  //the RS-485 driver is set up correctly
  _delay_us(100);
  UART_CTRL = UART_CTRL_DATA_RX;
}

static void sendchar(uint8_t data)
{
  //don't enable_tx() here, that is dangerous
	while (!(UART_STATUS & (1<<UART_TXREADY)));
  //clear TXC so we can detect it being set later, by writing a one to it
  UART_STATUS |= (1<<UART_TXCOMPLETE);
	UART_DATA = data;
}

static uint8_t recvchar(void)
{
	while (!(UART_STATUS & (1<<UART_RXREADY)));
	return UART_DATA;
}

static inline void eraseFlash(void)
{
	// erase only main section (bootloader protection)
	uint32_t addr = 0;
	while (APP_END > addr) {
		boot_page_erase(addr);		// Perform page erase
		boot_spm_busy_wait();		// Wait until the memory is erased.
		addr += SPM_PAGESIZE;
    //takes about 2 seconds to erase flash, so reset WDT at each page
    wdt_reset();
	}
	boot_rww_enable();
}

static inline void recvBuffer(pagebuf_t size)
{
	pagebuf_t cnt;
	uint8_t *tmp = gBuffer;

	for (cnt = 0; cnt < sizeof(gBuffer); cnt++) {
		*tmp++ = (cnt < size) ? recvchar() : 0xFF;
	}
}

static inline uint16_t writeFlashPage(uint16_t waddr, pagebuf_t size)
{
	uint32_t pagestart = (uint32_t)waddr<<1;
	uint32_t baddr = pagestart;
	uint16_t data;
	uint8_t *tmp = gBuffer;

	do {
		data = *tmp++;
		data |= *tmp++ << 8;
		boot_page_fill(baddr, data);	// call asm routine.

		baddr += 2;			// Select next word in memory
		size -= 2;			// Reduce number of bytes to write by two
	} while (size);				// Loop until all bytes written

	boot_page_write(pagestart);
	boot_spm_busy_wait();
	boot_rww_enable();		// Re-enable the RWW section

	return baddr>>1;
}

static inline uint16_t writeEEpromPage(uint16_t address, pagebuf_t size)
{
	uint8_t *tmp = gBuffer;

	do {
		eeprom_write_byte( (uint8_t*)address, *tmp++ );
		address++;			// Select next byte
		size--;				// Decreas number of bytes to write
	} while (size);				// Loop until all bytes written

	// eeprom_busy_wait();

	return address;
}

static inline uint16_t readFlashPage(uint16_t waddr, pagebuf_t size)
{
	uint32_t baddr = (uint32_t)waddr<<1;
	uint16_t data;

  enable_tx();
	do {
#ifndef READ_PROTECT_BOOTLOADER
#warning "Bootloader not read-protected"
#if defined(RAMPZ)
		data = pgm_read_word_far(baddr);
#else
		data = pgm_read_word_near(baddr);
#endif
#else
		// don't read bootloader
		if ( baddr < APP_END ) {
#if defined(RAMPZ)
			data = pgm_read_word_far(baddr);
#else
			data = pgm_read_word_near(baddr);
#endif
		}
		else {
			data = 0xFFFF; // fake empty
		}
#endif
		sendchar(data);			// send LSB
		sendchar((data >> 8));		// send MSB
		baddr += 2;			// Select next word in memory
		size -= 2;			// Subtract two bytes from number of bytes to read
	} while (size);				// Repeat until block has been read
  disable_tx();

	return baddr>>1;
}

static inline uint16_t readEEpromPage(uint16_t address, pagebuf_t size)
{
  enable_tx();
	do {
		sendchar( eeprom_read_byte( (uint8_t*)address ) );
		address++;
		size--;				// Decrease number of bytes to read
	} while (size);				// Repeat until block has been read
  disable_tx();

	return address;
}

#if defined(ENABLEREADFUSELOCK)
static uint8_t read_fuse_lock(uint16_t addr)
{
	uint8_t mode = (1<<BLBSET) | (1<<SPMEN);
	uint8_t retval;

	asm volatile
	(
		"movw r30, %3\n\t"		/* Z to addr */ \
		"sts %0, %2\n\t"		/* set mode in SPM_REG */ \
		"lpm\n\t"			/* load fuse/lock value into r0 */ \
		"mov %1,r0\n\t"			/* save return value */ \
		: "=m" (SPM_REG),
		  "=r" (retval)
		: "r" (mode),
		  "r" (addr)
		: "r30", "r31", "r0"
	);
	return retval;
}
#endif

#define send_string(s) send_string_internal(PSTR(s))
static void send_string_internal(PGM_P str) {
  int i = 0;
  enable_tx();
  for (;;) {
    char c = pgm_read_word_far(&str[i]);
    if (c == 0) {
      break;
    }
    sendchar(c);
    i++;
  }
  disable_tx();
}

/* for telling the user that the bootloader started */
static void send_hello(void)
{
  send_string("hi!\r\n");
#if WAIT_VALUE < 300
  send_string("** DO NOT FLY **\r\n");
#endif
}


static void send_boot(void)
{
  send_string("AVRBOOT");
}

#define jump_to_app() asm volatile("jmp 0");

int main(void)
{
	uint16_t address = 0;
	uint8_t device = 0, val;

#ifdef DISABLE_WDT_AT_STARTUP
#ifdef WDT_OFF_SPECIAL
#warning "using target specific watchdog_off"
	bootloader_wdt_off();
#else
	cli();
	wdt_reset();
	wdt_disable();
#endif
#endif
	
#ifdef START_POWERSAVE
	uint8_t OK = 1;
#endif

#ifdef BLPORT
	BLDDR  &= ~(1<<BLPNUM);		// set as Input
	BLPORT |= (1<<BLPNUM);		// Enable pullup
#endif

	// Set baud rate
	UART_BAUD_HIGH = (UART_CALC_BAUDRATE(BAUDRATE)>>8) & 0xFF;
	UART_BAUD_LOW = (UART_CALC_BAUDRATE(BAUDRATE) & 0xFF);

#ifdef UART_DOUBLESPEED
	UART_STATUS = ( 1<<UART_DOUBLE );
#endif

	UART_CTRL = UART_CTRL_DATA_RX;
	UART_CTRL2 = UART_CTRL2_DATA;

  //ensure we're in RX mode
  RS485_DE_DDR |= RS485_DE_BIT;
  RS485_DE_PORT &= ~RS485_DE_BIT;

#if defined(START_POWERSAVE)
	/*
		This is an adoption of the Butterfly Bootloader startup-sequence.
		It may look a little strange but separating the login-loop from
		the main parser-loop gives a lot a possibilities (timeout, sleep-modes
	    etc.).
	*/
	for(;OK;) {
		if ((BLPIN & (1<<BLPNUM))) {
			// jump to main app if pin is not grounded
			BLPORT &= ~(1<<BLPNUM);	// set to default
#ifdef UART_DOUBLESPEED
			UART_STATUS &= ~( 1<<UART_DOUBLE );
#endif
			jump_to_app();		// Jump to application sector

		} else {
			val = recvchar();
			/* ESC */
			if (val == 0x1B) {
				// AVRPROG connection
				// Wait for signon
				while (val != 'S')
					val = recvchar();

				send_boot();			// Report signon
				OK = 0;

			} else {
				send_string("?");
			}
	    }
		// Power-Save code here
	}

#elif defined(START_SIMPLE)

	if ((BLPIN & (1<<BLPNUM))) {
		// jump to main app if pin is not grounded
		BLPORT &= ~(1<<BLPNUM);		// set to default		
#ifdef UART_DOUBLESPEED
		UART_STATUS &= ~( 1<<UART_DOUBLE );
#endif
		jump_to_app();			// Jump to application sector
	}

#elif defined(START_WAIT)

	uint16_t cnt = 0;

  //send_hello();

	while (1) {
		if (UART_STATUS & (1<<UART_RXREADY))
			if (UART_DATA == START_WAIT_UARTCHAR)
				break;

		if (cnt++ >= WAIT_VALUE) {
#ifdef BLPORT
			BLPORT &= ~(1<<BLPNUM);		// set to default
#endif
			jump_to_app();			// Jump to application sector
		}

		_delay_ms(10);
	}
	send_boot();

#elif defined(START_BOOTICE)
#warning "BOOTICE mode - no startup-condition"

#else
#error "Select START_ condition for bootloader in main.c"
#endif

  wdt_enable(EXIT_WDT_TIME);

	for(;;) {
		val = recvchar();
    wdt_reset();
		// Autoincrement?
		if (val == 'a') {
			send_string("Y");			// Autoincrement is quicker

		//write address
		} else if (val == 'A') {
			address = recvchar();		//read address 8 MSB
			address = (address<<8) | recvchar();
      send_string("\r");

		// Buffer load support
		} else if (val == 'b') {
      enable_tx();
			sendchar('Y');					// Report buffer load supported
			sendchar((sizeof(gBuffer) >> 8) & 0xFF);	// Report buffer size in bytes
			sendchar(sizeof(gBuffer) & 0xFF);
      disable_tx();

		// Start buffer load
		} else if (val == 'B') {
			pagebuf_t size;
			size = recvchar() << 8;				// Load high byte of buffersize
			size |= recvchar();				// Load low byte of buffersize
			val = recvchar();				// Load memory type ('E' or 'F')
			recvBuffer(size);

			if (device == DEVTYPE) {
				if (val == 'F') {
					address = writeFlashPage(address, size);
				} else if (val == 'E') {
					address = writeEEpromPage(address, size);
				}
				send_string("\r");
			} else {
        enable_tx();
				sendchar(0);
        disable_tx();
			}

		// Block read
		} else if (val == 'g') {
			pagebuf_t size;
			size = recvchar() << 8;				// Load high byte of buffersize
			size |= recvchar();				// Load low byte of buffersize
			val = recvchar();				// Get memtype

			if (val == 'F') {
				address = readFlashPage(address, size);
			} else if (val == 'E') {
				address = readEEpromPage(address, size);
			}

		// Chip erase
 		} else if (val == 'e') {
			if (device == DEVTYPE) {
				eraseFlash();
			}
			send_string("\r");

		// Exit upgrade
		} else if (val == 'E') {
			wdt_enable(EXIT_WDT_TIME); // Enable Watchdog Timer to give reset
			send_string("\r");

#ifdef WRITELOCKBITS
#warning "Extension 'WriteLockBits' enabled"
		// TODO: does not work reliably
		// write lockbits
		} else if (val == 'l') {
			if (device == DEVTYPE) {
				// write_lock_bits(recvchar());
				boot_lock_bits_set(recvchar());	// boot.h takes care of mask
				boot_spm_busy_wait();
			}
			send_string("\r");
#endif
		// Enter programming mode
		} else if (val == 'P') {
			send_string("\r");

		// Leave programming mode
		} else if (val == 'L') {
			send_string("\r");

		// return programmer type
		} else if (val == 'p') {
			send_string("S");		// always serial programmer

#ifdef ENABLEREADFUSELOCK
#warning "Extension 'ReadFuseLock' enabled"
		// read "low" fuse bits
		} else if (val == 'F') {
      enable_tx();
			sendchar(read_fuse_lock(GET_LOW_FUSE_BITS));
      disable_tx();

		// read lock bits
		} else if (val == 'r') {
      enable_tx();
			sendchar(read_fuse_lock(GET_LOCK_BITS));
      disable_tx();

		// read high fuse bits
		} else if (val == 'N') {
      enable_tx();
			sendchar(read_fuse_lock(GET_HIGH_FUSE_BITS));
      disable_tx();

		// read extended fuse bits
		} else if (val == 'Q') {
      enable_tx();
			sendchar(read_fuse_lock(GET_EXTENDED_FUSE_BITS));
      disable_tx();
#endif

		// Return device type
		} else if (val == 't') {
      enable_tx();
			sendchar(DEVTYPE);
			sendchar(0);
      disable_tx();

		// clear and set LED ignored
		} else if ((val == 'x') || (val == 'y')) {
			recvchar();
			send_string("\r");

		// set device
		} else if (val == 'T') {
			device = recvchar();
      send_string("\r");

		// Return software identifier
		} else if (val == 'S') {
			send_boot();

		// Return Software Version
		} else if (val == 'V') {
      enable_tx();
			sendchar(VERSION_HIGH);
			sendchar(VERSION_LOW);
      disable_tx();

		// Return Hardware Version
		} else if (val == 'v') {
      enable_tx();
			sendchar(HW_VERSION_HIGH);
			sendchar(HW_VERSION_LOW);
      disable_tx();

		// Return Signature Bytes (it seems that 
		// AVRProg expects the "Atmel-byte" 0x1E last
		// but shows it first in the dialog-window)
		} else if (val == 's') {
      enable_tx();
			sendchar(SIG_BYTE3);
			sendchar(SIG_BYTE2);
			sendchar(SIG_BYTE1);
      disable_tx();

		/* ESC */
		} else if(val != 0x1b) {
      send_string("?");
		}
	}
	return 0;
}
