#ifndef EEPROM_H
#define EEPROM_H

typedef struct {
  uint8_t gap;            //gap to make it easier to see where the data in eeprom.hex starts
  uint8_t motor_pwm_set;  //if not FF then motor PWMs are set
  uint8_t pwm0;           //OCR1A
  uint8_t pwm1;           //OCR1B
  uint8_t pwm2;           //OCR1C

  //here's how you would set eeprom.hex for running all motors at 25% speed (0x40 == 64):
  //:20000000FF00404040FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3C
  //:00000001FF
} eeprom_t;

#endif //EEPROM_H
