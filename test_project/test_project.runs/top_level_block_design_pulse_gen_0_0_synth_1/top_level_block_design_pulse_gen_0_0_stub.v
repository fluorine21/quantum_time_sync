// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Jul  2 10:27:20 2020
// Host        : pme10D0025 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_level_block_design_pulse_gen_0_0_stub.v
// Design      : top_level_block_design_pulse_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "pulse_gen,Vivado 2020.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, rst, fifo_empty, fifo_data, fifo_read, 
  m_axis_tdata, m_axis_tvalid, m_axis_tready)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,fifo_empty,fifo_data[31:0],fifo_read,m_axis_tdata[255:0],m_axis_tvalid,m_axis_tready" */;
  input clk;
  input rst;
  input fifo_empty;
  input [31:0]fifo_data;
  output fifo_read;
  output [255:0]m_axis_tdata;
  output m_axis_tvalid;
  input m_axis_tready;
endmodule
