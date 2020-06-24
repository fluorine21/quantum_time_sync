// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Jun 24 11:11:43 2020
// Host        : pme10D0025 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top top_level_block_design_system_ila_0_0 -prefix
//               top_level_block_design_system_ila_0_0_ top_level_block_design_system_ila_0_0_stub.v
// Design      : top_level_block_design_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_1ad1,Vivado 2020.1" *)
module top_level_block_design_system_ila_0_0(clk, SLOT_0_GPIO_tri_t, SLOT_0_GPIO_tri_o, 
  SLOT_0_GPIO_tri_i)
/* synthesis syn_black_box black_box_pad_pin="clk,SLOT_0_GPIO_tri_t[39:0],SLOT_0_GPIO_tri_o[39:0],SLOT_0_GPIO_tri_i[39:0]" */;
  input clk;
  input [39:0]SLOT_0_GPIO_tri_t;
  input [39:0]SLOT_0_GPIO_tri_o;
  input [39:0]SLOT_0_GPIO_tri_i;
endmodule
