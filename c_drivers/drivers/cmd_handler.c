
#include "cmd_handler.h"
#include "uart.h"
#include "gpio.h"

#define DEBUG_PRINT

//localparam [7:0] command_reset_clock = 0,
///				 command_send_pulse = 1,
//				 command_set_period = 2,
//				 command_set_phase_meas_mode = 3,
//				 command_reset_phase_meas_mode = 4;


//Command definitions for this code and the RTL module
#define CMD_PREAMBLE 0xAA
#define CMD_RST_CLK 0x00
#define CMD_SEND_PULSE 0x01
#define CMD_SET_PERIOD 0x02
#define CMD_PHASE_MEAS_ON 0x03
#define CMD_PHASE_MEAS_OFF 0x04
#define CMD_PING_BOARD 0x05

//Handler function states
#define STATE_WAIT_PREAMBLE 0
#define STATE_WAIT_CMD 1
#define STATE_WAIT_PAYLOAD 2
u8 cmd_state;
u8 curr_cmd;

//Initializes UART, GPIO and RFSOC
//Returns 0 on success
u8 cmd_init()
{
	cmd_state = 0;

	print("Initializing peripherals...\r\n");

	if(gpio_init())
	{
		print("Failed to initialize GPIO!\r\n");
		return 1;
	}
	else
	{
		print("Successfully initialized GPIO!\r\n");
	}

	if(uart_init_interrupt() != 0)
	{
		print("Failed to initialize UART!\r\n");
		return 1;
	}
	else
	{
		print("Successfully initialized UART!\r\n");
	}

	print("Finished initializing peripherals\r\n");
	//Clear the buffer once
	uart_clear_buffer();

	return 0;

}

void debug_print(char* str);

//Main command handler function
void cmd_update_state()
{
	switch(cmd_state)
	{

	case STATE_WAIT_PREAMBLE:

		//Check to see if there is a preamble byte waiting
		if(uart_get_buffer_size())
		{
			//Check to see if the byte is correct
			u8 p_b = uart_get_buffer_byte();
			if(p_b == CMD_PREAMBLE)
			{
				//Preamble byte is correct, we can move on to the next state
				cmd_state = STATE_WAIT_CMD;
			}
			else
			{
				xil_printf("Got bad preamble byte: 0x%x", p_b);
			}
		}
		break;


	case STATE_WAIT_CMD:

		//Check to see if there is a command byte waiting
		if(uart_get_buffer_size())
		{
			//Decode the command
			curr_cmd = uart_get_buffer_byte();
			switch(curr_cmd)
			{
			case CMD_RST_CLK:
				//Send the clock reset command
				gpio_send_command( ((u32)CMD_RST_CLK) << 24);
				uart_send_byte(0);//Send an ACK
				cmd_state = STATE_WAIT_PREAMBLE;
				debug_print("Resetting the clock");
				break;

				//These two are handled in the same manner
			case CMD_SEND_PULSE:
			case CMD_SET_PERIOD:

				//Handle these in their own FMS state
				cmd_state = STATE_WAIT_PAYLOAD;
				break;

			case CMD_PHASE_MEAS_ON:
				//Send the set phase meas command
				gpio_send_command( ((u32)CMD_PHASE_MEAS_ON) << 24);
				uart_send_byte(0);//Send an ACK
				cmd_state = STATE_WAIT_PREAMBLE;

				debug_print("Turning on phase measurement mode");

				break;

			case CMD_PHASE_MEAS_OFF:
				//Send the set phase meas command
				gpio_send_command( ((u32)CMD_PHASE_MEAS_OFF) << 24);
				uart_send_byte(0);//Send an ACK
				cmd_state = STATE_WAIT_PREAMBLE;

				debug_print("Turning off phase measurement mode");

				break;

			case CMD_PING_BOARD:
				uart_send_byte(0);//Send an ACK
				debug_print("Responding to ping");
				cmd_state = STATE_WAIT_PREAMBLE;
				break;
			default:
				xil_printf("Invalid command byte: 0x%x\r\n", curr_cmd);
				cmd_state = STATE_WAIT_PREAMBLE;
				break;

			}
		}
		break;

	case STATE_WAIT_PAYLOAD:

		//Check if we have 3 payload bytes yet
		if(uart_get_buffer_size() >= 3)
		{
			u32 b0, b1, b2;
			b0 = uart_get_buffer_byte();
			b1 = uart_get_buffer_byte();
			b2 = uart_get_buffer_byte();

			u32 cmd_f = (((u32)curr_cmd) << 24) | (b0 << 16) | (b1 << 8) | b2;
			gpio_send_command(cmd_f);//Send the command to the fifo
			uart_send_byte(0);//Send an ACK
			cmd_state = STATE_WAIT_PREAMBLE;

			#ifdef DEBUG_PRINT
			xil_printf("Executing: 0x%x, with args 0x%x, 0x%x, 0x%x", curr_cmd, b0, b1, b2);
			#endif

		}
		break;
	}
}

void debug_print(char* str)
{
#ifdef DEBUG_PRINT
	print(str);
	print("\r\n");
#endif
}


