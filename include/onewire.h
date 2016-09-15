/* onewire.h
 *
 * Copyright (C) 2016 Jacek Wieczorek
 *
 * This software may be modified and distributed under the terms
 * of the MIT license.  See the LICENSE file for details.
 */

#ifndef ONEWIRE_H
#define ONEWIRE_H

#include <inttypes.h>

#define ONEWIRE_ERROR_OK 	0
#define ONEWIRE_ERROR_COMM 	1

extern unsigned char onewireInit( uint8_t *port, volatile uint8_t *direction, volatile uint8_t *portin, uint8_t mask );
extern void onewireWrite( volatile uint8_t *port, volatile uint8_t *direction, volatile uint8_t *portin, uint8_t mask, uint8_t data );
extern unsigned char onewireRead( volatile uint8_t *port, volatile uint8_t *direction, volatile uint8_t *portin, uint8_t mask );

#endif
