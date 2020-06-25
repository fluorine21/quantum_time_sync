//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_da10_wrapper.bd
//Design : bd_da10_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_da10_wrapper
   (clk,
    probe0,
    probe1,
    probe2);
  input clk;
  input [31:0]probe0;
  input [31:0]probe1;
  input [0:0]probe2;

  wire clk;
  wire [31:0]probe0;
  wire [31:0]probe1;
  wire [0:0]probe2;

  bd_da10 bd_da10_i
       (.clk(clk),
        .probe0(probe0),
        .probe1(probe1),
        .probe2(probe2));
endmodule
