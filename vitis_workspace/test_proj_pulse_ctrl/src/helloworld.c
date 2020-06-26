
/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

#include "../drivers/cmd_handler.h"



int main()
{

    init_platform();

    print("Initializing board...\n\r");

    if(cmd_init())
    {
    	print("Failed to initialize board!\r\n");
    }
    else
    {
    	print("Successfully initialized board!\r\n");
    }

    print("Waiting for command...\r\n");

    while(1)
    {
    	cmd_update_state();
    }


    cleanup_platform();
    return 0;
}
