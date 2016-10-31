#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdint.h>
#include <stdio.h>

#define FCPU  7372800LL
#define BAUD  115200
//#define UBRR  (((FCPU+8LL*BAUD)/(16LL*BAUD))-1) //lo-speed (U2X=0)
#define UBRR  (((FCPU+4LL*BAUD)/(8LL*BAUD))-1) //hi-speed (U2X=1)
#if UBRR > 65535
#error UBRR too high
#endif

static void setup_adc() {
  //use Timer2 output for f_ADC, run it as fast as possible (4 MHz)
  //CTC mode (TOP=OCR2), toggle OC2 on match, no prescaling
  //on the real thing we'll use the main oscillator (8 MHz)
  TCCR2 = (0<<FOC2) | (1<<WGM21) | (0<<WGM20) | (0<<COM21) | (1<<COM20) | (1<<CS20);
  OCR2 = 0; //period = 1
  DDRB |= (1<<7);

  //CS pins = PD6..7
  PORTD |= (1<<7) | (1<<6);
  DDRD |= (1<<7) | (1<<6);

  //enable /DRDYx interrupts on PE6..7

  //setup SPI
  //set MOSI and SCK as output, obviously
  //but also set /SS as output or a low input will put us in SPI slave mode
  PORTB |= (1<<0);
  DDRB |= (1<<0) | (1<<1) | (1<<2);

  /* Enable SPI, Master, set clock rate fck/16 */
  SPCR = (1<<SPE)|(1<<MSTR)|(1<<SPR0);
  
}

static void usart0_tx(unsigned char data) {
 while (!(UCSR0A & (1<<UDRE0)));
 UDR0 = data;
}

static void usart1_tx(unsigned char data) {
 while (!(UCSR1A & (1<<UDRE1)));
 UDR1 = data;
}

//TX on both USARTs for now
static void usart_tx_str(char *str) {
  while (*str) {
    usart0_tx(*str);
    usart1_tx(*str);
    str++;
  }
}

/*static void usart1_tx_str(char *str) {
  while (*str) {
    usart1_tx(*str);
    str++;
  }
}*/

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
  
  DDRD |= (1<<PD3);
}

static void adc_cs_off() {
  //de-assert /CS
  PORTD |= (1<<6) | (1<<7);
}

static void adc_cs_on(char id) {
  adc_cs_off();

  //assert relevant /CS pin
  if (id == 0) {
    PORTD &= ~(1 << PD6);
  } else {
    PORTD &= ~(1 << PD7);
  }
}

/**
 * Communicate with ADC.
 * id: ADC index (0 = a, 1 = b)
 * in: device word in
 * return: device word out
 */
static uint32_t adc_comm(char id, uint32_t in) {
  uint32_t out = 0;
  uint8_t x;
  char tmp[64];
  
  //assert relevant /CS pin
  //PORTD = (PORTD | (1<<6) | (1<<7)) & ~(1<<(id+6));

  for (x = 0; x < 32; x += 8) {
    SPDR = (in >> (24-x));
    while(!(SPSR & (1<<SPIF))) {
    }
    out |= ((uint32_t)SPDR << (24-x));
  }

  //de-assert /CS
  //PORTD = (PORTD | (1<<6) | (1<<7));

  snprintf(tmp, 64, "\r\nADC %c: %08lX -> %08lX", id ? 'b' : 'a', in, out);
  usart_tx_str(tmp);

  return out;
}

static void adc_null(char id) {
  uint32_t ret1, ret2;
  char tmp[64];

  adc_cs_on(id);
  
  ret1 = adc_comm(id, 0);
  ret2 = adc_comm(id, 0);

  snprintf(tmp, 64, "\r\nNULL: %08lX %08lX", ret1, ret2);
  usart_tx_str(tmp);

  adc_cs_off();
}

//ISR for /DRDYa
ISR(INT6_vect) {
}

//ISR for /DRDYb
ISR(INT7_vect) {
}

int main(void)
{
  unsigned int x;

  setup_adc();
  setup_uart0();
  setup_uart1();
  
  for (;;) {
    usart_tx_str("\033[8;0HHello, world!");
    adc_null(0);
    adc_null(1);
  }
  return 0;
}


