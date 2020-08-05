// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Aug  5 10:01:31 2020
// Host        : pme10D0025 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/James/test_project/test_project.srcs/sources_1/bd/top_level_block_design/ip/top_level_block_design_gpio_to_fifo_0_0/top_level_block_design_gpio_to_fifo_0_0_sim_netlist.v
// Design      : top_level_block_design_gpio_to_fifo_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_level_block_design_gpio_to_fifo_0_0,gpio_to_fifo,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "gpio_to_fifo,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module top_level_block_design_gpio_to_fifo_0_0
   (clk,
    rst,
    emio_gpio_i,
    rst_pl,
    instr_fifo_full,
    instr_fifo_dout,
    instr_fifo_wr_en,
    pulse_fifo_full,
    pulse_fifo_dout,
    pulse_fifo_wr_en);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_level_block_design_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input [31:0]emio_gpio_i;
  output rst_pl;
  input instr_fifo_full;
  output [31:0]instr_fifo_dout;
  output instr_fifo_wr_en;
  input pulse_fifo_full;
  output [31:0]pulse_fifo_dout;
  output pulse_fifo_wr_en;

  wire clk;
  wire [31:0]emio_gpio_i;
  wire [31:0]instr_fifo_dout;
  wire instr_fifo_wr_en;
  wire [31:0]pulse_fifo_dout;
  wire pulse_fifo_wr_en;
  wire rst;

  assign rst_pl = emio_gpio_i[3];
  top_level_block_design_gpio_to_fifo_0_0_gpio_to_fifo inst
       (.clk(clk),
        .emio_gpio_i({emio_gpio_i[6:4],emio_gpio_i[2:0]}),
        .instr_fifo_dout(instr_fifo_dout),
        .instr_fifo_wr_en(instr_fifo_wr_en),
        .pulse_fifo_dout(pulse_fifo_dout),
        .pulse_fifo_wr_en(pulse_fifo_wr_en),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "gpio_to_fifo" *) 
module top_level_block_design_gpio_to_fifo_0_0_gpio_to_fifo
   (instr_fifo_dout,
    pulse_fifo_dout,
    instr_fifo_wr_en,
    pulse_fifo_wr_en,
    emio_gpio_i,
    clk,
    rst);
  output [31:0]instr_fifo_dout;
  output [31:0]pulse_fifo_dout;
  output instr_fifo_wr_en;
  output pulse_fifo_wr_en;
  input [5:0]emio_gpio_i;
  input clk;
  input rst;

  wire clk;
  wire [5:0]emio_gpio_i;
  wire [31:0]instr_fifo_dout;
  wire instr_fifo_wr_en;
  wire instr_fifo_wr_en_i_1_n_0;
  wire [31:0]pulse_fifo_dout;
  wire pulse_fifo_wr_en;
  wire pulse_fifo_wr_en_i_1_n_0;
  wire rst;
  wire sr1_n_0;
  wire state_i;
  wire state_p;

  LUT4 #(
    .INIT(16'h7720)) 
    instr_fifo_wr_en_i_1
       (.I0(rst),
        .I1(state_i),
        .I2(emio_gpio_i[2]),
        .I3(instr_fifo_wr_en),
        .O(instr_fifo_wr_en_i_1_n_0));
  FDRE instr_fifo_wr_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(instr_fifo_wr_en_i_1_n_0),
        .Q(instr_fifo_wr_en),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h7720)) 
    pulse_fifo_wr_en_i_1
       (.I0(rst),
        .I1(state_p),
        .I2(emio_gpio_i[3]),
        .I3(pulse_fifo_wr_en),
        .O(pulse_fifo_wr_en_i_1_n_0));
  FDRE pulse_fifo_wr_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(pulse_fifo_wr_en_i_1_n_0),
        .Q(pulse_fifo_wr_en),
        .R(1'b0));
  top_level_block_design_gpio_to_fifo_0_0_shift_register sr0
       (.clk(clk),
        .\data_out_reg[31]_0 (sr1_n_0),
        .emio_gpio_i(emio_gpio_i[1:0]),
        .instr_fifo_dout(instr_fifo_dout));
  top_level_block_design_gpio_to_fifo_0_0_shift_register_0 sr1
       (.clk(clk),
        .emio_gpio_i(emio_gpio_i[5:4]),
        .pulse_fifo_dout(pulse_fifo_dout),
        .rst(rst),
        .rst_0(sr1_n_0));
  FDCE state_i_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(sr1_n_0),
        .D(emio_gpio_i[2]),
        .Q(state_i));
  FDCE state_p_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(sr1_n_0),
        .D(emio_gpio_i[3]),
        .Q(state_p));
endmodule

(* ORIG_REF_NAME = "shift_register" *) 
module top_level_block_design_gpio_to_fifo_0_0_shift_register
   (instr_fifo_dout,
    emio_gpio_i,
    clk,
    \data_out_reg[31]_0 );
  output [31:0]instr_fifo_dout;
  input [1:0]emio_gpio_i;
  input clk;
  input \data_out_reg[31]_0 ;

  wire clk;
  wire \data_out[31]_i_1_n_0 ;
  wire \data_out_reg[31]_0 ;
  wire [1:0]emio_gpio_i;
  wire [31:0]instr_fifo_dout;
  wire state;

  LUT2 #(
    .INIT(4'h2)) 
    \data_out[31]_i_1 
       (.I0(emio_gpio_i[0]),
        .I1(state),
        .O(\data_out[31]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[1]),
        .Q(instr_fifo_dout[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[10] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[11]),
        .Q(instr_fifo_dout[10]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[11] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[12]),
        .Q(instr_fifo_dout[11]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[12] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[13]),
        .Q(instr_fifo_dout[12]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[13] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[14]),
        .Q(instr_fifo_dout[13]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[14] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[15]),
        .Q(instr_fifo_dout[14]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[15] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[16]),
        .Q(instr_fifo_dout[15]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[16] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[17]),
        .Q(instr_fifo_dout[16]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[17] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[18]),
        .Q(instr_fifo_dout[17]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[18] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[19]),
        .Q(instr_fifo_dout[18]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[19] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[20]),
        .Q(instr_fifo_dout[19]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[2]),
        .Q(instr_fifo_dout[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[20] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[21]),
        .Q(instr_fifo_dout[20]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[21] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[22]),
        .Q(instr_fifo_dout[21]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[22] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[23]),
        .Q(instr_fifo_dout[22]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[23] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[24]),
        .Q(instr_fifo_dout[23]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[24] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[25]),
        .Q(instr_fifo_dout[24]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[25] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[26]),
        .Q(instr_fifo_dout[25]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[26] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[27]),
        .Q(instr_fifo_dout[26]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[27] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[28]),
        .Q(instr_fifo_dout[27]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[28] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[29]),
        .Q(instr_fifo_dout[28]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[29] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[30]),
        .Q(instr_fifo_dout[29]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[3]),
        .Q(instr_fifo_dout[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[30] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[31]),
        .Q(instr_fifo_dout[30]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[31] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(emio_gpio_i[1]),
        .Q(instr_fifo_dout[31]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[4]),
        .Q(instr_fifo_dout[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[5]),
        .Q(instr_fifo_dout[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[6]),
        .Q(instr_fifo_dout[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[7]),
        .Q(instr_fifo_dout[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[8]),
        .Q(instr_fifo_dout[7]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[8] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[9]),
        .Q(instr_fifo_dout[8]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[9] 
       (.C(clk),
        .CE(\data_out[31]_i_1_n_0 ),
        .CLR(\data_out_reg[31]_0 ),
        .D(instr_fifo_dout[10]),
        .Q(instr_fifo_dout[9]));
  FDCE #(
    .INIT(1'b0)) 
    state_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(\data_out_reg[31]_0 ),
        .D(emio_gpio_i[0]),
        .Q(state));
endmodule

(* ORIG_REF_NAME = "shift_register" *) 
module top_level_block_design_gpio_to_fifo_0_0_shift_register_0
   (rst_0,
    pulse_fifo_dout,
    emio_gpio_i,
    clk,
    rst);
  output rst_0;
  output [31:0]pulse_fifo_dout;
  input [1:0]emio_gpio_i;
  input clk;
  input rst;

  wire clk;
  wire \data_out[31]_i_1__0_n_0 ;
  wire [1:0]emio_gpio_i;
  wire [31:0]pulse_fifo_dout;
  wire rst;
  wire rst_0;
  wire state;

  LUT2 #(
    .INIT(4'h2)) 
    \data_out[31]_i_1__0 
       (.I0(emio_gpio_i[0]),
        .I1(state),
        .O(\data_out[31]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_out[31]_i_2 
       (.I0(rst),
        .O(rst_0));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[0] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[1]),
        .Q(pulse_fifo_dout[0]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[10] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[11]),
        .Q(pulse_fifo_dout[10]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[11] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[12]),
        .Q(pulse_fifo_dout[11]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[12] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[13]),
        .Q(pulse_fifo_dout[12]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[13] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[14]),
        .Q(pulse_fifo_dout[13]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[14] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[15]),
        .Q(pulse_fifo_dout[14]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[15] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[16]),
        .Q(pulse_fifo_dout[15]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[16] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[17]),
        .Q(pulse_fifo_dout[16]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[17] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[18]),
        .Q(pulse_fifo_dout[17]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[18] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[19]),
        .Q(pulse_fifo_dout[18]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[19] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[20]),
        .Q(pulse_fifo_dout[19]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[1] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[2]),
        .Q(pulse_fifo_dout[1]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[20] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[21]),
        .Q(pulse_fifo_dout[20]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[21] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[22]),
        .Q(pulse_fifo_dout[21]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[22] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[23]),
        .Q(pulse_fifo_dout[22]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[23] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[24]),
        .Q(pulse_fifo_dout[23]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[24] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[25]),
        .Q(pulse_fifo_dout[24]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[25] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[26]),
        .Q(pulse_fifo_dout[25]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[26] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[27]),
        .Q(pulse_fifo_dout[26]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[27] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[28]),
        .Q(pulse_fifo_dout[27]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[28] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[29]),
        .Q(pulse_fifo_dout[28]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[29] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[30]),
        .Q(pulse_fifo_dout[29]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[2] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[3]),
        .Q(pulse_fifo_dout[2]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[30] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[31]),
        .Q(pulse_fifo_dout[30]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[31] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(emio_gpio_i[1]),
        .Q(pulse_fifo_dout[31]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[3] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[4]),
        .Q(pulse_fifo_dout[3]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[4] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[5]),
        .Q(pulse_fifo_dout[4]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[5] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[6]),
        .Q(pulse_fifo_dout[5]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[6] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[7]),
        .Q(pulse_fifo_dout[6]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[7] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[8]),
        .Q(pulse_fifo_dout[7]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[8] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[9]),
        .Q(pulse_fifo_dout[8]));
  FDCE #(
    .INIT(1'b0)) 
    \data_out_reg[9] 
       (.C(clk),
        .CE(\data_out[31]_i_1__0_n_0 ),
        .CLR(rst_0),
        .D(pulse_fifo_dout[10]),
        .Q(pulse_fifo_dout[9]));
  FDCE #(
    .INIT(1'b0)) 
    state_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(rst_0),
        .D(emio_gpio_i[0]),
        .Q(state));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
