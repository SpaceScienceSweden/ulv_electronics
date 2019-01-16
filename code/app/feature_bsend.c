#if FEATURE_BSEND == 1
#define MAX_BSENDS 9
struct {
  //using two pointers is slightly faster than offset + size
  const uint8_t *ptr, *end;
  //uint16_t len;
} bsends[MAX_BSENDS];
volatile uint8_t cur_bsend = 0;
#endif

#if FEATURE_BSEND == 1
ISR(USART1_UDRE_vect) {
  for (; cur_bsend < MAX_BSENDS; cur_bsend++) {
    if (bsends[cur_bsend].ptr < bsends[cur_bsend].end) {
      //send data, clear TXC1
      UART_DATA = *bsends[cur_bsend].ptr++;
      UART_STATUS = (1<<UART_TXCOMPLETE) | UART_STATUS_BASE;
      return;
    }
  }

  if (cur_bsend >= MAX_BSENDS) {
    //disable USART1 interrupt
    UCSR1B &= ~(1<<UDRIE1);
  }
}
#else //FEATURE_BSEND_SIMPLE
/* The asm should look something like this:
00000e88 <__vector_31>:
2     e8a:	0f 92       	push	r24
1     e8c:	0f b6       	in	r24, 0x3f	; 63
2     e8e:	0f 92       	push	r24
2     e98:	9f 93       	push	r25
2     e9a:	ef 93       	push	r30
2     e9c:	ff 93       	push	r31
11

2     e9e:	80 91 33 02 	lds	r24, 0x0233	; 0x800233 <bsend_ofs>
1     ea2:	e8 2f       	mov	r30, r24
1     ea4:	f0 e0       	ldi	r31, 0x01
2     eaa:	90 81       	ld	r25, Z
2     eac:	90 93 9c 00 	sts	0x009C, r25	; 0x80009c <__TEXT_REGION_LENGTH__+0x7e009c>
1     eb0:	e2 e4       	ldi	r30, 0x42	; 66
2     eb2:	e0 93 9b 00 	sts	0x009B, r30	; 0x80009b <__TEXT_REGION_LENGTH__+0x7e009b>
1     eb6:	8f 5f       	subi	r24, 0xFF	; 255
1     eb8:	69 f0       	breq	.+26     	; 0xed4 <__vector_31+0x4c>
2     eba:	80 93 33 02 	sts	0x0233, r24	; 0x800233 <bsend_ofs>
15

2     ebe:	ff 91       	pop	r31
2     ec0:	ef 91       	pop	r30
2     ec2:	9f 91       	pop	r25
2     ec4:	8f 91       	pop	r24
1     ecc:	0f be       	out	0x3f, r24	; 63
2     ece:	0f 90       	pop	r24
11
4     ed2:	18 95       	reti ;PC == 16 bits

le grand totale: 11+15+11+4 = 41
*/
//aligning this allows speeding the asm up
uint8_t __attribute__((section(".bsend"))) bsend_buf[256];
volatile uint8_t bsend_ofs;
ISR(USART1_UDRE_vect) {
  uint8_t ofs = bsend_ofs;
  UART_DATA = bsend_buf[ofs];
  UART_STATUS = (1<<UART_TXCOMPLETE) | UART_STATUS_BASE;

  ofs++;
  if (ofs == 0) {
    //disable USART1 interrupt
    //we could put some code that loads in another 256 bytes to send here
    UCSR1B &= ~(1<<UDRIE1);
  } else {
    bsend_ofs = ofs;
  }
}
#endif

static inline uint8_t bsend_busy(void) {
  return (UCSR1B & (1<<UDRIE1)) || !(UART_STATUS & (1<<UART_TXREADY));
}

static void bwait(void) {
  //wait for last bsend to finish
  while (bsend_busy()) {
    wdt_reset();
  }
}

//starts prepared background send
static void bsend_start(void) {
  if (!(SREG & (1<<7))) {
    start_section("ERROR");
    printf_P(PSTR("Can't bsend() without sei()..\r\n"));
    for(;;);
  }

  bwait();

#if FEATURE_BSEND == 1
  for (cur_bsend = 0; cur_bsend < MAX_BSENDS; cur_bsend++) {
    if (bsends[cur_bsend].ptr < bsends[cur_bsend].end) {
      sendchar(*bsends[cur_bsend].ptr++);
      //enable USART1 interrupt
      UCSR1B |= (1<<UDRIE1);
      break;
    }
  }
#else //FEATURE_BSEND_SIMPLE
  sendchar(TODO);
  //enable USART1 interrupt
  UCSR1B |= (1<<UDRIE1);
#endif
}

