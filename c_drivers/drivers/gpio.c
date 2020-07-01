

#include "gpio.h"
#include "xgpio.h"


#define GPIO_EXAMPLE_DEVICE_ID  XPAR_GPIO_0_DEVICE_ID

XGpio Gpio; /* The Instance of the GPIO Driver */

#define RST_BIT 3
#define WRITE_BIT 2
#define SCLK_BIT 0
#define SDATA_BIT 1


u32 gpio_state;

uint8_t gpio_init()
{

	gpio_state = 0;

	if (XGpio_Initialize(&Gpio, GPIO_EXAMPLE_DEVICE_ID) != XST_SUCCESS)
	{
		return 1;
	}

	//set channel 1 to be all outputs
	XGpio_SetDataDirection(&Gpio, 1, 0);

	//Turn all outputs off by default
	XGpio_DiscreteWrite(&Gpio, 1, 0);

	//Put the reset line in the correct state
	gpio_reset_pulse_gen();

	return XST_SUCCESS;

}

void gpio_set_pin(u8 bit, u8 value)
{

	u32 new_gpio_state;
	if(value){
		new_gpio_state = gpio_state | (0x01 << bit);
	}
	else
	{
		new_gpio_state = gpio_state & ~(0x01 << bit);
	}

	XGpio_DiscreteWrite(&Gpio, 1, new_gpio_state);
	gpio_state = new_gpio_state;

}

//Resets the fabric in the 250MHz clock domain
void gpio_reset_pulse_gen()
{
	gpio_set_pin(RST_BIT, 0);
	gpio_set_pin(RST_BIT, 1);
}



//Sends a command to the pulse generator RTL via FIFO
void gpio_send_command(uint32_t value)
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

