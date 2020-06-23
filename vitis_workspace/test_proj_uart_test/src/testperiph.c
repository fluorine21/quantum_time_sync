/*
 *
 * Xilinx, Inc.
 * XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS" AS A 
 * COURTESY TO YOU.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION AS
 * ONE POSSIBLE   IMPLEMENTATION OF THIS FEATURE, APPLICATION OR 
 * STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS IMPLEMENTATION 
 * IS FREE FROM ANY CLAIMS OF INFRINGEMENT, AND YOU ARE RESPONSIBLE 
 * FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE FOR YOUR IMPLEMENTATION
 * XILINX EXPRESSLY DISCLAIMS ANY WARRANTY WHATSOEVER WITH RESPECT TO 
 * THE ADEQUACY OF THE IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO 
 * ANY WARRANTIES OR REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE 
 * FROM CLAIMS OF INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY 
 * AND FITNESS FOR A PARTICULAR PURPOSE.
 */

/*
 * 
 *
 * This file is a generated sample test application.
 *
 * This application is intended to test and/or illustrate some 
 * functionality of your system.  The contents of this file may
 * vary depending on the IP in your system and may use existing
 * IP driver functions.  These drivers will be generated in your
 * SDK application project when you run the "Generate Libraries" menu item.
 *
 */

#include <stdio.h>
#include "xparameters.h"
#include "xil_cache.h"
#include "xscugic.h"
#include "xil_exception.h"
#include "scugic_header.h"
#include "xgpio.h"
#include "gpio_header.h"
#include "xzdma.h"
#include "zdma_header.h"
#include "xsysmonpsu.h"
#include "sysmonpsu_header.h"
#include "xcsudma.h"
#include "csudma_header.h"
#include "xiicps.h"
#include "iicps_header.h"
#include "xttcps.h"
#include "ttcps_header.h"
#include "xuartps.h"
#include "uartps_header.h"
#include "uartps_intr_header.h"
#include "xwdtps.h"
#include "wdtps_header.h"
int main () 
{
   static XScuGic intc;
   static XZDma psu_adma_0;
   static XZDma psu_adma_1;
   static XZDma psu_adma_2;
   static XZDma psu_adma_3;
   static XZDma psu_adma_4;
   static XZDma psu_adma_5;
   static XZDma psu_adma_6;
   static XZDma psu_adma_7;
   static XSysMonPsu psu_ams;
   static XCsuDma psu_csudma;
   static XZDma psu_gdma_0;
   static XZDma psu_gdma_1;
   static XZDma psu_gdma_2;
   static XZDma psu_gdma_3;
   static XZDma psu_gdma_4;
   static XZDma psu_gdma_5;
   static XZDma psu_gdma_6;
   static XZDma psu_gdma_7;
   static XTtcPs psu_ttc_0;
   static XTtcPs psu_ttc_1;
   static XTtcPs psu_ttc_2;
   static XTtcPs psu_ttc_3;
   static XUartPs psu_uart_0;
   Xil_ICacheEnable();
   Xil_DCacheEnable();
   print("---Entering main---\n\r");


	   {
	      int Status;

	      print("\r\n Running ScuGicSelfTestExample() for psu_acpu_gic...\r\n");

	      Status = ScuGicSelfTestExample(XPAR_PSU_ACPU_GIC_DEVICE_ID);

	      if (Status == 0) {
	         print("ScuGicSelfTestExample PASSED\r\n");
	      }
	      else {
	         print("ScuGicSelfTestExample FAILED\r\n");
	      }
	   }

	   {
	       int Status;

	       Status = ScuGicInterruptSetup(&intc, XPAR_PSU_ACPU_GIC_DEVICE_ID);
	       if (Status == 0) {
	          print("ScuGic Interrupt Setup PASSED\r\n");
	       }
	       else {
	         print("ScuGic Interrupt Setup FAILED\r\n");
	      }
	   }



   {
      u32 status;
      
      print("\r\nRunning GpioOutputExample() for axi_gpio_0...\r\n");

      status = GpioOutputExample(XPAR_AXI_GPIO_0_DEVICE_ID,8);
      
      if (status == 0) {
         print("GpioOutputExample PASSED.\r\n");
      }
      else {
         print("GpioOutputExample FAILED.\r\n");
      }
   }



   {
      int Status;

      print("\r\n Running XZDma_SelfTestExample() for psu_adma_0...\r\n");

      Status = XZDma_SelfTestExample(XPAR_PSU_ADMA_0_DEVICE_ID);

      if (Status == 0) {
         print("XZDma_SelfTestExample PASSED\r\n");
      }
      else {
         print("XZDma_SelfTestExample FAILED\r\n");
      }
   }
   {
      int Status;

      print("\r\n Running Interrupt Test  for psu_adma_0...\r\n");

      Status = XZDma_SimpleExample(&intc, &psu_adma_0, \
                                 XPAR_PSU_ADMA_0_DEVICE_ID, \
                                 XPAR_PSU_ADMA_0_INTR);

      if (Status == 0) {
         print("ZDMA Simple Example PASSED\r\n");
      }
      else {
         print("ZDMA Simple Example FAILED\r\n");
      }

   }



   {
      int Status;

      print("\r\n Running XZDma_SelfTestExample() for psu_adma_1...\r\n");

      Status = XZDma_SelfTestExample(XPAR_PSU_ADMA_1_DEVICE_ID);

      if (Status == 0) {
         print("XZDma_SelfTestExample PASSED\r\n");
      }
      else {
         print("XZDma_SelfTestExample FAILED\r\n");
      }
   }
   {
      int Status;

      print("\r\n Running Interrupt Test  for psu_adma_1...\r\n");

      Status = XZDma_SimpleExample(&intc, &psu_adma_1, \
                                 XPAR_PSU_ADMA_1_DEVICE_ID, \
                                 XPAR_PSU_ADMA_1_INTR);

      if (Status == 0) {
         print("ZDMA Simple Example PASSED\r\n");
      }
      else {
         print("ZDMA Simple Example FAILED\r\n");
      }

   }



   {
      int Status;

      print("\r\n Running XZDma_SelfTestExample() for psu_adma_2...\r\n");

      Status = XZDma_SelfTestExample(XPAR_PSU_ADMA_2_DEVICE_ID);

      if (Status == 0) {
         print("XZDma_SelfTestExample PASSED\r\n");
      }
      else {
         print("XZDma_SelfTestExample FAILED\r\n");
      }
   }
   {
      int Status;

      print("\r\n Running Interrupt Test  for psu_adma_2...\r\n");

      Status = XZDma_SimpleExample(&intc, &psu_adma_2, \
                                 XPAR_PSU_ADMA_2_DEVICE_ID, \
                                 XPAR_PSU_ADMA_2_INTR);

      if (Status == 0) {
         print("ZDMA Simple Example PASSED\r\n");
      }
      else {
         print("ZDMA Simple Example FAILED\r\n");
      }

   }



   {
      int Status;

      print("\r\n Running XZDma_SelfTestExample() for psu_adma_3...\r\n");

      Status = XZDma_SelfTestExample(XPAR_PSU_ADMA_3_DEVICE_ID);

      if (Status == 0) {
         print("XZDma_SelfTestExample PASSED\r\n");
      }
      else {
         print("XZDma_SelfTestExample FAILED\r\n");
      }
   }
   {
      int Status;

      print("\r\n Running Interrupt Test  for psu_adma_3...\r\n");

      Status = XZDma_SimpleExample(&intc, &psu_adma_3, \
                                 XPAR_PSU_ADMA_3_DEVICE_ID, \
                                 XPAR_PSU_ADMA_3_INTR);

      if (Status == 0) {
         print("ZDMA Simple Example PASSED\r\n");
      }
      else {
         print("ZDMA Simple Example FAILED\r\n");
      }

   }



   {
      int Status;

      print("\r\n Running XZDma_SelfTestExample() for psu_adma_4...\r\n");

      Status = XZDma_SelfTestExample(XPAR_PSU_ADMA_4_DEVICE_ID);

      if (Status == 0) {
         print("XZDma_SelfTestExample PASSED\r\n");
      }
      else {
         print("XZDma_SelfTestExample FAILED\r\n");
      }
   }
   {
      int Status;

      print("\r\n Running Interrupt Test  for psu_adma_4...\r\n");

      Status = XZDma_SimpleExample(&intc, &psu_adma_4, \
                                 XPAR_PSU_ADMA_4_DEVICE_ID, \
                                 XPAR_PSU_ADMA_4_INTR);

      if (Status == 0) {
         print("ZDMA Simple Example PASSED\r\n");
      }
      else {
         print("ZDMA Simple Example FAILED\r\n");
      }

   }



   {
      int Status;

      print("\r\n Running XZDma_SelfTestExample() for psu_adma_5...\r\n");

      Status = XZDma_SelfTestExample(XPAR_PSU_ADMA_5_DEVICE_ID);

      if (Status == 0) {
         print("XZDma_SelfTestExample PASSED\r\n");
      }
      else {
         print("XZDma_SelfTestExample FAILED\r\n");
      }
   }
   {
      int Status;

      print("\r\n Running Interrupt Test  for psu_adma_5...\r\n");

      Status = XZDma_SimpleExample(&intc, &psu_adma_5, \
                                 XPAR_PSU_ADMA_5_DEVICE_ID, \
                                 XPAR_PSU_ADMA_5_INTR);

      if (Status == 0) {
         print("ZDMA Simple Example PASSED\r\n");
      }
      else {
         print("ZDMA Simple Example FAILED\r\n");
      }

   }



   {
      int Status;

      print("\r\n Running XZDma_SelfTestExample() for psu_adma_6...\r\n");

      Status = XZDma_SelfTestExample(XPAR_PSU_ADMA_6_DEVICE_ID);

      if (Status == 0) {
         print("XZDma_SelfTestExample PASSED\r\n");
      }
      else {
         print("XZDma_SelfTestExample FAILED\r\n");
      }
   }
   {
      int Status;

      print("\r\n Running Interrupt Test  for psu_adma_6...\r\n");

      Status = XZDma_SimpleExample(&intc, &psu_adma_6, \
                                 XPAR_PSU_ADMA_6_DEVICE_ID, \
                                 XPAR_PSU_ADMA_6_INTR);

      if (Status == 0) {
         print("ZDMA Simple Example PASSED\r\n");
      }
      else {
         print("ZDMA Simple Example FAILED\r\n");
      }

   }



   {
      int Status;

      print("\r\n Running XZDma_SelfTestExample() for psu_adma_7...\r\n");

      Status = XZDma_SelfTestExample(XPAR_PSU_ADMA_7_DEVICE_ID);

      if (Status == 0) {
         print("XZDma_SelfTestExample PASSED\r\n");
      }
      else {
         print("XZDma_SelfTestExample FAILED\r\n");
      }
   }
   {
      int Status;

      print("\r\n Running Interrupt Test  for psu_adma_7...\r\n");

      Status = XZDma_SimpleExample(&intc, &psu_adma_7, \
                                 XPAR_PSU_ADMA_7_DEVICE_ID, \
                                 XPAR_PSU_ADMA_7_INTR);

      if (Status == 0) {
         print("ZDMA Simple Example PASSED\r\n");
      }
      else {
         print("ZDMA Simple Example FAILED\r\n");
      }

   }


   {
		int Status;

		print("\r\n Running SysMonPsuPolledPrintfExample() for psu_ams...\r\n");

		Status = SysMonPsuPolledPrintfExample(XPAR_PSU_AMS_DEVICE_ID);

		if (Status == 0) {
			print("SysMonPsuPolledPrintfExample PASSED\r\n");
		}
		else {
			print("SysMonPsuPolledPrintfExample FAILED\r\n");
		}
	}
	{
		int Status;

		print("\r\n Running SysMonPsuIntrExample()  for psu_ams...\r\n");

		Status = SysMonPsuIntrExample(&intc, &psu_ams, \
									XPAR_PSU_AMS_DEVICE_ID, \
									XPAR_PSU_AMS_INTR);

		if (Status == 0) {
			print("SysMonPsu IntrExample PASSED\r\n");
		}
		else {
			print("SysMonPsu IntrExample FAILED\r\n");
		}

	}



   {
      int Status;

      print("\r\n Running XCsuDma_SelfTestExample() for psu_csudma...\r\n");

      Status = XCsuDma_SelfTestExample(XPAR_PSU_CSUDMA_DEVICE_ID);

      if (Status == 0) {
         print("XCsuDma_SelfTestExample PASSED\r\n");
      }
      else {
         print("XCsuDma_SelfTestExample FAILED\r\n");
      }

   }
   {
      int Status;

      print("\r\n Running Interrupt Test  for psu_csudma...\r\n");

      Status = XCsuDma_IntrExample(&intc, &psu_csudma, \
                                 XPAR_PSU_CSUDMA_DEVICE_ID, \
                                 XPAR_PSU_CSUDMA_INTR);

      if (Status == 0) {
         print("CSUDMA Interrupt Example PASSED\r\n");
      }
      else {
         print("CSUDMA Interrupt Example FAILED\r\n");
      }

   }



   {
      int Status;

      print("\r\n Running XZDma_SelfTestExample() for psu_gdma_0...\r\n");

      Status = XZDma_SelfTestExample(XPAR_PSU_GDMA_0_DEVICE_ID);

      if (Status == 0) {
         print("XZDma_SelfTestExample PASSED\r\n");
      }
      else {
         print("XZDma_SelfTestExample FAILED\r\n");
      }
   }
   {
      int Status;

      print("\r\n Running Interrupt Test  for psu_gdma_0...\r\n");

      Status = XZDma_SimpleExample(&intc, &psu_gdma_0, \
                                 XPAR_PSU_GDMA_0_DEVICE_ID, \
                                 XPAR_PSU_GDMA_0_INTR);

      if (Status == 0) {
         print("ZDMA Simple Example PASSED\r\n");
      }
      else {
         print("ZDMA Simple Example FAILED\r\n");
      }

   }



   {
      int Status;

      print("\r\n Running XZDma_SelfTestExample() for psu_gdma_1...\r\n");

      Status = XZDma_SelfTestExample(XPAR_PSU_GDMA_1_DEVICE_ID);

      if (Status == 0) {
         print("XZDma_SelfTestExample PASSED\r\n");
      }
      else {
         print("XZDma_SelfTestExample FAILED\r\n");
      }
   }
   {
      int Status;

      print("\r\n Running Interrupt Test  for psu_gdma_1...\r\n");

      Status = XZDma_SimpleExample(&intc, &psu_gdma_1, \
                                 XPAR_PSU_GDMA_1_DEVICE_ID, \
                                 XPAR_PSU_GDMA_1_INTR);

      if (Status == 0) {
         print("ZDMA Simple Example PASSED\r\n");
      }
      else {
         print("ZDMA Simple Example FAILED\r\n");
      }

   }



   {
      int Status;

      print("\r\n Running XZDma_SelfTestExample() for psu_gdma_2...\r\n");

      Status = XZDma_SelfTestExample(XPAR_PSU_GDMA_2_DEVICE_ID);

      if (Status == 0) {
         print("XZDma_SelfTestExample PASSED\r\n");
      }
      else {
         print("XZDma_SelfTestExample FAILED\r\n");
      }
   }
   {
      int Status;

      print("\r\n Running Interrupt Test  for psu_gdma_2...\r\n");

      Status = XZDma_SimpleExample(&intc, &psu_gdma_2, \
                                 XPAR_PSU_GDMA_2_DEVICE_ID, \
                                 XPAR_PSU_GDMA_2_INTR);

      if (Status == 0) {
         print("ZDMA Simple Example PASSED\r\n");
      }
      else {
         print("ZDMA Simple Example FAILED\r\n");
      }

   }



   {
      int Status;

      print("\r\n Running XZDma_SelfTestExample() for psu_gdma_3...\r\n");

      Status = XZDma_SelfTestExample(XPAR_PSU_GDMA_3_DEVICE_ID);

      if (Status == 0) {
         print("XZDma_SelfTestExample PASSED\r\n");
      }
      else {
         print("XZDma_SelfTestExample FAILED\r\n");
      }
   }
   {
      int Status;

      print("\r\n Running Interrupt Test  for psu_gdma_3...\r\n");

      Status = XZDma_SimpleExample(&intc, &psu_gdma_3, \
                                 XPAR_PSU_GDMA_3_DEVICE_ID, \
                                 XPAR_PSU_GDMA_3_INTR);

      if (Status == 0) {
         print("ZDMA Simple Example PASSED\r\n");
      }
      else {
         print("ZDMA Simple Example FAILED\r\n");
      }

   }



   {
      int Status;

      print("\r\n Running XZDma_SelfTestExample() for psu_gdma_4...\r\n");

      Status = XZDma_SelfTestExample(XPAR_PSU_GDMA_4_DEVICE_ID);

      if (Status == 0) {
         print("XZDma_SelfTestExample PASSED\r\n");
      }
      else {
         print("XZDma_SelfTestExample FAILED\r\n");
      }
   }
   {
      int Status;

      print("\r\n Running Interrupt Test  for psu_gdma_4...\r\n");

      Status = XZDma_SimpleExample(&intc, &psu_gdma_4, \
                                 XPAR_PSU_GDMA_4_DEVICE_ID, \
                                 XPAR_PSU_GDMA_4_INTR);

      if (Status == 0) {
         print("ZDMA Simple Example PASSED\r\n");
      }
      else {
         print("ZDMA Simple Example FAILED\r\n");
      }

   }



   {
      int Status;

      print("\r\n Running XZDma_SelfTestExample() for psu_gdma_5...\r\n");

      Status = XZDma_SelfTestExample(XPAR_PSU_GDMA_5_DEVICE_ID);

      if (Status == 0) {
         print("XZDma_SelfTestExample PASSED\r\n");
      }
      else {
         print("XZDma_SelfTestExample FAILED\r\n");
      }
   }
   {
      int Status;

      print("\r\n Running Interrupt Test  for psu_gdma_5...\r\n");

      Status = XZDma_SimpleExample(&intc, &psu_gdma_5, \
                                 XPAR_PSU_GDMA_5_DEVICE_ID, \
                                 XPAR_PSU_GDMA_5_INTR);

      if (Status == 0) {
         print("ZDMA Simple Example PASSED\r\n");
      }
      else {
         print("ZDMA Simple Example FAILED\r\n");
      }

   }



   {
      int Status;

      print("\r\n Running XZDma_SelfTestExample() for psu_gdma_6...\r\n");

      Status = XZDma_SelfTestExample(XPAR_PSU_GDMA_6_DEVICE_ID);

      if (Status == 0) {
         print("XZDma_SelfTestExample PASSED\r\n");
      }
      else {
         print("XZDma_SelfTestExample FAILED\r\n");
      }
   }
   {
      int Status;

      print("\r\n Running Interrupt Test  for psu_gdma_6...\r\n");

      Status = XZDma_SimpleExample(&intc, &psu_gdma_6, \
                                 XPAR_PSU_GDMA_6_DEVICE_ID, \
                                 XPAR_PSU_GDMA_6_INTR);

      if (Status == 0) {
         print("ZDMA Simple Example PASSED\r\n");
      }
      else {
         print("ZDMA Simple Example FAILED\r\n");
      }

   }



   {
      int Status;

      print("\r\n Running XZDma_SelfTestExample() for psu_gdma_7...\r\n");

      Status = XZDma_SelfTestExample(XPAR_PSU_GDMA_7_DEVICE_ID);

      if (Status == 0) {
         print("XZDma_SelfTestExample PASSED\r\n");
      }
      else {
         print("XZDma_SelfTestExample FAILED\r\n");
      }
   }
   {
      int Status;

      print("\r\n Running Interrupt Test  for psu_gdma_7...\r\n");

      Status = XZDma_SimpleExample(&intc, &psu_gdma_7, \
                                 XPAR_PSU_GDMA_7_DEVICE_ID, \
                                 XPAR_PSU_GDMA_7_INTR);

      if (Status == 0) {
         print("ZDMA Simple Example PASSED\r\n");
      }
      else {
         print("ZDMA Simple Example FAILED\r\n");
      }

   }



   {
      int Status;

      print("\r\n Running IicPsSelfTestExample() for psu_i2c_0...\r\n");

      Status = IicPsSelfTestExample(XPAR_PSU_I2C_0_DEVICE_ID);

      if (Status == 0) {
         print("IicPsSelfTestExample PASSED\r\n");
      }
      else {
         print("IicPsSelfTestExample FAILED\r\n");
      }
   }



   {
      int Status;

      print("\r\n Running IicPsSelfTestExample() for psu_i2c_1...\r\n");

      Status = IicPsSelfTestExample(XPAR_PSU_I2C_1_DEVICE_ID);

      if (Status == 0) {
         print("IicPsSelfTestExample PASSED\r\n");
      }
      else {
         print("IicPsSelfTestExample FAILED\r\n");
      }
   }


   {
      int Status;

      print("\r\n Running Interrupt Test  for psu_ttc_0...\r\n");

      Status = TmrInterruptExample(&psu_ttc_0, \
				XPAR_PSU_TTC_0_DEVICE_ID, \
				XPAR_PSU_TTC_0_INTR, &intc);

      if (Status == 0) {
         print("TtcIntrExample PASSED\r\n");
      }
      else {
         print("TtcIntrExample FAILED\r\n");
      }

   }


   {
      int Status;

      print("\r\n Running Interrupt Test  for psu_ttc_1...\r\n");

      Status = TmrInterruptExample(&psu_ttc_1, \
				XPAR_PSU_TTC_3_DEVICE_ID, \
				XPAR_PSU_TTC_3_INTR, &intc);

      if (Status == 0) {
         print("TtcIntrExample PASSED\r\n");
      }
      else {
         print("TtcIntrExample FAILED\r\n");
      }

   }


   {
      int Status;

      print("\r\n Running Interrupt Test  for psu_ttc_2...\r\n");

      Status = TmrInterruptExample(&psu_ttc_2, \
				XPAR_PSU_TTC_6_DEVICE_ID, \
				XPAR_PSU_TTC_6_INTR, &intc);

      if (Status == 0) {
         print("TtcIntrExample PASSED\r\n");
      }
      else {
         print("TtcIntrExample FAILED\r\n");
      }

   }


   {
      int Status;

      print("\r\n Running Interrupt Test  for psu_ttc_3...\r\n");

      Status = TmrInterruptExample(&psu_ttc_3, \
				XPAR_PSU_TTC_9_DEVICE_ID, \
				XPAR_PSU_TTC_9_INTR, &intc);

      if (Status == 0) {
         print("TtcIntrExample PASSED\r\n");
      }
      else {
         print("TtcIntrExample FAILED\r\n");
      }

   }



   {
      int Status;

      print("\r\nRunning UartPsPolledExample() for psu_uart_0...\r\n");
      Status = UartPsPolledExample(XPAR_PSU_UART_0_DEVICE_ID);
      if (Status == 0) {
         print("UartPsPolledExample PASSED\r\n");
      }
      else {
         print("UartPsPolledExample FAILED\r\n");
      }
   }
   {
      int Status;

      print("\r\n Running Interrupt Test for psu_uart_0...\r\n");

      Status = UartPsIntrExample(&intc, &psu_uart_0, \
                                  XPAR_PSU_UART_0_DEVICE_ID, \
                                  XPAR_PSU_UART_0_INTR);

      if (Status == 0) {
         print("UartPsIntrExample PASSED\r\n");
      }
      else {
         print("UartPsIntrExample FAILED\r\n");
      }

   }



   {
      int Status;

      print("\r\n Running WdtPsSelfTestExample() for psu_wdt_0...\r\n");

      Status = WdtPsSelfTestExample(XPAR_PSU_WDT_0_DEVICE_ID);

      if (Status == 0) {
         print("WdtPsSelfTestExample PASSED\r\n");
      }
      else {
         print("WdtPsSelfTestExample FAILED\r\n");
      }
   }



   {
      int Status;

      print("\r\n Running WdtPsSelfTestExample() for psu_wdt_1...\r\n");

      Status = WdtPsSelfTestExample(XPAR_PSU_WDT_1_DEVICE_ID);

      if (Status == 0) {
         print("WdtPsSelfTestExample PASSED\r\n");
      }
      else {
         print("WdtPsSelfTestExample FAILED\r\n");
      }
   }


   print("---Exiting main---\n\r");
   Xil_DCacheDisable();
   Xil_ICacheDisable();
   return 0;
}
