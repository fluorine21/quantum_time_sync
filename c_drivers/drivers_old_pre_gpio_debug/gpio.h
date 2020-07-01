
#ifndef _GPIO_H_
#define _GPIO_H_

#include "xgpiops.h"

uint8_t gpio_init();
void gpio_set_pin(u8 pin_num, u8 value);
void gpio_reset_pulse_gen();
void gpio_send_commnd(uint32_t command);



#endif