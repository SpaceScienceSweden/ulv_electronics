;make it so in/out with name addresses work as you'd expect (SREG = 0x3F, not 0x5F)
;see sfr_defs.h
#define __SFR_OFFSET 0
#include <avr/io.h>

  .section .text

#define USE_PF2

  .global USART1_UDRE_vect
  ;52 cy with USE_PF2
  ;42 cy sans USE_PF2
USART1_UDRE_vect:
  push	r24
  in	r24, SREG
  push	r24
  push	r30
  push	r31
#ifdef USE_PF2
  ;PORTF &= ~(1 << 2);
  ;PORTF is in the extended I/O space, so no cbi available
  lds	r24, PORTF
  andi	r24, 0xFB
  sts	PORTF, r24
#endif
  ;if (*usart1_str) {
  .extern usart1_str
  lds	r30, usart1_str+0
  lds	r31, usart1_str+1
  ld	r24, Z+
  cpi r24, 0
  breq USART1_UDRE_done

  ;UDR1 = *usart1_str++;
  sts	usart1_str+1, r31
  sts	usart1_str+0, r30
  sts	UDR1, r24

#ifdef USE_PF2
  ;PORTF |= 1 << 2;
  lds	r24, PORTF
  ori	r24, 0x04
  sts	PORTF, r24
#endif

  pop	r31
  pop	r30
  pop	r24
  out	SREG, r24
  pop	r24
  reti

USART1_UDRE_done:
  ;disable UDRE1 interrupt
  ;UCSR1B &= ~(1<<UDRIE1);
  lds	r24, UCSR1B
  andi	r24, 0xDF
  sts	UCSR1B, r24

#ifdef USE_PF2
  ;PORTF |= 1 << 2;
  lds	r24, PORTF
  ori	r24, 0x04
  sts	PORTF, r24
#endif

  pop	r31
  pop	r30
  pop	r24
  out	SREG, r24
  pop	r24
  reti
