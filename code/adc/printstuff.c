#include "main.h"

//stuff to make printf() work
//source: http://efundies.com/avr-and-printf/
//we could probable make scanf() work too
int usart_putchar_printf(char var, FILE *stream) {
  while (!(UCSR1A & (1<<UDRE1)));
  UDR1 = var;
  return 0;
}
FILE mystdout = FDEV_SETUP_STREAM(usart_putchar_printf, NULL, _FDEV_SETUP_WRITE);

volatile char *usart1_str;
char usart1_buf[256];

void bprintf_P(const char *format, ...) {
  int n;
  va_list args;

  if (!(SREG & (1<<7))) {
    printf_P(PSTR("Tried to bprintf_P() without sei()..\r\n"));
    for(;;);
  }

  //wait for last bprintf_P to finish
  while (UCSR1B & (1<<UDRIE1));

  //va_start() extracts the stack position of the ..., so no need for a va_start_P()
  va_start(args, format);
  n = vsnprintf_P(usart1_buf, sizeof(usart1_buf), format, args);
  va_end(args);

  if (n >= sizeof(usart1_buf)-1) {
    strcpy_P(usart1_buf, PSTR("bprintf_P: vsnprintf_P too long!\r\n"));
  }

  //might happen that the resulting string is empty
  if (usart1_buf[0]) {
    //wait for buffer to be available
    while (!(UCSR1A & (1<<UDRE1)));

    //point to next character
    usart1_str = &usart1_buf[1];

    //start the transfer
    UDR1 = usart1_buf[0];

    //enable USART1 interrupt
    UCSR1B |= (1<<UDRIE1);
  }
}

//avr-libc doesn't seem able to handle 64-bit integers
/*static void print_int64_t(int64_t in) {
  if (in == (1LL << 63)) {
    printf_P(PSTR("-9223372036854775808"));
  } else {
    uint64_t tens = 1000000000000000000ULL;
    uint64_t u;
    uint8_t doit = 0;

    if (in < 0) {
      u = -in;
      printf_P(PSTR("-"));
    } else {
      u = in;
    }

    for (; tens; tens /= 10) {
      int p = 0;
      if (u >= tens) {
        doit = 1;
        p = u/tens;
        u = u%tens;
      }
      if (doit) {
        printf_P(PSTR("%1i"), p);
      }
    }
  }
}*/
