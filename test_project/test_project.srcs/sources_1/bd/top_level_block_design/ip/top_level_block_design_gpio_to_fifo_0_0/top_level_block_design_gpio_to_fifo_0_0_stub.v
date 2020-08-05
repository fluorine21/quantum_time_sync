// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Aug  5 10:01:31 2020
// Host        : pme10D0025 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/James/test_project/test_project.srcs/sources_1/bd/top_level_block_design/ip/top_level_block_design_gpio_to_fifo_0_0/top_level_block_design_gpio_to_fifo_0_0_stub.v
// Design      : top_level_block_design_gpio_to_fifo_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "gpio_to_fifo,Vivado 2020.1" *)
module top_level_block_design_gpio_to_fifo_0_0(clk, rst, emio_gpio_i, rst_pl, instr_fifo_full, 
  instr_fifo_dout, instr_fifo_wr_en, pulse_fifo_full, pulse_fifo_dout, pulse_fifo_wr_en)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,emio_gpio_i[31:0],rst_pl,instr_fifo_full,instr_fifo_dout[31:0],instr_fifo_wr_en,pulse_fifo_full,pulse_fifo_dout[31:0],pulse_fifo_wr_en" */;
  input clk;
  input rst;
  input [31:0]emio_gpio_i;
  output rst_pl;
  input instr_fifo_full;
  output [31:0]instr_fifo_dout;
  output instr_fifo_wr_en;
  input pulse_fifo_full;
  output [31:0]pulse_fifo_dout;
  output pulse_fifo_wr_en;
endmodule
