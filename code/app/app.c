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
#include "../eeprom.h"

/* RS-485 needs a DE pin */
#define RS485_DE_PORT PORTD
#define RS485_DE_DDR  DDRD
#define RS485_DE_BIT  (1<<5)

#define START_WAIT_UARTCHAR 'S'

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

#define UART_BAUD_HIGH  UBRR1H
#define UART_BAUD_LOW  UBRR1L
#define UART_STATUS  UCSR1A
#define UART_TXREADY  UDRE1
#define UART_TXCOMPLETE  TXC1
#define UART_RXREADY  RXC1
#define UART_DOUBLE  U2X1
#define UART_CTRL  UCSR1B
#define UART_CTRL_DATA_TX (1<<TXEN1)
#define UART_CTRL_DATA_RX (1<<RXEN1)
#define UART_CTRL2  UCSR1C
#define UART_CTRL2_DATA  ((1<<UCSZ11) | (1<<UCSZ10))
#define UART_DATA  UDR1

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
  _delay_us(4*1000000 / BAUD);
  //_delay_us(100);
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

//can't get scanf() to work, so read lines and run sscanf() on them
//purposefully hangs if the user inputs too much data
//returns length of the line, excluding terminating NUL
char line[256];
static int recvline(void) {
  int ofs = 0;

  for (;;) {
    char c = recvchar();

    if (c == '\r' || c == '\n') {
      //minicom sends CR
      //linux sends LF
      //windows users will have to set their terminal up to send either one
      line[ofs] = 0;
      return ofs;
    } else {
      if (ofs == sizeof(line)-1) {
        line[ofs] = 0;
        enable_tx();
        printf_P(PSTR("Buffer overflow in recvline()\r\n"));
        disable_tx();
        for (;;);
      }
      line[ofs++] = c;
    }
  }
}

//stuff to make printf() work
//source: http://efundies.com/avr-and-printf/
//we could probable make scanf() work too
int usart_putchar_printf(char var, FILE *stream) {
  sendchar(var);
  return 0;
}
FILE mystdout = FDEV_SETUP_STREAM(usart_putchar_printf, NULL, _FDEV_SETUP_WRITE);

//called before main()
__attribute__ ((naked)) __attribute__ ((section (".init3"))) void setup_xmem (void) {
  //assert /EN_XMEM (PG3)
  DDRG |= (1<<3);
  PORTG &= ~(1<<3);

  //enable XMEM, one single sector (0x1100 - 0xFFFF), no wait states
  MCUCR = (1<<SRE);
  XMCRA = 0;
  //no bus keeper, full address space
  XMCRB = 0;

  //clear all of it (.bss and heap)
  memset((void*)0x1100, 0, 0x10000 - 0x1100);
}

static void setup_uart1() {
  //double speed for higher UBRR resolution
  UART_STATUS = ( 1<<UART_DOUBLE );
  //enable RX
  UART_CTRL = UART_CTRL_DATA_RX;
  UART_CTRL2 = UART_CTRL2_DATA;
  UBRR1L = UBRR;
  UBRR1H = UBRR / 256;

  //TX and DE
  DDRD |= (1<<PD3);
  //ensure we're in RX mode
  RS485_DE_DDR |= RS485_DE_BIT;
  RS485_DE_PORT &= ~RS485_DE_BIT;
}

static unsigned freeRam () {
  extern int __heap_start, *__brkval;
  //tested, verified to be correct down to the single byte
  return 0xffff - (__brkval == 0 ? (int) &__heap_start : (int) __brkval);
}

uint8_t bsend_buf[16384];
//using two pointers is slightly faster than offset + size
uint8_t *bsend_ptr;
uint8_t *bsend_end;

ISR(USART1_UDRE_vect) {
  //send data, clear TXC1
  UART_DATA = *bsend_ptr++;
  UART_STATUS |= (1<<UART_TXCOMPLETE);

  if (bsend_ptr == bsend_end) {
    //disable USART1 interrupt
    UCSR1B &= ~(1<<UDRIE1);
  }
}

static void bwait() {
  //wait for last bsend to finish
  while (UCSR1B & (1<<UDRIE1));
}


//send PSTR in background
static void bsend_P(const char *str) {
  if (!(SREG & (1<<7))) {
    printf_P(PSTR("Can't bsend() without sei()..\r\n"));
    for(;;);
  }

  size_t len = strlen_P(str);

  if (len == 0) {    return;
  }

  bwait();
  memcpy_P(bsend_buf, str, len);
  bsend_ptr = &bsend_buf[1];
  bsend_end = &bsend_buf[len];

  sendchar(bsend_buf[0]);

  if (len > 1) {
    //enable USART1 interrupt
    UCSR1B |= (1<<UDRIE1);
  }
}

int main(void)
{
  wdt_enable(WDTO_250MS);
  
  setup_uart1();
  //setup stdout for printf()
  stdout = &mystdout;

  //enable interrupts
  sei();

  enable_tx();
  bsend_P(PSTR("\r\nHello, Earth!\r\n"));
  bwait();
  disable_tx();

  for (;;) {
    //take a peek at the USART
    //commands are single bytes
    if (UART_STATUS & (1<<UART_RXREADY)) {
      char c = recvchar();
      if (c == START_WAIT_UARTCHAR) {
        //go to bootloader
        //stupid and simple, therefore the best way:
        wdt_enable(WDTO_15MS);
        for (;;);
      } else if (c == 't') {
        //measure and send temperatures
      } else if (c == 'm' || c == 'M') {
        //get/set motor speeds
        if (c == 'M') {
          //set motor speeds
          int pwm0, pwm1, pwm2;
          int len = recvline();

          int n = sscanf(line, "%i %i %i", &pwm0, &pwm1, &pwm2);
          if (n == 3) {
            OCR1A = pwm0;
            OCR1B = pwm1;
            OCR1C = pwm2;
          } else if (n == 2) {
            //set some specific motor
            //pwm0 = motor index
            //pwm1 = value
            if (pwm0 == 0) {
              OCR1A = pwm1;
            } else if (pwm0 == 1) {
              OCR1B = pwm1;
            } else if (pwm0 == 2) {
              OCR1C = pwm1;
            } else {
              enable_tx();
              printf_P(PSTR("bad motor ID: %i\r\n"), pwm0);
              disable_tx();
            }
          } else {
            enable_tx();
            printf_P(PSTR("sscanf: n=%i\r\n"), n);
            disable_tx();
          }
        }

        //report motor speeds
        int pwm0 = OCR1A;
        int pwm1 = OCR1B;
        int pwm2 = OCR1C;
        enable_tx();
        printf_P(PSTR("m %i %i %i\r\n"), pwm0, pwm1, pwm2);
        disable_tx();
      } else if (c == '?') {
        //print help
        enable_tx();
        printf_P(PSTR(
        "\r\n"
        "Commands:\r\n"
        "t - measure temperature\r\n"
        "m - report motor speeds\r\n"
        "M - set motor speeds\r\n"
        ));
        disable_tx();
      }
    }
    wdt_reset();
  }

  return 0;
}
