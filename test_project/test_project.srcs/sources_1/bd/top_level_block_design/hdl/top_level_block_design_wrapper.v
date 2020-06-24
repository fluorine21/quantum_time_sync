//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Wed Jun 24 12:41:45 2020
//Host        : pme10D0025 running 64-bit major release  (build 9200)
//Command     : generate_target top_level_block_design_wrapper.bd
//Design      : top_level_block_design_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module top_level_block_design_wrapper
   (dac0_clk_clk_n,
    dac0_clk_clk_p,
    sysref_in_diff_n,
    sysref_in_diff_p,
    vout00_v_n,
    vout00_v_p);
  input dac0_clk_clk_n;
  input dac0_clk_clk_p;
  input sysref_in_diff_n;
  input sysref_in_diff_p;
  output vout00_v_n;
  output vout00_v_p;

  wire dac0_clk_clk_n;
  wire dac0_clk_clk_p;
  wire sysref_in_diff_n;
  wire sysref_in_diff_p;
  wire vout00_v_n;
  wire vout00_v_p;

  top_level_block_design top_level_block_design_i
       (.dac0_clk_clk_n(dac0_clk_clk_n),
        .dac0_clk_clk_p(dac0_clk_clk_p),
        .sysref_in_diff_n(sysref_in_diff_n),
        .sysref_in_diff_p(sysref_in_diff_p),
        .vout00_v_n(vout00_v_n),
        .vout00_v_p(vout00_v_p));
endmodule
