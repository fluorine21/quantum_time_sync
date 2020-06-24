//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_1ad1.bd
//Design : bd_1ad1
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_1ad1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_1ad1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "top_level_block_design_system_ila_0_0.hwdef" *) 
module bd_1ad1
   (SLOT_0_GPIO_tri_i,
    SLOT_0_GPIO_tri_o,
    SLOT_0_GPIO_tri_t,
    clk);
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 SLOT_0_GPIO TRI_I" *) input [39:0]SLOT_0_GPIO_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 SLOT_0_GPIO TRI_O" *) input [39:0]SLOT_0_GPIO_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 SLOT_0_GPIO TRI_T" *) input [39:0]SLOT_0_GPIO_tri_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN top_level_block_design_zynq_ultra_ps_e_0_3_pl_clk0, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk;

  wire [39:0]SLOT_0_GPIO_tri_i_1;
  wire [39:0]SLOT_0_GPIO_tri_o_1;
  wire [39:0]SLOT_0_GPIO_tri_t_1;
  wire clk_1;

  assign SLOT_0_GPIO_tri_i_1 = SLOT_0_GPIO_tri_i[39:0];
  assign SLOT_0_GPIO_tri_o_1 = SLOT_0_GPIO_tri_o[39:0];
  assign SLOT_0_GPIO_tri_t_1 = SLOT_0_GPIO_tri_t[39:0];
  assign clk_1 = clk;
  bd_1ad1_ila_lib_0 ila_lib
       (.clk(clk_1),
        .probe0(SLOT_0_GPIO_tri_i_1),
        .probe1(SLOT_0_GPIO_tri_o_1),
        .probe2(SLOT_0_GPIO_tri_t_1));
endmodule
