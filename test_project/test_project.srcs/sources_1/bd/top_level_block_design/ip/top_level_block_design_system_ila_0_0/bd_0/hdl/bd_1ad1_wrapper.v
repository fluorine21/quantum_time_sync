//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_1ad1_wrapper.bd
//Design : bd_1ad1_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_1ad1_wrapper
   (SLOT_0_GPIO_tri_i,
    SLOT_0_GPIO_tri_o,
    SLOT_0_GPIO_tri_t,
    clk);
  input [39:0]SLOT_0_GPIO_tri_i;
  input [39:0]SLOT_0_GPIO_tri_o;
  input [39:0]SLOT_0_GPIO_tri_t;
  input clk;

  wire [39:0]SLOT_0_GPIO_tri_i;
  wire [39:0]SLOT_0_GPIO_tri_o;
  wire [39:0]SLOT_0_GPIO_tri_t;
  wire clk;

  bd_1ad1 bd_1ad1_i
       (.SLOT_0_GPIO_tri_i(SLOT_0_GPIO_tri_i),
        .SLOT_0_GPIO_tri_o(SLOT_0_GPIO_tri_o),
        .SLOT_0_GPIO_tri_t(SLOT_0_GPIO_tri_t),
        .clk(clk));
endmodule
