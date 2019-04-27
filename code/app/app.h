#ifndef _APP_H
#define _APP_H

#include "config.h"
#include "frama-c-stub.h"

//registers
#define ID_MSB    0x00
#define ID_LSB    0x01
#define STAT_1    0x02
#define STAT_P    0x03
#define STAT_N    0x04
#define STAT_S    0x05
#define STAT_M2   0x07
#define A_SYS_CFG 0x0B
#define D_SYS_CFG 0x0C
#define CLK1      0x0D
#define CLK2      0x0E
#define ADC_ENA   0x0F
#define ADC1      0x11
#define ADC2      0x12
#define ADC3      0x13
#define ADC4      0x14

/*@ assigns SPDR, PORTF;   // the real rreg() assigns SPDR and others
 */
uint8_t rreg(uint8_t id, uint8_t a);

/*@ assigns \nothing;
 */
void set_74153(uint8_t ch);

void sendchar(uint8_t data);

#ifdef TEST_SPEED
uint32_t gettime32();
#endif

#endif //_APP_H