

#ifndef SRC_DRIVERS_RF_H_
#define SRC_DRIVERS_RF_H_

#include "xparameters.h"
#include "xgpio.h"

uint8_t rf_init();
int rf_self_test();
u8 get_rf_clock_status();//Returns 0 if clock is active



#endif
