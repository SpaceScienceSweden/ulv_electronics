//very minimal application
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <avr/wdt.h>
#include <util/delay.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

//bootloader address in bytes
#define BOOTLOADER_ADDRESS (0x20000 - 2*BOOTSIZE)

//sanity check makefile stuff
//512 -> 0x1FC00
//1024 -> 0x1F800
#if BOOTLOADER_ADDRESS != 0x1F800
#error BOOTLOADER_ADDRESS not what we expected
#endif

//#define UBRR  (((F_CPU+8LL*BAUD)/(16LL*BAUD))-1) //lo-speed (U2X=0)
#define UBRR  (((F_CPU+4LL*BAUD)/(8LL*BAUD))-1) //hi-speed (U2X=1)
#if UBRR > 65535
#error UBRR too high
#endif

//stuff to make printf() work
//source: http://efundies.com/avr-and-printf/
//we could probable make scanf() work too
int usart_putchar_printf(char var, FILE *stream) {
  while (!(UCSR1A & (1<<UDRE1)));
  //clear TXC so we can detect it being set later
  UCSR1A &= ~(1<<TXC1);
  UDR1 = var;
  return 0;
}
FILE mystdout = FDEV_SETUP_STREAM(usart_putchar_printf, NULL, _FDEV_SETUP_WRITE);

static void enable_tx() {
  PORTD |= (1<<5);
}

static void disable_tx() {
  //wait for tx to finish
  while (!(UCSR1A & (1<<TXC1)));
  PORTD &= ~(1<<5);
}

char somedata[]="hello\n";
char hello[4000];

static void setup_xmem() {
  //assert /EN_XMEM (PG3)
  DDRG |= (1<<3);
  PORTG &= ~(1<<3);

  //enable XMEM, one single sector (0x1100 - 0xFFFF), no wait states
  MCUCR = (1<<SRE);
  XMCRA = 0;
  //no bus keeper, full address space
  XMCRB = 0;

  //clear all of it (.bss and heap)
  uint8_t *ptr = (uint8_t*)0x1100;
  while (ptr != 0x0000) {
    *ptr++ = 0;
  }
}

static void setup_uart1() {
  //double speed for higher UBRR resolution
  UCSR1A |= (1<<U2X);
  //enable RX and TX
  UCSR1B = (1<<RXEN) | (1<<TXEN);
  //8 data bits, 2 stop bits
  UCSR1C = (1<<USBS) | (3<<UCSZ10);
  UBRR1L = UBRR;
  UBRR1H = UBRR / 256;

  //TX and DE
  DDRD |= (1<<PD3) | (1<<PD5);
}

static unsigned freeRam () {
  extern int __heap_start, *__brkval;
  //tested, verified to be correct down to the single byte
  return 0xffff - (__brkval == 0 ? (int) &__heap_start : (int) __brkval);
}

int main(void)
{
  wdt_enable(WDTO_15MS);
  for(;;);
  
  setup_xmem();
  setup_uart1();
  //setup stdout for printf()
  stdout = &mystdout;

  enable_tx();
  printf_P(PSTR("app\r\n"));
  disable_tx();
  
  //asm volatile("jmp 1F800h");

  _delay_ms(1000);

  //enable_tx();
  //printf_P(PSTR("boot\r\n"));
  //disable_tx();

  //put a jmp 1F00 or whatever here
  for (;;);

  return 0;
}
