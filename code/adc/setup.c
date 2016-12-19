#include "main.h"

static void cls() {
  //clear screen. maybe there's a better way?
  int y;
  for (y = 0; y < 100; y++) {
    printf_P(PSTR("\033[%i;0H"), y);
    printf_P(PSTR("                                                                      "));
  }
}

static void setup_sintab() {
  int x;
  for (x = 0; x < 256; x++) {
    //this approximation minimizes harmonic distortion when limited to 8 bits
    //see optimize_sintab.m
    sintab[x] = 124.72 * sin(2*M_PI*x/256);
  }
}

void disable_tachs() {
  EIMSK &= ~((1<<4) | (1<<5));
  
  //clear associated interrupt flags
  EIFR |= (1<<4) | (1<<5);
}

//sets up tachometer interrupts (INT4, INT5)
void setup_tach(uint8_t id) {
  //enable INT4 and INT5
  EIMSK |= (1<<(4+id));
  //rising edge
  EICRB |= (3<<ISC40) | (3<<ISC50);
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
  
  DDRD |= (1<<PD3);
}

void disable_timer3() {
  ETIMSK &= ((1<<TOIE3) | (1<<OCIE3A));
}

void setup_timer3() {
  //normal port operation, normal counter mode
  TCCR3A = 0;
  //no noise canceller, no input capture, normal mode, prescaler=1
  TCCR3B = 1;

  //trigger TIMER3_COMPA_vect in the middle of the range
  OCR3A = 0x8000;

  //pre-emptively clear TOV1
  TCNT3 = 0;
  ETIFR |= ~(1<<TOV3);

  //enable Timer3 overflow and COMPA match interrupts
  ETIMSK |= (1<<TOIE3) | (1<<OCIE3A);
}

static void setup_motor_pwm() {
  //PB5 = OC1A, PB5 = OC1B. inverted drive signals
  //pwm frequency range is 500 Hz .. 20 kHz
  //WGM=1 -> TOP=0xFF -> (7372800/256/2) = 14400 Hz (8-bit phase-correct PWM)
  uint8_t wgm = 1;
  TCCR1A = (3<<COM1A0) | (3<<COM1B0) | ((wgm&3) << WGM10);
  //enable clock, no prescaler
  TCCR1B = (((wgm>>2)&3) << WGM12) | (1<<CS10);
  TCCR1C = 0;

  //90% duty
  OCR1A = 128;

  //enable outputs
  DDRB |= (1<<5) | (1<<6);
}

//http://stackoverflow.com/questions/960389/how-can-i-visualise-the-memory-sram-usage-of-an-avr-program
static int freeRam () {
  extern int __heap_start, *__brkval; 
  int v; 
  return (int) &v - (__brkval == 0 ? (int) &__heap_start : (int) __brkval); 
}

void setup() {
  //setup stdout for printf()
  stdout = &mystdout;

  setup_motor_pwm();

  setup_uart0();
  setup_uart1();
  disable_tachs();

  if (1) {
    //put RS-485 bus in TX mode (not yet connected)
    //this could also be done in the UDRE ISR
    DDRF |= 2;
    PORTF |= 2;
  }

  cls();

  printf_P(PSTR("\033[0;0HHello, world!\r\n"));
  printf_P(PSTR("%i B SRAM free\r\n"), freeRam());
  memset((void*)adc_state, 0, sizeof(adc_state));
  setup_adc_pins();
  disable_adc(0);
  disable_adc(1);
  config_adc(0);

  //CPU usage monitor on PF2
  DDRF |= 1 << 2;

  //ISP disabler on PF3
  //turns out this isn't really needed, since the 4016 on the ISP signals
  //is enough to provide decent termination
  //still probably a good idea to keep around
  DDRF  |=   1<<3;
  PORTF &= ~(1<<3);

  setup_sintab();
}