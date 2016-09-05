//https://github.com/PaulStoffregen/TimerOne
#include <TimerOne.h>

#define PAIRS             3  //number of sensor pairs
#define SAMPLES_PER_CYCLE 4
#define SAMPLES_PER_REV  (PAIRS*SAMPLES_PER_CYCLE)
#define REVS_PER_PRINT   100
#define SAMPLES_PER_PRINT (SAMPLES_PER_REV*REVS_PER_PRINT)

#define PWMPIN 11
#define TACHPIN 2
#define LO1PIN  3
#define LO2PIN  4

#if SAMPLES_PER_CYCLE < 4 || SAMPLES_PER_CYCLE % 4
#error SAMPLES_PER_CYCLE must be greater than 4 and a multiple of 4
#endif

unsigned char cursample = 0;
char sintab[256];
long I[PAIRS] = {0}, Q[PAIRS] = {0};
boolean got_sample = false;
unsigned long dc;
unsigned long nextpwm = 0;
char pwmstate = 0;

static void reset_iq() {
  int x;
  for (x = 0; x < 3; x++) {
    I[x] = 0;
    Q[x] = 0;
  }
}

static void interrupt() {
  //disable interrupts
  sei();
  unsigned long u0 = micros();

  //NOTE: analogRead() is measured as taking 112 µs (9600 Hz)
  //      keep this in mind
  int a = analogRead(0);
  int b = 0;//analogRead(1);
  int c = 0;//analogRead(2);

  digitalWrite(LO1PIN, ( cursample                        / (SAMPLES_PER_CYCLE/2)) & 1);
  digitalWrite(LO2PIN, ((cursample + SAMPLES_PER_CYCLE/4) / (SAMPLES_PER_CYCLE/2)) & 1);

  //re-enable interrupts
  cli();

  unsigned char phase = cursample * (256 * PAIRS / SAMPLES_PER_REV);
  unsigned char phase2 = phase + 64;

  //demodulation
  I[0] += a*sintab[phase];
  Q[0] += a*sintab[phase2];
  I[1] += b*sintab[phase];
  Q[1] += b*sintab[phase2];
  I[2] += c*sintab[phase];
  Q[2] += c*sintab[phase2];

  cursample++;
  
  if (cursample >= SAMPLES_PER_PRINT) {
    Timer1.stop();
  }

  dc = micros() - u0;
}

//http://www.microsmart.co.za/technical/2014/03/01/advanced-arduino-adc/
const unsigned char PS_16 = (1 << ADPS2);
const unsigned char PS_32 = (1 << ADPS2) | (1 << ADPS0);
const unsigned char PS_64 = (1 << ADPS2) | (1 << ADPS1);
const unsigned char PS_128 = (1 << ADPS2) | (1 << ADPS1) | (1 << ADPS0);

volatile unsigned long last_interrupt;
volatile unsigned long last_interrupt_length;

static void tach_interrupt() {
  unsigned long us = micros();  
  last_interrupt_length = us - last_interrupt;
  last_interrupt = us;
  
  if (cursample == 0 && last_interrupt_length > 1000 && last_interrupt_length < 10000) {
    reset_iq();
    cursample = 0;
    Timer1.initialize(last_interrupt_length / SAMPLES_PER_REV);
    Timer1.attachInterrupt(interrupt);
  }
}

static void setup_timer2() {
  //PWM should run at around 50-100 Hz (pulse to pulse)

  //use OC2A as PWM output pin, non-inverting
  //OC2A = PB3 = Digital   11
  //WGM2[1:0] = 3 (fast PWM)
  TCCR2A = (2 << 6) + 3;
  pinMode(PWMPIN, OUTPUT);
  
  //7 = 1024 prescaler (15625 Hz base frequency, 61 Hz pulse to pulse)
  //WGM2[2] = 0 (TOP = 0xFF)
  //FOC2n irrelevant in PWM mode
  TCCR2B = (0 << 6) + (0 << 3) + 7;

  //1 ms first, then 1.5 ms)
  OCR2A = (micros() > 1000000 ? 22 : 15);
}

void setup() {
  Serial.begin(115200);
  Serial.println("Hello");
  int x;
  for (x = 0; x < 256; x++) {
    sintab[x] = x < 128 ? 127 : -127;
  }
  pinMode(PWMPIN, OUTPUT);
  pinMode(LO1PIN, OUTPUT);
  pinMode(LO2PIN, OUTPUT);
  analogReference(INTERNAL);
  
  last_interrupt_length = 0;
  cursample = 0;
  attachInterrupt(INT0, tach_interrupt, RISING);

  //trimma ADC:n om nödvändigt
  //atmel säger att upp till 1 MHz ADC-klocka kan vara OK (ung. 80 kHz)
  //ADCSRA &= ~PS_128;
  //ADCSRA |= PS_32;
}

void loop() {
  //continuously "set up" TIMER2
  //this way it'll run with 1 ms pulses for a while, then switch to 1.5 ms
  setup_timer2();
  
  if (cursample >= SAMPLES_PER_PRINT) {
    char tmp[256];
    snprintf(tmp, 256, "sample: %9li %9li, ISR time: %li of %li / %i = %li", I[0], Q[0], dc, last_interrupt_length, SAMPLES_PER_REV, last_interrupt_length / SAMPLES_PER_REV);
    Serial.println(tmp);
    reset_iq();
    cursample = 0;
  }
}

