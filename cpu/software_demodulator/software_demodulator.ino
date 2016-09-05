//https://github.com/PaulStoffregen/TimerOne
#include <TimerOne.h>

#define RPM 6000
#define MICROS_PER_REV (60 * 1000000 / RPM)
#define PAIRS            3  //number of sensor pairs
#define SAMPLES_PER_REV (PAIRS*8)
#define MICROS_PER_INTERRUPT (MICROS_PER_REV / SAMPLES_PER_REV)
#define PWMPIN 12
#define TACHPIN 2

unsigned char cursample = 0;
char sintab[256];
long I[PAIRS] = {0}, Q[PAIRS] = {0};
boolean got_sample = false;
unsigned long dc;
unsigned long nextpwm = 0;
char pwmstate = 0;

static void interrupt() {
  //disable interrupts
  sei();
  unsigned long u0 = micros();
  if (got_sample) {
    cli();
    return;
  }

  //NOTE: analogRead() is measured as taking 112 µs (9600 Hz)
  //      keep this in mind
  int a = analogRead(0);
  int b = 0;//analogRead(1);
  int c = 0;//analogRead(2);

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

  if (cursample >= SAMPLES_PER_REV * 10) {
    //got_sample = true;
    cursample = 0;
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
  //TODO: setup timer interrupt using last_interrupt_length / 6
}

void setup() {
  Serial.begin(115200);
  Serial.println("Hello");
  int x;
  for (x = 0; x < 256; x++) {
    sintab[x] = x < 128 ? 127 : -127;
  }
  Timer1.initialize(MICROS_PER_INTERRUPT);
  Timer1.attachInterrupt(interrupt);
  pinMode(PWMPIN, OUTPUT);
  analogReference(INTERNAL);
  
  attachInterrupt(INT0, tach_interrupt, RISING);

  //trimma ADC:n om nödvändigt
  //atmel säger att upp till 1 MHz ADC-klocka kan vara OK (ung. 80 kHz)
  //ADCSRA &= ~PS_128;
  //ADCSRA |= PS_32;
}

//int a;
void loop() {
  unsigned long us = micros();
  //a++;
  if (us >= nextpwm) {
    digitalWrite(PWMPIN, (us / 1000) & 1);
    if (pwmstate) {
      digitalWrite(PWMPIN, LOW);
      pwmstate = 0;
      nextpwm = us + 20000;
    } else {
      digitalWrite(PWMPIN, HIGH);
      pwmstate = 1;
      nextpwm = us + (us > 1000000 ? 1150 : 1000);
    }
  }
  
  //Serial.println("Loop");
  /*if (got_sample) {
    char tmp[256];
    //snprintf(tmp, 256, "sample: %9li %9li, ISR time: %li vs %i", I[0], Q[0], dc, MICROS_PER_INTERRUPT);
    //snprintf(tmp, 256, "us = %li\n", us);
    //Serial.println(tmp);
    int x;
    for (x = 0; x < 3; x++) {
      I[x] = 0;
      Q[x] = 0;
    }
    got_sample = 0;
  }*/
}

