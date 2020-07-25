//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Sat Jul 25 11:35:43 2020
//Host        : pme10D0025 running 64-bit major release  (build 9200)
//Command     : generate_target top_level_block_design_wrapper.bd
//Design      : top_level_block_design_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module top_level_block_design_wrapper
   (dac1_clk_clk_n,
    dac1_clk_clk_p,
    default_sysclk3_100mhz_clk_n,
    default_sysclk3_100mhz_clk_p,
    reset,
    sysref_in_diff_n,
    sysref_in_diff_p,
    vout10_v_n,
    vout10_v_p);
  input dac1_clk_clk_n;
  input dac1_clk_clk_p;
  input default_sysclk3_100mhz_clk_n;
  input default_sysclk3_100mhz_clk_p;
  input reset;
  input sysref_in_diff_n;
  input sysref_in_diff_p;
  output vout10_v_n;
  output vout10_v_p;

  wire dac1_clk_clk_n;
  wire dac1_clk_clk_p;
  wire default_sysclk3_100mhz_clk_n;
  wire default_sysclk3_100mhz_clk_p;
  wire reset;
  wire sysref_in_diff_n;
  wire sysref_in_diff_p;
  wire vout10_v_n;
  wire vout10_v_p;

  top_level_block_design top_level_block_design_i
       (.dac1_clk_clk_n(dac1_clk_clk_n),
        .dac1_clk_clk_p(dac1_clk_clk_p),
        .default_sysclk3_100mhz_clk_n(default_sysclk3_100mhz_clk_n),
        .default_sysclk3_100mhz_clk_p(default_sysclk3_100mhz_clk_p),
        .reset(reset),
        .sysref_in_diff_n(sysref_in_diff_n),
        .sysref_in_diff_p(sysref_in_diff_p),
        .vout10_v_n(vout10_v_n),
        .vout10_v_p(vout10_v_p));
endmodule
