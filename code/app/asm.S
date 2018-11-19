;make it so in/out with name addresses work as you'd expect (SREG = 0x3F, not 0x5F)
;see sfr_defs.h
#define __SFR_OFFSET 0
#include <avr/io.h>

  .section .text

  ;delays some number of cycles
  .macro  delay cy
  .if     \cy
  nop
  delay   "(\cy-1)"
  .endif
  .endm

;  search & replace regex ^........:............. with ""
  .global capture
capture:
	push	r10
	push	r11
	push	r12
	push	r13
	push	r14
	push	r15
	push	r16
	push	r17
	push	r28
	push	r29
	movw	r28, r22
	cli

  ;compute (7<<5) & ~(1<<(PF5+id))
	ldi	r18, 0x05	; 5
	add	r18, r24
	ldi	r24, 0x01	; 1
	ldi	r25, 0x00	; 0
	rjmp	.+2      	; 0x2df6 <capture+0x24>
	add	r24, r24
	dec	r18
	brpl	.-6      	; 0x2df4 <capture+0x22>
	com	r24
	andi	r24, 0xE0	; 224

	ldi	r25, 0x05	; discard_samples
	ldi	r18, 0x00	; timer1_ovfs
	ldi	r22, 0x04	; for resetting TOV1
	ldi	r19, 0xE0	; for adc_deselect

  ;while (PINE & (1<<PE7));
discard_loop:
	sbic	0x01, 7	; 1
	rjmp	discard_loop

  ;adc_select(id);
	sts	0x0062, r24	; 0x800062 <__TEXT_REGION_LENGTH__+0x7e0062>

  ;in here we always do SPDR=0 then delay 15 cycles in various ways,
  ;such that the next out happens on cycle 16, giving maximum SPI speed
	out	0x0f, r1  ; 1 cy

  ;if (TIFR & (1<<TOV1)) { timer1_ovfs++; TIFR = (1<<TOV1); }
	in	r0, 0x36	; 1 cy
	sbrs	r0, 2   ; 1 cy or 2 cy
	rjmp	.+4     ; 2 cy
	subi	r18, 0xFF	;       1 cy
	out	0x36, r22	; 1 cy
	              ; total: 5 or 5 cycles
  delay 10
	out	0x0f, r1  ; 1 cy
	delay 15
	out	0x0f, r1	; 1 cy
	delay 15
	out	0x0f, r1	; 1 cy
	delay 15
	out	0x0f, r1	; 1 cy
	delay 15
	out	0x0f, r1	; 1 cy
	delay 15
	out	0x0f, r1	; 1 cy
	delay 15
	out	0x0f, r1	; 1 cy
	delay 15
	out	0x0f, r1	; 1 cy
	delay 15
	out	0x0f, r1	; 1 cy
	delay 13
	subi	r25, 0x01	; 1 cy
  ;adc_deselect();
	sts	0x0062, r19	; 2 cy, no flags
	breq  exit_discard_loop
	rjmp	discard_loop
exit_discard_loop:

	ldi	r26, 0x00	; stat1
	ldi	r30, lo8(sample_data)	; Z = sample_data
	ldi	r31, hi8(sample_data)

capture_loop:
	sbic	0x01, 7	; 1
	rjmp	capture_loop

  ;adc_select(id);
	sts	0x0062, r24	; 0x800062 <__TEXT_REGION_LENGTH__+0x7e0062>

  ;SPDR = 0
	out	0x0f, r1	; 1 cy

  ;if (TIFR & (1<<TOV1)) { timer1_ovfs++; TIFR = (1<<TOV1); }
	in	r0, 0x36	; 1 cy
	sbrs	r0, 2   ; 1 cy or 2 cy
	rjmp	.+4     ; 2 cy
	subi	r18, 0xFF	;       1 cy
	out	0x36, r22	; 1 cy
	              ; 5 cy
  delay           10
	out	0x0f, r1	; 1 cy

	delay           15
	out	0x0f, r1	; 1 cy

	in	r10, 0x0f	; 1 cy
	or	r26, r10  ; 1 cy
	delay           13
	out	0x0f, r1	; 1 cy

	in	r11, 0x0f	; 1 cy
	std	Z+1, r11	; 3 cy because XMEM
	delay           11
	out	0x0f, r1	; 1 cy

	in	r12, 0x0f	; 1 cy
	st	Z, r12    ; 3 cy
	delay           11
	out	0x0f, r1	; 1 cy

	in	r13, 0x0f	; 1 cy
	std	Z+3, r13	; 3 cy
	delay           11
	out	0x0f, r1	; 1 cy

	in	r14, 0x0f	; 1 cy
	std	Z+2, r14	; 3 cy
	delay           11
	out	0x0f, r1	; 1 cy

	in	r15, 0x0f	; 1 cy
	std	Z+5, r15	; 3 cy
	delay           11
	out	0x0f, r1	; 1 cy

	in	r23, 0x0f	; 1 cy
	std	Z+4, r23	; 3 cy
	delay           11
	out	0x0f, r1	; 1 cy

	in	r27, 0x0f	; 1 cy
	std	Z+7, r27	; 3 cy
	delay           10
  ;adc_deselect();
	sts	0x0062, r19	; 2 cy, no flags

	in	r25, 0x0f	; 15
	std	Z+6, r25	; 3 cy
	adiw	r30, 0x08	; Z += 8

	subi	r20, 0x01	; 1 cy
	sbc	r21, r1     ; 1 cy
	breq	exit_capture_loop ; 1 cy or 2 cy
	rjmp	capture_loop  ; 2 cy
exit_capture_loop:

	lds	r10, timer1_base+0
	lds	r11, timer1_base+1
	lds	r12, timer1_base+2
	lds	r13, timer1_base+3
	lds	r14, timer1_base+4
	lds	r15, timer1_base+5
	lds	r31, timer1_base+6
	lds	r17, timer1_base+7
	ldi	r19, 0x00	; 0
	ldi	r20, 0x00	; 0
	ldi	r21, 0x00	; 0
	ldi	r22, 0x00	; 0
	ldi	r23, 0x00	; 0
	ldi	r24, 0x00	; 0
	ldi	r25, 0x00	; 0
	ldi	r16, 0x0D	; 13
	call	__ashldi3
	mov	r16, r31
	call	__adddi3
	sts	timer1_base+0, r18
	sts	timer1_base+1, r19
	sts	timer1_base+2, r20
	sts	timer1_base+3, r21
	sts	timer1_base+4, r22
	sts	timer1_base+5, r23
	sts	timer1_base+6, r24
	sts	timer1_base+7, r25
	sei
	st	Y, r26  ; *stat1_out = stat1
	pop	r29
	pop	r28
	pop	r17
	pop	r16
	pop	r15
	pop	r14
	pop	r13
	pop	r12
	pop	r11
	pop	r10
	ret

