  //put pins in known state
  //input + pull-up unless otherwise noted
  DDRA = 0b00000000;  PORTA = 0b11111111; // XMEM AD0..7
  DDRB = 0b11110001;  PORTB = 0b11111110; // EN_APWR = 0 (off), /SD_CS = 1 (off), PWM0..2 = 1 (off)
  DDRC = 0b00000000;  PORTC = 0b11111111; // XMEM A8..15
  DDRD = 0b00100000;  PORTD = 0b11011111; // RS485_DE = 0
  DDRE = 0b00011100;  PORTE = 0b11011111; // /CS_VGND0..2 = 1
  DDRF = 0b11100000;  PORTF = 0b11100000; // /CS_ADC0..2 = 1, no pull-ups on ADC0..4
  DDRG = 0b00001111;  PORTG = 0b11111011; // ALE = 0, /EN_XMEM = 1, /RD = 1, /WR = 1
