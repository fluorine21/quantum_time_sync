// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Aug  5 10:03:31 2020
// Host        : pme10D0025 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/James/test_project/test_project.srcs/sources_1/bd/top_level_block_design/ip/top_level_block_design_system_ila_1_0/top_level_block_design_system_ila_1_0_stub.v
// Design      : top_level_block_design_system_ila_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_da80,Vivado 2020.1" *)
module top_level_block_design_system_ila_1_0(clk, probe0, probe1, probe2, probe3, probe4, probe5, 
  probe6, SLOT_0_AXIS_tdata, SLOT_0_AXIS_tlast, SLOT_0_AXIS_tvalid, SLOT_0_AXIS_tready, 
  resetn)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[31:0],probe1[0:0],probe2[0:0],probe3[7:0],probe4[0:0],probe5[31:0],probe6[0:0],SLOT_0_AXIS_tdata[255:0],SLOT_0_AXIS_tlast,SLOT_0_AXIS_tvalid,SLOT_0_AXIS_tready,resetn" */;
  input clk;
  input [31:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input [7:0]probe3;
  input [0:0]probe4;
  input [31:0]probe5;
  input [0:0]probe6;
  input [255:0]SLOT_0_AXIS_tdata;
  input SLOT_0_AXIS_tlast;
  input SLOT_0_AXIS_tvalid;
  input SLOT_0_AXIS_tready;
  input resetn;
endmodule
