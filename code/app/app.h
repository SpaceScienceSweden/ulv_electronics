#ifndef _APP_H
#define _APP_H

#include "config.h"
#include "frama-c-stub.h"

/*@ assigns DDRD, PORTD;
 */
void set_74153(uint8_t ch);

void sendchar(uint8_t data);

#ifdef TEST_SPEED
uint32_t gettime32();
#endif

#endif //_APP_H