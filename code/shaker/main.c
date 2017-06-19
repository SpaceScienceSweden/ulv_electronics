#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <util/delay.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>

#define BAUD      115200

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
  UDR1 = var;
  while (!(UCSR0A & (1<<UDRE0)));
  UDR0 = var;
  return 0;
}
FILE mystdout = FDEV_SETUP_STREAM(usart_putchar_printf, NULL, _FDEV_SETUP_WRITE);

char somedata[]="hello\n";
char hello[4000];

static void setup_xmem() {
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

static void setup_uart0() {
  //double speed for higher UBRR resolution
  UCSR0A |= (1<<U2X);
  //enable RX and TX
  UCSR0B = (1<<RXEN) | (1<<TXEN);
  //8 data bits, 2 stop bits
  UCSR0C = (1<<USBS) | (3<<UCSZ00);
  UBRR0L = UBRR;
  UBRR0H = UBRR / 256;

  DDRE |= (1<<PE1);
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


void setup_adc_pins() {
  //use Timer2 output for f_ADC, run it as fast as possible (4 MHz)
  //CTC mode (TOP=OCR2), toggle OC2 on match, no prescaling
  //on the real thing we'll use the main oscillator (8 MHz)
  TCCR2 = (0<<FOC2) | (1<<WGM21) | (0<<WGM20) | (0<<COM21) | (1<<COM20) | (1<<CS20);
  OCR2 = 0; //period = 1
  DDRB |= (1<<7);

  //CS pins = PD6..7
  PORTD |= (1<<7) | (1<<6);
  DDRD |= (1<<7) | (1<<6);

  //falling edge..
  EICRB |= (2<<ISC60) | (2<<ISC70);

  //setup SPI
  //set MOSI and SCK as output, obviously
  //but also set /SS as output or a low input will put us in SPI slave mode
  //incidentally this also asserts EN_APWR
  PORTB |= (1<<0);
  DDRB |= (1<<0) | (1<<1) | (1<<2);

  //enable spi, run at fck/2 (3.7 Mbps)
  SPCR = (1<<SPE) | (1<<MSTR);
  SPSR |= (1<<SPI2X); //double speed (vroom!)
  //CPOL=0, CPHA=1
  SPCR |= 1<<CPHA;
}


int main(void)
{
  setup_xmem();
  setup_uart0();
  setup_uart1();
  //setup stdout for printf()
  stdout = &mystdout;

  PORTD |= (1<<5);
  for (unsigned i = 0;; i++) {
    char *str = malloc(57000);
    snprintf_P(str, 57000, PSTR("%u B SRAM free %u\r"), freeRam(), i);
    puts(str);
    free(str);

    //printf_P(PSTR("%u B SRAM free %u\r\n"), freeRam(), i);
    _delay_ms(10);
  }
  PORTD &= ~(1<<5);


  return 0;
}
