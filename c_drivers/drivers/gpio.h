
#ifndef _GPIO_H_
#define _GPIO_H_

#include "xgpio.h"

uint8_t gpio_init();
void gpio_set_pin(u8 pin_num, u8 value);
void gpio_reset_pulse_gen();
void gpio_send_command(uint32_t value);
void gpio_queue_pulse(uint32_t value);



#endif
