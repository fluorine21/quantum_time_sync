

#include "gpio.h"


#define PULSE_GEN_CHANNEL 1
#define GPIO_BITWIDTH	16	/* This is the width of the GPIO */
#define GPIO_OUTPUT_DEVICE_ID	XPAR_XGPIOPS_0_DEVICE_ID

XGpioPs GpioInst; /* The driver instance for GPIO Device configured as O/P */


#define RST_BIT 3
#define WRITE_BIT 2
#define SCLK_BIT 0
#define SDATA_BIT 1

uint8_t gpio_init()
{
	int Status;
	XGpioPs_Config *ConfigPtr;


	/* Initialize the GPIO driver. */
	ConfigPtr = XGpioPs_LookupConfig(GPIO_OUTPUT_DEVICE_ID);
	if(!ConfigPtr)
	{
		return XST_FAILURE;
	}

	Status = XGpioPs_CfgInitialize(&GpioInst, ConfigPtr,
					ConfigPtr->BaseAddr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	//Set all pins to be outputs
	for(int i = 0; i < 32; i++){
		XGpioPs_SetDirectionPin(&GpioInst, i, 1);
		XGpioPs_SetOutputEnablePin(&GpioInst, i, 1);
	}

	//Reset the fabric
	gpio_reset_pulse_gen();

	return XST_SUCCESS;

}

void gpio_set_pin(u8 pin_num, u8 value)
{
	if(value){
		XGpioPs_WritePin(&GpioInst, pin_num, 0x1);
	}
	else
	{
		XGpioPs_WritePin(&GpioInst, pin_num, 0x0);
	}
}

//Resets the fabric in the 250MHz clock domain
void gpio_reset_pulse_gen(u32 value)
{
	//Mask out the reset bit (active low)
	gpio_set_pin(RST_BIT, 0);
	gpio_set_pin(RST_BIT, 1);

}



//Sends a command to the pulse generator RTL via FIFO
void gpio_send_commnd(uint32_t value)
{
	//First shift the command into the register
	for(int i = 0; i < 32; i++)
	{
		//Set the output to the correct bit
		u8 current_bit = (value & (1 << i)) == 0 ? 0 : 1;
		gpio_set_pin(SDATA_BIT, current_bit);
		//cycle the cycles sclk
		gpio_set_pin(SCLK_BIT, 0x01);
		gpio_set_pin(SCLK_BIT, 0x00);
	}

	//Then write the command into the fifo
	gpio_set_pin(WRITE_BIT, 0x01);
	gpio_set_pin(WRITE_BIT, 0x00);
}

