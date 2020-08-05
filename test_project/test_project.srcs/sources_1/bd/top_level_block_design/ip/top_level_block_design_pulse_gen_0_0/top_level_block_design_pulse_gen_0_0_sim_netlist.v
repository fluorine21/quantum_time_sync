// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Wed Aug  5 10:01:37 2020
// Host        : pme10D0025 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/James/test_project/test_project.srcs/sources_1/bd/top_level_block_design/ip/top_level_block_design_pulse_gen_0_0/top_level_block_design_pulse_gen_0_0_sim_netlist.v
// Design      : top_level_block_design_pulse_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "top_level_block_design_pulse_gen_0_0,pulse_gen,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "pulse_gen,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module top_level_block_design_pulse_gen_0_0
   (clk,
    rst,
    instr_fifo_empty,
    instr_fifo_data,
    instr_fifo_read,
    pulse_fifo_empty,
    pulse_fifo_data,
    pulse_fifo_read,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    state_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET rst, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN top_level_block_design_usp_rf_data_converter_0_0_clk_dac1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input instr_fifo_empty;
  input [31:0]instr_fifo_data;
  output instr_fifo_read;
  input pulse_fifo_empty;
  input [31:0]pulse_fifo_data;
  output pulse_fifo_read;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [255:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN top_level_block_design_usp_rf_data_converter_0_0_clk_dac1, LAYERED_METADATA undef, INSERT_VIP 0" *) input m_axis_tready;
  output [7:0]state_out;

  wire \<const0> ;
  wire \<const1> ;
  wire clk;
  wire [31:0]instr_fifo_data;
  wire instr_fifo_empty;
  wire instr_fifo_read;
  wire [255:0]m_axis_tdata;
  wire [31:0]pulse_fifo_data;
  wire pulse_fifo_empty;
  wire pulse_fifo_read;
  wire rst;
  wire [3:0]\^state_out ;

  assign m_axis_tvalid = \<const1> ;
  assign state_out[7] = \<const0> ;
  assign state_out[6] = \<const0> ;
  assign state_out[5] = \<const0> ;
  assign state_out[4] = \<const0> ;
  assign state_out[3:0] = \^state_out [3:0];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  top_level_block_design_pulse_gen_0_0_pulse_gen inst
       (.clk(clk),
        .instr_fifo_data(instr_fifo_data),
        .instr_fifo_empty(instr_fifo_empty),
        .instr_fifo_read(instr_fifo_read),
        .m_axis_tdata(m_axis_tdata),
        .pulse_fifo_data({pulse_fifo_data[23:8],pulse_fifo_data[3:0]}),
        .pulse_fifo_empty(pulse_fifo_empty),
        .pulse_fifo_read(pulse_fifo_read),
        .rst(rst),
        .state_out(\^state_out ));
endmodule

(* ORIG_REF_NAME = "pulse_gen" *) 
module top_level_block_design_pulse_gen_0_0_pulse_gen
   (state_out,
    instr_fifo_read,
    m_axis_tdata,
    pulse_fifo_read,
    pulse_fifo_empty,
    instr_fifo_data,
    clk,
    instr_fifo_empty,
    rst,
    pulse_fifo_data);
  output [3:0]state_out;
  output instr_fifo_read;
  output [255:0]m_axis_tdata;
  output pulse_fifo_read;
  input pulse_fifo_empty;
  input [31:0]instr_fifo_data;
  input clk;
  input instr_fifo_empty;
  input rst;
  input [19:0]pulse_fifo_data;

  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_1_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire \FSM_sequential_state[2]_i_7_n_0 ;
  wire \FSM_sequential_state[2]_i_8_n_0 ;
  wire \FSM_sequential_state[2]_i_9_n_0 ;
  wire \FSM_sequential_state[3]_i_10_n_0 ;
  wire \FSM_sequential_state[3]_i_11_n_0 ;
  wire \FSM_sequential_state[3]_i_12_n_0 ;
  wire \FSM_sequential_state[3]_i_13_n_0 ;
  wire \FSM_sequential_state[3]_i_14_n_0 ;
  wire \FSM_sequential_state[3]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_3_n_0 ;
  wire \FSM_sequential_state[3]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_5_n_0 ;
  wire \FSM_sequential_state[3]_i_6_n_0 ;
  wire \FSM_sequential_state[3]_i_7_n_0 ;
  wire \FSM_sequential_state[3]_i_8_n_0 ;
  wire \FSM_sequential_state[3]_i_9_n_0 ;
  wire \amplitude[15]_i_1_n_0 ;
  wire clk;
  wire clock_period;
  wire \clock_period[0]_i_1_n_0 ;
  wire \clock_period[10]_i_1_n_0 ;
  wire \clock_period[11]_i_1_n_0 ;
  wire \clock_period[12]_i_1_n_0 ;
  wire \clock_period[13]_i_1_n_0 ;
  wire \clock_period[14]_i_1_n_0 ;
  wire \clock_period[15]_i_1_n_0 ;
  wire \clock_period[16]_i_1_n_0 ;
  wire \clock_period[17]_i_1_n_0 ;
  wire \clock_period[18]_i_1_n_0 ;
  wire \clock_period[19]_i_1_n_0 ;
  wire \clock_period[1]_i_1_n_0 ;
  wire \clock_period[20]_i_1_n_0 ;
  wire \clock_period[21]_i_1_n_0 ;
  wire \clock_period[22]_i_1_n_0 ;
  wire \clock_period[23]_i_2_n_0 ;
  wire \clock_period[23]_i_3_n_0 ;
  wire \clock_period[2]_i_1_n_0 ;
  wire \clock_period[3]_i_1_n_0 ;
  wire \clock_period[4]_i_1_n_0 ;
  wire \clock_period[5]_i_1_n_0 ;
  wire \clock_period[6]_i_1_n_0 ;
  wire \clock_period[7]_i_1_n_0 ;
  wire \clock_period[8]_i_1_n_0 ;
  wire \clock_period[9]_i_1_n_0 ;
  wire \clock_period_reg_n_0_[0] ;
  wire \clock_period_reg_n_0_[10] ;
  wire \clock_period_reg_n_0_[11] ;
  wire \clock_period_reg_n_0_[12] ;
  wire \clock_period_reg_n_0_[13] ;
  wire \clock_period_reg_n_0_[14] ;
  wire \clock_period_reg_n_0_[15] ;
  wire \clock_period_reg_n_0_[16] ;
  wire \clock_period_reg_n_0_[17] ;
  wire \clock_period_reg_n_0_[18] ;
  wire \clock_period_reg_n_0_[19] ;
  wire \clock_period_reg_n_0_[1] ;
  wire \clock_period_reg_n_0_[20] ;
  wire \clock_period_reg_n_0_[21] ;
  wire \clock_period_reg_n_0_[22] ;
  wire \clock_period_reg_n_0_[23] ;
  wire \clock_period_reg_n_0_[2] ;
  wire \clock_period_reg_n_0_[3] ;
  wire \clock_period_reg_n_0_[4] ;
  wire \clock_period_reg_n_0_[5] ;
  wire \clock_period_reg_n_0_[6] ;
  wire \clock_period_reg_n_0_[7] ;
  wire \clock_period_reg_n_0_[8] ;
  wire \clock_period_reg_n_0_[9] ;
  wire clock_pre_tick;
  wire [23:1]clock_pre_tick0;
  wire coarse_delay;
  wire \coarse_delay[0]_i_1_n_0 ;
  wire \coarse_delay[10]_i_1_n_0 ;
  wire \coarse_delay[10]_i_2_n_0 ;
  wire \coarse_delay[11]_i_1_n_0 ;
  wire \coarse_delay[11]_i_2_n_0 ;
  wire \coarse_delay[12]_i_1_n_0 ;
  wire \coarse_delay[12]_i_2_n_0 ;
  wire \coarse_delay[13]_i_1_n_0 ;
  wire \coarse_delay[14]_i_1_n_0 ;
  wire \coarse_delay[14]_i_2_n_0 ;
  wire \coarse_delay[14]_i_3_n_0 ;
  wire \coarse_delay[15]_i_2_n_0 ;
  wire \coarse_delay[15]_i_3_n_0 ;
  wire \coarse_delay[15]_i_4_n_0 ;
  wire \coarse_delay[15]_i_5_n_0 ;
  wire \coarse_delay[15]_i_6_n_0 ;
  wire \coarse_delay[15]_i_7_n_0 ;
  wire \coarse_delay[15]_i_8_n_0 ;
  wire \coarse_delay[15]_i_9_n_0 ;
  wire \coarse_delay[1]_i_1_n_0 ;
  wire \coarse_delay[2]_i_1_n_0 ;
  wire \coarse_delay[2]_i_2_n_0 ;
  wire \coarse_delay[3]_i_1_n_0 ;
  wire \coarse_delay[3]_i_2_n_0 ;
  wire \coarse_delay[4]_i_1_n_0 ;
  wire \coarse_delay[4]_i_2_n_0 ;
  wire \coarse_delay[5]_i_1_n_0 ;
  wire \coarse_delay[5]_i_2_n_0 ;
  wire \coarse_delay[6]_i_1_n_0 ;
  wire \coarse_delay[6]_i_2_n_0 ;
  wire \coarse_delay[7]_i_1_n_0 ;
  wire \coarse_delay[7]_i_2_n_0 ;
  wire \coarse_delay[8]_i_1_n_0 ;
  wire \coarse_delay[9]_i_1_n_0 ;
  wire \coarse_delay[9]_i_2_n_0 ;
  wire \coarse_delay[9]_i_3_n_0 ;
  wire \coarse_delay_reg_n_0_[0] ;
  wire \coarse_delay_reg_n_0_[10] ;
  wire \coarse_delay_reg_n_0_[11] ;
  wire \coarse_delay_reg_n_0_[12] ;
  wire \coarse_delay_reg_n_0_[13] ;
  wire \coarse_delay_reg_n_0_[14] ;
  wire \coarse_delay_reg_n_0_[15] ;
  wire \coarse_delay_reg_n_0_[1] ;
  wire \coarse_delay_reg_n_0_[2] ;
  wire \coarse_delay_reg_n_0_[3] ;
  wire \coarse_delay_reg_n_0_[4] ;
  wire \coarse_delay_reg_n_0_[5] ;
  wire \coarse_delay_reg_n_0_[6] ;
  wire \coarse_delay_reg_n_0_[7] ;
  wire \coarse_delay_reg_n_0_[8] ;
  wire \coarse_delay_reg_n_0_[9] ;
  wire \dead_pulses[0]_i_1_n_0 ;
  wire \dead_pulses[1]_i_1_n_0 ;
  wire \dead_pulses[2]_i_1_n_0 ;
  wire \dead_pulses[3]_i_1_n_0 ;
  wire \dead_pulses[3]_i_2_n_0 ;
  wire \dead_pulses[4]_i_1_n_0 ;
  wire \dead_pulses[4]_i_2_n_0 ;
  wire \dead_pulses[5]_i_1_n_0 ;
  wire \dead_pulses[5]_i_2_n_0 ;
  wire \dead_pulses[6]_i_1_n_0 ;
  wire \dead_pulses[7]_i_1_n_0 ;
  wire \dead_pulses[7]_i_2_n_0 ;
  wire \dead_pulses[7]_i_3_n_0 ;
  wire \dead_pulses[7]_i_4_n_0 ;
  wire \dead_pulses[7]_i_5_n_0 ;
  wire \dead_pulses_reg_n_0_[0] ;
  wire \dead_pulses_reg_n_0_[1] ;
  wire \dead_pulses_reg_n_0_[2] ;
  wire \dead_pulses_reg_n_0_[3] ;
  wire \dead_pulses_reg_n_0_[4] ;
  wire \dead_pulses_reg_n_0_[5] ;
  wire \dead_pulses_reg_n_0_[6] ;
  wire \dead_pulses_reg_n_0_[7] ;
  wire [255:240]default_pulse;
  wire fine_delay;
  wire \fine_delay[0]_i_1_n_0 ;
  wire \fine_delay[1]_i_1_n_0 ;
  wire \fine_delay[2]_i_1_n_0 ;
  wire \fine_delay[3]_i_2_n_0 ;
  wire [31:0]instr_fifo_data;
  wire instr_fifo_empty;
  wire instr_fifo_read;
  wire instr_fifo_read_i_1_n_0;
  wire instr_fifo_read_i_2_n_0;
  wire is_phase_meas_mode_i_1_n_0;
  wire is_phase_meas_mode_i_2_n_0;
  wire is_phase_meas_mode_i_3_n_0;
  wire is_phase_meas_mode_reg_n_0;
  wire [255:0]m_axis_tdata;
  wire \m_axis_tdata[255]_INST_0_i_10_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_11_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_12_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_4_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_5_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_6_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_7_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_8_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_9_n_0 ;
  wire m_axis_tdata_int;
  wire [255:0]m_axis_tdata_int0_in;
  wire [7:4]m_axis_tdata_int1;
  wire \m_axis_tdata_int[127]_i_2_n_0 ;
  wire \m_axis_tdata_int[240]_i_2_n_0 ;
  wire \m_axis_tdata_int[241]_i_2_n_0 ;
  wire \m_axis_tdata_int[242]_i_2_n_0 ;
  wire \m_axis_tdata_int[243]_i_2_n_0 ;
  wire \m_axis_tdata_int[244]_i_2_n_0 ;
  wire \m_axis_tdata_int[245]_i_2_n_0 ;
  wire \m_axis_tdata_int[246]_i_2_n_0 ;
  wire \m_axis_tdata_int[247]_i_2_n_0 ;
  wire \m_axis_tdata_int[248]_i_2_n_0 ;
  wire \m_axis_tdata_int[249]_i_2_n_0 ;
  wire \m_axis_tdata_int[250]_i_2_n_0 ;
  wire \m_axis_tdata_int[251]_i_2_n_0 ;
  wire \m_axis_tdata_int[252]_i_2_n_0 ;
  wire \m_axis_tdata_int[253]_i_2_n_0 ;
  wire \m_axis_tdata_int[254]_i_2_n_0 ;
  wire \m_axis_tdata_int[255]_i_3_n_0 ;
  wire \m_axis_tdata_int[255]_i_4_n_0 ;
  wire \m_axis_tdata_int[255]_i_5_n_0 ;
  wire \m_axis_tdata_int[255]_i_6_n_0 ;
  wire \m_axis_tdata_int_reg_n_0_[0] ;
  wire \m_axis_tdata_int_reg_n_0_[100] ;
  wire \m_axis_tdata_int_reg_n_0_[101] ;
  wire \m_axis_tdata_int_reg_n_0_[102] ;
  wire \m_axis_tdata_int_reg_n_0_[103] ;
  wire \m_axis_tdata_int_reg_n_0_[104] ;
  wire \m_axis_tdata_int_reg_n_0_[105] ;
  wire \m_axis_tdata_int_reg_n_0_[106] ;
  wire \m_axis_tdata_int_reg_n_0_[107] ;
  wire \m_axis_tdata_int_reg_n_0_[108] ;
  wire \m_axis_tdata_int_reg_n_0_[109] ;
  wire \m_axis_tdata_int_reg_n_0_[10] ;
  wire \m_axis_tdata_int_reg_n_0_[110] ;
  wire \m_axis_tdata_int_reg_n_0_[111] ;
  wire \m_axis_tdata_int_reg_n_0_[112] ;
  wire \m_axis_tdata_int_reg_n_0_[113] ;
  wire \m_axis_tdata_int_reg_n_0_[114] ;
  wire \m_axis_tdata_int_reg_n_0_[115] ;
  wire \m_axis_tdata_int_reg_n_0_[116] ;
  wire \m_axis_tdata_int_reg_n_0_[117] ;
  wire \m_axis_tdata_int_reg_n_0_[118] ;
  wire \m_axis_tdata_int_reg_n_0_[119] ;
  wire \m_axis_tdata_int_reg_n_0_[11] ;
  wire \m_axis_tdata_int_reg_n_0_[120] ;
  wire \m_axis_tdata_int_reg_n_0_[121] ;
  wire \m_axis_tdata_int_reg_n_0_[122] ;
  wire \m_axis_tdata_int_reg_n_0_[123] ;
  wire \m_axis_tdata_int_reg_n_0_[124] ;
  wire \m_axis_tdata_int_reg_n_0_[125] ;
  wire \m_axis_tdata_int_reg_n_0_[126] ;
  wire \m_axis_tdata_int_reg_n_0_[127] ;
  wire \m_axis_tdata_int_reg_n_0_[128] ;
  wire \m_axis_tdata_int_reg_n_0_[129] ;
  wire \m_axis_tdata_int_reg_n_0_[12] ;
  wire \m_axis_tdata_int_reg_n_0_[130] ;
  wire \m_axis_tdata_int_reg_n_0_[131] ;
  wire \m_axis_tdata_int_reg_n_0_[132] ;
  wire \m_axis_tdata_int_reg_n_0_[133] ;
  wire \m_axis_tdata_int_reg_n_0_[134] ;
  wire \m_axis_tdata_int_reg_n_0_[135] ;
  wire \m_axis_tdata_int_reg_n_0_[136] ;
  wire \m_axis_tdata_int_reg_n_0_[137] ;
  wire \m_axis_tdata_int_reg_n_0_[138] ;
  wire \m_axis_tdata_int_reg_n_0_[139] ;
  wire \m_axis_tdata_int_reg_n_0_[13] ;
  wire \m_axis_tdata_int_reg_n_0_[140] ;
  wire \m_axis_tdata_int_reg_n_0_[141] ;
  wire \m_axis_tdata_int_reg_n_0_[142] ;
  wire \m_axis_tdata_int_reg_n_0_[143] ;
  wire \m_axis_tdata_int_reg_n_0_[144] ;
  wire \m_axis_tdata_int_reg_n_0_[145] ;
  wire \m_axis_tdata_int_reg_n_0_[146] ;
  wire \m_axis_tdata_int_reg_n_0_[147] ;
  wire \m_axis_tdata_int_reg_n_0_[148] ;
  wire \m_axis_tdata_int_reg_n_0_[149] ;
  wire \m_axis_tdata_int_reg_n_0_[14] ;
  wire \m_axis_tdata_int_reg_n_0_[150] ;
  wire \m_axis_tdata_int_reg_n_0_[151] ;
  wire \m_axis_tdata_int_reg_n_0_[152] ;
  wire \m_axis_tdata_int_reg_n_0_[153] ;
  wire \m_axis_tdata_int_reg_n_0_[154] ;
  wire \m_axis_tdata_int_reg_n_0_[155] ;
  wire \m_axis_tdata_int_reg_n_0_[156] ;
  wire \m_axis_tdata_int_reg_n_0_[157] ;
  wire \m_axis_tdata_int_reg_n_0_[158] ;
  wire \m_axis_tdata_int_reg_n_0_[159] ;
  wire \m_axis_tdata_int_reg_n_0_[15] ;
  wire \m_axis_tdata_int_reg_n_0_[160] ;
  wire \m_axis_tdata_int_reg_n_0_[161] ;
  wire \m_axis_tdata_int_reg_n_0_[162] ;
  wire \m_axis_tdata_int_reg_n_0_[163] ;
  wire \m_axis_tdata_int_reg_n_0_[164] ;
  wire \m_axis_tdata_int_reg_n_0_[165] ;
  wire \m_axis_tdata_int_reg_n_0_[166] ;
  wire \m_axis_tdata_int_reg_n_0_[167] ;
  wire \m_axis_tdata_int_reg_n_0_[168] ;
  wire \m_axis_tdata_int_reg_n_0_[169] ;
  wire \m_axis_tdata_int_reg_n_0_[16] ;
  wire \m_axis_tdata_int_reg_n_0_[170] ;
  wire \m_axis_tdata_int_reg_n_0_[171] ;
  wire \m_axis_tdata_int_reg_n_0_[172] ;
  wire \m_axis_tdata_int_reg_n_0_[173] ;
  wire \m_axis_tdata_int_reg_n_0_[174] ;
  wire \m_axis_tdata_int_reg_n_0_[175] ;
  wire \m_axis_tdata_int_reg_n_0_[176] ;
  wire \m_axis_tdata_int_reg_n_0_[177] ;
  wire \m_axis_tdata_int_reg_n_0_[178] ;
  wire \m_axis_tdata_int_reg_n_0_[179] ;
  wire \m_axis_tdata_int_reg_n_0_[17] ;
  wire \m_axis_tdata_int_reg_n_0_[180] ;
  wire \m_axis_tdata_int_reg_n_0_[181] ;
  wire \m_axis_tdata_int_reg_n_0_[182] ;
  wire \m_axis_tdata_int_reg_n_0_[183] ;
  wire \m_axis_tdata_int_reg_n_0_[184] ;
  wire \m_axis_tdata_int_reg_n_0_[185] ;
  wire \m_axis_tdata_int_reg_n_0_[186] ;
  wire \m_axis_tdata_int_reg_n_0_[187] ;
  wire \m_axis_tdata_int_reg_n_0_[188] ;
  wire \m_axis_tdata_int_reg_n_0_[189] ;
  wire \m_axis_tdata_int_reg_n_0_[18] ;
  wire \m_axis_tdata_int_reg_n_0_[190] ;
  wire \m_axis_tdata_int_reg_n_0_[191] ;
  wire \m_axis_tdata_int_reg_n_0_[192] ;
  wire \m_axis_tdata_int_reg_n_0_[193] ;
  wire \m_axis_tdata_int_reg_n_0_[194] ;
  wire \m_axis_tdata_int_reg_n_0_[195] ;
  wire \m_axis_tdata_int_reg_n_0_[196] ;
  wire \m_axis_tdata_int_reg_n_0_[197] ;
  wire \m_axis_tdata_int_reg_n_0_[198] ;
  wire \m_axis_tdata_int_reg_n_0_[199] ;
  wire \m_axis_tdata_int_reg_n_0_[19] ;
  wire \m_axis_tdata_int_reg_n_0_[1] ;
  wire \m_axis_tdata_int_reg_n_0_[200] ;
  wire \m_axis_tdata_int_reg_n_0_[201] ;
  wire \m_axis_tdata_int_reg_n_0_[202] ;
  wire \m_axis_tdata_int_reg_n_0_[203] ;
  wire \m_axis_tdata_int_reg_n_0_[204] ;
  wire \m_axis_tdata_int_reg_n_0_[205] ;
  wire \m_axis_tdata_int_reg_n_0_[206] ;
  wire \m_axis_tdata_int_reg_n_0_[207] ;
  wire \m_axis_tdata_int_reg_n_0_[208] ;
  wire \m_axis_tdata_int_reg_n_0_[209] ;
  wire \m_axis_tdata_int_reg_n_0_[20] ;
  wire \m_axis_tdata_int_reg_n_0_[210] ;
  wire \m_axis_tdata_int_reg_n_0_[211] ;
  wire \m_axis_tdata_int_reg_n_0_[212] ;
  wire \m_axis_tdata_int_reg_n_0_[213] ;
  wire \m_axis_tdata_int_reg_n_0_[214] ;
  wire \m_axis_tdata_int_reg_n_0_[215] ;
  wire \m_axis_tdata_int_reg_n_0_[216] ;
  wire \m_axis_tdata_int_reg_n_0_[217] ;
  wire \m_axis_tdata_int_reg_n_0_[218] ;
  wire \m_axis_tdata_int_reg_n_0_[219] ;
  wire \m_axis_tdata_int_reg_n_0_[21] ;
  wire \m_axis_tdata_int_reg_n_0_[220] ;
  wire \m_axis_tdata_int_reg_n_0_[221] ;
  wire \m_axis_tdata_int_reg_n_0_[222] ;
  wire \m_axis_tdata_int_reg_n_0_[223] ;
  wire \m_axis_tdata_int_reg_n_0_[224] ;
  wire \m_axis_tdata_int_reg_n_0_[225] ;
  wire \m_axis_tdata_int_reg_n_0_[226] ;
  wire \m_axis_tdata_int_reg_n_0_[227] ;
  wire \m_axis_tdata_int_reg_n_0_[228] ;
  wire \m_axis_tdata_int_reg_n_0_[229] ;
  wire \m_axis_tdata_int_reg_n_0_[22] ;
  wire \m_axis_tdata_int_reg_n_0_[230] ;
  wire \m_axis_tdata_int_reg_n_0_[231] ;
  wire \m_axis_tdata_int_reg_n_0_[232] ;
  wire \m_axis_tdata_int_reg_n_0_[233] ;
  wire \m_axis_tdata_int_reg_n_0_[234] ;
  wire \m_axis_tdata_int_reg_n_0_[235] ;
  wire \m_axis_tdata_int_reg_n_0_[236] ;
  wire \m_axis_tdata_int_reg_n_0_[237] ;
  wire \m_axis_tdata_int_reg_n_0_[238] ;
  wire \m_axis_tdata_int_reg_n_0_[239] ;
  wire \m_axis_tdata_int_reg_n_0_[23] ;
  wire \m_axis_tdata_int_reg_n_0_[240] ;
  wire \m_axis_tdata_int_reg_n_0_[241] ;
  wire \m_axis_tdata_int_reg_n_0_[242] ;
  wire \m_axis_tdata_int_reg_n_0_[243] ;
  wire \m_axis_tdata_int_reg_n_0_[244] ;
  wire \m_axis_tdata_int_reg_n_0_[245] ;
  wire \m_axis_tdata_int_reg_n_0_[246] ;
  wire \m_axis_tdata_int_reg_n_0_[247] ;
  wire \m_axis_tdata_int_reg_n_0_[248] ;
  wire \m_axis_tdata_int_reg_n_0_[249] ;
  wire \m_axis_tdata_int_reg_n_0_[24] ;
  wire \m_axis_tdata_int_reg_n_0_[250] ;
  wire \m_axis_tdata_int_reg_n_0_[251] ;
  wire \m_axis_tdata_int_reg_n_0_[252] ;
  wire \m_axis_tdata_int_reg_n_0_[253] ;
  wire \m_axis_tdata_int_reg_n_0_[254] ;
  wire \m_axis_tdata_int_reg_n_0_[255] ;
  wire \m_axis_tdata_int_reg_n_0_[25] ;
  wire \m_axis_tdata_int_reg_n_0_[26] ;
  wire \m_axis_tdata_int_reg_n_0_[27] ;
  wire \m_axis_tdata_int_reg_n_0_[28] ;
  wire \m_axis_tdata_int_reg_n_0_[29] ;
  wire \m_axis_tdata_int_reg_n_0_[2] ;
  wire \m_axis_tdata_int_reg_n_0_[30] ;
  wire \m_axis_tdata_int_reg_n_0_[31] ;
  wire \m_axis_tdata_int_reg_n_0_[32] ;
  wire \m_axis_tdata_int_reg_n_0_[33] ;
  wire \m_axis_tdata_int_reg_n_0_[34] ;
  wire \m_axis_tdata_int_reg_n_0_[35] ;
  wire \m_axis_tdata_int_reg_n_0_[36] ;
  wire \m_axis_tdata_int_reg_n_0_[37] ;
  wire \m_axis_tdata_int_reg_n_0_[38] ;
  wire \m_axis_tdata_int_reg_n_0_[39] ;
  wire \m_axis_tdata_int_reg_n_0_[3] ;
  wire \m_axis_tdata_int_reg_n_0_[40] ;
  wire \m_axis_tdata_int_reg_n_0_[41] ;
  wire \m_axis_tdata_int_reg_n_0_[42] ;
  wire \m_axis_tdata_int_reg_n_0_[43] ;
  wire \m_axis_tdata_int_reg_n_0_[44] ;
  wire \m_axis_tdata_int_reg_n_0_[45] ;
  wire \m_axis_tdata_int_reg_n_0_[46] ;
  wire \m_axis_tdata_int_reg_n_0_[47] ;
  wire \m_axis_tdata_int_reg_n_0_[48] ;
  wire \m_axis_tdata_int_reg_n_0_[49] ;
  wire \m_axis_tdata_int_reg_n_0_[4] ;
  wire \m_axis_tdata_int_reg_n_0_[50] ;
  wire \m_axis_tdata_int_reg_n_0_[51] ;
  wire \m_axis_tdata_int_reg_n_0_[52] ;
  wire \m_axis_tdata_int_reg_n_0_[53] ;
  wire \m_axis_tdata_int_reg_n_0_[54] ;
  wire \m_axis_tdata_int_reg_n_0_[55] ;
  wire \m_axis_tdata_int_reg_n_0_[56] ;
  wire \m_axis_tdata_int_reg_n_0_[57] ;
  wire \m_axis_tdata_int_reg_n_0_[58] ;
  wire \m_axis_tdata_int_reg_n_0_[59] ;
  wire \m_axis_tdata_int_reg_n_0_[5] ;
  wire \m_axis_tdata_int_reg_n_0_[60] ;
  wire \m_axis_tdata_int_reg_n_0_[61] ;
  wire \m_axis_tdata_int_reg_n_0_[62] ;
  wire \m_axis_tdata_int_reg_n_0_[63] ;
  wire \m_axis_tdata_int_reg_n_0_[64] ;
  wire \m_axis_tdata_int_reg_n_0_[65] ;
  wire \m_axis_tdata_int_reg_n_0_[66] ;
  wire \m_axis_tdata_int_reg_n_0_[67] ;
  wire \m_axis_tdata_int_reg_n_0_[68] ;
  wire \m_axis_tdata_int_reg_n_0_[69] ;
  wire \m_axis_tdata_int_reg_n_0_[6] ;
  wire \m_axis_tdata_int_reg_n_0_[70] ;
  wire \m_axis_tdata_int_reg_n_0_[71] ;
  wire \m_axis_tdata_int_reg_n_0_[72] ;
  wire \m_axis_tdata_int_reg_n_0_[73] ;
  wire \m_axis_tdata_int_reg_n_0_[74] ;
  wire \m_axis_tdata_int_reg_n_0_[75] ;
  wire \m_axis_tdata_int_reg_n_0_[76] ;
  wire \m_axis_tdata_int_reg_n_0_[77] ;
  wire \m_axis_tdata_int_reg_n_0_[78] ;
  wire \m_axis_tdata_int_reg_n_0_[79] ;
  wire \m_axis_tdata_int_reg_n_0_[7] ;
  wire \m_axis_tdata_int_reg_n_0_[80] ;
  wire \m_axis_tdata_int_reg_n_0_[81] ;
  wire \m_axis_tdata_int_reg_n_0_[82] ;
  wire \m_axis_tdata_int_reg_n_0_[83] ;
  wire \m_axis_tdata_int_reg_n_0_[84] ;
  wire \m_axis_tdata_int_reg_n_0_[85] ;
  wire \m_axis_tdata_int_reg_n_0_[86] ;
  wire \m_axis_tdata_int_reg_n_0_[87] ;
  wire \m_axis_tdata_int_reg_n_0_[88] ;
  wire \m_axis_tdata_int_reg_n_0_[89] ;
  wire \m_axis_tdata_int_reg_n_0_[8] ;
  wire \m_axis_tdata_int_reg_n_0_[90] ;
  wire \m_axis_tdata_int_reg_n_0_[91] ;
  wire \m_axis_tdata_int_reg_n_0_[92] ;
  wire \m_axis_tdata_int_reg_n_0_[93] ;
  wire \m_axis_tdata_int_reg_n_0_[94] ;
  wire \m_axis_tdata_int_reg_n_0_[95] ;
  wire \m_axis_tdata_int_reg_n_0_[96] ;
  wire \m_axis_tdata_int_reg_n_0_[97] ;
  wire \m_axis_tdata_int_reg_n_0_[98] ;
  wire \m_axis_tdata_int_reg_n_0_[99] ;
  wire \m_axis_tdata_int_reg_n_0_[9] ;
  wire [45:0]main_clock;
  wire [45:1]main_clock0;
  wire \main_clock[45]_i_10_n_0 ;
  wire \main_clock[45]_i_11_n_0 ;
  wire \main_clock[45]_i_12_n_0 ;
  wire \main_clock[45]_i_13_n_0 ;
  wire \main_clock[45]_i_14_n_0 ;
  wire \main_clock[45]_i_15_n_0 ;
  wire \main_clock[45]_i_16_n_0 ;
  wire \main_clock[45]_i_17_n_0 ;
  wire \main_clock[45]_i_18_n_0 ;
  wire \main_clock[45]_i_20_n_0 ;
  wire \main_clock[45]_i_21_n_0 ;
  wire \main_clock[45]_i_22_n_0 ;
  wire \main_clock[45]_i_23_n_0 ;
  wire \main_clock[45]_i_24_n_0 ;
  wire \main_clock[45]_i_25_n_0 ;
  wire \main_clock[45]_i_26_n_0 ;
  wire \main_clock[45]_i_27_n_0 ;
  wire \main_clock[45]_i_28_n_0 ;
  wire \main_clock[45]_i_29_n_0 ;
  wire \main_clock[45]_i_30_n_0 ;
  wire \main_clock[45]_i_31_n_0 ;
  wire \main_clock[45]_i_32_n_0 ;
  wire \main_clock[45]_i_33_n_0 ;
  wire \main_clock[45]_i_34_n_0 ;
  wire \main_clock[45]_i_35_n_0 ;
  wire \main_clock[45]_i_37_n_0 ;
  wire \main_clock[45]_i_38_n_0 ;
  wire \main_clock[45]_i_39_n_0 ;
  wire \main_clock[45]_i_40_n_0 ;
  wire \main_clock[45]_i_41_n_0 ;
  wire \main_clock[45]_i_42_n_0 ;
  wire \main_clock[45]_i_43_n_0 ;
  wire \main_clock[45]_i_44_n_0 ;
  wire \main_clock[45]_i_45_n_0 ;
  wire \main_clock[45]_i_46_n_0 ;
  wire \main_clock[45]_i_47_n_0 ;
  wire \main_clock[45]_i_48_n_0 ;
  wire \main_clock[45]_i_49_n_0 ;
  wire \main_clock[45]_i_50_n_0 ;
  wire \main_clock[45]_i_51_n_0 ;
  wire \main_clock[45]_i_52_n_0 ;
  wire \main_clock[45]_i_54_n_0 ;
  wire \main_clock[45]_i_55_n_0 ;
  wire \main_clock[45]_i_56_n_0 ;
  wire \main_clock[45]_i_57_n_0 ;
  wire \main_clock[45]_i_58_n_0 ;
  wire \main_clock[45]_i_59_n_0 ;
  wire \main_clock[45]_i_5_n_0 ;
  wire \main_clock[45]_i_60_n_0 ;
  wire \main_clock[45]_i_62_n_0 ;
  wire \main_clock[45]_i_63_n_0 ;
  wire \main_clock[45]_i_64_n_0 ;
  wire \main_clock[45]_i_65_n_0 ;
  wire \main_clock[45]_i_66_n_0 ;
  wire \main_clock[45]_i_67_n_0 ;
  wire \main_clock[45]_i_68_n_0 ;
  wire \main_clock[45]_i_69_n_0 ;
  wire \main_clock[45]_i_6_n_0 ;
  wire \main_clock[45]_i_70_n_0 ;
  wire \main_clock[45]_i_71_n_0 ;
  wire \main_clock[45]_i_72_n_0 ;
  wire \main_clock[45]_i_73_n_0 ;
  wire \main_clock[45]_i_74_n_0 ;
  wire \main_clock[45]_i_75_n_0 ;
  wire \main_clock[45]_i_76_n_0 ;
  wire \main_clock[45]_i_77_n_0 ;
  wire \main_clock[45]_i_7_n_0 ;
  wire \main_clock[45]_i_8_n_0 ;
  wire \main_clock[45]_i_9_n_0 ;
  wire \main_clock_reg[16]_i_2_n_0 ;
  wire \main_clock_reg[16]_i_2_n_1 ;
  wire \main_clock_reg[16]_i_2_n_2 ;
  wire \main_clock_reg[16]_i_2_n_3 ;
  wire \main_clock_reg[16]_i_2_n_4 ;
  wire \main_clock_reg[16]_i_2_n_5 ;
  wire \main_clock_reg[16]_i_2_n_6 ;
  wire \main_clock_reg[16]_i_2_n_7 ;
  wire \main_clock_reg[24]_i_2_n_0 ;
  wire \main_clock_reg[24]_i_2_n_1 ;
  wire \main_clock_reg[24]_i_2_n_2 ;
  wire \main_clock_reg[24]_i_2_n_3 ;
  wire \main_clock_reg[24]_i_2_n_4 ;
  wire \main_clock_reg[24]_i_2_n_5 ;
  wire \main_clock_reg[24]_i_2_n_6 ;
  wire \main_clock_reg[24]_i_2_n_7 ;
  wire \main_clock_reg[32]_i_2_n_0 ;
  wire \main_clock_reg[32]_i_2_n_1 ;
  wire \main_clock_reg[32]_i_2_n_2 ;
  wire \main_clock_reg[32]_i_2_n_3 ;
  wire \main_clock_reg[32]_i_2_n_4 ;
  wire \main_clock_reg[32]_i_2_n_5 ;
  wire \main_clock_reg[32]_i_2_n_6 ;
  wire \main_clock_reg[32]_i_2_n_7 ;
  wire \main_clock_reg[40]_i_2_n_0 ;
  wire \main_clock_reg[40]_i_2_n_1 ;
  wire \main_clock_reg[40]_i_2_n_2 ;
  wire \main_clock_reg[40]_i_2_n_3 ;
  wire \main_clock_reg[40]_i_2_n_4 ;
  wire \main_clock_reg[40]_i_2_n_5 ;
  wire \main_clock_reg[40]_i_2_n_6 ;
  wire \main_clock_reg[40]_i_2_n_7 ;
  wire \main_clock_reg[45]_i_19_n_0 ;
  wire \main_clock_reg[45]_i_19_n_1 ;
  wire \main_clock_reg[45]_i_19_n_2 ;
  wire \main_clock_reg[45]_i_19_n_3 ;
  wire \main_clock_reg[45]_i_19_n_4 ;
  wire \main_clock_reg[45]_i_19_n_5 ;
  wire \main_clock_reg[45]_i_19_n_6 ;
  wire \main_clock_reg[45]_i_19_n_7 ;
  wire \main_clock_reg[45]_i_2_n_4 ;
  wire \main_clock_reg[45]_i_2_n_5 ;
  wire \main_clock_reg[45]_i_2_n_6 ;
  wire \main_clock_reg[45]_i_2_n_7 ;
  wire \main_clock_reg[45]_i_36_n_0 ;
  wire \main_clock_reg[45]_i_36_n_2 ;
  wire \main_clock_reg[45]_i_36_n_3 ;
  wire \main_clock_reg[45]_i_36_n_4 ;
  wire \main_clock_reg[45]_i_36_n_5 ;
  wire \main_clock_reg[45]_i_36_n_6 ;
  wire \main_clock_reg[45]_i_36_n_7 ;
  wire \main_clock_reg[45]_i_3_n_2 ;
  wire \main_clock_reg[45]_i_3_n_3 ;
  wire \main_clock_reg[45]_i_3_n_4 ;
  wire \main_clock_reg[45]_i_3_n_5 ;
  wire \main_clock_reg[45]_i_3_n_6 ;
  wire \main_clock_reg[45]_i_3_n_7 ;
  wire \main_clock_reg[45]_i_4_n_0 ;
  wire \main_clock_reg[45]_i_4_n_1 ;
  wire \main_clock_reg[45]_i_4_n_2 ;
  wire \main_clock_reg[45]_i_4_n_3 ;
  wire \main_clock_reg[45]_i_4_n_4 ;
  wire \main_clock_reg[45]_i_4_n_5 ;
  wire \main_clock_reg[45]_i_4_n_6 ;
  wire \main_clock_reg[45]_i_4_n_7 ;
  wire \main_clock_reg[45]_i_53_n_0 ;
  wire \main_clock_reg[45]_i_53_n_1 ;
  wire \main_clock_reg[45]_i_53_n_2 ;
  wire \main_clock_reg[45]_i_53_n_3 ;
  wire \main_clock_reg[45]_i_53_n_4 ;
  wire \main_clock_reg[45]_i_53_n_5 ;
  wire \main_clock_reg[45]_i_53_n_6 ;
  wire \main_clock_reg[45]_i_53_n_7 ;
  wire \main_clock_reg[45]_i_61_n_0 ;
  wire \main_clock_reg[45]_i_61_n_1 ;
  wire \main_clock_reg[45]_i_61_n_2 ;
  wire \main_clock_reg[45]_i_61_n_3 ;
  wire \main_clock_reg[45]_i_61_n_4 ;
  wire \main_clock_reg[45]_i_61_n_5 ;
  wire \main_clock_reg[45]_i_61_n_6 ;
  wire \main_clock_reg[45]_i_61_n_7 ;
  wire \main_clock_reg[8]_i_2_n_0 ;
  wire \main_clock_reg[8]_i_2_n_1 ;
  wire \main_clock_reg[8]_i_2_n_2 ;
  wire \main_clock_reg[8]_i_2_n_3 ;
  wire \main_clock_reg[8]_i_2_n_4 ;
  wire \main_clock_reg[8]_i_2_n_5 ;
  wire \main_clock_reg[8]_i_2_n_6 ;
  wire \main_clock_reg[8]_i_2_n_7 ;
  wire [45:0]p_0_in;
  wire [19:0]pulse_fifo_data;
  wire pulse_fifo_empty;
  wire pulse_fifo_read;
  wire pulse_fifo_read_i_10_n_0;
  wire pulse_fifo_read_i_11_n_0;
  wire pulse_fifo_read_i_1_n_0;
  wire pulse_fifo_read_i_2_n_0;
  wire pulse_fifo_read_i_3_n_0;
  wire pulse_fifo_read_i_4_n_0;
  wire pulse_fifo_read_i_5_n_0;
  wire pulse_fifo_read_i_6_n_0;
  wire pulse_fifo_read_i_7_n_0;
  wire pulse_fifo_read_i_8_n_0;
  wire pulse_fifo_read_i_9_n_0;
  wire [15:0]pulses_to_send;
  wire \pulses_to_send[10]_i_2_n_0 ;
  wire \pulses_to_send[11]_i_2_n_0 ;
  wire \pulses_to_send[13]_i_2_n_0 ;
  wire \pulses_to_send[13]_i_3_n_0 ;
  wire \pulses_to_send[14]_i_2_n_0 ;
  wire \pulses_to_send[15]_i_1_n_0 ;
  wire \pulses_to_send[15]_i_3_n_0 ;
  wire \pulses_to_send[15]_i_4_n_0 ;
  wire \pulses_to_send[15]_i_5_n_0 ;
  wire \pulses_to_send[15]_i_6_n_0 ;
  wire \pulses_to_send[15]_i_7_n_0 ;
  wire \pulses_to_send[3]_i_2_n_0 ;
  wire \pulses_to_send[5]_i_2_n_0 ;
  wire \pulses_to_send[7]_i_2_n_0 ;
  wire \pulses_to_send[8]_i_2_n_0 ;
  wire \pulses_to_send_reg_n_0_[0] ;
  wire \pulses_to_send_reg_n_0_[10] ;
  wire \pulses_to_send_reg_n_0_[11] ;
  wire \pulses_to_send_reg_n_0_[12] ;
  wire \pulses_to_send_reg_n_0_[13] ;
  wire \pulses_to_send_reg_n_0_[14] ;
  wire \pulses_to_send_reg_n_0_[15] ;
  wire \pulses_to_send_reg_n_0_[1] ;
  wire \pulses_to_send_reg_n_0_[2] ;
  wire \pulses_to_send_reg_n_0_[3] ;
  wire \pulses_to_send_reg_n_0_[4] ;
  wire \pulses_to_send_reg_n_0_[5] ;
  wire \pulses_to_send_reg_n_0_[6] ;
  wire \pulses_to_send_reg_n_0_[7] ;
  wire \pulses_to_send_reg_n_0_[8] ;
  wire \pulses_to_send_reg_n_0_[9] ;
  wire rst;
  wire rst_clock_i_1_n_0;
  wire rst_clock_i_2_n_0;
  wire rst_clock_i_3_n_0;
  wire rst_clock_reg_n_0;
  wire [3:0]state__0;
  wire [3:0]state__1;
  wire [3:0]state_out;
  wire [7:0]\NLW_main_clock_reg[45]_i_19_O_UNCONNECTED ;
  wire [7:4]\NLW_main_clock_reg[45]_i_2_CO_UNCONNECTED ;
  wire [7:5]\NLW_main_clock_reg[45]_i_2_O_UNCONNECTED ;
  wire [7:7]\NLW_main_clock_reg[45]_i_3_CO_UNCONNECTED ;
  wire [7:0]\NLW_main_clock_reg[45]_i_3_O_UNCONNECTED ;
  wire [6:6]\NLW_main_clock_reg[45]_i_36_CO_UNCONNECTED ;
  wire [7:7]\NLW_main_clock_reg[45]_i_36_O_UNCONNECTED ;
  wire [7:0]\NLW_main_clock_reg[45]_i_4_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFF00003100)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(\FSM_sequential_state[2]_i_5_n_0 ),
        .I3(state__0[3]),
        .I4(state__0[2]),
        .I5(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(state__1[0]));
  LUT6 #(
    .INIT(64'h0100010105040101)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(state__0[3]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[0]_i_3_n_0 ),
        .I4(state__0[1]),
        .I5(pulse_fifo_empty),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(\FSM_sequential_state[3]_i_8_n_0 ),
        .I1(instr_fifo_data[24]),
        .I2(instr_fifo_data[25]),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF04400400)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[3]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(\FSM_sequential_state[2]_i_5_n_0 ),
        .I5(\FSM_sequential_state[1]_i_2_n_0 ),
        .O(state__1[1]));
  LUT6 #(
    .INIT(64'h0003130000001000)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(pulse_fifo_empty),
        .I1(state__0[3]),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .I5(\FSM_sequential_state[1]_i_3_n_0 ),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hABEAAAAA)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(state__0[0]),
        .I1(instr_fifo_data[25]),
        .I2(instr_fifo_data[26]),
        .I3(instr_fifo_data[24]),
        .I4(\FSM_sequential_state[3]_i_8_n_0 ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4545554545454545)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state__0[3]),
        .I1(\FSM_sequential_state[2]_i_2_n_0 ),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(\FSM_sequential_state[2]_i_4_n_0 ),
        .I4(state__0[2]),
        .I5(\FSM_sequential_state[2]_i_5_n_0 ),
        .O(\FSM_sequential_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008888800)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\FSM_sequential_state[3]_i_8_n_0 ),
        .I1(instr_fifo_data[26]),
        .I2(pulse_fifo_empty),
        .I3(instr_fifo_data[24]),
        .I4(instr_fifo_data[25]),
        .I5(\FSM_sequential_state[2]_i_6_n_0 ),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(pulse_fifo_empty),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(\FSM_sequential_state[2]_i_7_n_0 ),
        .I1(\coarse_delay[4]_i_2_n_0 ),
        .I2(\FSM_sequential_state[2]_i_8_n_0 ),
        .I3(\coarse_delay_reg_n_0_[15] ),
        .I4(\coarse_delay_reg_n_0_[13] ),
        .I5(\FSM_sequential_state[2]_i_9_n_0 ),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_7 
       (.I0(\coarse_delay_reg_n_0_[5] ),
        .I1(\coarse_delay_reg_n_0_[4] ),
        .I2(\coarse_delay_reg_n_0_[6] ),
        .I3(\coarse_delay_reg_n_0_[7] ),
        .O(\FSM_sequential_state[2]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[2]_i_8 
       (.I0(\coarse_delay_reg_n_0_[12] ),
        .I1(\coarse_delay_reg_n_0_[14] ),
        .O(\FSM_sequential_state[2]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[2]_i_9 
       (.I0(\coarse_delay_reg_n_0_[11] ),
        .I1(\coarse_delay_reg_n_0_[10] ),
        .I2(\coarse_delay_reg_n_0_[9] ),
        .I3(\coarse_delay_reg_n_0_[8] ),
        .O(\FSM_sequential_state[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF1F1F1F1FFF1F1F1)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(\FSM_sequential_state[3]_i_3_n_0 ),
        .I1(state__0[2]),
        .I2(\FSM_sequential_state[3]_i_4_n_0 ),
        .I3(\FSM_sequential_state[3]_i_5_n_0 ),
        .I4(\FSM_sequential_state[3]_i_6_n_0 ),
        .I5(state__0[3]),
        .O(\FSM_sequential_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[3]_i_10 
       (.I0(state__0[3]),
        .I1(state__0[1]),
        .O(\FSM_sequential_state[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    \FSM_sequential_state[3]_i_11 
       (.I0(state__0[0]),
        .I1(state__0[3]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .O(\FSM_sequential_state[3]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[3]_i_12 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .O(\FSM_sequential_state[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_state[3]_i_13 
       (.I0(instr_fifo_data[25]),
        .I1(instr_fifo_data[26]),
        .O(\FSM_sequential_state[3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[3]_i_14 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .O(\FSM_sequential_state[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAEFFAEAEAEAEAEAE)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(\FSM_sequential_state[3]_i_7_n_0 ),
        .I1(\FSM_sequential_state[3]_i_8_n_0 ),
        .I2(\FSM_sequential_state[3]_i_9_n_0 ),
        .I3(\FSM_sequential_state[3]_i_10_n_0 ),
        .I4(state__0[2]),
        .I5(state__0[0]),
        .O(state__1[3]));
  LUT6 #(
    .INIT(64'h88000050DDAA0050)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(state__0[0]),
        .I1(\FSM_sequential_state[2]_i_5_n_0 ),
        .I2(instr_fifo_empty),
        .I3(state__0[3]),
        .I4(state__0[1]),
        .I5(clock_pre_tick),
        .O(\FSM_sequential_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF1111111)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(\FSM_sequential_state[3]_i_11_n_0 ),
        .I1(\FSM_sequential_state[2]_i_5_n_0 ),
        .I2(\FSM_sequential_state[3]_i_12_n_0 ),
        .I3(state__0[3]),
        .I4(pulse_fifo_empty),
        .I5(pulse_fifo_read_i_3_n_0),
        .O(\FSM_sequential_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(\pulses_to_send_reg_n_0_[13] ),
        .I1(\pulses_to_send_reg_n_0_[14] ),
        .I2(\pulses_to_send[13]_i_2_n_0 ),
        .I3(\pulses_to_send_reg_n_0_[12] ),
        .I4(\pulses_to_send_reg_n_0_[15] ),
        .O(\FSM_sequential_state[3]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_state[3]_i_6 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .O(\FSM_sequential_state[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0040444444444444)) 
    \FSM_sequential_state[3]_i_7 
       (.I0(state__0[2]),
        .I1(state__0[3]),
        .I2(\FSM_sequential_state[2]_i_5_n_0 ),
        .I3(state__0[0]),
        .I4(pulse_fifo_empty),
        .I5(state__0[1]),
        .O(\FSM_sequential_state[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_state[3]_i_8 
       (.I0(instr_fifo_data[28]),
        .I1(instr_fifo_data[29]),
        .I2(instr_fifo_data[31]),
        .I3(instr_fifo_data[30]),
        .I4(instr_fifo_data[27]),
        .O(\FSM_sequential_state[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    \FSM_sequential_state[3]_i_9 
       (.I0(state__0[3]),
        .I1(instr_fifo_data[24]),
        .I2(pulse_fifo_empty),
        .I3(state__0[1]),
        .I4(\FSM_sequential_state[3]_i_13_n_0 ),
        .I5(\FSM_sequential_state[3]_i_14_n_0 ),
        .O(\FSM_sequential_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "state_ss_3:1001,state_ss_1:0110,state_toggle_end:0101,state_wait_pulse:0100,state_wait_tick:0011,state_read:0010,state_wait_clear:1100,state_ss_wait:0111,state_ss_5:1011,state_rst_read:0001,state_idle:0000,state_ss_4:1010,state_ss_2:1000" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(state__1[0]),
        .Q(state__0[0]));
  (* FSM_ENCODED_STATES = "state_ss_3:1001,state_ss_1:0110,state_toggle_end:0101,state_wait_pulse:0100,state_wait_tick:0011,state_read:0010,state_wait_clear:1100,state_ss_wait:0111,state_ss_5:1011,state_rst_read:0001,state_idle:0000,state_ss_4:1010,state_ss_2:1000" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(state__1[1]),
        .Q(state__0[1]));
  (* FSM_ENCODED_STATES = "state_ss_3:1001,state_ss_1:0110,state_toggle_end:0101,state_wait_pulse:0100,state_wait_tick:0011,state_read:0010,state_wait_clear:1100,state_ss_wait:0111,state_ss_5:1011,state_rst_read:0001,state_idle:0000,state_ss_4:1010,state_ss_2:1000" *) 
  FDCE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\FSM_sequential_state[2]_i_1_n_0 ),
        .Q(state__0[2]));
  (* FSM_ENCODED_STATES = "state_ss_3:1001,state_ss_1:0110,state_toggle_end:0101,state_wait_pulse:0100,state_wait_tick:0011,state_read:0010,state_wait_clear:1100,state_ss_wait:0111,state_ss_5:1011,state_rst_read:0001,state_idle:0000,state_ss_4:1010,state_ss_2:1000" *) 
  FDCE \FSM_sequential_state_reg[3] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(state__1[3]),
        .Q(state__0[3]));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \amplitude[15]_i_1 
       (.I0(\clock_period[23]_i_3_n_0 ),
        .I1(rst),
        .I2(instr_fifo_data[26]),
        .I3(instr_fifo_data[27]),
        .I4(instr_fifo_data[25]),
        .I5(instr_fifo_data[24]),
        .O(\amplitude[15]_i_1_n_0 ));
  FDCE \amplitude_reg[0] 
       (.C(clk),
        .CE(\amplitude[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(instr_fifo_data[0]),
        .Q(default_pulse[240]));
  FDCE \amplitude_reg[10] 
       (.C(clk),
        .CE(\amplitude[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(instr_fifo_data[10]),
        .Q(default_pulse[250]));
  FDCE \amplitude_reg[11] 
       (.C(clk),
        .CE(\amplitude[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(instr_fifo_data[11]),
        .Q(default_pulse[251]));
  FDCE \amplitude_reg[12] 
       (.C(clk),
        .CE(\amplitude[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(instr_fifo_data[12]),
        .Q(default_pulse[252]));
  FDCE \amplitude_reg[13] 
       (.C(clk),
        .CE(\amplitude[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(instr_fifo_data[13]),
        .Q(default_pulse[253]));
  FDCE \amplitude_reg[14] 
       (.C(clk),
        .CE(\amplitude[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(instr_fifo_data[14]),
        .Q(default_pulse[254]));
  FDCE \amplitude_reg[15] 
       (.C(clk),
        .CE(\amplitude[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(instr_fifo_data[15]),
        .Q(default_pulse[255]));
  FDCE \amplitude_reg[1] 
       (.C(clk),
        .CE(\amplitude[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(instr_fifo_data[1]),
        .Q(default_pulse[241]));
  FDCE \amplitude_reg[2] 
       (.C(clk),
        .CE(\amplitude[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(instr_fifo_data[2]),
        .Q(default_pulse[242]));
  FDCE \amplitude_reg[3] 
       (.C(clk),
        .CE(\amplitude[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(instr_fifo_data[3]),
        .Q(default_pulse[243]));
  FDCE \amplitude_reg[4] 
       (.C(clk),
        .CE(\amplitude[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(instr_fifo_data[4]),
        .Q(default_pulse[244]));
  FDCE \amplitude_reg[5] 
       (.C(clk),
        .CE(\amplitude[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(instr_fifo_data[5]),
        .Q(default_pulse[245]));
  FDCE \amplitude_reg[6] 
       (.C(clk),
        .CE(\amplitude[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(instr_fifo_data[6]),
        .Q(default_pulse[246]));
  FDCE \amplitude_reg[7] 
       (.C(clk),
        .CE(\amplitude[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(instr_fifo_data[7]),
        .Q(default_pulse[247]));
  FDCE \amplitude_reg[8] 
       (.C(clk),
        .CE(\amplitude[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(instr_fifo_data[8]),
        .Q(default_pulse[248]));
  FDCE \amplitude_reg[9] 
       (.C(clk),
        .CE(\amplitude[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(instr_fifo_data[9]),
        .Q(default_pulse[249]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[0]_i_1 
       (.I0(instr_fifo_data[0]),
        .I1(state__0[3]),
        .O(\clock_period[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[10]_i_1 
       (.I0(instr_fifo_data[10]),
        .I1(state__0[3]),
        .O(\clock_period[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[11]_i_1 
       (.I0(instr_fifo_data[11]),
        .I1(state__0[3]),
        .O(\clock_period[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[12]_i_1 
       (.I0(instr_fifo_data[12]),
        .I1(state__0[3]),
        .O(\clock_period[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[13]_i_1 
       (.I0(instr_fifo_data[13]),
        .I1(state__0[3]),
        .O(\clock_period[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[14]_i_1 
       (.I0(instr_fifo_data[14]),
        .I1(state__0[3]),
        .O(\clock_period[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[15]_i_1 
       (.I0(instr_fifo_data[15]),
        .I1(state__0[3]),
        .O(\clock_period[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[16]_i_1 
       (.I0(instr_fifo_data[16]),
        .I1(state__0[3]),
        .O(\clock_period[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[17]_i_1 
       (.I0(instr_fifo_data[17]),
        .I1(state__0[3]),
        .O(\clock_period[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[18]_i_1 
       (.I0(instr_fifo_data[18]),
        .I1(state__0[3]),
        .O(\clock_period[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[19]_i_1 
       (.I0(instr_fifo_data[19]),
        .I1(state__0[3]),
        .O(\clock_period[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[1]_i_1 
       (.I0(instr_fifo_data[1]),
        .I1(state__0[3]),
        .O(\clock_period[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[20]_i_1 
       (.I0(instr_fifo_data[20]),
        .I1(state__0[3]),
        .O(\clock_period[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[21]_i_1 
       (.I0(instr_fifo_data[21]),
        .I1(state__0[3]),
        .O(\clock_period[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[22]_i_1 
       (.I0(instr_fifo_data[22]),
        .I1(state__0[3]),
        .O(\clock_period[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \clock_period[23]_i_1 
       (.I0(\clock_period[23]_i_3_n_0 ),
        .I1(instr_fifo_data[27]),
        .I2(instr_fifo_data[26]),
        .I3(instr_fifo_data[24]),
        .I4(instr_fifo_data[25]),
        .O(clock_period));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[23]_i_2 
       (.I0(instr_fifo_data[23]),
        .I1(state__0[3]),
        .O(\clock_period[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \clock_period[23]_i_3 
       (.I0(instr_fifo_data[28]),
        .I1(instr_fifo_data[29]),
        .I2(instr_fifo_data[31]),
        .I3(instr_fifo_data[30]),
        .I4(\FSM_sequential_state[3]_i_10_n_0 ),
        .I5(\FSM_sequential_state[3]_i_14_n_0 ),
        .O(\clock_period[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[2]_i_1 
       (.I0(instr_fifo_data[2]),
        .I1(state__0[3]),
        .O(\clock_period[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[3]_i_1 
       (.I0(instr_fifo_data[3]),
        .I1(state__0[3]),
        .O(\clock_period[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[4]_i_1 
       (.I0(instr_fifo_data[4]),
        .I1(state__0[3]),
        .O(\clock_period[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[5]_i_1 
       (.I0(instr_fifo_data[5]),
        .I1(state__0[3]),
        .O(\clock_period[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[6]_i_1 
       (.I0(instr_fifo_data[6]),
        .I1(state__0[3]),
        .O(\clock_period[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[7]_i_1 
       (.I0(instr_fifo_data[7]),
        .I1(state__0[3]),
        .O(\clock_period[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[8]_i_1 
       (.I0(instr_fifo_data[8]),
        .I1(state__0[3]),
        .O(\clock_period[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[9]_i_1 
       (.I0(instr_fifo_data[9]),
        .I1(state__0[3]),
        .O(\clock_period[9]_i_1_n_0 ));
  FDCE \clock_period_reg[0] 
       (.C(clk),
        .CE(clock_period),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\clock_period[0]_i_1_n_0 ),
        .Q(\clock_period_reg_n_0_[0] ));
  FDCE \clock_period_reg[10] 
       (.C(clk),
        .CE(clock_period),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\clock_period[10]_i_1_n_0 ),
        .Q(\clock_period_reg_n_0_[10] ));
  FDCE \clock_period_reg[11] 
       (.C(clk),
        .CE(clock_period),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\clock_period[11]_i_1_n_0 ),
        .Q(\clock_period_reg_n_0_[11] ));
  FDCE \clock_period_reg[12] 
       (.C(clk),
        .CE(clock_period),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\clock_period[12]_i_1_n_0 ),
        .Q(\clock_period_reg_n_0_[12] ));
  FDCE \clock_period_reg[13] 
       (.C(clk),
        .CE(clock_period),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\clock_period[13]_i_1_n_0 ),
        .Q(\clock_period_reg_n_0_[13] ));
  FDCE \clock_period_reg[14] 
       (.C(clk),
        .CE(clock_period),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\clock_period[14]_i_1_n_0 ),
        .Q(\clock_period_reg_n_0_[14] ));
  FDCE \clock_period_reg[15] 
       (.C(clk),
        .CE(clock_period),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\clock_period[15]_i_1_n_0 ),
        .Q(\clock_period_reg_n_0_[15] ));
  FDCE \clock_period_reg[16] 
       (.C(clk),
        .CE(clock_period),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\clock_period[16]_i_1_n_0 ),
        .Q(\clock_period_reg_n_0_[16] ));
  FDCE \clock_period_reg[17] 
       (.C(clk),
        .CE(clock_period),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\clock_period[17]_i_1_n_0 ),
        .Q(\clock_period_reg_n_0_[17] ));
  FDCE \clock_period_reg[18] 
       (.C(clk),
        .CE(clock_period),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\clock_period[18]_i_1_n_0 ),
        .Q(\clock_period_reg_n_0_[18] ));
  FDCE \clock_period_reg[19] 
       (.C(clk),
        .CE(clock_period),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\clock_period[19]_i_1_n_0 ),
        .Q(\clock_period_reg_n_0_[19] ));
  FDPE \clock_period_reg[1] 
       (.C(clk),
        .CE(clock_period),
        .D(\clock_period[1]_i_1_n_0 ),
        .PRE(instr_fifo_read_i_2_n_0),
        .Q(\clock_period_reg_n_0_[1] ));
  FDCE \clock_period_reg[20] 
       (.C(clk),
        .CE(clock_period),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\clock_period[20]_i_1_n_0 ),
        .Q(\clock_period_reg_n_0_[20] ));
  FDCE \clock_period_reg[21] 
       (.C(clk),
        .CE(clock_period),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\clock_period[21]_i_1_n_0 ),
        .Q(\clock_period_reg_n_0_[21] ));
  FDCE \clock_period_reg[22] 
       (.C(clk),
        .CE(clock_period),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\clock_period[22]_i_1_n_0 ),
        .Q(\clock_period_reg_n_0_[22] ));
  FDCE \clock_period_reg[23] 
       (.C(clk),
        .CE(clock_period),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\clock_period[23]_i_2_n_0 ),
        .Q(\clock_period_reg_n_0_[23] ));
  FDCE \clock_period_reg[2] 
       (.C(clk),
        .CE(clock_period),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\clock_period[2]_i_1_n_0 ),
        .Q(\clock_period_reg_n_0_[2] ));
  FDPE \clock_period_reg[3] 
       (.C(clk),
        .CE(clock_period),
        .D(\clock_period[3]_i_1_n_0 ),
        .PRE(instr_fifo_read_i_2_n_0),
        .Q(\clock_period_reg_n_0_[3] ));
  FDCE \clock_period_reg[4] 
       (.C(clk),
        .CE(clock_period),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\clock_period[4]_i_1_n_0 ),
        .Q(\clock_period_reg_n_0_[4] ));
  FDCE \clock_period_reg[5] 
       (.C(clk),
        .CE(clock_period),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\clock_period[5]_i_1_n_0 ),
        .Q(\clock_period_reg_n_0_[5] ));
  FDCE \clock_period_reg[6] 
       (.C(clk),
        .CE(clock_period),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\clock_period[6]_i_1_n_0 ),
        .Q(\clock_period_reg_n_0_[6] ));
  FDCE \clock_period_reg[7] 
       (.C(clk),
        .CE(clock_period),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\clock_period[7]_i_1_n_0 ),
        .Q(\clock_period_reg_n_0_[7] ));
  FDCE \clock_period_reg[8] 
       (.C(clk),
        .CE(clock_period),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\clock_period[8]_i_1_n_0 ),
        .Q(\clock_period_reg_n_0_[8] ));
  FDCE \clock_period_reg[9] 
       (.C(clk),
        .CE(clock_period),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\clock_period[9]_i_1_n_0 ),
        .Q(\clock_period_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'h74777444)) 
    \coarse_delay[0]_i_1 
       (.I0(\coarse_delay_reg_n_0_[0] ),
        .I1(\coarse_delay[15]_i_7_n_0 ),
        .I2(instr_fifo_data[8]),
        .I3(\coarse_delay[14]_i_3_n_0 ),
        .I4(pulse_fifo_data[4]),
        .O(\coarse_delay[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9F909F9F9F909090)) 
    \coarse_delay[10]_i_1 
       (.I0(\coarse_delay[10]_i_2_n_0 ),
        .I1(\coarse_delay_reg_n_0_[10] ),
        .I2(\coarse_delay[15]_i_7_n_0 ),
        .I3(instr_fifo_data[18]),
        .I4(\coarse_delay[14]_i_3_n_0 ),
        .I5(pulse_fifo_data[14]),
        .O(\coarse_delay[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \coarse_delay[10]_i_2 
       (.I0(\coarse_delay_reg_n_0_[9] ),
        .I1(\coarse_delay_reg_n_0_[8] ),
        .I2(\coarse_delay[9]_i_2_n_0 ),
        .O(\coarse_delay[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \coarse_delay[11]_i_1 
       (.I0(\coarse_delay_reg_n_0_[11] ),
        .I1(\coarse_delay[11]_i_2_n_0 ),
        .I2(\coarse_delay[15]_i_7_n_0 ),
        .I3(instr_fifo_data[19]),
        .I4(\coarse_delay[14]_i_3_n_0 ),
        .I5(pulse_fifo_data[15]),
        .O(\coarse_delay[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \coarse_delay[11]_i_2 
       (.I0(\coarse_delay_reg_n_0_[10] ),
        .I1(\coarse_delay[9]_i_2_n_0 ),
        .I2(\coarse_delay_reg_n_0_[8] ),
        .I3(\coarse_delay_reg_n_0_[9] ),
        .O(\coarse_delay[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \coarse_delay[12]_i_1 
       (.I0(\coarse_delay_reg_n_0_[12] ),
        .I1(\coarse_delay[12]_i_2_n_0 ),
        .I2(\coarse_delay[15]_i_7_n_0 ),
        .I3(instr_fifo_data[20]),
        .I4(\coarse_delay[14]_i_3_n_0 ),
        .I5(pulse_fifo_data[16]),
        .O(\coarse_delay[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \coarse_delay[12]_i_2 
       (.I0(\coarse_delay_reg_n_0_[8] ),
        .I1(\coarse_delay_reg_n_0_[9] ),
        .I2(\coarse_delay_reg_n_0_[10] ),
        .I3(\coarse_delay_reg_n_0_[11] ),
        .I4(\coarse_delay[9]_i_2_n_0 ),
        .O(\coarse_delay[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \coarse_delay[13]_i_1 
       (.I0(\coarse_delay_reg_n_0_[13] ),
        .I1(\coarse_delay[15]_i_6_n_0 ),
        .I2(\coarse_delay[15]_i_7_n_0 ),
        .I3(instr_fifo_data[21]),
        .I4(\coarse_delay[14]_i_3_n_0 ),
        .I5(pulse_fifo_data[17]),
        .O(\coarse_delay[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \coarse_delay[14]_i_1 
       (.I0(\coarse_delay_reg_n_0_[14] ),
        .I1(\coarse_delay[14]_i_2_n_0 ),
        .I2(\coarse_delay[15]_i_7_n_0 ),
        .I3(instr_fifo_data[22]),
        .I4(\coarse_delay[14]_i_3_n_0 ),
        .I5(pulse_fifo_data[18]),
        .O(\coarse_delay[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \coarse_delay[14]_i_2 
       (.I0(\coarse_delay_reg_n_0_[12] ),
        .I1(\FSM_sequential_state[2]_i_9_n_0 ),
        .I2(\coarse_delay[9]_i_2_n_0 ),
        .I3(\coarse_delay_reg_n_0_[13] ),
        .O(\coarse_delay[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'hF834)) 
    \coarse_delay[14]_i_3 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .O(\coarse_delay[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAEAAAEAFAFAFFFF)) 
    \coarse_delay[15]_i_1 
       (.I0(\coarse_delay[15]_i_3_n_0 ),
        .I1(state__0[2]),
        .I2(\FSM_sequential_state[2]_i_5_n_0 ),
        .I3(\coarse_delay[15]_i_4_n_0 ),
        .I4(state__0[3]),
        .I5(\coarse_delay[15]_i_5_n_0 ),
        .O(coarse_delay));
  LUT6 #(
    .INIT(64'hAA9AFFFFAA9A0000)) 
    \coarse_delay[15]_i_2 
       (.I0(\coarse_delay_reg_n_0_[15] ),
        .I1(\coarse_delay_reg_n_0_[14] ),
        .I2(\coarse_delay[15]_i_6_n_0 ),
        .I3(\coarse_delay_reg_n_0_[13] ),
        .I4(\coarse_delay[15]_i_7_n_0 ),
        .I5(\coarse_delay[15]_i_8_n_0 ),
        .O(\coarse_delay[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2020200022002200)) 
    \coarse_delay[15]_i_3 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(\FSM_sequential_state[2]_i_5_n_0 ),
        .I3(state__0[3]),
        .I4(clock_pre_tick),
        .I5(state__0[1]),
        .O(\coarse_delay[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \coarse_delay[15]_i_4 
       (.I0(state__0[1]),
        .I1(state__0[3]),
        .I2(state__0[0]),
        .O(\coarse_delay[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFEFFFFFFFEFF)) 
    \coarse_delay[15]_i_5 
       (.I0(\coarse_delay[15]_i_9_n_0 ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[3]),
        .I5(clock_pre_tick),
        .O(\coarse_delay[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \coarse_delay[15]_i_6 
       (.I0(\coarse_delay[9]_i_2_n_0 ),
        .I1(\coarse_delay_reg_n_0_[11] ),
        .I2(\coarse_delay_reg_n_0_[10] ),
        .I3(\coarse_delay_reg_n_0_[9] ),
        .I4(\coarse_delay_reg_n_0_[8] ),
        .I5(\coarse_delay_reg_n_0_[12] ),
        .O(\coarse_delay[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT4 #(
    .INIT(16'hEFFB)) 
    \coarse_delay[15]_i_7 
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(state__0[3]),
        .I3(state__0[0]),
        .O(\coarse_delay[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAABFFAEFAA800A20)) 
    \coarse_delay[15]_i_8 
       (.I0(instr_fifo_data[23]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[3]),
        .I5(pulse_fifo_data[19]),
        .O(\coarse_delay[15]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h55554555)) 
    \coarse_delay[15]_i_9 
       (.I0(state__0[3]),
        .I1(instr_fifo_data[26]),
        .I2(\FSM_sequential_state[3]_i_8_n_0 ),
        .I3(instr_fifo_data[24]),
        .I4(instr_fifo_data[25]),
        .O(\coarse_delay[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h9F909F9F9F909090)) 
    \coarse_delay[1]_i_1 
       (.I0(\coarse_delay_reg_n_0_[1] ),
        .I1(\coarse_delay_reg_n_0_[0] ),
        .I2(\coarse_delay[15]_i_7_n_0 ),
        .I3(instr_fifo_data[9]),
        .I4(\coarse_delay[14]_i_3_n_0 ),
        .I5(pulse_fifo_data[5]),
        .O(\coarse_delay[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9F909F9F9F909090)) 
    \coarse_delay[2]_i_1 
       (.I0(\coarse_delay[2]_i_2_n_0 ),
        .I1(\coarse_delay_reg_n_0_[2] ),
        .I2(\coarse_delay[15]_i_7_n_0 ),
        .I3(instr_fifo_data[10]),
        .I4(\coarse_delay[14]_i_3_n_0 ),
        .I5(pulse_fifo_data[6]),
        .O(\coarse_delay[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \coarse_delay[2]_i_2 
       (.I0(\coarse_delay_reg_n_0_[1] ),
        .I1(\coarse_delay_reg_n_0_[0] ),
        .O(\coarse_delay[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9F909F9F9F909090)) 
    \coarse_delay[3]_i_1 
       (.I0(\coarse_delay[3]_i_2_n_0 ),
        .I1(\coarse_delay_reg_n_0_[3] ),
        .I2(\coarse_delay[15]_i_7_n_0 ),
        .I3(instr_fifo_data[11]),
        .I4(\coarse_delay[14]_i_3_n_0 ),
        .I5(pulse_fifo_data[7]),
        .O(\coarse_delay[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \coarse_delay[3]_i_2 
       (.I0(\coarse_delay_reg_n_0_[2] ),
        .I1(\coarse_delay_reg_n_0_[0] ),
        .I2(\coarse_delay_reg_n_0_[1] ),
        .O(\coarse_delay[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9F909F9F9F909090)) 
    \coarse_delay[4]_i_1 
       (.I0(\coarse_delay[4]_i_2_n_0 ),
        .I1(\coarse_delay_reg_n_0_[4] ),
        .I2(\coarse_delay[15]_i_7_n_0 ),
        .I3(instr_fifo_data[12]),
        .I4(\coarse_delay[14]_i_3_n_0 ),
        .I5(pulse_fifo_data[8]),
        .O(\coarse_delay[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \coarse_delay[4]_i_2 
       (.I0(\coarse_delay_reg_n_0_[3] ),
        .I1(\coarse_delay_reg_n_0_[1] ),
        .I2(\coarse_delay_reg_n_0_[0] ),
        .I3(\coarse_delay_reg_n_0_[2] ),
        .O(\coarse_delay[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9F909F9F9F909090)) 
    \coarse_delay[5]_i_1 
       (.I0(\coarse_delay[5]_i_2_n_0 ),
        .I1(\coarse_delay_reg_n_0_[5] ),
        .I2(\coarse_delay[15]_i_7_n_0 ),
        .I3(instr_fifo_data[13]),
        .I4(\coarse_delay[14]_i_3_n_0 ),
        .I5(pulse_fifo_data[9]),
        .O(\coarse_delay[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \coarse_delay[5]_i_2 
       (.I0(\coarse_delay_reg_n_0_[4] ),
        .I1(\coarse_delay_reg_n_0_[2] ),
        .I2(\coarse_delay_reg_n_0_[0] ),
        .I3(\coarse_delay_reg_n_0_[1] ),
        .I4(\coarse_delay_reg_n_0_[3] ),
        .O(\coarse_delay[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9F909F9F9F909090)) 
    \coarse_delay[6]_i_1 
       (.I0(\coarse_delay[6]_i_2_n_0 ),
        .I1(\coarse_delay_reg_n_0_[6] ),
        .I2(\coarse_delay[15]_i_7_n_0 ),
        .I3(instr_fifo_data[14]),
        .I4(\coarse_delay[14]_i_3_n_0 ),
        .I5(pulse_fifo_data[10]),
        .O(\coarse_delay[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \coarse_delay[6]_i_2 
       (.I0(\coarse_delay_reg_n_0_[5] ),
        .I1(\coarse_delay_reg_n_0_[3] ),
        .I2(\coarse_delay_reg_n_0_[1] ),
        .I3(\coarse_delay_reg_n_0_[0] ),
        .I4(\coarse_delay_reg_n_0_[2] ),
        .I5(\coarse_delay_reg_n_0_[4] ),
        .O(\coarse_delay[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \coarse_delay[7]_i_1 
       (.I0(\coarse_delay_reg_n_0_[7] ),
        .I1(\coarse_delay[7]_i_2_n_0 ),
        .I2(\coarse_delay[15]_i_7_n_0 ),
        .I3(instr_fifo_data[15]),
        .I4(\coarse_delay[14]_i_3_n_0 ),
        .I5(pulse_fifo_data[11]),
        .O(\coarse_delay[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \coarse_delay[7]_i_2 
       (.I0(\coarse_delay_reg_n_0_[6] ),
        .I1(\coarse_delay_reg_n_0_[4] ),
        .I2(\coarse_delay[4]_i_2_n_0 ),
        .I3(\coarse_delay_reg_n_0_[5] ),
        .O(\coarse_delay[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9F909F9F9F909090)) 
    \coarse_delay[8]_i_1 
       (.I0(\coarse_delay[9]_i_2_n_0 ),
        .I1(\coarse_delay_reg_n_0_[8] ),
        .I2(\coarse_delay[15]_i_7_n_0 ),
        .I3(instr_fifo_data[16]),
        .I4(\coarse_delay[14]_i_3_n_0 ),
        .I5(pulse_fifo_data[12]),
        .O(\coarse_delay[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT5 #(
    .INIT(32'hE1FFE100)) 
    \coarse_delay[9]_i_1 
       (.I0(\coarse_delay_reg_n_0_[8] ),
        .I1(\coarse_delay[9]_i_2_n_0 ),
        .I2(\coarse_delay_reg_n_0_[9] ),
        .I3(\coarse_delay[15]_i_7_n_0 ),
        .I4(\coarse_delay[9]_i_3_n_0 ),
        .O(\coarse_delay[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \coarse_delay[9]_i_2 
       (.I0(\coarse_delay[4]_i_2_n_0 ),
        .I1(\coarse_delay_reg_n_0_[7] ),
        .I2(\coarse_delay_reg_n_0_[6] ),
        .I3(\coarse_delay_reg_n_0_[4] ),
        .I4(\coarse_delay_reg_n_0_[5] ),
        .O(\coarse_delay[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAABFFAEFAA800A20)) 
    \coarse_delay[9]_i_3 
       (.I0(instr_fifo_data[17]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[3]),
        .I5(pulse_fifo_data[13]),
        .O(\coarse_delay[9]_i_3_n_0 ));
  FDCE \coarse_delay_reg[0] 
       (.C(clk),
        .CE(coarse_delay),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\coarse_delay[0]_i_1_n_0 ),
        .Q(\coarse_delay_reg_n_0_[0] ));
  FDCE \coarse_delay_reg[10] 
       (.C(clk),
        .CE(coarse_delay),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\coarse_delay[10]_i_1_n_0 ),
        .Q(\coarse_delay_reg_n_0_[10] ));
  FDCE \coarse_delay_reg[11] 
       (.C(clk),
        .CE(coarse_delay),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\coarse_delay[11]_i_1_n_0 ),
        .Q(\coarse_delay_reg_n_0_[11] ));
  FDCE \coarse_delay_reg[12] 
       (.C(clk),
        .CE(coarse_delay),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\coarse_delay[12]_i_1_n_0 ),
        .Q(\coarse_delay_reg_n_0_[12] ));
  FDCE \coarse_delay_reg[13] 
       (.C(clk),
        .CE(coarse_delay),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\coarse_delay[13]_i_1_n_0 ),
        .Q(\coarse_delay_reg_n_0_[13] ));
  FDCE \coarse_delay_reg[14] 
       (.C(clk),
        .CE(coarse_delay),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\coarse_delay[14]_i_1_n_0 ),
        .Q(\coarse_delay_reg_n_0_[14] ));
  FDCE \coarse_delay_reg[15] 
       (.C(clk),
        .CE(coarse_delay),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\coarse_delay[15]_i_2_n_0 ),
        .Q(\coarse_delay_reg_n_0_[15] ));
  FDCE \coarse_delay_reg[1] 
       (.C(clk),
        .CE(coarse_delay),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\coarse_delay[1]_i_1_n_0 ),
        .Q(\coarse_delay_reg_n_0_[1] ));
  FDCE \coarse_delay_reg[2] 
       (.C(clk),
        .CE(coarse_delay),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\coarse_delay[2]_i_1_n_0 ),
        .Q(\coarse_delay_reg_n_0_[2] ));
  FDCE \coarse_delay_reg[3] 
       (.C(clk),
        .CE(coarse_delay),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\coarse_delay[3]_i_1_n_0 ),
        .Q(\coarse_delay_reg_n_0_[3] ));
  FDCE \coarse_delay_reg[4] 
       (.C(clk),
        .CE(coarse_delay),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\coarse_delay[4]_i_1_n_0 ),
        .Q(\coarse_delay_reg_n_0_[4] ));
  FDCE \coarse_delay_reg[5] 
       (.C(clk),
        .CE(coarse_delay),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\coarse_delay[5]_i_1_n_0 ),
        .Q(\coarse_delay_reg_n_0_[5] ));
  FDCE \coarse_delay_reg[6] 
       (.C(clk),
        .CE(coarse_delay),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\coarse_delay[6]_i_1_n_0 ),
        .Q(\coarse_delay_reg_n_0_[6] ));
  FDCE \coarse_delay_reg[7] 
       (.C(clk),
        .CE(coarse_delay),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\coarse_delay[7]_i_1_n_0 ),
        .Q(\coarse_delay_reg_n_0_[7] ));
  FDCE \coarse_delay_reg[8] 
       (.C(clk),
        .CE(coarse_delay),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\coarse_delay[8]_i_1_n_0 ),
        .Q(\coarse_delay_reg_n_0_[8] ));
  FDCE \coarse_delay_reg[9] 
       (.C(clk),
        .CE(coarse_delay),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\coarse_delay[9]_i_1_n_0 ),
        .Q(\coarse_delay_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT4 #(
    .INIT(16'h0074)) 
    \dead_pulses[0]_i_1 
       (.I0(\dead_pulses_reg_n_0_[0] ),
        .I1(state__0[0]),
        .I2(instr_fifo_data[16]),
        .I3(state__0[3]),
        .O(\dead_pulses[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT5 #(
    .INIT(32'h00009F90)) 
    \dead_pulses[1]_i_1 
       (.I0(\dead_pulses_reg_n_0_[0] ),
        .I1(\dead_pulses_reg_n_0_[1] ),
        .I2(state__0[0]),
        .I3(instr_fifo_data[17]),
        .I4(state__0[3]),
        .O(\dead_pulses[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A9FFA900)) 
    \dead_pulses[2]_i_1 
       (.I0(\dead_pulses_reg_n_0_[2] ),
        .I1(\dead_pulses_reg_n_0_[1] ),
        .I2(\dead_pulses_reg_n_0_[0] ),
        .I3(state__0[0]),
        .I4(instr_fifo_data[18]),
        .I5(state__0[3]),
        .O(\dead_pulses[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT5 #(
    .INIT(32'h00009F90)) 
    \dead_pulses[3]_i_1 
       (.I0(\dead_pulses_reg_n_0_[3] ),
        .I1(\dead_pulses[3]_i_2_n_0 ),
        .I2(state__0[0]),
        .I3(instr_fifo_data[19]),
        .I4(state__0[3]),
        .O(\dead_pulses[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \dead_pulses[3]_i_2 
       (.I0(\dead_pulses_reg_n_0_[2] ),
        .I1(\dead_pulses_reg_n_0_[1] ),
        .I2(\dead_pulses_reg_n_0_[0] ),
        .O(\dead_pulses[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT5 #(
    .INIT(32'h00009F90)) 
    \dead_pulses[4]_i_1 
       (.I0(\dead_pulses_reg_n_0_[4] ),
        .I1(\dead_pulses[4]_i_2_n_0 ),
        .I2(state__0[0]),
        .I3(instr_fifo_data[20]),
        .I4(state__0[3]),
        .O(\dead_pulses[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \dead_pulses[4]_i_2 
       (.I0(\dead_pulses_reg_n_0_[3] ),
        .I1(\dead_pulses_reg_n_0_[0] ),
        .I2(\dead_pulses_reg_n_0_[1] ),
        .I3(\dead_pulses_reg_n_0_[2] ),
        .O(\dead_pulses[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT5 #(
    .INIT(32'h00009F90)) 
    \dead_pulses[5]_i_1 
       (.I0(\dead_pulses_reg_n_0_[5] ),
        .I1(\dead_pulses[5]_i_2_n_0 ),
        .I2(state__0[0]),
        .I3(instr_fifo_data[21]),
        .I4(state__0[3]),
        .O(\dead_pulses[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \dead_pulses[5]_i_2 
       (.I0(\dead_pulses_reg_n_0_[4] ),
        .I1(\dead_pulses_reg_n_0_[2] ),
        .I2(\dead_pulses_reg_n_0_[1] ),
        .I3(\dead_pulses_reg_n_0_[0] ),
        .I4(\dead_pulses_reg_n_0_[3] ),
        .O(\dead_pulses[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT5 #(
    .INIT(32'h00009F90)) 
    \dead_pulses[6]_i_1 
       (.I0(\dead_pulses_reg_n_0_[6] ),
        .I1(\dead_pulses[7]_i_5_n_0 ),
        .I2(state__0[0]),
        .I3(instr_fifo_data[22]),
        .I4(state__0[3]),
        .O(\dead_pulses[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000055555555)) 
    \dead_pulses[7]_i_1 
       (.I0(\FSM_sequential_state[3]_i_10_n_0 ),
        .I1(\dead_pulses[7]_i_3_n_0 ),
        .I2(\m_axis_tdata[255]_INST_0_i_1_n_0 ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(\dead_pulses[7]_i_4_n_0 ),
        .O(\dead_pulses[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A9FFA900)) 
    \dead_pulses[7]_i_2 
       (.I0(\dead_pulses_reg_n_0_[7] ),
        .I1(\dead_pulses[7]_i_5_n_0 ),
        .I2(\dead_pulses_reg_n_0_[6] ),
        .I3(state__0[0]),
        .I4(instr_fifo_data[23]),
        .I5(state__0[3]),
        .O(\dead_pulses[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \dead_pulses[7]_i_3 
       (.I0(\dead_pulses_reg_n_0_[7] ),
        .I1(\dead_pulses[7]_i_5_n_0 ),
        .I2(\dead_pulses_reg_n_0_[6] ),
        .O(\dead_pulses[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
    \dead_pulses[7]_i_4 
       (.I0(\FSM_sequential_state[3]_i_8_n_0 ),
        .I1(instr_fifo_data[26]),
        .I2(instr_fifo_data[24]),
        .I3(instr_fifo_data[25]),
        .I4(state__0[0]),
        .I5(state__0[2]),
        .O(\dead_pulses[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \dead_pulses[7]_i_5 
       (.I0(\dead_pulses_reg_n_0_[5] ),
        .I1(\dead_pulses_reg_n_0_[3] ),
        .I2(\dead_pulses_reg_n_0_[0] ),
        .I3(\dead_pulses_reg_n_0_[1] ),
        .I4(\dead_pulses_reg_n_0_[2] ),
        .I5(\dead_pulses_reg_n_0_[4] ),
        .O(\dead_pulses[7]_i_5_n_0 ));
  FDCE \dead_pulses_reg[0] 
       (.C(clk),
        .CE(\dead_pulses[7]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\dead_pulses[0]_i_1_n_0 ),
        .Q(\dead_pulses_reg_n_0_[0] ));
  FDCE \dead_pulses_reg[1] 
       (.C(clk),
        .CE(\dead_pulses[7]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\dead_pulses[1]_i_1_n_0 ),
        .Q(\dead_pulses_reg_n_0_[1] ));
  FDCE \dead_pulses_reg[2] 
       (.C(clk),
        .CE(\dead_pulses[7]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\dead_pulses[2]_i_1_n_0 ),
        .Q(\dead_pulses_reg_n_0_[2] ));
  FDCE \dead_pulses_reg[3] 
       (.C(clk),
        .CE(\dead_pulses[7]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\dead_pulses[3]_i_1_n_0 ),
        .Q(\dead_pulses_reg_n_0_[3] ));
  FDCE \dead_pulses_reg[4] 
       (.C(clk),
        .CE(\dead_pulses[7]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\dead_pulses[4]_i_1_n_0 ),
        .Q(\dead_pulses_reg_n_0_[4] ));
  FDCE \dead_pulses_reg[5] 
       (.C(clk),
        .CE(\dead_pulses[7]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\dead_pulses[5]_i_1_n_0 ),
        .Q(\dead_pulses_reg_n_0_[5] ));
  FDCE \dead_pulses_reg[6] 
       (.C(clk),
        .CE(\dead_pulses[7]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\dead_pulses[6]_i_1_n_0 ),
        .Q(\dead_pulses_reg_n_0_[6] ));
  FDCE \dead_pulses_reg[7] 
       (.C(clk),
        .CE(\dead_pulses[7]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\dead_pulses[7]_i_2_n_0 ),
        .Q(\dead_pulses_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \fine_delay[0]_i_1 
       (.I0(pulse_fifo_data[0]),
        .I1(state__0[1]),
        .I2(instr_fifo_data[0]),
        .I3(state__0[2]),
        .O(\fine_delay[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \fine_delay[1]_i_1 
       (.I0(pulse_fifo_data[1]),
        .I1(state__0[1]),
        .I2(instr_fifo_data[1]),
        .I3(state__0[2]),
        .O(\fine_delay[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \fine_delay[2]_i_1 
       (.I0(pulse_fifo_data[2]),
        .I1(state__0[1]),
        .I2(instr_fifo_data[2]),
        .I3(state__0[2]),
        .O(\fine_delay[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF0040)) 
    \fine_delay[3]_i_1 
       (.I0(instr_fifo_data[25]),
        .I1(instr_fifo_data[24]),
        .I2(\FSM_sequential_state[3]_i_8_n_0 ),
        .I3(instr_fifo_data[26]),
        .I4(state__0[3]),
        .I5(\coarse_delay[15]_i_7_n_0 ),
        .O(fine_delay));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \fine_delay[3]_i_2 
       (.I0(pulse_fifo_data[3]),
        .I1(state__0[1]),
        .I2(instr_fifo_data[3]),
        .I3(state__0[2]),
        .O(\fine_delay[3]_i_2_n_0 ));
  FDCE \fine_delay_reg[0] 
       (.C(clk),
        .CE(fine_delay),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\fine_delay[0]_i_1_n_0 ),
        .Q(m_axis_tdata_int1[4]));
  FDCE \fine_delay_reg[1] 
       (.C(clk),
        .CE(fine_delay),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\fine_delay[1]_i_1_n_0 ),
        .Q(m_axis_tdata_int1[5]));
  FDCE \fine_delay_reg[2] 
       (.C(clk),
        .CE(fine_delay),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\fine_delay[2]_i_1_n_0 ),
        .Q(m_axis_tdata_int1[6]));
  FDCE \fine_delay_reg[3] 
       (.C(clk),
        .CE(fine_delay),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\fine_delay[3]_i_2_n_0 ),
        .Q(m_axis_tdata_int1[7]));
  LUT6 #(
    .INIT(64'hFFFFFFF100000001)) 
    instr_fifo_read_i_1
       (.I0(instr_fifo_empty),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[3]),
        .I5(instr_fifo_read),
        .O(instr_fifo_read_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    instr_fifo_read_i_2
       (.I0(rst),
        .O(instr_fifo_read_i_2_n_0));
  FDCE instr_fifo_read_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(instr_fifo_read_i_1_n_0),
        .Q(instr_fifo_read));
  LUT6 #(
    .INIT(64'hFFFF0EFE00000E0E)) 
    is_phase_meas_mode_i_1
       (.I0(instr_fifo_data[24]),
        .I1(instr_fifo_data[25]),
        .I2(state__0[2]),
        .I3(\FSM_sequential_state[3]_i_5_n_0 ),
        .I4(is_phase_meas_mode_i_2_n_0),
        .I5(is_phase_meas_mode_reg_n_0),
        .O(is_phase_meas_mode_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000D777)) 
    is_phase_meas_mode_i_2
       (.I0(\FSM_sequential_state[3]_i_8_n_0 ),
        .I1(instr_fifo_data[26]),
        .I2(instr_fifo_data[24]),
        .I3(instr_fifo_data[25]),
        .I4(state__0[2]),
        .I5(is_phase_meas_mode_i_3_n_0),
        .O(is_phase_meas_mode_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT4 #(
    .INIT(16'hFFC7)) 
    is_phase_meas_mode_i_3
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .O(is_phase_meas_mode_i_3_n_0));
  FDCE is_phase_meas_mode_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(is_phase_meas_mode_i_1_n_0),
        .Q(is_phase_meas_mode_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair320" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[0] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair270" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[100]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[100] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[100]));
  (* SOFT_HLUTNM = "soft_lutpair270" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[101]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[101] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[101]));
  (* SOFT_HLUTNM = "soft_lutpair269" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[102]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[102] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[102]));
  (* SOFT_HLUTNM = "soft_lutpair269" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[103]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[103] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[103]));
  (* SOFT_HLUTNM = "soft_lutpair268" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[104]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[104] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[104]));
  (* SOFT_HLUTNM = "soft_lutpair268" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[105]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[105] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[105]));
  (* SOFT_HLUTNM = "soft_lutpair267" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[106]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[106] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[106]));
  (* SOFT_HLUTNM = "soft_lutpair267" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[107]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[107] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[107]));
  (* SOFT_HLUTNM = "soft_lutpair266" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[108]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[108] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[108]));
  (* SOFT_HLUTNM = "soft_lutpair266" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[109]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[109] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[109]));
  (* SOFT_HLUTNM = "soft_lutpair315" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[10] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair265" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[110]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[110] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[110]));
  (* SOFT_HLUTNM = "soft_lutpair265" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[111]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[111] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[111]));
  (* SOFT_HLUTNM = "soft_lutpair264" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[112]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[112] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[112]));
  (* SOFT_HLUTNM = "soft_lutpair264" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[113]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[113] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[113]));
  (* SOFT_HLUTNM = "soft_lutpair263" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[114]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[114] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[114]));
  (* SOFT_HLUTNM = "soft_lutpair263" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[115]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[115] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[115]));
  (* SOFT_HLUTNM = "soft_lutpair262" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[116]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[116] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[116]));
  (* SOFT_HLUTNM = "soft_lutpair262" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[117]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[117] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[117]));
  (* SOFT_HLUTNM = "soft_lutpair261" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[118]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[118] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[118]));
  (* SOFT_HLUTNM = "soft_lutpair261" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[119]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[119] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[119]));
  (* SOFT_HLUTNM = "soft_lutpair315" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[11] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair260" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[120]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[120] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[120]));
  (* SOFT_HLUTNM = "soft_lutpair260" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[121]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[121] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[121]));
  (* SOFT_HLUTNM = "soft_lutpair259" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[122]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[122] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[122]));
  (* SOFT_HLUTNM = "soft_lutpair259" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[123]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[123] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[123]));
  (* SOFT_HLUTNM = "soft_lutpair258" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[124]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[124] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[124]));
  (* SOFT_HLUTNM = "soft_lutpair258" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[125]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[125] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[125]));
  (* SOFT_HLUTNM = "soft_lutpair257" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[126]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[126] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[126]));
  (* SOFT_HLUTNM = "soft_lutpair257" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[127]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[127] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[127]));
  (* SOFT_HLUTNM = "soft_lutpair256" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[128]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[128] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[128]));
  (* SOFT_HLUTNM = "soft_lutpair256" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[129]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[129] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[129]));
  (* SOFT_HLUTNM = "soft_lutpair314" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[12] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair255" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[130]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[130] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[130]));
  (* SOFT_HLUTNM = "soft_lutpair255" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[131]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[131] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[131]));
  (* SOFT_HLUTNM = "soft_lutpair254" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[132]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[132] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[132]));
  (* SOFT_HLUTNM = "soft_lutpair254" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[133]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[133] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[133]));
  (* SOFT_HLUTNM = "soft_lutpair253" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[134]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[134] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[134]));
  (* SOFT_HLUTNM = "soft_lutpair253" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[135]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[135] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[135]));
  (* SOFT_HLUTNM = "soft_lutpair252" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[136]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[136] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[136]));
  (* SOFT_HLUTNM = "soft_lutpair252" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[137]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[137] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[137]));
  (* SOFT_HLUTNM = "soft_lutpair251" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[138]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[138] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[138]));
  (* SOFT_HLUTNM = "soft_lutpair251" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[139]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[139] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[139]));
  (* SOFT_HLUTNM = "soft_lutpair314" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[13] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair250" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[140]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[140] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[140]));
  (* SOFT_HLUTNM = "soft_lutpair250" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[141]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[141] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[141]));
  (* SOFT_HLUTNM = "soft_lutpair249" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[142]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[142] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[142]));
  (* SOFT_HLUTNM = "soft_lutpair249" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[143]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[143] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[143]));
  (* SOFT_HLUTNM = "soft_lutpair248" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[144]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[144] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[144]));
  (* SOFT_HLUTNM = "soft_lutpair248" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[145]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[145] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[145]));
  (* SOFT_HLUTNM = "soft_lutpair247" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[146]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[146] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[146]));
  (* SOFT_HLUTNM = "soft_lutpair247" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[147]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[147] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[147]));
  (* SOFT_HLUTNM = "soft_lutpair246" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[148]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[148] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[148]));
  (* SOFT_HLUTNM = "soft_lutpair246" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[149]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[149] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[149]));
  (* SOFT_HLUTNM = "soft_lutpair313" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[14]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[14] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair245" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[150]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[150] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[150]));
  (* SOFT_HLUTNM = "soft_lutpair245" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[151]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[151] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[151]));
  (* SOFT_HLUTNM = "soft_lutpair244" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[152]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[152] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[152]));
  (* SOFT_HLUTNM = "soft_lutpair244" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[153]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[153] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[153]));
  (* SOFT_HLUTNM = "soft_lutpair243" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[154]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[154] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[154]));
  (* SOFT_HLUTNM = "soft_lutpair243" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[155]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[155] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[155]));
  (* SOFT_HLUTNM = "soft_lutpair242" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[156]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[156] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[156]));
  (* SOFT_HLUTNM = "soft_lutpair242" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[157]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[157] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[157]));
  (* SOFT_HLUTNM = "soft_lutpair241" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[158]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[158] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[158]));
  (* SOFT_HLUTNM = "soft_lutpair241" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[159]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[159] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[159]));
  (* SOFT_HLUTNM = "soft_lutpair313" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[15]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[15] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair240" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[160]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[160] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[160]));
  (* SOFT_HLUTNM = "soft_lutpair240" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[161]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[161] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[161]));
  (* SOFT_HLUTNM = "soft_lutpair239" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[162]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[162] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[162]));
  (* SOFT_HLUTNM = "soft_lutpair239" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[163]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[163] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[163]));
  (* SOFT_HLUTNM = "soft_lutpair238" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[164]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[164] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[164]));
  (* SOFT_HLUTNM = "soft_lutpair238" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[165]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[165] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[165]));
  (* SOFT_HLUTNM = "soft_lutpair237" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[166]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[166] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[166]));
  (* SOFT_HLUTNM = "soft_lutpair237" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[167]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[167] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[167]));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[168]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[168] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[168]));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[169]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[169] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[169]));
  (* SOFT_HLUTNM = "soft_lutpair312" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[16] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[170]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[170] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[170]));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[171]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[171] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[171]));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[172]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[172] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[172]));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[173]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[173] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[173]));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[174]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[174] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[174]));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[175]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[175] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[175]));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[176]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[176] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[176]));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[177]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[177] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[177]));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[178]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[178] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[178]));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[179]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[179] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[179]));
  (* SOFT_HLUTNM = "soft_lutpair312" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[17]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[17] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[180]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[180] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[180]));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[181]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[181] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[181]));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[182]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[182] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[182]));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[183]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[183] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[183]));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[184]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[184] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[184]));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[185]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[185] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[185]));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[186]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[186] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[186]));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[187]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[187] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[187]));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[188]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[188] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[188]));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[189]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[189] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[189]));
  (* SOFT_HLUTNM = "soft_lutpair311" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[18]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[18] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[190]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[190] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[190]));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[191]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[191] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[191]));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[192]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[192] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[192]));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[193]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[193] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[193]));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[194]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[194] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[194]));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[195]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[195] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[195]));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[196]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[196] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[196]));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[197]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[197] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[197]));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[198]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[198] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[198]));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[199]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[199] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[199]));
  (* SOFT_HLUTNM = "soft_lutpair311" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[19]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[19] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair320" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[1] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[200]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[200] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[200]));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[201]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[201] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[201]));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[202]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[202] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[202]));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[203]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[203] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[203]));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[204]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[204] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[204]));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[205]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[205] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[205]));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[206]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[206] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[206]));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[207]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[207] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[207]));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[208]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[208] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[208]));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[209]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[209] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[209]));
  (* SOFT_HLUTNM = "soft_lutpair310" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[20]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[20] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[210]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[210] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[210]));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[211]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[211] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[211]));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[212]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[212] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[212]));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[213]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[213] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[213]));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[214]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[214] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[214]));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[215]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[215] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[215]));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[216]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[216] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[216]));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[217]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[217] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[217]));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[218]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[218] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[218]));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[219]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[219] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[219]));
  (* SOFT_HLUTNM = "soft_lutpair310" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[21]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[21] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[220]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[220] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[220]));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[221]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[221] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[221]));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[222]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[222] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[222]));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[223]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[223] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[223]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[224]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[224] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[224]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[225]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[225] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[225]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[226]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[226] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[226]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[227]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[227] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[227]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[228]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[228] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[228]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[229]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[229] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[229]));
  (* SOFT_HLUTNM = "soft_lutpair309" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[22]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[22] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[230]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[230] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[230]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[231]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[231] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[231]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[232]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[232] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[232]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[233]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[233] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[233]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[234]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[234] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[234]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[235]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[235] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[235]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[236]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[236] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[236]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[237]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[237] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[237]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[238]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[238] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[238]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[239]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[239] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[239]));
  (* SOFT_HLUTNM = "soft_lutpair309" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[23]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[23] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \m_axis_tdata[240]_INST_0 
       (.I0(default_pulse[240]),
        .I1(\m_axis_tdata[255]_INST_0_i_1_n_0 ),
        .I2(is_phase_meas_mode_reg_n_0),
        .I3(\m_axis_tdata_int_reg_n_0_[240] ),
        .O(m_axis_tdata[240]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \m_axis_tdata[241]_INST_0 
       (.I0(default_pulse[241]),
        .I1(\m_axis_tdata[255]_INST_0_i_1_n_0 ),
        .I2(is_phase_meas_mode_reg_n_0),
        .I3(\m_axis_tdata_int_reg_n_0_[241] ),
        .O(m_axis_tdata[241]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \m_axis_tdata[242]_INST_0 
       (.I0(default_pulse[242]),
        .I1(\m_axis_tdata[255]_INST_0_i_1_n_0 ),
        .I2(is_phase_meas_mode_reg_n_0),
        .I3(\m_axis_tdata_int_reg_n_0_[242] ),
        .O(m_axis_tdata[242]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \m_axis_tdata[243]_INST_0 
       (.I0(default_pulse[243]),
        .I1(\m_axis_tdata[255]_INST_0_i_1_n_0 ),
        .I2(is_phase_meas_mode_reg_n_0),
        .I3(\m_axis_tdata_int_reg_n_0_[243] ),
        .O(m_axis_tdata[243]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \m_axis_tdata[244]_INST_0 
       (.I0(default_pulse[244]),
        .I1(\m_axis_tdata[255]_INST_0_i_1_n_0 ),
        .I2(is_phase_meas_mode_reg_n_0),
        .I3(\m_axis_tdata_int_reg_n_0_[244] ),
        .O(m_axis_tdata[244]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \m_axis_tdata[245]_INST_0 
       (.I0(default_pulse[245]),
        .I1(\m_axis_tdata[255]_INST_0_i_1_n_0 ),
        .I2(is_phase_meas_mode_reg_n_0),
        .I3(\m_axis_tdata_int_reg_n_0_[245] ),
        .O(m_axis_tdata[245]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \m_axis_tdata[246]_INST_0 
       (.I0(default_pulse[246]),
        .I1(\m_axis_tdata[255]_INST_0_i_1_n_0 ),
        .I2(is_phase_meas_mode_reg_n_0),
        .I3(\m_axis_tdata_int_reg_n_0_[246] ),
        .O(m_axis_tdata[246]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \m_axis_tdata[247]_INST_0 
       (.I0(default_pulse[247]),
        .I1(\m_axis_tdata[255]_INST_0_i_1_n_0 ),
        .I2(is_phase_meas_mode_reg_n_0),
        .I3(\m_axis_tdata_int_reg_n_0_[247] ),
        .O(m_axis_tdata[247]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \m_axis_tdata[248]_INST_0 
       (.I0(default_pulse[248]),
        .I1(\m_axis_tdata[255]_INST_0_i_1_n_0 ),
        .I2(is_phase_meas_mode_reg_n_0),
        .I3(\m_axis_tdata_int_reg_n_0_[248] ),
        .O(m_axis_tdata[248]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \m_axis_tdata[249]_INST_0 
       (.I0(default_pulse[249]),
        .I1(\m_axis_tdata[255]_INST_0_i_1_n_0 ),
        .I2(is_phase_meas_mode_reg_n_0),
        .I3(\m_axis_tdata_int_reg_n_0_[249] ),
        .O(m_axis_tdata[249]));
  (* SOFT_HLUTNM = "soft_lutpair308" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[24]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[24] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \m_axis_tdata[250]_INST_0 
       (.I0(default_pulse[250]),
        .I1(\m_axis_tdata[255]_INST_0_i_1_n_0 ),
        .I2(is_phase_meas_mode_reg_n_0),
        .I3(\m_axis_tdata_int_reg_n_0_[250] ),
        .O(m_axis_tdata[250]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \m_axis_tdata[251]_INST_0 
       (.I0(default_pulse[251]),
        .I1(\m_axis_tdata[255]_INST_0_i_1_n_0 ),
        .I2(is_phase_meas_mode_reg_n_0),
        .I3(\m_axis_tdata_int_reg_n_0_[251] ),
        .O(m_axis_tdata[251]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \m_axis_tdata[252]_INST_0 
       (.I0(default_pulse[252]),
        .I1(\m_axis_tdata[255]_INST_0_i_1_n_0 ),
        .I2(is_phase_meas_mode_reg_n_0),
        .I3(\m_axis_tdata_int_reg_n_0_[252] ),
        .O(m_axis_tdata[252]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \m_axis_tdata[253]_INST_0 
       (.I0(default_pulse[253]),
        .I1(\m_axis_tdata[255]_INST_0_i_1_n_0 ),
        .I2(is_phase_meas_mode_reg_n_0),
        .I3(\m_axis_tdata_int_reg_n_0_[253] ),
        .O(m_axis_tdata[253]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \m_axis_tdata[254]_INST_0 
       (.I0(default_pulse[254]),
        .I1(\m_axis_tdata[255]_INST_0_i_1_n_0 ),
        .I2(is_phase_meas_mode_reg_n_0),
        .I3(\m_axis_tdata_int_reg_n_0_[254] ),
        .O(m_axis_tdata[254]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \m_axis_tdata[255]_INST_0 
       (.I0(default_pulse[255]),
        .I1(\m_axis_tdata[255]_INST_0_i_1_n_0 ),
        .I2(is_phase_meas_mode_reg_n_0),
        .I3(\m_axis_tdata_int_reg_n_0_[255] ),
        .O(m_axis_tdata[255]));
  LUT5 #(
    .INIT(32'h00000004)) 
    \m_axis_tdata[255]_INST_0_i_1 
       (.I0(\m_axis_tdata[255]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[255]_INST_0_i_3_n_0 ),
        .I2(\m_axis_tdata[255]_INST_0_i_4_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_5_n_0 ),
        .I4(\m_axis_tdata[255]_INST_0_i_6_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[255]_INST_0_i_10 
       (.I0(main_clock[31]),
        .I1(main_clock[30]),
        .I2(main_clock[39]),
        .I3(main_clock[38]),
        .O(\m_axis_tdata[255]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[255]_INST_0_i_11 
       (.I0(main_clock[33]),
        .I1(main_clock[32]),
        .I2(main_clock[45]),
        .I3(main_clock[44]),
        .O(\m_axis_tdata[255]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[255]_INST_0_i_12 
       (.I0(main_clock[17]),
        .I1(main_clock[13]),
        .I2(main_clock[16]),
        .I3(main_clock[12]),
        .O(\m_axis_tdata[255]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \m_axis_tdata[255]_INST_0_i_2 
       (.I0(main_clock[1]),
        .I1(main_clock[8]),
        .I2(main_clock[2]),
        .I3(main_clock[19]),
        .I4(\m_axis_tdata[255]_INST_0_i_7_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \m_axis_tdata[255]_INST_0_i_3 
       (.I0(main_clock[4]),
        .I1(main_clock[22]),
        .I2(main_clock[0]),
        .I3(main_clock[9]),
        .I4(\m_axis_tdata[255]_INST_0_i_8_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_axis_tdata[255]_INST_0_i_4 
       (.I0(\m_axis_tdata[255]_INST_0_i_9_n_0 ),
        .I1(\m_axis_tdata[255]_INST_0_i_10_n_0 ),
        .I2(main_clock[35]),
        .I3(main_clock[34]),
        .I4(main_clock[43]),
        .I5(main_clock[42]),
        .O(\m_axis_tdata[255]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \m_axis_tdata[255]_INST_0_i_5 
       (.I0(main_clock[36]),
        .I1(main_clock[37]),
        .I2(main_clock[24]),
        .I3(main_clock[25]),
        .I4(\m_axis_tdata[255]_INST_0_i_11_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \m_axis_tdata[255]_INST_0_i_6 
       (.I0(main_clock[5]),
        .I1(main_clock[11]),
        .I2(main_clock[6]),
        .I3(main_clock[15]),
        .I4(\m_axis_tdata[255]_INST_0_i_12_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[255]_INST_0_i_7 
       (.I0(main_clock[20]),
        .I1(main_clock[7]),
        .I2(main_clock[23]),
        .I3(main_clock[14]),
        .O(\m_axis_tdata[255]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[255]_INST_0_i_8 
       (.I0(main_clock[18]),
        .I1(main_clock[3]),
        .I2(main_clock[21]),
        .I3(main_clock[10]),
        .O(\m_axis_tdata[255]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_axis_tdata[255]_INST_0_i_9 
       (.I0(main_clock[27]),
        .I1(main_clock[26]),
        .I2(main_clock[40]),
        .I3(main_clock[41]),
        .I4(main_clock[28]),
        .I5(main_clock[29]),
        .O(\m_axis_tdata[255]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair308" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[25]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[25] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair307" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[26]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[26] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair307" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[27]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[27] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair306" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[28]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[28] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair306" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[29]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[29] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair319" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[2] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair305" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[30]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[30] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair305" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[31]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[31] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair304" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[32]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[32] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[32]));
  (* SOFT_HLUTNM = "soft_lutpair304" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[33]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[33] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[33]));
  (* SOFT_HLUTNM = "soft_lutpair303" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[34]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[34] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[34]));
  (* SOFT_HLUTNM = "soft_lutpair303" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[35]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[35] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[35]));
  (* SOFT_HLUTNM = "soft_lutpair302" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[36]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[36] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[36]));
  (* SOFT_HLUTNM = "soft_lutpair302" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[37]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[37] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[37]));
  (* SOFT_HLUTNM = "soft_lutpair301" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[38]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[38] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[38]));
  (* SOFT_HLUTNM = "soft_lutpair301" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[39]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[39] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[39]));
  (* SOFT_HLUTNM = "soft_lutpair319" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[3] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair300" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[40]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[40] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[40]));
  (* SOFT_HLUTNM = "soft_lutpair300" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[41]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[41] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[41]));
  (* SOFT_HLUTNM = "soft_lutpair299" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[42]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[42] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[42]));
  (* SOFT_HLUTNM = "soft_lutpair299" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[43]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[43] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[43]));
  (* SOFT_HLUTNM = "soft_lutpair298" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[44]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[44] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[44]));
  (* SOFT_HLUTNM = "soft_lutpair298" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[45]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[45] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[45]));
  (* SOFT_HLUTNM = "soft_lutpair297" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[46]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[46] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[46]));
  (* SOFT_HLUTNM = "soft_lutpair297" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[47]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[47] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[47]));
  (* SOFT_HLUTNM = "soft_lutpair296" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[48]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[48] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[48]));
  (* SOFT_HLUTNM = "soft_lutpair296" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[49]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[49] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[49]));
  (* SOFT_HLUTNM = "soft_lutpair318" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[4] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair295" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[50]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[50] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[50]));
  (* SOFT_HLUTNM = "soft_lutpair295" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[51]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[51] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[51]));
  (* SOFT_HLUTNM = "soft_lutpair294" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[52]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[52] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[52]));
  (* SOFT_HLUTNM = "soft_lutpair294" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[53]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[53] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[53]));
  (* SOFT_HLUTNM = "soft_lutpair293" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[54]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[54] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[54]));
  (* SOFT_HLUTNM = "soft_lutpair293" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[55]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[55] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[55]));
  (* SOFT_HLUTNM = "soft_lutpair292" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[56]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[56] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[56]));
  (* SOFT_HLUTNM = "soft_lutpair292" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[57]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[57] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[57]));
  (* SOFT_HLUTNM = "soft_lutpair291" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[58]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[58] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[58]));
  (* SOFT_HLUTNM = "soft_lutpair291" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[59]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[59] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[59]));
  (* SOFT_HLUTNM = "soft_lutpair318" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[5] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair290" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[60]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[60] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[60]));
  (* SOFT_HLUTNM = "soft_lutpair290" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[61]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[61] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[61]));
  (* SOFT_HLUTNM = "soft_lutpair289" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[62]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[62] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[62]));
  (* SOFT_HLUTNM = "soft_lutpair289" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[63]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[63] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[63]));
  (* SOFT_HLUTNM = "soft_lutpair288" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[64]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[64] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[64]));
  (* SOFT_HLUTNM = "soft_lutpair288" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[65]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[65] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[65]));
  (* SOFT_HLUTNM = "soft_lutpair287" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[66]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[66] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[66]));
  (* SOFT_HLUTNM = "soft_lutpair287" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[67]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[67] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[67]));
  (* SOFT_HLUTNM = "soft_lutpair286" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[68]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[68] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[68]));
  (* SOFT_HLUTNM = "soft_lutpair286" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[69]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[69] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[69]));
  (* SOFT_HLUTNM = "soft_lutpair317" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[6] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair285" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[70]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[70] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[70]));
  (* SOFT_HLUTNM = "soft_lutpair285" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[71]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[71] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[71]));
  (* SOFT_HLUTNM = "soft_lutpair284" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[72]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[72] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[72]));
  (* SOFT_HLUTNM = "soft_lutpair284" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[73]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[73] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[73]));
  (* SOFT_HLUTNM = "soft_lutpair283" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[74]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[74] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[74]));
  (* SOFT_HLUTNM = "soft_lutpair283" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[75]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[75] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[75]));
  (* SOFT_HLUTNM = "soft_lutpair282" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[76]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[76] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[76]));
  (* SOFT_HLUTNM = "soft_lutpair282" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[77]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[77] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[77]));
  (* SOFT_HLUTNM = "soft_lutpair281" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[78]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[78] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[78]));
  (* SOFT_HLUTNM = "soft_lutpair281" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[79]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[79] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[79]));
  (* SOFT_HLUTNM = "soft_lutpair317" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[7] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair280" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[80]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[80] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[80]));
  (* SOFT_HLUTNM = "soft_lutpair280" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[81]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[81] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[81]));
  (* SOFT_HLUTNM = "soft_lutpair279" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[82]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[82] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[82]));
  (* SOFT_HLUTNM = "soft_lutpair279" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[83]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[83] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[83]));
  (* SOFT_HLUTNM = "soft_lutpair278" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[84]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[84] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[84]));
  (* SOFT_HLUTNM = "soft_lutpair278" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[85]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[85] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[85]));
  (* SOFT_HLUTNM = "soft_lutpair277" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[86]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[86] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[86]));
  (* SOFT_HLUTNM = "soft_lutpair277" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[87]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[87] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[87]));
  (* SOFT_HLUTNM = "soft_lutpair276" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[88]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[88] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[88]));
  (* SOFT_HLUTNM = "soft_lutpair276" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[89]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[89] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[89]));
  (* SOFT_HLUTNM = "soft_lutpair316" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[8] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair275" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[90]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[90] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[90]));
  (* SOFT_HLUTNM = "soft_lutpair275" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[91]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[91] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[91]));
  (* SOFT_HLUTNM = "soft_lutpair274" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[92]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[92] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[92]));
  (* SOFT_HLUTNM = "soft_lutpair274" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[93]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[93] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[93]));
  (* SOFT_HLUTNM = "soft_lutpair273" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[94]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[94] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[94]));
  (* SOFT_HLUTNM = "soft_lutpair273" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[95]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[95] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[95]));
  (* SOFT_HLUTNM = "soft_lutpair272" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[96]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[96] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[96]));
  (* SOFT_HLUTNM = "soft_lutpair272" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[97]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[97] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[97]));
  (* SOFT_HLUTNM = "soft_lutpair271" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[98]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[98] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[98]));
  (* SOFT_HLUTNM = "soft_lutpair271" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[99]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[99] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[99]));
  (* SOFT_HLUTNM = "soft_lutpair316" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[9] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[0]_i_1 
       (.I0(default_pulse[240]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \m_axis_tdata_int[100]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[244]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[100]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \m_axis_tdata_int[101]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[245]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[101]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \m_axis_tdata_int[102]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[246]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[102]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \m_axis_tdata_int[103]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[247]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[103]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \m_axis_tdata_int[104]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[248]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[104]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \m_axis_tdata_int[105]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[249]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[105]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \m_axis_tdata_int[106]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[250]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[106]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \m_axis_tdata_int[107]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[251]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[107]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \m_axis_tdata_int[108]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[252]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[108]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \m_axis_tdata_int[109]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[253]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[109]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[10]_i_1 
       (.I0(default_pulse[250]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \m_axis_tdata_int[110]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[254]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[110]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \m_axis_tdata_int[111]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[255]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[111]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \m_axis_tdata_int[112]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[240]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[112]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \m_axis_tdata_int[113]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[241]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[113]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \m_axis_tdata_int[114]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[242]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[114]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \m_axis_tdata_int[115]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[243]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[115]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \m_axis_tdata_int[116]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[244]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[116]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \m_axis_tdata_int[117]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[245]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[117]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \m_axis_tdata_int[118]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[246]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[118]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \m_axis_tdata_int[119]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[247]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[119]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[11]_i_1 
       (.I0(default_pulse[251]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \m_axis_tdata_int[120]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[248]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[120]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \m_axis_tdata_int[121]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[249]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[121]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \m_axis_tdata_int[122]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[250]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[122]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \m_axis_tdata_int[123]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[251]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[123]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \m_axis_tdata_int[124]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[252]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[124]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \m_axis_tdata_int[125]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[253]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[125]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \m_axis_tdata_int[126]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[254]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[126]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \m_axis_tdata_int[127]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[255]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[127]));
  LUT5 #(
    .INIT(32'hAB99FFFF)) 
    \m_axis_tdata_int[127]_i_2 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(m_axis_tdata_int1[7]),
        .O(\m_axis_tdata_int[127]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \m_axis_tdata_int[128]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[240]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[128]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \m_axis_tdata_int[129]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[241]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[129]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[12]_i_1 
       (.I0(default_pulse[252]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \m_axis_tdata_int[130]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[242]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[130]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \m_axis_tdata_int[131]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[243]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[131]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \m_axis_tdata_int[132]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[244]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[132]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \m_axis_tdata_int[133]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[245]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[133]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \m_axis_tdata_int[134]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[246]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[134]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \m_axis_tdata_int[135]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[247]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[135]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \m_axis_tdata_int[136]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[248]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[136]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \m_axis_tdata_int[137]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[249]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[137]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \m_axis_tdata_int[138]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[250]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[138]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \m_axis_tdata_int[139]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[251]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[139]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[13]_i_1 
       (.I0(default_pulse[253]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \m_axis_tdata_int[140]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[252]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[140]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \m_axis_tdata_int[141]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[253]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[141]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \m_axis_tdata_int[142]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[254]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[142]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \m_axis_tdata_int[143]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[255]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[143]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \m_axis_tdata_int[144]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[240]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[144]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \m_axis_tdata_int[145]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[241]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[145]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \m_axis_tdata_int[146]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[242]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[146]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \m_axis_tdata_int[147]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[243]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[147]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \m_axis_tdata_int[148]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[244]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[148]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \m_axis_tdata_int[149]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[245]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[149]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[14]_i_1 
       (.I0(default_pulse[254]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \m_axis_tdata_int[150]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[246]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[150]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \m_axis_tdata_int[151]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[247]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[151]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \m_axis_tdata_int[152]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[248]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[152]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \m_axis_tdata_int[153]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[249]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[153]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \m_axis_tdata_int[154]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[250]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[154]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \m_axis_tdata_int[155]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[251]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[155]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \m_axis_tdata_int[156]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[252]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[156]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \m_axis_tdata_int[157]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[253]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[157]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \m_axis_tdata_int[158]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[254]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[158]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h08000000)) 
    \m_axis_tdata_int[159]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[255]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[159]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[15]_i_1 
       (.I0(default_pulse[255]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \m_axis_tdata_int[160]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[240]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[160]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \m_axis_tdata_int[161]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[241]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[161]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \m_axis_tdata_int[162]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[242]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[162]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \m_axis_tdata_int[163]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[243]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[163]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \m_axis_tdata_int[164]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[244]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[164]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \m_axis_tdata_int[165]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[245]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[165]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \m_axis_tdata_int[166]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[246]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[166]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \m_axis_tdata_int[167]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[247]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[167]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \m_axis_tdata_int[168]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[248]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[168]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \m_axis_tdata_int[169]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[249]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[169]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[16]_i_1 
       (.I0(default_pulse[240]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \m_axis_tdata_int[170]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[250]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[170]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \m_axis_tdata_int[171]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[251]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[171]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \m_axis_tdata_int[172]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[252]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[172]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \m_axis_tdata_int[173]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[253]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[173]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \m_axis_tdata_int[174]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[254]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[174]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    \m_axis_tdata_int[175]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[255]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[175]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \m_axis_tdata_int[176]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[240]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[176]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \m_axis_tdata_int[177]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[241]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[177]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \m_axis_tdata_int[178]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[242]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[178]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \m_axis_tdata_int[179]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[243]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[179]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[17]_i_1 
       (.I0(default_pulse[241]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \m_axis_tdata_int[180]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[244]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[180]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \m_axis_tdata_int[181]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[245]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[181]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \m_axis_tdata_int[182]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[246]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[182]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \m_axis_tdata_int[183]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[247]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[183]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \m_axis_tdata_int[184]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[248]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[184]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \m_axis_tdata_int[185]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[249]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[185]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \m_axis_tdata_int[186]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[250]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[186]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \m_axis_tdata_int[187]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[251]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[187]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \m_axis_tdata_int[188]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[252]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[188]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \m_axis_tdata_int[189]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[253]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[189]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[18]_i_1 
       (.I0(default_pulse[242]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \m_axis_tdata_int[190]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[254]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[190]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \m_axis_tdata_int[191]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[255]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[191]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[192]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[240]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[192]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[193]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[241]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[193]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[194]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[242]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[194]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[195]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[243]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[195]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[196]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[244]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[196]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[197]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[245]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[197]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[198]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[246]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[198]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[199]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[247]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[199]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[19]_i_1 
       (.I0(default_pulse[243]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[1]_i_1 
       (.I0(default_pulse[241]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[200]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[248]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[200]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[201]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[249]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[201]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[202]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[250]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[202]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[203]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[251]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[203]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[204]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[252]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[204]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[205]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[253]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[205]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[206]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[254]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[206]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[207]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[255]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[207]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \m_axis_tdata_int[208]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[240]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[208]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \m_axis_tdata_int[209]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[241]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[209]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[20]_i_1 
       (.I0(default_pulse[244]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \m_axis_tdata_int[210]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[242]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[210]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \m_axis_tdata_int[211]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[243]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[211]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \m_axis_tdata_int[212]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[244]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[212]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \m_axis_tdata_int[213]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[245]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[213]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \m_axis_tdata_int[214]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[246]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[214]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \m_axis_tdata_int[215]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[247]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[215]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \m_axis_tdata_int[216]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[248]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[216]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \m_axis_tdata_int[217]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[249]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[217]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \m_axis_tdata_int[218]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[250]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[218]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \m_axis_tdata_int[219]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[251]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[219]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[21]_i_1 
       (.I0(default_pulse[245]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \m_axis_tdata_int[220]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[252]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[220]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \m_axis_tdata_int[221]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[253]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[221]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \m_axis_tdata_int[222]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[254]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[222]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00000800)) 
    \m_axis_tdata_int[223]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(default_pulse[255]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[5]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[223]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[224]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[240]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[224]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[225]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[241]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[225]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[226]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[242]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[226]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[227]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[243]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[227]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[228]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[244]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[228]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[229]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[245]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[229]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[22]_i_1 
       (.I0(default_pulse[246]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[230]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[246]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[230]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[231]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[247]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[231]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[232]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[248]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[232]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[233]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[249]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[233]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[234]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[250]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[234]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[235]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[251]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[235]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[236]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[252]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[236]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[237]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[253]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[237]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[238]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[254]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[238]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[239]_i_1 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(default_pulse[255]),
        .I3(m_axis_tdata_int1[4]),
        .I4(m_axis_tdata_int1[6]),
        .O(m_axis_tdata_int0_in[239]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[23]_i_1 
       (.I0(default_pulse[247]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[23]));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \m_axis_tdata_int[240]_i_1 
       (.I0(\m_axis_tdata_int[240]_i_2_n_0 ),
        .I1(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(default_pulse[240]),
        .I5(state__0[0]),
        .O(m_axis_tdata_int0_in[240]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \m_axis_tdata_int[240]_i_2 
       (.I0(m_axis_tdata_int1[6]),
        .I1(m_axis_tdata_int1[4]),
        .I2(default_pulse[240]),
        .I3(m_axis_tdata_int1[5]),
        .O(\m_axis_tdata_int[240]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \m_axis_tdata_int[241]_i_1 
       (.I0(\m_axis_tdata_int[241]_i_2_n_0 ),
        .I1(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(default_pulse[241]),
        .I5(state__0[0]),
        .O(m_axis_tdata_int0_in[241]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \m_axis_tdata_int[241]_i_2 
       (.I0(m_axis_tdata_int1[6]),
        .I1(m_axis_tdata_int1[4]),
        .I2(default_pulse[241]),
        .I3(m_axis_tdata_int1[5]),
        .O(\m_axis_tdata_int[241]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \m_axis_tdata_int[242]_i_1 
       (.I0(\m_axis_tdata_int[242]_i_2_n_0 ),
        .I1(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(default_pulse[242]),
        .I5(state__0[0]),
        .O(m_axis_tdata_int0_in[242]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \m_axis_tdata_int[242]_i_2 
       (.I0(m_axis_tdata_int1[6]),
        .I1(m_axis_tdata_int1[4]),
        .I2(default_pulse[242]),
        .I3(m_axis_tdata_int1[5]),
        .O(\m_axis_tdata_int[242]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \m_axis_tdata_int[243]_i_1 
       (.I0(\m_axis_tdata_int[243]_i_2_n_0 ),
        .I1(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(default_pulse[243]),
        .I5(state__0[0]),
        .O(m_axis_tdata_int0_in[243]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \m_axis_tdata_int[243]_i_2 
       (.I0(m_axis_tdata_int1[6]),
        .I1(m_axis_tdata_int1[4]),
        .I2(default_pulse[243]),
        .I3(m_axis_tdata_int1[5]),
        .O(\m_axis_tdata_int[243]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \m_axis_tdata_int[244]_i_1 
       (.I0(\m_axis_tdata_int[244]_i_2_n_0 ),
        .I1(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(default_pulse[244]),
        .I5(state__0[0]),
        .O(m_axis_tdata_int0_in[244]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \m_axis_tdata_int[244]_i_2 
       (.I0(m_axis_tdata_int1[6]),
        .I1(m_axis_tdata_int1[4]),
        .I2(default_pulse[244]),
        .I3(m_axis_tdata_int1[5]),
        .O(\m_axis_tdata_int[244]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \m_axis_tdata_int[245]_i_1 
       (.I0(\m_axis_tdata_int[245]_i_2_n_0 ),
        .I1(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(default_pulse[245]),
        .I5(state__0[0]),
        .O(m_axis_tdata_int0_in[245]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \m_axis_tdata_int[245]_i_2 
       (.I0(m_axis_tdata_int1[6]),
        .I1(m_axis_tdata_int1[4]),
        .I2(default_pulse[245]),
        .I3(m_axis_tdata_int1[5]),
        .O(\m_axis_tdata_int[245]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \m_axis_tdata_int[246]_i_1 
       (.I0(\m_axis_tdata_int[246]_i_2_n_0 ),
        .I1(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(default_pulse[246]),
        .I5(state__0[0]),
        .O(m_axis_tdata_int0_in[246]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \m_axis_tdata_int[246]_i_2 
       (.I0(m_axis_tdata_int1[6]),
        .I1(m_axis_tdata_int1[4]),
        .I2(default_pulse[246]),
        .I3(m_axis_tdata_int1[5]),
        .O(\m_axis_tdata_int[246]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \m_axis_tdata_int[247]_i_1 
       (.I0(\m_axis_tdata_int[247]_i_2_n_0 ),
        .I1(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(default_pulse[247]),
        .I5(state__0[0]),
        .O(m_axis_tdata_int0_in[247]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \m_axis_tdata_int[247]_i_2 
       (.I0(m_axis_tdata_int1[6]),
        .I1(m_axis_tdata_int1[4]),
        .I2(default_pulse[247]),
        .I3(m_axis_tdata_int1[5]),
        .O(\m_axis_tdata_int[247]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \m_axis_tdata_int[248]_i_1 
       (.I0(\m_axis_tdata_int[248]_i_2_n_0 ),
        .I1(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(default_pulse[248]),
        .I5(state__0[0]),
        .O(m_axis_tdata_int0_in[248]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \m_axis_tdata_int[248]_i_2 
       (.I0(m_axis_tdata_int1[6]),
        .I1(m_axis_tdata_int1[4]),
        .I2(default_pulse[248]),
        .I3(m_axis_tdata_int1[5]),
        .O(\m_axis_tdata_int[248]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \m_axis_tdata_int[249]_i_1 
       (.I0(\m_axis_tdata_int[249]_i_2_n_0 ),
        .I1(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(default_pulse[249]),
        .I5(state__0[0]),
        .O(m_axis_tdata_int0_in[249]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \m_axis_tdata_int[249]_i_2 
       (.I0(m_axis_tdata_int1[6]),
        .I1(m_axis_tdata_int1[4]),
        .I2(default_pulse[249]),
        .I3(m_axis_tdata_int1[5]),
        .O(\m_axis_tdata_int[249]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[24]_i_1 
       (.I0(default_pulse[248]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[24]));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \m_axis_tdata_int[250]_i_1 
       (.I0(\m_axis_tdata_int[250]_i_2_n_0 ),
        .I1(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(default_pulse[250]),
        .I5(state__0[0]),
        .O(m_axis_tdata_int0_in[250]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \m_axis_tdata_int[250]_i_2 
       (.I0(m_axis_tdata_int1[6]),
        .I1(m_axis_tdata_int1[4]),
        .I2(default_pulse[250]),
        .I3(m_axis_tdata_int1[5]),
        .O(\m_axis_tdata_int[250]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \m_axis_tdata_int[251]_i_1 
       (.I0(\m_axis_tdata_int[251]_i_2_n_0 ),
        .I1(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(default_pulse[251]),
        .I5(state__0[0]),
        .O(m_axis_tdata_int0_in[251]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \m_axis_tdata_int[251]_i_2 
       (.I0(m_axis_tdata_int1[6]),
        .I1(m_axis_tdata_int1[4]),
        .I2(default_pulse[251]),
        .I3(m_axis_tdata_int1[5]),
        .O(\m_axis_tdata_int[251]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \m_axis_tdata_int[252]_i_1 
       (.I0(\m_axis_tdata_int[252]_i_2_n_0 ),
        .I1(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(default_pulse[252]),
        .I5(state__0[0]),
        .O(m_axis_tdata_int0_in[252]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \m_axis_tdata_int[252]_i_2 
       (.I0(m_axis_tdata_int1[6]),
        .I1(m_axis_tdata_int1[4]),
        .I2(default_pulse[252]),
        .I3(m_axis_tdata_int1[5]),
        .O(\m_axis_tdata_int[252]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \m_axis_tdata_int[253]_i_1 
       (.I0(\m_axis_tdata_int[253]_i_2_n_0 ),
        .I1(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(default_pulse[253]),
        .I5(state__0[0]),
        .O(m_axis_tdata_int0_in[253]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \m_axis_tdata_int[253]_i_2 
       (.I0(m_axis_tdata_int1[6]),
        .I1(m_axis_tdata_int1[4]),
        .I2(default_pulse[253]),
        .I3(m_axis_tdata_int1[5]),
        .O(\m_axis_tdata_int[253]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \m_axis_tdata_int[254]_i_1 
       (.I0(\m_axis_tdata_int[254]_i_2_n_0 ),
        .I1(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(default_pulse[254]),
        .I5(state__0[0]),
        .O(m_axis_tdata_int0_in[254]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \m_axis_tdata_int[254]_i_2 
       (.I0(m_axis_tdata_int1[6]),
        .I1(m_axis_tdata_int1[4]),
        .I2(default_pulse[254]),
        .I3(m_axis_tdata_int1[5]),
        .O(\m_axis_tdata_int[254]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0500FFFF05000700)) 
    \m_axis_tdata_int[255]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[3]),
        .I2(state__0[0]),
        .I3(\m_axis_tdata_int[255]_i_3_n_0 ),
        .I4(\FSM_sequential_state[2]_i_5_n_0 ),
        .I5(\m_axis_tdata_int[255]_i_4_n_0 ),
        .O(m_axis_tdata_int));
  LUT6 #(
    .INIT(64'h888888888F888888)) 
    \m_axis_tdata_int[255]_i_2 
       (.I0(\m_axis_tdata_int[255]_i_5_n_0 ),
        .I1(\m_axis_tdata_int[255]_i_6_n_0 ),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(default_pulse[255]),
        .I5(state__0[0]),
        .O(m_axis_tdata_int0_in[255]));
  LUT6 #(
    .INIT(64'h333333333F773377)) 
    \m_axis_tdata_int[255]_i_3 
       (.I0(rst_clock_i_2_n_0),
        .I1(state__0[1]),
        .I2(\FSM_sequential_state[2]_i_5_n_0 ),
        .I3(state__0[3]),
        .I4(clock_pre_tick),
        .I5(state__0[2]),
        .O(\m_axis_tdata_int[255]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h0000E000)) 
    \m_axis_tdata_int[255]_i_4 
       (.I0(state__0[3]),
        .I1(clock_pre_tick),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .O(\m_axis_tdata_int[255]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h11101414)) 
    \m_axis_tdata_int[255]_i_5 
       (.I0(m_axis_tdata_int1[7]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[3]),
        .I4(state__0[1]),
        .O(\m_axis_tdata_int[255]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \m_axis_tdata_int[255]_i_6 
       (.I0(m_axis_tdata_int1[6]),
        .I1(m_axis_tdata_int1[4]),
        .I2(default_pulse[255]),
        .I3(m_axis_tdata_int1[5]),
        .O(\m_axis_tdata_int[255]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[25]_i_1 
       (.I0(default_pulse[249]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[26]_i_1 
       (.I0(default_pulse[250]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[27]_i_1 
       (.I0(default_pulse[251]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[28]_i_1 
       (.I0(default_pulse[252]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[29]_i_1 
       (.I0(default_pulse[253]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[2]_i_1 
       (.I0(default_pulse[242]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[30]_i_1 
       (.I0(default_pulse[254]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[30]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \m_axis_tdata_int[31]_i_1 
       (.I0(default_pulse[255]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \m_axis_tdata_int[32]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[240]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[32]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \m_axis_tdata_int[33]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[241]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[33]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \m_axis_tdata_int[34]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[242]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[34]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \m_axis_tdata_int[35]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[243]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[35]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \m_axis_tdata_int[36]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[244]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[36]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \m_axis_tdata_int[37]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[245]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[37]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \m_axis_tdata_int[38]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[246]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[38]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \m_axis_tdata_int[39]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[247]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[39]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[3]_i_1 
       (.I0(default_pulse[243]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \m_axis_tdata_int[40]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[248]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[40]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \m_axis_tdata_int[41]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[249]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[41]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \m_axis_tdata_int[42]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[250]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[42]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \m_axis_tdata_int[43]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[251]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[43]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \m_axis_tdata_int[44]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[252]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[44]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \m_axis_tdata_int[45]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[253]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[45]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \m_axis_tdata_int[46]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[254]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[46]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'h00004000)) 
    \m_axis_tdata_int[47]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[255]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[47]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \m_axis_tdata_int[48]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[240]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[48]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \m_axis_tdata_int[49]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[241]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[49]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[4]_i_1 
       (.I0(default_pulse[244]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \m_axis_tdata_int[50]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[242]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[50]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \m_axis_tdata_int[51]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[243]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[51]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \m_axis_tdata_int[52]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[244]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[52]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \m_axis_tdata_int[53]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[245]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[53]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \m_axis_tdata_int[54]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[246]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[54]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \m_axis_tdata_int[55]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[247]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[55]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \m_axis_tdata_int[56]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[248]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[56]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \m_axis_tdata_int[57]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[249]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[57]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \m_axis_tdata_int[58]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[250]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[58]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \m_axis_tdata_int[59]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[251]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[59]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[5]_i_1 
       (.I0(default_pulse[245]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \m_axis_tdata_int[60]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[252]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[60]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \m_axis_tdata_int[61]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[253]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[61]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \m_axis_tdata_int[62]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[254]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[62]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \m_axis_tdata_int[63]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[255]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[63]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \m_axis_tdata_int[64]_i_1 
       (.I0(default_pulse[240]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[64]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \m_axis_tdata_int[65]_i_1 
       (.I0(default_pulse[241]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[65]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \m_axis_tdata_int[66]_i_1 
       (.I0(default_pulse[242]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[66]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \m_axis_tdata_int[67]_i_1 
       (.I0(default_pulse[243]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[67]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \m_axis_tdata_int[68]_i_1 
       (.I0(default_pulse[244]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[68]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \m_axis_tdata_int[69]_i_1 
       (.I0(default_pulse[245]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[69]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[6]_i_1 
       (.I0(default_pulse[246]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \m_axis_tdata_int[70]_i_1 
       (.I0(default_pulse[246]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[70]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \m_axis_tdata_int[71]_i_1 
       (.I0(default_pulse[247]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[71]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \m_axis_tdata_int[72]_i_1 
       (.I0(default_pulse[248]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[72]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \m_axis_tdata_int[73]_i_1 
       (.I0(default_pulse[249]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[73]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \m_axis_tdata_int[74]_i_1 
       (.I0(default_pulse[250]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[74]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \m_axis_tdata_int[75]_i_1 
       (.I0(default_pulse[251]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[75]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \m_axis_tdata_int[76]_i_1 
       (.I0(default_pulse[252]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[76]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \m_axis_tdata_int[77]_i_1 
       (.I0(default_pulse[253]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[77]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \m_axis_tdata_int[78]_i_1 
       (.I0(default_pulse[254]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[78]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \m_axis_tdata_int[79]_i_1 
       (.I0(default_pulse[255]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[79]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[7]_i_1 
       (.I0(default_pulse[247]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \m_axis_tdata_int[80]_i_1 
       (.I0(default_pulse[240]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[80]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \m_axis_tdata_int[81]_i_1 
       (.I0(default_pulse[241]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[81]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \m_axis_tdata_int[82]_i_1 
       (.I0(default_pulse[242]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[82]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \m_axis_tdata_int[83]_i_1 
       (.I0(default_pulse[243]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[83]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \m_axis_tdata_int[84]_i_1 
       (.I0(default_pulse[244]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[84]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \m_axis_tdata_int[85]_i_1 
       (.I0(default_pulse[245]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[85]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \m_axis_tdata_int[86]_i_1 
       (.I0(default_pulse[246]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[86]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \m_axis_tdata_int[87]_i_1 
       (.I0(default_pulse[247]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[87]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \m_axis_tdata_int[88]_i_1 
       (.I0(default_pulse[248]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[88]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \m_axis_tdata_int[89]_i_1 
       (.I0(default_pulse[249]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[89]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[8]_i_1 
       (.I0(default_pulse[248]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \m_axis_tdata_int[90]_i_1 
       (.I0(default_pulse[250]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[90]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \m_axis_tdata_int[91]_i_1 
       (.I0(default_pulse[251]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[91]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \m_axis_tdata_int[92]_i_1 
       (.I0(default_pulse[252]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[92]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \m_axis_tdata_int[93]_i_1 
       (.I0(default_pulse[253]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[93]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \m_axis_tdata_int[94]_i_1 
       (.I0(default_pulse[254]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[94]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \m_axis_tdata_int[95]_i_1 
       (.I0(default_pulse[255]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[95]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \m_axis_tdata_int[96]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[240]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[96]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \m_axis_tdata_int[97]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[241]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[97]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \m_axis_tdata_int[98]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[242]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[98]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \m_axis_tdata_int[99]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(default_pulse[243]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[99]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \m_axis_tdata_int[9]_i_1 
       (.I0(default_pulse[249]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .I4(\m_axis_tdata_int[127]_i_2_n_0 ),
        .O(m_axis_tdata_int0_in[9]));
  FDCE \m_axis_tdata_int_reg[0] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[0]),
        .Q(\m_axis_tdata_int_reg_n_0_[0] ));
  FDCE \m_axis_tdata_int_reg[100] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[100]),
        .Q(\m_axis_tdata_int_reg_n_0_[100] ));
  FDCE \m_axis_tdata_int_reg[101] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[101]),
        .Q(\m_axis_tdata_int_reg_n_0_[101] ));
  FDCE \m_axis_tdata_int_reg[102] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[102]),
        .Q(\m_axis_tdata_int_reg_n_0_[102] ));
  FDCE \m_axis_tdata_int_reg[103] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[103]),
        .Q(\m_axis_tdata_int_reg_n_0_[103] ));
  FDCE \m_axis_tdata_int_reg[104] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[104]),
        .Q(\m_axis_tdata_int_reg_n_0_[104] ));
  FDCE \m_axis_tdata_int_reg[105] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[105]),
        .Q(\m_axis_tdata_int_reg_n_0_[105] ));
  FDCE \m_axis_tdata_int_reg[106] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[106]),
        .Q(\m_axis_tdata_int_reg_n_0_[106] ));
  FDCE \m_axis_tdata_int_reg[107] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[107]),
        .Q(\m_axis_tdata_int_reg_n_0_[107] ));
  FDCE \m_axis_tdata_int_reg[108] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[108]),
        .Q(\m_axis_tdata_int_reg_n_0_[108] ));
  FDCE \m_axis_tdata_int_reg[109] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[109]),
        .Q(\m_axis_tdata_int_reg_n_0_[109] ));
  FDCE \m_axis_tdata_int_reg[10] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[10]),
        .Q(\m_axis_tdata_int_reg_n_0_[10] ));
  FDCE \m_axis_tdata_int_reg[110] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[110]),
        .Q(\m_axis_tdata_int_reg_n_0_[110] ));
  FDCE \m_axis_tdata_int_reg[111] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[111]),
        .Q(\m_axis_tdata_int_reg_n_0_[111] ));
  FDCE \m_axis_tdata_int_reg[112] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[112]),
        .Q(\m_axis_tdata_int_reg_n_0_[112] ));
  FDCE \m_axis_tdata_int_reg[113] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[113]),
        .Q(\m_axis_tdata_int_reg_n_0_[113] ));
  FDCE \m_axis_tdata_int_reg[114] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[114]),
        .Q(\m_axis_tdata_int_reg_n_0_[114] ));
  FDCE \m_axis_tdata_int_reg[115] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[115]),
        .Q(\m_axis_tdata_int_reg_n_0_[115] ));
  FDCE \m_axis_tdata_int_reg[116] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[116]),
        .Q(\m_axis_tdata_int_reg_n_0_[116] ));
  FDCE \m_axis_tdata_int_reg[117] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[117]),
        .Q(\m_axis_tdata_int_reg_n_0_[117] ));
  FDCE \m_axis_tdata_int_reg[118] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[118]),
        .Q(\m_axis_tdata_int_reg_n_0_[118] ));
  FDCE \m_axis_tdata_int_reg[119] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[119]),
        .Q(\m_axis_tdata_int_reg_n_0_[119] ));
  FDCE \m_axis_tdata_int_reg[11] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[11]),
        .Q(\m_axis_tdata_int_reg_n_0_[11] ));
  FDCE \m_axis_tdata_int_reg[120] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[120]),
        .Q(\m_axis_tdata_int_reg_n_0_[120] ));
  FDCE \m_axis_tdata_int_reg[121] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[121]),
        .Q(\m_axis_tdata_int_reg_n_0_[121] ));
  FDCE \m_axis_tdata_int_reg[122] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[122]),
        .Q(\m_axis_tdata_int_reg_n_0_[122] ));
  FDCE \m_axis_tdata_int_reg[123] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[123]),
        .Q(\m_axis_tdata_int_reg_n_0_[123] ));
  FDCE \m_axis_tdata_int_reg[124] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[124]),
        .Q(\m_axis_tdata_int_reg_n_0_[124] ));
  FDCE \m_axis_tdata_int_reg[125] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[125]),
        .Q(\m_axis_tdata_int_reg_n_0_[125] ));
  FDCE \m_axis_tdata_int_reg[126] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[126]),
        .Q(\m_axis_tdata_int_reg_n_0_[126] ));
  FDCE \m_axis_tdata_int_reg[127] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[127]),
        .Q(\m_axis_tdata_int_reg_n_0_[127] ));
  FDCE \m_axis_tdata_int_reg[128] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[128]),
        .Q(\m_axis_tdata_int_reg_n_0_[128] ));
  FDCE \m_axis_tdata_int_reg[129] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[129]),
        .Q(\m_axis_tdata_int_reg_n_0_[129] ));
  FDCE \m_axis_tdata_int_reg[12] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[12]),
        .Q(\m_axis_tdata_int_reg_n_0_[12] ));
  FDCE \m_axis_tdata_int_reg[130] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[130]),
        .Q(\m_axis_tdata_int_reg_n_0_[130] ));
  FDCE \m_axis_tdata_int_reg[131] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[131]),
        .Q(\m_axis_tdata_int_reg_n_0_[131] ));
  FDCE \m_axis_tdata_int_reg[132] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[132]),
        .Q(\m_axis_tdata_int_reg_n_0_[132] ));
  FDCE \m_axis_tdata_int_reg[133] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[133]),
        .Q(\m_axis_tdata_int_reg_n_0_[133] ));
  FDCE \m_axis_tdata_int_reg[134] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[134]),
        .Q(\m_axis_tdata_int_reg_n_0_[134] ));
  FDCE \m_axis_tdata_int_reg[135] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[135]),
        .Q(\m_axis_tdata_int_reg_n_0_[135] ));
  FDCE \m_axis_tdata_int_reg[136] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[136]),
        .Q(\m_axis_tdata_int_reg_n_0_[136] ));
  FDCE \m_axis_tdata_int_reg[137] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[137]),
        .Q(\m_axis_tdata_int_reg_n_0_[137] ));
  FDCE \m_axis_tdata_int_reg[138] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[138]),
        .Q(\m_axis_tdata_int_reg_n_0_[138] ));
  FDCE \m_axis_tdata_int_reg[139] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[139]),
        .Q(\m_axis_tdata_int_reg_n_0_[139] ));
  FDCE \m_axis_tdata_int_reg[13] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[13]),
        .Q(\m_axis_tdata_int_reg_n_0_[13] ));
  FDCE \m_axis_tdata_int_reg[140] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[140]),
        .Q(\m_axis_tdata_int_reg_n_0_[140] ));
  FDCE \m_axis_tdata_int_reg[141] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[141]),
        .Q(\m_axis_tdata_int_reg_n_0_[141] ));
  FDCE \m_axis_tdata_int_reg[142] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[142]),
        .Q(\m_axis_tdata_int_reg_n_0_[142] ));
  FDCE \m_axis_tdata_int_reg[143] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[143]),
        .Q(\m_axis_tdata_int_reg_n_0_[143] ));
  FDCE \m_axis_tdata_int_reg[144] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[144]),
        .Q(\m_axis_tdata_int_reg_n_0_[144] ));
  FDCE \m_axis_tdata_int_reg[145] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[145]),
        .Q(\m_axis_tdata_int_reg_n_0_[145] ));
  FDCE \m_axis_tdata_int_reg[146] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[146]),
        .Q(\m_axis_tdata_int_reg_n_0_[146] ));
  FDCE \m_axis_tdata_int_reg[147] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[147]),
        .Q(\m_axis_tdata_int_reg_n_0_[147] ));
  FDCE \m_axis_tdata_int_reg[148] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[148]),
        .Q(\m_axis_tdata_int_reg_n_0_[148] ));
  FDCE \m_axis_tdata_int_reg[149] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[149]),
        .Q(\m_axis_tdata_int_reg_n_0_[149] ));
  FDCE \m_axis_tdata_int_reg[14] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[14]),
        .Q(\m_axis_tdata_int_reg_n_0_[14] ));
  FDCE \m_axis_tdata_int_reg[150] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[150]),
        .Q(\m_axis_tdata_int_reg_n_0_[150] ));
  FDCE \m_axis_tdata_int_reg[151] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[151]),
        .Q(\m_axis_tdata_int_reg_n_0_[151] ));
  FDCE \m_axis_tdata_int_reg[152] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[152]),
        .Q(\m_axis_tdata_int_reg_n_0_[152] ));
  FDCE \m_axis_tdata_int_reg[153] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[153]),
        .Q(\m_axis_tdata_int_reg_n_0_[153] ));
  FDCE \m_axis_tdata_int_reg[154] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[154]),
        .Q(\m_axis_tdata_int_reg_n_0_[154] ));
  FDCE \m_axis_tdata_int_reg[155] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[155]),
        .Q(\m_axis_tdata_int_reg_n_0_[155] ));
  FDCE \m_axis_tdata_int_reg[156] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[156]),
        .Q(\m_axis_tdata_int_reg_n_0_[156] ));
  FDCE \m_axis_tdata_int_reg[157] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[157]),
        .Q(\m_axis_tdata_int_reg_n_0_[157] ));
  FDCE \m_axis_tdata_int_reg[158] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[158]),
        .Q(\m_axis_tdata_int_reg_n_0_[158] ));
  FDCE \m_axis_tdata_int_reg[159] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[159]),
        .Q(\m_axis_tdata_int_reg_n_0_[159] ));
  FDCE \m_axis_tdata_int_reg[15] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[15]),
        .Q(\m_axis_tdata_int_reg_n_0_[15] ));
  FDCE \m_axis_tdata_int_reg[160] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[160]),
        .Q(\m_axis_tdata_int_reg_n_0_[160] ));
  FDCE \m_axis_tdata_int_reg[161] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[161]),
        .Q(\m_axis_tdata_int_reg_n_0_[161] ));
  FDCE \m_axis_tdata_int_reg[162] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[162]),
        .Q(\m_axis_tdata_int_reg_n_0_[162] ));
  FDCE \m_axis_tdata_int_reg[163] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[163]),
        .Q(\m_axis_tdata_int_reg_n_0_[163] ));
  FDCE \m_axis_tdata_int_reg[164] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[164]),
        .Q(\m_axis_tdata_int_reg_n_0_[164] ));
  FDCE \m_axis_tdata_int_reg[165] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[165]),
        .Q(\m_axis_tdata_int_reg_n_0_[165] ));
  FDCE \m_axis_tdata_int_reg[166] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[166]),
        .Q(\m_axis_tdata_int_reg_n_0_[166] ));
  FDCE \m_axis_tdata_int_reg[167] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[167]),
        .Q(\m_axis_tdata_int_reg_n_0_[167] ));
  FDCE \m_axis_tdata_int_reg[168] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[168]),
        .Q(\m_axis_tdata_int_reg_n_0_[168] ));
  FDCE \m_axis_tdata_int_reg[169] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[169]),
        .Q(\m_axis_tdata_int_reg_n_0_[169] ));
  FDCE \m_axis_tdata_int_reg[16] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[16]),
        .Q(\m_axis_tdata_int_reg_n_0_[16] ));
  FDCE \m_axis_tdata_int_reg[170] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[170]),
        .Q(\m_axis_tdata_int_reg_n_0_[170] ));
  FDCE \m_axis_tdata_int_reg[171] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[171]),
        .Q(\m_axis_tdata_int_reg_n_0_[171] ));
  FDCE \m_axis_tdata_int_reg[172] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[172]),
        .Q(\m_axis_tdata_int_reg_n_0_[172] ));
  FDCE \m_axis_tdata_int_reg[173] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[173]),
        .Q(\m_axis_tdata_int_reg_n_0_[173] ));
  FDCE \m_axis_tdata_int_reg[174] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[174]),
        .Q(\m_axis_tdata_int_reg_n_0_[174] ));
  FDCE \m_axis_tdata_int_reg[175] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[175]),
        .Q(\m_axis_tdata_int_reg_n_0_[175] ));
  FDCE \m_axis_tdata_int_reg[176] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[176]),
        .Q(\m_axis_tdata_int_reg_n_0_[176] ));
  FDCE \m_axis_tdata_int_reg[177] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[177]),
        .Q(\m_axis_tdata_int_reg_n_0_[177] ));
  FDCE \m_axis_tdata_int_reg[178] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[178]),
        .Q(\m_axis_tdata_int_reg_n_0_[178] ));
  FDCE \m_axis_tdata_int_reg[179] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[179]),
        .Q(\m_axis_tdata_int_reg_n_0_[179] ));
  FDCE \m_axis_tdata_int_reg[17] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[17]),
        .Q(\m_axis_tdata_int_reg_n_0_[17] ));
  FDCE \m_axis_tdata_int_reg[180] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[180]),
        .Q(\m_axis_tdata_int_reg_n_0_[180] ));
  FDCE \m_axis_tdata_int_reg[181] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[181]),
        .Q(\m_axis_tdata_int_reg_n_0_[181] ));
  FDCE \m_axis_tdata_int_reg[182] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[182]),
        .Q(\m_axis_tdata_int_reg_n_0_[182] ));
  FDCE \m_axis_tdata_int_reg[183] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[183]),
        .Q(\m_axis_tdata_int_reg_n_0_[183] ));
  FDCE \m_axis_tdata_int_reg[184] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[184]),
        .Q(\m_axis_tdata_int_reg_n_0_[184] ));
  FDCE \m_axis_tdata_int_reg[185] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[185]),
        .Q(\m_axis_tdata_int_reg_n_0_[185] ));
  FDCE \m_axis_tdata_int_reg[186] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[186]),
        .Q(\m_axis_tdata_int_reg_n_0_[186] ));
  FDCE \m_axis_tdata_int_reg[187] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[187]),
        .Q(\m_axis_tdata_int_reg_n_0_[187] ));
  FDCE \m_axis_tdata_int_reg[188] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[188]),
        .Q(\m_axis_tdata_int_reg_n_0_[188] ));
  FDCE \m_axis_tdata_int_reg[189] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[189]),
        .Q(\m_axis_tdata_int_reg_n_0_[189] ));
  FDCE \m_axis_tdata_int_reg[18] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[18]),
        .Q(\m_axis_tdata_int_reg_n_0_[18] ));
  FDCE \m_axis_tdata_int_reg[190] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[190]),
        .Q(\m_axis_tdata_int_reg_n_0_[190] ));
  FDCE \m_axis_tdata_int_reg[191] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[191]),
        .Q(\m_axis_tdata_int_reg_n_0_[191] ));
  FDCE \m_axis_tdata_int_reg[192] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[192]),
        .Q(\m_axis_tdata_int_reg_n_0_[192] ));
  FDCE \m_axis_tdata_int_reg[193] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[193]),
        .Q(\m_axis_tdata_int_reg_n_0_[193] ));
  FDCE \m_axis_tdata_int_reg[194] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[194]),
        .Q(\m_axis_tdata_int_reg_n_0_[194] ));
  FDCE \m_axis_tdata_int_reg[195] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[195]),
        .Q(\m_axis_tdata_int_reg_n_0_[195] ));
  FDCE \m_axis_tdata_int_reg[196] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[196]),
        .Q(\m_axis_tdata_int_reg_n_0_[196] ));
  FDCE \m_axis_tdata_int_reg[197] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[197]),
        .Q(\m_axis_tdata_int_reg_n_0_[197] ));
  FDCE \m_axis_tdata_int_reg[198] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[198]),
        .Q(\m_axis_tdata_int_reg_n_0_[198] ));
  FDCE \m_axis_tdata_int_reg[199] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[199]),
        .Q(\m_axis_tdata_int_reg_n_0_[199] ));
  FDCE \m_axis_tdata_int_reg[19] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[19]),
        .Q(\m_axis_tdata_int_reg_n_0_[19] ));
  FDCE \m_axis_tdata_int_reg[1] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[1]),
        .Q(\m_axis_tdata_int_reg_n_0_[1] ));
  FDCE \m_axis_tdata_int_reg[200] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[200]),
        .Q(\m_axis_tdata_int_reg_n_0_[200] ));
  FDCE \m_axis_tdata_int_reg[201] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[201]),
        .Q(\m_axis_tdata_int_reg_n_0_[201] ));
  FDCE \m_axis_tdata_int_reg[202] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[202]),
        .Q(\m_axis_tdata_int_reg_n_0_[202] ));
  FDCE \m_axis_tdata_int_reg[203] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[203]),
        .Q(\m_axis_tdata_int_reg_n_0_[203] ));
  FDCE \m_axis_tdata_int_reg[204] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[204]),
        .Q(\m_axis_tdata_int_reg_n_0_[204] ));
  FDCE \m_axis_tdata_int_reg[205] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[205]),
        .Q(\m_axis_tdata_int_reg_n_0_[205] ));
  FDCE \m_axis_tdata_int_reg[206] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[206]),
        .Q(\m_axis_tdata_int_reg_n_0_[206] ));
  FDCE \m_axis_tdata_int_reg[207] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[207]),
        .Q(\m_axis_tdata_int_reg_n_0_[207] ));
  FDCE \m_axis_tdata_int_reg[208] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[208]),
        .Q(\m_axis_tdata_int_reg_n_0_[208] ));
  FDCE \m_axis_tdata_int_reg[209] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[209]),
        .Q(\m_axis_tdata_int_reg_n_0_[209] ));
  FDCE \m_axis_tdata_int_reg[20] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[20]),
        .Q(\m_axis_tdata_int_reg_n_0_[20] ));
  FDCE \m_axis_tdata_int_reg[210] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[210]),
        .Q(\m_axis_tdata_int_reg_n_0_[210] ));
  FDCE \m_axis_tdata_int_reg[211] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[211]),
        .Q(\m_axis_tdata_int_reg_n_0_[211] ));
  FDCE \m_axis_tdata_int_reg[212] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[212]),
        .Q(\m_axis_tdata_int_reg_n_0_[212] ));
  FDCE \m_axis_tdata_int_reg[213] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[213]),
        .Q(\m_axis_tdata_int_reg_n_0_[213] ));
  FDCE \m_axis_tdata_int_reg[214] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[214]),
        .Q(\m_axis_tdata_int_reg_n_0_[214] ));
  FDCE \m_axis_tdata_int_reg[215] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[215]),
        .Q(\m_axis_tdata_int_reg_n_0_[215] ));
  FDCE \m_axis_tdata_int_reg[216] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[216]),
        .Q(\m_axis_tdata_int_reg_n_0_[216] ));
  FDCE \m_axis_tdata_int_reg[217] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[217]),
        .Q(\m_axis_tdata_int_reg_n_0_[217] ));
  FDCE \m_axis_tdata_int_reg[218] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[218]),
        .Q(\m_axis_tdata_int_reg_n_0_[218] ));
  FDCE \m_axis_tdata_int_reg[219] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[219]),
        .Q(\m_axis_tdata_int_reg_n_0_[219] ));
  FDCE \m_axis_tdata_int_reg[21] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[21]),
        .Q(\m_axis_tdata_int_reg_n_0_[21] ));
  FDCE \m_axis_tdata_int_reg[220] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[220]),
        .Q(\m_axis_tdata_int_reg_n_0_[220] ));
  FDCE \m_axis_tdata_int_reg[221] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[221]),
        .Q(\m_axis_tdata_int_reg_n_0_[221] ));
  FDCE \m_axis_tdata_int_reg[222] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[222]),
        .Q(\m_axis_tdata_int_reg_n_0_[222] ));
  FDCE \m_axis_tdata_int_reg[223] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[223]),
        .Q(\m_axis_tdata_int_reg_n_0_[223] ));
  FDCE \m_axis_tdata_int_reg[224] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[224]),
        .Q(\m_axis_tdata_int_reg_n_0_[224] ));
  FDCE \m_axis_tdata_int_reg[225] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[225]),
        .Q(\m_axis_tdata_int_reg_n_0_[225] ));
  FDCE \m_axis_tdata_int_reg[226] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[226]),
        .Q(\m_axis_tdata_int_reg_n_0_[226] ));
  FDCE \m_axis_tdata_int_reg[227] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[227]),
        .Q(\m_axis_tdata_int_reg_n_0_[227] ));
  FDCE \m_axis_tdata_int_reg[228] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[228]),
        .Q(\m_axis_tdata_int_reg_n_0_[228] ));
  FDCE \m_axis_tdata_int_reg[229] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[229]),
        .Q(\m_axis_tdata_int_reg_n_0_[229] ));
  FDCE \m_axis_tdata_int_reg[22] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[22]),
        .Q(\m_axis_tdata_int_reg_n_0_[22] ));
  FDCE \m_axis_tdata_int_reg[230] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[230]),
        .Q(\m_axis_tdata_int_reg_n_0_[230] ));
  FDCE \m_axis_tdata_int_reg[231] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[231]),
        .Q(\m_axis_tdata_int_reg_n_0_[231] ));
  FDCE \m_axis_tdata_int_reg[232] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[232]),
        .Q(\m_axis_tdata_int_reg_n_0_[232] ));
  FDCE \m_axis_tdata_int_reg[233] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[233]),
        .Q(\m_axis_tdata_int_reg_n_0_[233] ));
  FDCE \m_axis_tdata_int_reg[234] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[234]),
        .Q(\m_axis_tdata_int_reg_n_0_[234] ));
  FDCE \m_axis_tdata_int_reg[235] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[235]),
        .Q(\m_axis_tdata_int_reg_n_0_[235] ));
  FDCE \m_axis_tdata_int_reg[236] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[236]),
        .Q(\m_axis_tdata_int_reg_n_0_[236] ));
  FDCE \m_axis_tdata_int_reg[237] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[237]),
        .Q(\m_axis_tdata_int_reg_n_0_[237] ));
  FDCE \m_axis_tdata_int_reg[238] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[238]),
        .Q(\m_axis_tdata_int_reg_n_0_[238] ));
  FDCE \m_axis_tdata_int_reg[239] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[239]),
        .Q(\m_axis_tdata_int_reg_n_0_[239] ));
  FDCE \m_axis_tdata_int_reg[23] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[23]),
        .Q(\m_axis_tdata_int_reg_n_0_[23] ));
  FDCE \m_axis_tdata_int_reg[240] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[240]),
        .Q(\m_axis_tdata_int_reg_n_0_[240] ));
  FDCE \m_axis_tdata_int_reg[241] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[241]),
        .Q(\m_axis_tdata_int_reg_n_0_[241] ));
  FDCE \m_axis_tdata_int_reg[242] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[242]),
        .Q(\m_axis_tdata_int_reg_n_0_[242] ));
  FDCE \m_axis_tdata_int_reg[243] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[243]),
        .Q(\m_axis_tdata_int_reg_n_0_[243] ));
  FDCE \m_axis_tdata_int_reg[244] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[244]),
        .Q(\m_axis_tdata_int_reg_n_0_[244] ));
  FDCE \m_axis_tdata_int_reg[245] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[245]),
        .Q(\m_axis_tdata_int_reg_n_0_[245] ));
  FDCE \m_axis_tdata_int_reg[246] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[246]),
        .Q(\m_axis_tdata_int_reg_n_0_[246] ));
  FDCE \m_axis_tdata_int_reg[247] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[247]),
        .Q(\m_axis_tdata_int_reg_n_0_[247] ));
  FDCE \m_axis_tdata_int_reg[248] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[248]),
        .Q(\m_axis_tdata_int_reg_n_0_[248] ));
  FDCE \m_axis_tdata_int_reg[249] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[249]),
        .Q(\m_axis_tdata_int_reg_n_0_[249] ));
  FDCE \m_axis_tdata_int_reg[24] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[24]),
        .Q(\m_axis_tdata_int_reg_n_0_[24] ));
  FDCE \m_axis_tdata_int_reg[250] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[250]),
        .Q(\m_axis_tdata_int_reg_n_0_[250] ));
  FDCE \m_axis_tdata_int_reg[251] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[251]),
        .Q(\m_axis_tdata_int_reg_n_0_[251] ));
  FDCE \m_axis_tdata_int_reg[252] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[252]),
        .Q(\m_axis_tdata_int_reg_n_0_[252] ));
  FDCE \m_axis_tdata_int_reg[253] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[253]),
        .Q(\m_axis_tdata_int_reg_n_0_[253] ));
  FDCE \m_axis_tdata_int_reg[254] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[254]),
        .Q(\m_axis_tdata_int_reg_n_0_[254] ));
  FDCE \m_axis_tdata_int_reg[255] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[255]),
        .Q(\m_axis_tdata_int_reg_n_0_[255] ));
  FDCE \m_axis_tdata_int_reg[25] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[25]),
        .Q(\m_axis_tdata_int_reg_n_0_[25] ));
  FDCE \m_axis_tdata_int_reg[26] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[26]),
        .Q(\m_axis_tdata_int_reg_n_0_[26] ));
  FDCE \m_axis_tdata_int_reg[27] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[27]),
        .Q(\m_axis_tdata_int_reg_n_0_[27] ));
  FDCE \m_axis_tdata_int_reg[28] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[28]),
        .Q(\m_axis_tdata_int_reg_n_0_[28] ));
  FDCE \m_axis_tdata_int_reg[29] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[29]),
        .Q(\m_axis_tdata_int_reg_n_0_[29] ));
  FDCE \m_axis_tdata_int_reg[2] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[2]),
        .Q(\m_axis_tdata_int_reg_n_0_[2] ));
  FDCE \m_axis_tdata_int_reg[30] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[30]),
        .Q(\m_axis_tdata_int_reg_n_0_[30] ));
  FDCE \m_axis_tdata_int_reg[31] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[31]),
        .Q(\m_axis_tdata_int_reg_n_0_[31] ));
  FDCE \m_axis_tdata_int_reg[32] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[32]),
        .Q(\m_axis_tdata_int_reg_n_0_[32] ));
  FDCE \m_axis_tdata_int_reg[33] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[33]),
        .Q(\m_axis_tdata_int_reg_n_0_[33] ));
  FDCE \m_axis_tdata_int_reg[34] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[34]),
        .Q(\m_axis_tdata_int_reg_n_0_[34] ));
  FDCE \m_axis_tdata_int_reg[35] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[35]),
        .Q(\m_axis_tdata_int_reg_n_0_[35] ));
  FDCE \m_axis_tdata_int_reg[36] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[36]),
        .Q(\m_axis_tdata_int_reg_n_0_[36] ));
  FDCE \m_axis_tdata_int_reg[37] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[37]),
        .Q(\m_axis_tdata_int_reg_n_0_[37] ));
  FDCE \m_axis_tdata_int_reg[38] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[38]),
        .Q(\m_axis_tdata_int_reg_n_0_[38] ));
  FDCE \m_axis_tdata_int_reg[39] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[39]),
        .Q(\m_axis_tdata_int_reg_n_0_[39] ));
  FDCE \m_axis_tdata_int_reg[3] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[3]),
        .Q(\m_axis_tdata_int_reg_n_0_[3] ));
  FDCE \m_axis_tdata_int_reg[40] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[40]),
        .Q(\m_axis_tdata_int_reg_n_0_[40] ));
  FDCE \m_axis_tdata_int_reg[41] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[41]),
        .Q(\m_axis_tdata_int_reg_n_0_[41] ));
  FDCE \m_axis_tdata_int_reg[42] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[42]),
        .Q(\m_axis_tdata_int_reg_n_0_[42] ));
  FDCE \m_axis_tdata_int_reg[43] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[43]),
        .Q(\m_axis_tdata_int_reg_n_0_[43] ));
  FDCE \m_axis_tdata_int_reg[44] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[44]),
        .Q(\m_axis_tdata_int_reg_n_0_[44] ));
  FDCE \m_axis_tdata_int_reg[45] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[45]),
        .Q(\m_axis_tdata_int_reg_n_0_[45] ));
  FDCE \m_axis_tdata_int_reg[46] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[46]),
        .Q(\m_axis_tdata_int_reg_n_0_[46] ));
  FDCE \m_axis_tdata_int_reg[47] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[47]),
        .Q(\m_axis_tdata_int_reg_n_0_[47] ));
  FDCE \m_axis_tdata_int_reg[48] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[48]),
        .Q(\m_axis_tdata_int_reg_n_0_[48] ));
  FDCE \m_axis_tdata_int_reg[49] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[49]),
        .Q(\m_axis_tdata_int_reg_n_0_[49] ));
  FDCE \m_axis_tdata_int_reg[4] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[4]),
        .Q(\m_axis_tdata_int_reg_n_0_[4] ));
  FDCE \m_axis_tdata_int_reg[50] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[50]),
        .Q(\m_axis_tdata_int_reg_n_0_[50] ));
  FDCE \m_axis_tdata_int_reg[51] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[51]),
        .Q(\m_axis_tdata_int_reg_n_0_[51] ));
  FDCE \m_axis_tdata_int_reg[52] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[52]),
        .Q(\m_axis_tdata_int_reg_n_0_[52] ));
  FDCE \m_axis_tdata_int_reg[53] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[53]),
        .Q(\m_axis_tdata_int_reg_n_0_[53] ));
  FDCE \m_axis_tdata_int_reg[54] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[54]),
        .Q(\m_axis_tdata_int_reg_n_0_[54] ));
  FDCE \m_axis_tdata_int_reg[55] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[55]),
        .Q(\m_axis_tdata_int_reg_n_0_[55] ));
  FDCE \m_axis_tdata_int_reg[56] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[56]),
        .Q(\m_axis_tdata_int_reg_n_0_[56] ));
  FDCE \m_axis_tdata_int_reg[57] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[57]),
        .Q(\m_axis_tdata_int_reg_n_0_[57] ));
  FDCE \m_axis_tdata_int_reg[58] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[58]),
        .Q(\m_axis_tdata_int_reg_n_0_[58] ));
  FDCE \m_axis_tdata_int_reg[59] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[59]),
        .Q(\m_axis_tdata_int_reg_n_0_[59] ));
  FDCE \m_axis_tdata_int_reg[5] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[5]),
        .Q(\m_axis_tdata_int_reg_n_0_[5] ));
  FDCE \m_axis_tdata_int_reg[60] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[60]),
        .Q(\m_axis_tdata_int_reg_n_0_[60] ));
  FDCE \m_axis_tdata_int_reg[61] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[61]),
        .Q(\m_axis_tdata_int_reg_n_0_[61] ));
  FDCE \m_axis_tdata_int_reg[62] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[62]),
        .Q(\m_axis_tdata_int_reg_n_0_[62] ));
  FDCE \m_axis_tdata_int_reg[63] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[63]),
        .Q(\m_axis_tdata_int_reg_n_0_[63] ));
  FDCE \m_axis_tdata_int_reg[64] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[64]),
        .Q(\m_axis_tdata_int_reg_n_0_[64] ));
  FDCE \m_axis_tdata_int_reg[65] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[65]),
        .Q(\m_axis_tdata_int_reg_n_0_[65] ));
  FDCE \m_axis_tdata_int_reg[66] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[66]),
        .Q(\m_axis_tdata_int_reg_n_0_[66] ));
  FDCE \m_axis_tdata_int_reg[67] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[67]),
        .Q(\m_axis_tdata_int_reg_n_0_[67] ));
  FDCE \m_axis_tdata_int_reg[68] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[68]),
        .Q(\m_axis_tdata_int_reg_n_0_[68] ));
  FDCE \m_axis_tdata_int_reg[69] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[69]),
        .Q(\m_axis_tdata_int_reg_n_0_[69] ));
  FDCE \m_axis_tdata_int_reg[6] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[6]),
        .Q(\m_axis_tdata_int_reg_n_0_[6] ));
  FDCE \m_axis_tdata_int_reg[70] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[70]),
        .Q(\m_axis_tdata_int_reg_n_0_[70] ));
  FDCE \m_axis_tdata_int_reg[71] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[71]),
        .Q(\m_axis_tdata_int_reg_n_0_[71] ));
  FDCE \m_axis_tdata_int_reg[72] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[72]),
        .Q(\m_axis_tdata_int_reg_n_0_[72] ));
  FDCE \m_axis_tdata_int_reg[73] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[73]),
        .Q(\m_axis_tdata_int_reg_n_0_[73] ));
  FDCE \m_axis_tdata_int_reg[74] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[74]),
        .Q(\m_axis_tdata_int_reg_n_0_[74] ));
  FDCE \m_axis_tdata_int_reg[75] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[75]),
        .Q(\m_axis_tdata_int_reg_n_0_[75] ));
  FDCE \m_axis_tdata_int_reg[76] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[76]),
        .Q(\m_axis_tdata_int_reg_n_0_[76] ));
  FDCE \m_axis_tdata_int_reg[77] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[77]),
        .Q(\m_axis_tdata_int_reg_n_0_[77] ));
  FDCE \m_axis_tdata_int_reg[78] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[78]),
        .Q(\m_axis_tdata_int_reg_n_0_[78] ));
  FDCE \m_axis_tdata_int_reg[79] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[79]),
        .Q(\m_axis_tdata_int_reg_n_0_[79] ));
  FDCE \m_axis_tdata_int_reg[7] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[7]),
        .Q(\m_axis_tdata_int_reg_n_0_[7] ));
  FDCE \m_axis_tdata_int_reg[80] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[80]),
        .Q(\m_axis_tdata_int_reg_n_0_[80] ));
  FDCE \m_axis_tdata_int_reg[81] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[81]),
        .Q(\m_axis_tdata_int_reg_n_0_[81] ));
  FDCE \m_axis_tdata_int_reg[82] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[82]),
        .Q(\m_axis_tdata_int_reg_n_0_[82] ));
  FDCE \m_axis_tdata_int_reg[83] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[83]),
        .Q(\m_axis_tdata_int_reg_n_0_[83] ));
  FDCE \m_axis_tdata_int_reg[84] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[84]),
        .Q(\m_axis_tdata_int_reg_n_0_[84] ));
  FDCE \m_axis_tdata_int_reg[85] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[85]),
        .Q(\m_axis_tdata_int_reg_n_0_[85] ));
  FDCE \m_axis_tdata_int_reg[86] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[86]),
        .Q(\m_axis_tdata_int_reg_n_0_[86] ));
  FDCE \m_axis_tdata_int_reg[87] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[87]),
        .Q(\m_axis_tdata_int_reg_n_0_[87] ));
  FDCE \m_axis_tdata_int_reg[88] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[88]),
        .Q(\m_axis_tdata_int_reg_n_0_[88] ));
  FDCE \m_axis_tdata_int_reg[89] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[89]),
        .Q(\m_axis_tdata_int_reg_n_0_[89] ));
  FDCE \m_axis_tdata_int_reg[8] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[8]),
        .Q(\m_axis_tdata_int_reg_n_0_[8] ));
  FDCE \m_axis_tdata_int_reg[90] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[90]),
        .Q(\m_axis_tdata_int_reg_n_0_[90] ));
  FDCE \m_axis_tdata_int_reg[91] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[91]),
        .Q(\m_axis_tdata_int_reg_n_0_[91] ));
  FDCE \m_axis_tdata_int_reg[92] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[92]),
        .Q(\m_axis_tdata_int_reg_n_0_[92] ));
  FDCE \m_axis_tdata_int_reg[93] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[93]),
        .Q(\m_axis_tdata_int_reg_n_0_[93] ));
  FDCE \m_axis_tdata_int_reg[94] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[94]),
        .Q(\m_axis_tdata_int_reg_n_0_[94] ));
  FDCE \m_axis_tdata_int_reg[95] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[95]),
        .Q(\m_axis_tdata_int_reg_n_0_[95] ));
  FDCE \m_axis_tdata_int_reg[96] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[96]),
        .Q(\m_axis_tdata_int_reg_n_0_[96] ));
  FDCE \m_axis_tdata_int_reg[97] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[97]),
        .Q(\m_axis_tdata_int_reg_n_0_[97] ));
  FDCE \m_axis_tdata_int_reg[98] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[98]),
        .Q(\m_axis_tdata_int_reg_n_0_[98] ));
  FDCE \m_axis_tdata_int_reg[99] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[99]),
        .Q(\m_axis_tdata_int_reg_n_0_[99] ));
  FDCE \m_axis_tdata_int_reg[9] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(m_axis_tdata_int0_in[9]),
        .Q(\m_axis_tdata_int_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \main_clock[0]_i_1 
       (.I0(main_clock[0]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[10]_i_1 
       (.I0(main_clock0[10]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[11]_i_1 
       (.I0(main_clock0[11]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[12]_i_1 
       (.I0(main_clock0[12]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[13]_i_1 
       (.I0(main_clock0[13]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[14]_i_1 
       (.I0(main_clock0[14]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[15]_i_1 
       (.I0(main_clock0[15]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[16]_i_1 
       (.I0(main_clock0[16]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[17]_i_1 
       (.I0(main_clock0[17]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[18]_i_1 
       (.I0(main_clock0[18]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[19]_i_1 
       (.I0(main_clock0[19]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[1]_i_1 
       (.I0(main_clock0[1]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[20]_i_1 
       (.I0(main_clock0[20]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[21]_i_1 
       (.I0(main_clock0[21]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[22]_i_1 
       (.I0(main_clock0[22]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[23]_i_1 
       (.I0(main_clock0[23]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[24]_i_1 
       (.I0(main_clock0[24]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[25]_i_1 
       (.I0(main_clock0[25]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[26]_i_1 
       (.I0(main_clock0[26]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[27]_i_1 
       (.I0(main_clock0[27]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[28]_i_1 
       (.I0(main_clock0[28]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[29]_i_1 
       (.I0(main_clock0[29]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[2]_i_1 
       (.I0(main_clock0[2]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[30]_i_1 
       (.I0(main_clock0[30]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[30]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[31]_i_1 
       (.I0(main_clock0[31]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[32]_i_1 
       (.I0(main_clock0[32]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[32]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[33]_i_1 
       (.I0(main_clock0[33]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[33]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[34]_i_1 
       (.I0(main_clock0[34]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[34]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[35]_i_1 
       (.I0(main_clock0[35]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[35]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[36]_i_1 
       (.I0(main_clock0[36]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[36]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[37]_i_1 
       (.I0(main_clock0[37]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[37]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[38]_i_1 
       (.I0(main_clock0[38]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[38]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[39]_i_1 
       (.I0(main_clock0[39]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[39]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[3]_i_1 
       (.I0(main_clock0[3]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[40]_i_1 
       (.I0(main_clock0[40]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[40]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[41]_i_1 
       (.I0(main_clock0[41]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[41]));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[42]_i_1 
       (.I0(main_clock0[42]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[42]));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[43]_i_1 
       (.I0(main_clock0[43]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[43]));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[44]_i_1 
       (.I0(main_clock0[44]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[44]));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[45]_i_1 
       (.I0(main_clock0[45]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[45]));
  LUT3 #(
    .INIT(8'hA8)) 
    \main_clock[45]_i_10 
       (.I0(\main_clock_reg[45]_i_36_n_0 ),
        .I1(main_clock[35]),
        .I2(main_clock[34]),
        .O(\main_clock[45]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \main_clock[45]_i_11 
       (.I0(\main_clock_reg[45]_i_36_n_0 ),
        .I1(main_clock[33]),
        .I2(main_clock[32]),
        .O(\main_clock[45]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \main_clock[45]_i_12 
       (.I0(main_clock[45]),
        .I1(main_clock[44]),
        .I2(\main_clock_reg[45]_i_36_n_0 ),
        .O(\main_clock[45]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \main_clock[45]_i_13 
       (.I0(main_clock[43]),
        .I1(main_clock[42]),
        .I2(\main_clock_reg[45]_i_36_n_0 ),
        .O(\main_clock[45]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \main_clock[45]_i_14 
       (.I0(main_clock[41]),
        .I1(main_clock[40]),
        .I2(\main_clock_reg[45]_i_36_n_0 ),
        .O(\main_clock[45]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \main_clock[45]_i_15 
       (.I0(main_clock[39]),
        .I1(main_clock[38]),
        .I2(\main_clock_reg[45]_i_36_n_0 ),
        .O(\main_clock[45]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \main_clock[45]_i_16 
       (.I0(main_clock[37]),
        .I1(main_clock[36]),
        .I2(\main_clock_reg[45]_i_36_n_0 ),
        .O(\main_clock[45]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \main_clock[45]_i_17 
       (.I0(main_clock[35]),
        .I1(main_clock[34]),
        .I2(\main_clock_reg[45]_i_36_n_0 ),
        .O(\main_clock[45]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \main_clock[45]_i_18 
       (.I0(main_clock[33]),
        .I1(main_clock[32]),
        .I2(\main_clock_reg[45]_i_36_n_0 ),
        .O(\main_clock[45]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \main_clock[45]_i_20 
       (.I0(\main_clock_reg[45]_i_36_n_0 ),
        .I1(main_clock[31]),
        .I2(main_clock[30]),
        .O(\main_clock[45]_i_20_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \main_clock[45]_i_21 
       (.I0(\main_clock_reg[45]_i_36_n_0 ),
        .I1(main_clock[29]),
        .I2(main_clock[28]),
        .O(\main_clock[45]_i_21_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \main_clock[45]_i_22 
       (.I0(\main_clock_reg[45]_i_36_n_0 ),
        .I1(main_clock[27]),
        .I2(main_clock[26]),
        .O(\main_clock[45]_i_22_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \main_clock[45]_i_23 
       (.I0(\main_clock_reg[45]_i_36_n_0 ),
        .I1(main_clock[25]),
        .I2(main_clock[24]),
        .O(\main_clock[45]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \main_clock[45]_i_24 
       (.I0(main_clock[23]),
        .I1(clock_pre_tick0[23]),
        .I2(main_clock[22]),
        .I3(clock_pre_tick0[22]),
        .O(\main_clock[45]_i_24_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \main_clock[45]_i_25 
       (.I0(main_clock[21]),
        .I1(clock_pre_tick0[21]),
        .I2(main_clock[20]),
        .I3(clock_pre_tick0[20]),
        .O(\main_clock[45]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \main_clock[45]_i_26 
       (.I0(main_clock[19]),
        .I1(clock_pre_tick0[19]),
        .I2(main_clock[18]),
        .I3(clock_pre_tick0[18]),
        .O(\main_clock[45]_i_26_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \main_clock[45]_i_27 
       (.I0(main_clock[17]),
        .I1(clock_pre_tick0[17]),
        .I2(main_clock[16]),
        .I3(clock_pre_tick0[16]),
        .O(\main_clock[45]_i_27_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \main_clock[45]_i_28 
       (.I0(main_clock[31]),
        .I1(main_clock[30]),
        .I2(\main_clock_reg[45]_i_36_n_0 ),
        .O(\main_clock[45]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \main_clock[45]_i_29 
       (.I0(main_clock[29]),
        .I1(main_clock[28]),
        .I2(\main_clock_reg[45]_i_36_n_0 ),
        .O(\main_clock[45]_i_29_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \main_clock[45]_i_30 
       (.I0(main_clock[27]),
        .I1(main_clock[26]),
        .I2(\main_clock_reg[45]_i_36_n_0 ),
        .O(\main_clock[45]_i_30_n_0 ));
  LUT3 #(
    .INIT(8'h18)) 
    \main_clock[45]_i_31 
       (.I0(main_clock[25]),
        .I1(main_clock[24]),
        .I2(\main_clock_reg[45]_i_36_n_0 ),
        .O(\main_clock[45]_i_31_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \main_clock[45]_i_32 
       (.I0(clock_pre_tick0[23]),
        .I1(main_clock[23]),
        .I2(clock_pre_tick0[22]),
        .I3(main_clock[22]),
        .O(\main_clock[45]_i_32_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \main_clock[45]_i_33 
       (.I0(clock_pre_tick0[21]),
        .I1(main_clock[21]),
        .I2(clock_pre_tick0[20]),
        .I3(main_clock[20]),
        .O(\main_clock[45]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \main_clock[45]_i_34 
       (.I0(clock_pre_tick0[19]),
        .I1(main_clock[19]),
        .I2(clock_pre_tick0[18]),
        .I3(main_clock[18]),
        .O(\main_clock[45]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \main_clock[45]_i_35 
       (.I0(clock_pre_tick0[17]),
        .I1(main_clock[17]),
        .I2(clock_pre_tick0[16]),
        .I3(main_clock[16]),
        .O(\main_clock[45]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \main_clock[45]_i_37 
       (.I0(main_clock[15]),
        .I1(clock_pre_tick0[15]),
        .I2(main_clock[14]),
        .I3(clock_pre_tick0[14]),
        .O(\main_clock[45]_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \main_clock[45]_i_38 
       (.I0(main_clock[13]),
        .I1(clock_pre_tick0[13]),
        .I2(main_clock[12]),
        .I3(clock_pre_tick0[12]),
        .O(\main_clock[45]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \main_clock[45]_i_39 
       (.I0(main_clock[11]),
        .I1(clock_pre_tick0[11]),
        .I2(main_clock[10]),
        .I3(clock_pre_tick0[10]),
        .O(\main_clock[45]_i_39_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \main_clock[45]_i_40 
       (.I0(main_clock[9]),
        .I1(clock_pre_tick0[9]),
        .I2(main_clock[8]),
        .I3(clock_pre_tick0[8]),
        .O(\main_clock[45]_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \main_clock[45]_i_41 
       (.I0(main_clock[7]),
        .I1(clock_pre_tick0[7]),
        .I2(main_clock[6]),
        .I3(clock_pre_tick0[6]),
        .O(\main_clock[45]_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \main_clock[45]_i_42 
       (.I0(main_clock[5]),
        .I1(clock_pre_tick0[5]),
        .I2(main_clock[4]),
        .I3(clock_pre_tick0[4]),
        .O(\main_clock[45]_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h22B2)) 
    \main_clock[45]_i_43 
       (.I0(main_clock[3]),
        .I1(clock_pre_tick0[3]),
        .I2(main_clock[2]),
        .I3(clock_pre_tick0[2]),
        .O(\main_clock[45]_i_43_n_0 ));
  LUT4 #(
    .INIT(16'hB222)) 
    \main_clock[45]_i_44 
       (.I0(main_clock[1]),
        .I1(clock_pre_tick0[1]),
        .I2(\clock_period_reg_n_0_[0] ),
        .I3(main_clock[0]),
        .O(\main_clock[45]_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \main_clock[45]_i_45 
       (.I0(clock_pre_tick0[15]),
        .I1(main_clock[15]),
        .I2(clock_pre_tick0[14]),
        .I3(main_clock[14]),
        .O(\main_clock[45]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \main_clock[45]_i_46 
       (.I0(clock_pre_tick0[13]),
        .I1(main_clock[13]),
        .I2(clock_pre_tick0[12]),
        .I3(main_clock[12]),
        .O(\main_clock[45]_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \main_clock[45]_i_47 
       (.I0(clock_pre_tick0[11]),
        .I1(main_clock[11]),
        .I2(clock_pre_tick0[10]),
        .I3(main_clock[10]),
        .O(\main_clock[45]_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \main_clock[45]_i_48 
       (.I0(clock_pre_tick0[9]),
        .I1(main_clock[9]),
        .I2(clock_pre_tick0[8]),
        .I3(main_clock[8]),
        .O(\main_clock[45]_i_48_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \main_clock[45]_i_49 
       (.I0(clock_pre_tick0[7]),
        .I1(main_clock[7]),
        .I2(clock_pre_tick0[6]),
        .I3(main_clock[6]),
        .O(\main_clock[45]_i_49_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \main_clock[45]_i_5 
       (.I0(\main_clock_reg[45]_i_36_n_0 ),
        .I1(main_clock[45]),
        .I2(main_clock[44]),
        .O(\main_clock[45]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \main_clock[45]_i_50 
       (.I0(clock_pre_tick0[5]),
        .I1(main_clock[5]),
        .I2(clock_pre_tick0[4]),
        .I3(main_clock[4]),
        .O(\main_clock[45]_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \main_clock[45]_i_51 
       (.I0(clock_pre_tick0[3]),
        .I1(main_clock[3]),
        .I2(clock_pre_tick0[2]),
        .I3(main_clock[2]),
        .O(\main_clock[45]_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h6006)) 
    \main_clock[45]_i_52 
       (.I0(main_clock[0]),
        .I1(\clock_period_reg_n_0_[0] ),
        .I2(clock_pre_tick0[1]),
        .I3(main_clock[1]),
        .O(\main_clock[45]_i_52_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \main_clock[45]_i_54 
       (.I0(\clock_period_reg_n_0_[23] ),
        .O(\main_clock[45]_i_54_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \main_clock[45]_i_55 
       (.I0(\clock_period_reg_n_0_[22] ),
        .O(\main_clock[45]_i_55_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \main_clock[45]_i_56 
       (.I0(\clock_period_reg_n_0_[21] ),
        .O(\main_clock[45]_i_56_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \main_clock[45]_i_57 
       (.I0(\clock_period_reg_n_0_[20] ),
        .O(\main_clock[45]_i_57_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \main_clock[45]_i_58 
       (.I0(\clock_period_reg_n_0_[19] ),
        .O(\main_clock[45]_i_58_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \main_clock[45]_i_59 
       (.I0(\clock_period_reg_n_0_[18] ),
        .O(\main_clock[45]_i_59_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \main_clock[45]_i_6 
       (.I0(\main_clock_reg[45]_i_36_n_0 ),
        .I1(main_clock[43]),
        .I2(main_clock[42]),
        .O(\main_clock[45]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \main_clock[45]_i_60 
       (.I0(\clock_period_reg_n_0_[17] ),
        .O(\main_clock[45]_i_60_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \main_clock[45]_i_62 
       (.I0(\clock_period_reg_n_0_[16] ),
        .O(\main_clock[45]_i_62_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \main_clock[45]_i_63 
       (.I0(\clock_period_reg_n_0_[15] ),
        .O(\main_clock[45]_i_63_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \main_clock[45]_i_64 
       (.I0(\clock_period_reg_n_0_[14] ),
        .O(\main_clock[45]_i_64_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \main_clock[45]_i_65 
       (.I0(\clock_period_reg_n_0_[13] ),
        .O(\main_clock[45]_i_65_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \main_clock[45]_i_66 
       (.I0(\clock_period_reg_n_0_[12] ),
        .O(\main_clock[45]_i_66_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \main_clock[45]_i_67 
       (.I0(\clock_period_reg_n_0_[11] ),
        .O(\main_clock[45]_i_67_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \main_clock[45]_i_68 
       (.I0(\clock_period_reg_n_0_[10] ),
        .O(\main_clock[45]_i_68_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \main_clock[45]_i_69 
       (.I0(\clock_period_reg_n_0_[9] ),
        .O(\main_clock[45]_i_69_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \main_clock[45]_i_7 
       (.I0(\main_clock_reg[45]_i_36_n_0 ),
        .I1(main_clock[41]),
        .I2(main_clock[40]),
        .O(\main_clock[45]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \main_clock[45]_i_70 
       (.I0(\clock_period_reg_n_0_[8] ),
        .O(\main_clock[45]_i_70_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \main_clock[45]_i_71 
       (.I0(\clock_period_reg_n_0_[7] ),
        .O(\main_clock[45]_i_71_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \main_clock[45]_i_72 
       (.I0(\clock_period_reg_n_0_[6] ),
        .O(\main_clock[45]_i_72_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \main_clock[45]_i_73 
       (.I0(\clock_period_reg_n_0_[5] ),
        .O(\main_clock[45]_i_73_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \main_clock[45]_i_74 
       (.I0(\clock_period_reg_n_0_[4] ),
        .O(\main_clock[45]_i_74_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \main_clock[45]_i_75 
       (.I0(\clock_period_reg_n_0_[3] ),
        .O(\main_clock[45]_i_75_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \main_clock[45]_i_76 
       (.I0(\clock_period_reg_n_0_[2] ),
        .O(\main_clock[45]_i_76_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \main_clock[45]_i_77 
       (.I0(\clock_period_reg_n_0_[1] ),
        .O(\main_clock[45]_i_77_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \main_clock[45]_i_8 
       (.I0(\main_clock_reg[45]_i_36_n_0 ),
        .I1(main_clock[39]),
        .I2(main_clock[38]),
        .O(\main_clock[45]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \main_clock[45]_i_9 
       (.I0(\main_clock_reg[45]_i_36_n_0 ),
        .I1(main_clock[37]),
        .I2(main_clock[36]),
        .O(\main_clock[45]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[4]_i_1 
       (.I0(main_clock0[4]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[5]_i_1 
       (.I0(main_clock0[5]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[6]_i_1 
       (.I0(main_clock0[6]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[7]_i_1 
       (.I0(main_clock0[7]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[8]_i_1 
       (.I0(main_clock0[8]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[9]_i_1 
       (.I0(main_clock0[9]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[9]));
  FDCE \main_clock_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[0]),
        .Q(main_clock[0]));
  FDCE \main_clock_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[10]),
        .Q(main_clock[10]));
  FDCE \main_clock_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[11]),
        .Q(main_clock[11]));
  FDCE \main_clock_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[12]),
        .Q(main_clock[12]));
  FDCE \main_clock_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[13]),
        .Q(main_clock[13]));
  FDCE \main_clock_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[14]),
        .Q(main_clock[14]));
  FDCE \main_clock_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[15]),
        .Q(main_clock[15]));
  FDCE \main_clock_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[16]),
        .Q(main_clock[16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \main_clock_reg[16]_i_2 
       (.CI(\main_clock_reg[8]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\main_clock_reg[16]_i_2_n_0 ,\main_clock_reg[16]_i_2_n_1 ,\main_clock_reg[16]_i_2_n_2 ,\main_clock_reg[16]_i_2_n_3 ,\main_clock_reg[16]_i_2_n_4 ,\main_clock_reg[16]_i_2_n_5 ,\main_clock_reg[16]_i_2_n_6 ,\main_clock_reg[16]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(main_clock0[16:9]),
        .S(main_clock[16:9]));
  FDCE \main_clock_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[17]),
        .Q(main_clock[17]));
  FDCE \main_clock_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[18]),
        .Q(main_clock[18]));
  FDCE \main_clock_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[19]),
        .Q(main_clock[19]));
  FDCE \main_clock_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[1]),
        .Q(main_clock[1]));
  FDCE \main_clock_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[20]),
        .Q(main_clock[20]));
  FDCE \main_clock_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[21]),
        .Q(main_clock[21]));
  FDCE \main_clock_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[22]),
        .Q(main_clock[22]));
  FDCE \main_clock_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[23]),
        .Q(main_clock[23]));
  FDCE \main_clock_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[24]),
        .Q(main_clock[24]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \main_clock_reg[24]_i_2 
       (.CI(\main_clock_reg[16]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\main_clock_reg[24]_i_2_n_0 ,\main_clock_reg[24]_i_2_n_1 ,\main_clock_reg[24]_i_2_n_2 ,\main_clock_reg[24]_i_2_n_3 ,\main_clock_reg[24]_i_2_n_4 ,\main_clock_reg[24]_i_2_n_5 ,\main_clock_reg[24]_i_2_n_6 ,\main_clock_reg[24]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(main_clock0[24:17]),
        .S(main_clock[24:17]));
  FDCE \main_clock_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[25]),
        .Q(main_clock[25]));
  FDCE \main_clock_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[26]),
        .Q(main_clock[26]));
  FDCE \main_clock_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[27]),
        .Q(main_clock[27]));
  FDCE \main_clock_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[28]),
        .Q(main_clock[28]));
  FDCE \main_clock_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[29]),
        .Q(main_clock[29]));
  FDCE \main_clock_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[2]),
        .Q(main_clock[2]));
  FDCE \main_clock_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[30]),
        .Q(main_clock[30]));
  FDCE \main_clock_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[31]),
        .Q(main_clock[31]));
  FDCE \main_clock_reg[32] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[32]),
        .Q(main_clock[32]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \main_clock_reg[32]_i_2 
       (.CI(\main_clock_reg[24]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\main_clock_reg[32]_i_2_n_0 ,\main_clock_reg[32]_i_2_n_1 ,\main_clock_reg[32]_i_2_n_2 ,\main_clock_reg[32]_i_2_n_3 ,\main_clock_reg[32]_i_2_n_4 ,\main_clock_reg[32]_i_2_n_5 ,\main_clock_reg[32]_i_2_n_6 ,\main_clock_reg[32]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(main_clock0[32:25]),
        .S(main_clock[32:25]));
  FDCE \main_clock_reg[33] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[33]),
        .Q(main_clock[33]));
  FDCE \main_clock_reg[34] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[34]),
        .Q(main_clock[34]));
  FDCE \main_clock_reg[35] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[35]),
        .Q(main_clock[35]));
  FDCE \main_clock_reg[36] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[36]),
        .Q(main_clock[36]));
  FDCE \main_clock_reg[37] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[37]),
        .Q(main_clock[37]));
  FDCE \main_clock_reg[38] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[38]),
        .Q(main_clock[38]));
  FDCE \main_clock_reg[39] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[39]),
        .Q(main_clock[39]));
  FDCE \main_clock_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[3]),
        .Q(main_clock[3]));
  FDCE \main_clock_reg[40] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[40]),
        .Q(main_clock[40]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \main_clock_reg[40]_i_2 
       (.CI(\main_clock_reg[32]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\main_clock_reg[40]_i_2_n_0 ,\main_clock_reg[40]_i_2_n_1 ,\main_clock_reg[40]_i_2_n_2 ,\main_clock_reg[40]_i_2_n_3 ,\main_clock_reg[40]_i_2_n_4 ,\main_clock_reg[40]_i_2_n_5 ,\main_clock_reg[40]_i_2_n_6 ,\main_clock_reg[40]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(main_clock0[40:33]),
        .S(main_clock[40:33]));
  FDCE \main_clock_reg[41] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[41]),
        .Q(main_clock[41]));
  FDCE \main_clock_reg[42] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[42]),
        .Q(main_clock[42]));
  FDCE \main_clock_reg[43] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[43]),
        .Q(main_clock[43]));
  FDCE \main_clock_reg[44] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[44]),
        .Q(main_clock[44]));
  FDCE \main_clock_reg[45] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[45]),
        .Q(main_clock[45]));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \main_clock_reg[45]_i_19 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\main_clock_reg[45]_i_19_n_0 ,\main_clock_reg[45]_i_19_n_1 ,\main_clock_reg[45]_i_19_n_2 ,\main_clock_reg[45]_i_19_n_3 ,\main_clock_reg[45]_i_19_n_4 ,\main_clock_reg[45]_i_19_n_5 ,\main_clock_reg[45]_i_19_n_6 ,\main_clock_reg[45]_i_19_n_7 }),
        .DI({\main_clock[45]_i_37_n_0 ,\main_clock[45]_i_38_n_0 ,\main_clock[45]_i_39_n_0 ,\main_clock[45]_i_40_n_0 ,\main_clock[45]_i_41_n_0 ,\main_clock[45]_i_42_n_0 ,\main_clock[45]_i_43_n_0 ,\main_clock[45]_i_44_n_0 }),
        .O(\NLW_main_clock_reg[45]_i_19_O_UNCONNECTED [7:0]),
        .S({\main_clock[45]_i_45_n_0 ,\main_clock[45]_i_46_n_0 ,\main_clock[45]_i_47_n_0 ,\main_clock[45]_i_48_n_0 ,\main_clock[45]_i_49_n_0 ,\main_clock[45]_i_50_n_0 ,\main_clock[45]_i_51_n_0 ,\main_clock[45]_i_52_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \main_clock_reg[45]_i_2 
       (.CI(\main_clock_reg[40]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_main_clock_reg[45]_i_2_CO_UNCONNECTED [7:4],\main_clock_reg[45]_i_2_n_4 ,\main_clock_reg[45]_i_2_n_5 ,\main_clock_reg[45]_i_2_n_6 ,\main_clock_reg[45]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_main_clock_reg[45]_i_2_O_UNCONNECTED [7:5],main_clock0[45:41]}),
        .S({1'b0,1'b0,1'b0,main_clock[45:41]}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \main_clock_reg[45]_i_3 
       (.CI(\main_clock_reg[45]_i_4_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_main_clock_reg[45]_i_3_CO_UNCONNECTED [7],clock_pre_tick,\main_clock_reg[45]_i_3_n_2 ,\main_clock_reg[45]_i_3_n_3 ,\main_clock_reg[45]_i_3_n_4 ,\main_clock_reg[45]_i_3_n_5 ,\main_clock_reg[45]_i_3_n_6 ,\main_clock_reg[45]_i_3_n_7 }),
        .DI({1'b0,\main_clock[45]_i_5_n_0 ,\main_clock[45]_i_6_n_0 ,\main_clock[45]_i_7_n_0 ,\main_clock[45]_i_8_n_0 ,\main_clock[45]_i_9_n_0 ,\main_clock[45]_i_10_n_0 ,\main_clock[45]_i_11_n_0 }),
        .O(\NLW_main_clock_reg[45]_i_3_O_UNCONNECTED [7:0]),
        .S({1'b0,\main_clock[45]_i_12_n_0 ,\main_clock[45]_i_13_n_0 ,\main_clock[45]_i_14_n_0 ,\main_clock[45]_i_15_n_0 ,\main_clock[45]_i_16_n_0 ,\main_clock[45]_i_17_n_0 ,\main_clock[45]_i_18_n_0 }));
  CARRY8 \main_clock_reg[45]_i_36 
       (.CI(\main_clock_reg[45]_i_53_n_0 ),
        .CI_TOP(1'b0),
        .CO({\main_clock_reg[45]_i_36_n_0 ,\NLW_main_clock_reg[45]_i_36_CO_UNCONNECTED [6],\main_clock_reg[45]_i_36_n_2 ,\main_clock_reg[45]_i_36_n_3 ,\main_clock_reg[45]_i_36_n_4 ,\main_clock_reg[45]_i_36_n_5 ,\main_clock_reg[45]_i_36_n_6 ,\main_clock_reg[45]_i_36_n_7 }),
        .DI({1'b0,\clock_period_reg_n_0_[23] ,\clock_period_reg_n_0_[22] ,\clock_period_reg_n_0_[21] ,\clock_period_reg_n_0_[20] ,\clock_period_reg_n_0_[19] ,\clock_period_reg_n_0_[18] ,\clock_period_reg_n_0_[17] }),
        .O({\NLW_main_clock_reg[45]_i_36_O_UNCONNECTED [7],clock_pre_tick0[23:17]}),
        .S({1'b1,\main_clock[45]_i_54_n_0 ,\main_clock[45]_i_55_n_0 ,\main_clock[45]_i_56_n_0 ,\main_clock[45]_i_57_n_0 ,\main_clock[45]_i_58_n_0 ,\main_clock[45]_i_59_n_0 ,\main_clock[45]_i_60_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \main_clock_reg[45]_i_4 
       (.CI(\main_clock_reg[45]_i_19_n_0 ),
        .CI_TOP(1'b0),
        .CO({\main_clock_reg[45]_i_4_n_0 ,\main_clock_reg[45]_i_4_n_1 ,\main_clock_reg[45]_i_4_n_2 ,\main_clock_reg[45]_i_4_n_3 ,\main_clock_reg[45]_i_4_n_4 ,\main_clock_reg[45]_i_4_n_5 ,\main_clock_reg[45]_i_4_n_6 ,\main_clock_reg[45]_i_4_n_7 }),
        .DI({\main_clock[45]_i_20_n_0 ,\main_clock[45]_i_21_n_0 ,\main_clock[45]_i_22_n_0 ,\main_clock[45]_i_23_n_0 ,\main_clock[45]_i_24_n_0 ,\main_clock[45]_i_25_n_0 ,\main_clock[45]_i_26_n_0 ,\main_clock[45]_i_27_n_0 }),
        .O(\NLW_main_clock_reg[45]_i_4_O_UNCONNECTED [7:0]),
        .S({\main_clock[45]_i_28_n_0 ,\main_clock[45]_i_29_n_0 ,\main_clock[45]_i_30_n_0 ,\main_clock[45]_i_31_n_0 ,\main_clock[45]_i_32_n_0 ,\main_clock[45]_i_33_n_0 ,\main_clock[45]_i_34_n_0 ,\main_clock[45]_i_35_n_0 }));
  CARRY8 \main_clock_reg[45]_i_53 
       (.CI(\main_clock_reg[45]_i_61_n_0 ),
        .CI_TOP(1'b0),
        .CO({\main_clock_reg[45]_i_53_n_0 ,\main_clock_reg[45]_i_53_n_1 ,\main_clock_reg[45]_i_53_n_2 ,\main_clock_reg[45]_i_53_n_3 ,\main_clock_reg[45]_i_53_n_4 ,\main_clock_reg[45]_i_53_n_5 ,\main_clock_reg[45]_i_53_n_6 ,\main_clock_reg[45]_i_53_n_7 }),
        .DI({\clock_period_reg_n_0_[16] ,\clock_period_reg_n_0_[15] ,\clock_period_reg_n_0_[14] ,\clock_period_reg_n_0_[13] ,\clock_period_reg_n_0_[12] ,\clock_period_reg_n_0_[11] ,\clock_period_reg_n_0_[10] ,\clock_period_reg_n_0_[9] }),
        .O(clock_pre_tick0[16:9]),
        .S({\main_clock[45]_i_62_n_0 ,\main_clock[45]_i_63_n_0 ,\main_clock[45]_i_64_n_0 ,\main_clock[45]_i_65_n_0 ,\main_clock[45]_i_66_n_0 ,\main_clock[45]_i_67_n_0 ,\main_clock[45]_i_68_n_0 ,\main_clock[45]_i_69_n_0 }));
  CARRY8 \main_clock_reg[45]_i_61 
       (.CI(\clock_period_reg_n_0_[0] ),
        .CI_TOP(1'b0),
        .CO({\main_clock_reg[45]_i_61_n_0 ,\main_clock_reg[45]_i_61_n_1 ,\main_clock_reg[45]_i_61_n_2 ,\main_clock_reg[45]_i_61_n_3 ,\main_clock_reg[45]_i_61_n_4 ,\main_clock_reg[45]_i_61_n_5 ,\main_clock_reg[45]_i_61_n_6 ,\main_clock_reg[45]_i_61_n_7 }),
        .DI({\clock_period_reg_n_0_[8] ,\clock_period_reg_n_0_[7] ,\clock_period_reg_n_0_[6] ,\clock_period_reg_n_0_[5] ,\clock_period_reg_n_0_[4] ,\clock_period_reg_n_0_[3] ,\clock_period_reg_n_0_[2] ,\clock_period_reg_n_0_[1] }),
        .O(clock_pre_tick0[8:1]),
        .S({\main_clock[45]_i_70_n_0 ,\main_clock[45]_i_71_n_0 ,\main_clock[45]_i_72_n_0 ,\main_clock[45]_i_73_n_0 ,\main_clock[45]_i_74_n_0 ,\main_clock[45]_i_75_n_0 ,\main_clock[45]_i_76_n_0 ,\main_clock[45]_i_77_n_0 }));
  FDCE \main_clock_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[4]),
        .Q(main_clock[4]));
  FDCE \main_clock_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[5]),
        .Q(main_clock[5]));
  FDCE \main_clock_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[6]),
        .Q(main_clock[6]));
  FDCE \main_clock_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[7]),
        .Q(main_clock[7]));
  FDCE \main_clock_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[8]),
        .Q(main_clock[8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \main_clock_reg[8]_i_2 
       (.CI(main_clock[0]),
        .CI_TOP(1'b0),
        .CO({\main_clock_reg[8]_i_2_n_0 ,\main_clock_reg[8]_i_2_n_1 ,\main_clock_reg[8]_i_2_n_2 ,\main_clock_reg[8]_i_2_n_3 ,\main_clock_reg[8]_i_2_n_4 ,\main_clock_reg[8]_i_2_n_5 ,\main_clock_reg[8]_i_2_n_6 ,\main_clock_reg[8]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(main_clock0[8:1]),
        .S(main_clock[8:1]));
  FDCE \main_clock_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[9]),
        .Q(main_clock[9]));
  LUT6 #(
    .INIT(64'hBBBFBBBB88808888)) 
    pulse_fifo_read_i_1
       (.I0(pulse_fifo_read_i_2_n_0),
        .I1(rst),
        .I2(pulse_fifo_read_i_3_n_0),
        .I3(pulse_fifo_read_i_4_n_0),
        .I4(pulse_fifo_read_i_5_n_0),
        .I5(pulse_fifo_read),
        .O(pulse_fifo_read_i_1_n_0));
  LUT3 #(
    .INIT(8'hDF)) 
    pulse_fifo_read_i_10
       (.I0(instr_fifo_data[25]),
        .I1(pulse_fifo_empty),
        .I2(instr_fifo_data[24]),
        .O(pulse_fifo_read_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    pulse_fifo_read_i_11
       (.I0(\coarse_delay_reg_n_0_[5] ),
        .I1(\coarse_delay_reg_n_0_[3] ),
        .I2(pulse_fifo_empty),
        .I3(\coarse_delay_reg_n_0_[4] ),
        .I4(\coarse_delay_reg_n_0_[7] ),
        .I5(\coarse_delay_reg_n_0_[15] ),
        .O(pulse_fifo_read_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h22AA20AA)) 
    pulse_fifo_read_i_2
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[3]),
        .I4(clock_pre_tick),
        .O(pulse_fifo_read_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    pulse_fifo_read_i_3
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(\FSM_sequential_state[3]_i_10_n_0 ),
        .I3(\dead_pulses_reg_n_0_[6] ),
        .I4(\dead_pulses[7]_i_5_n_0 ),
        .I5(\dead_pulses_reg_n_0_[7] ),
        .O(pulse_fifo_read_i_3_n_0));
  LUT6 #(
    .INIT(64'hFF80FF80FFFFFF80)) 
    pulse_fifo_read_i_4
       (.I0(\FSM_sequential_state[2]_i_4_n_0 ),
        .I1(pulse_fifo_read_i_6_n_0),
        .I2(pulse_fifo_read_i_7_n_0),
        .I3(pulse_fifo_read_i_8_n_0),
        .I4(pulse_fifo_read_i_9_n_0),
        .I5(pulse_fifo_read_i_10_n_0),
        .O(pulse_fifo_read_i_4_n_0));
  LUT6 #(
    .INIT(64'hFFDDFFFDFFFDFFFD)) 
    pulse_fifo_read_i_5
       (.I0(state__0[3]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(pulse_fifo_read_i_7_n_0),
        .I5(clock_pre_tick),
        .O(pulse_fifo_read_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT2 #(
    .INIT(4'h2)) 
    pulse_fifo_read_i_6
       (.I0(state__0[3]),
        .I1(state__0[2]),
        .O(pulse_fifo_read_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    pulse_fifo_read_i_7
       (.I0(pulse_fifo_read_i_11_n_0),
        .I1(\FSM_sequential_state[2]_i_9_n_0 ),
        .I2(\coarse_delay_reg_n_0_[6] ),
        .I3(\coarse_delay_reg_n_0_[13] ),
        .I4(\FSM_sequential_state[2]_i_8_n_0 ),
        .I5(\coarse_delay[3]_i_2_n_0 ),
        .O(pulse_fifo_read_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    pulse_fifo_read_i_8
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[3]),
        .I3(pulse_fifo_empty),
        .O(pulse_fifo_read_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    pulse_fifo_read_i_9
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(\FSM_sequential_state[3]_i_10_n_0 ),
        .I3(rst_clock_i_3_n_0),
        .I4(instr_fifo_data[26]),
        .I5(instr_fifo_data[27]),
        .O(pulse_fifo_read_i_9_n_0));
  FDRE pulse_fifo_read_reg
       (.C(clk),
        .CE(1'b1),
        .D(pulse_fifo_read_i_1_n_0),
        .Q(pulse_fifo_read),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \pulses_to_send[0]_i_1 
       (.I0(\pulses_to_send[15]_i_3_n_0 ),
        .I1(instr_fifo_data[0]),
        .I2(\pulses_to_send_reg_n_0_[0] ),
        .I3(\pulses_to_send[15]_i_5_n_0 ),
        .O(pulses_to_send[0]));
  LUT6 #(
    .INIT(64'hFFFF9A009A009A00)) 
    \pulses_to_send[10]_i_1 
       (.I0(\pulses_to_send_reg_n_0_[10] ),
        .I1(\pulses_to_send_reg_n_0_[9] ),
        .I2(\pulses_to_send[10]_i_2_n_0 ),
        .I3(\pulses_to_send[15]_i_5_n_0 ),
        .I4(\pulses_to_send[15]_i_3_n_0 ),
        .I5(instr_fifo_data[10]),
        .O(pulses_to_send[10]));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \pulses_to_send[10]_i_2 
       (.I0(\pulses_to_send_reg_n_0_[5] ),
        .I1(\pulses_to_send_reg_n_0_[4] ),
        .I2(\pulses_to_send_reg_n_0_[7] ),
        .I3(\pulses_to_send_reg_n_0_[6] ),
        .I4(\pulses_to_send[5]_i_2_n_0 ),
        .I5(\pulses_to_send_reg_n_0_[8] ),
        .O(\pulses_to_send[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFA600A600A600)) 
    \pulses_to_send[11]_i_1 
       (.I0(\pulses_to_send_reg_n_0_[11] ),
        .I1(\pulses_to_send[11]_i_2_n_0 ),
        .I2(\pulses_to_send_reg_n_0_[10] ),
        .I3(\pulses_to_send[15]_i_5_n_0 ),
        .I4(\pulses_to_send[15]_i_3_n_0 ),
        .I5(instr_fifo_data[11]),
        .O(pulses_to_send[11]));
  LUT4 #(
    .INIT(16'h0040)) 
    \pulses_to_send[11]_i_2 
       (.I0(\pulses_to_send_reg_n_0_[8] ),
        .I1(\pulses_to_send[5]_i_2_n_0 ),
        .I2(\pulses_to_send[13]_i_3_n_0 ),
        .I3(\pulses_to_send_reg_n_0_[9] ),
        .O(\pulses_to_send[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF606060)) 
    \pulses_to_send[12]_i_1 
       (.I0(\pulses_to_send_reg_n_0_[12] ),
        .I1(\pulses_to_send[13]_i_2_n_0 ),
        .I2(\pulses_to_send[15]_i_5_n_0 ),
        .I3(\pulses_to_send[15]_i_3_n_0 ),
        .I4(instr_fifo_data[12]),
        .O(pulses_to_send[12]));
  LUT6 #(
    .INIT(64'hF88FF8F888888888)) 
    \pulses_to_send[13]_i_1 
       (.I0(\pulses_to_send[15]_i_3_n_0 ),
        .I1(instr_fifo_data[13]),
        .I2(\pulses_to_send_reg_n_0_[13] ),
        .I3(\pulses_to_send_reg_n_0_[12] ),
        .I4(\pulses_to_send[13]_i_2_n_0 ),
        .I5(\pulses_to_send[15]_i_5_n_0 ),
        .O(pulses_to_send[13]));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \pulses_to_send[13]_i_2 
       (.I0(\pulses_to_send_reg_n_0_[9] ),
        .I1(\pulses_to_send[13]_i_3_n_0 ),
        .I2(\pulses_to_send[5]_i_2_n_0 ),
        .I3(\pulses_to_send_reg_n_0_[8] ),
        .I4(\pulses_to_send_reg_n_0_[11] ),
        .I5(\pulses_to_send_reg_n_0_[10] ),
        .O(\pulses_to_send[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \pulses_to_send[13]_i_3 
       (.I0(\pulses_to_send_reg_n_0_[5] ),
        .I1(\pulses_to_send_reg_n_0_[4] ),
        .I2(\pulses_to_send_reg_n_0_[7] ),
        .I3(\pulses_to_send_reg_n_0_[6] ),
        .O(\pulses_to_send[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF88FF8F888888888)) 
    \pulses_to_send[14]_i_1 
       (.I0(\pulses_to_send[15]_i_3_n_0 ),
        .I1(instr_fifo_data[14]),
        .I2(\pulses_to_send_reg_n_0_[14] ),
        .I3(\pulses_to_send_reg_n_0_[13] ),
        .I4(\pulses_to_send[14]_i_2_n_0 ),
        .I5(\pulses_to_send[15]_i_5_n_0 ),
        .O(pulses_to_send[14]));
  LUT5 #(
    .INIT(32'h00000010)) 
    \pulses_to_send[14]_i_2 
       (.I0(\pulses_to_send_reg_n_0_[10] ),
        .I1(\pulses_to_send_reg_n_0_[11] ),
        .I2(\pulses_to_send[10]_i_2_n_0 ),
        .I3(\pulses_to_send_reg_n_0_[9] ),
        .I4(\pulses_to_send_reg_n_0_[12] ),
        .O(\pulses_to_send[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABAAAAAAAAAAA)) 
    \pulses_to_send[15]_i_1 
       (.I0(\pulses_to_send[15]_i_3_n_0 ),
        .I1(\FSM_sequential_state[3]_i_5_n_0 ),
        .I2(\m_axis_tdata[255]_INST_0_i_1_n_0 ),
        .I3(rst),
        .I4(\pulses_to_send[15]_i_4_n_0 ),
        .I5(\FSM_sequential_state[3]_i_6_n_0 ),
        .O(\pulses_to_send[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF282828)) 
    \pulses_to_send[15]_i_2 
       (.I0(\pulses_to_send[15]_i_5_n_0 ),
        .I1(\pulses_to_send_reg_n_0_[15] ),
        .I2(\pulses_to_send[15]_i_6_n_0 ),
        .I3(\pulses_to_send[15]_i_3_n_0 ),
        .I4(instr_fifo_data[15]),
        .O(pulses_to_send[15]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00404000)) 
    \pulses_to_send[15]_i_3 
       (.I0(instr_fifo_data[27]),
        .I1(instr_fifo_data[26]),
        .I2(\clock_period[23]_i_3_n_0 ),
        .I3(instr_fifo_data[24]),
        .I4(instr_fifo_data[25]),
        .O(\pulses_to_send[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \pulses_to_send[15]_i_4 
       (.I0(state__0[3]),
        .I1(state__0[2]),
        .O(\pulses_to_send[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT5 #(
    .INIT(32'h0FFF3FFB)) 
    \pulses_to_send[15]_i_5 
       (.I0(\pulses_to_send[15]_i_7_n_0 ),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .I3(state__0[3]),
        .I4(state__0[0]),
        .O(\pulses_to_send[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \pulses_to_send[15]_i_6 
       (.I0(\pulses_to_send_reg_n_0_[12] ),
        .I1(\pulses_to_send[13]_i_2_n_0 ),
        .I2(\pulses_to_send_reg_n_0_[14] ),
        .I3(\pulses_to_send_reg_n_0_[13] ),
        .O(\pulses_to_send[15]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFF9FFFFF)) 
    \pulses_to_send[15]_i_7 
       (.I0(instr_fifo_data[24]),
        .I1(instr_fifo_data[25]),
        .I2(instr_fifo_data[26]),
        .I3(instr_fifo_data[27]),
        .I4(rst_clock_i_3_n_0),
        .O(\pulses_to_send[15]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hF88F8888)) 
    \pulses_to_send[1]_i_1 
       (.I0(\pulses_to_send[15]_i_3_n_0 ),
        .I1(instr_fifo_data[1]),
        .I2(\pulses_to_send_reg_n_0_[0] ),
        .I3(\pulses_to_send_reg_n_0_[1] ),
        .I4(\pulses_to_send[15]_i_5_n_0 ),
        .O(pulses_to_send[1]));
  LUT6 #(
    .INIT(64'hFFFFA900A900A900)) 
    \pulses_to_send[2]_i_1 
       (.I0(\pulses_to_send_reg_n_0_[2] ),
        .I1(\pulses_to_send_reg_n_0_[1] ),
        .I2(\pulses_to_send_reg_n_0_[0] ),
        .I3(\pulses_to_send[15]_i_5_n_0 ),
        .I4(\pulses_to_send[15]_i_3_n_0 ),
        .I5(instr_fifo_data[2]),
        .O(pulses_to_send[2]));
  LUT6 #(
    .INIT(64'hFFFFA900A900A900)) 
    \pulses_to_send[3]_i_1 
       (.I0(\pulses_to_send_reg_n_0_[3] ),
        .I1(\pulses_to_send[3]_i_2_n_0 ),
        .I2(\pulses_to_send_reg_n_0_[2] ),
        .I3(\pulses_to_send[15]_i_5_n_0 ),
        .I4(\pulses_to_send[15]_i_3_n_0 ),
        .I5(instr_fifo_data[3]),
        .O(pulses_to_send[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \pulses_to_send[3]_i_2 
       (.I0(\pulses_to_send_reg_n_0_[0] ),
        .I1(\pulses_to_send_reg_n_0_[1] ),
        .O(\pulses_to_send[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF606060)) 
    \pulses_to_send[4]_i_1 
       (.I0(\pulses_to_send_reg_n_0_[4] ),
        .I1(\pulses_to_send[5]_i_2_n_0 ),
        .I2(\pulses_to_send[15]_i_5_n_0 ),
        .I3(\pulses_to_send[15]_i_3_n_0 ),
        .I4(instr_fifo_data[4]),
        .O(pulses_to_send[4]));
  LUT6 #(
    .INIT(64'hFFFFA600A600A600)) 
    \pulses_to_send[5]_i_1 
       (.I0(\pulses_to_send_reg_n_0_[5] ),
        .I1(\pulses_to_send[5]_i_2_n_0 ),
        .I2(\pulses_to_send_reg_n_0_[4] ),
        .I3(\pulses_to_send[15]_i_5_n_0 ),
        .I4(\pulses_to_send[15]_i_3_n_0 ),
        .I5(instr_fifo_data[5]),
        .O(pulses_to_send[5]));
  LUT4 #(
    .INIT(16'h0001)) 
    \pulses_to_send[5]_i_2 
       (.I0(\pulses_to_send_reg_n_0_[1] ),
        .I1(\pulses_to_send_reg_n_0_[0] ),
        .I2(\pulses_to_send_reg_n_0_[3] ),
        .I3(\pulses_to_send_reg_n_0_[2] ),
        .O(\pulses_to_send[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF909090)) 
    \pulses_to_send[6]_i_1 
       (.I0(\pulses_to_send_reg_n_0_[6] ),
        .I1(\pulses_to_send[7]_i_2_n_0 ),
        .I2(\pulses_to_send[15]_i_5_n_0 ),
        .I3(\pulses_to_send[15]_i_3_n_0 ),
        .I4(instr_fifo_data[6]),
        .O(pulses_to_send[6]));
  LUT6 #(
    .INIT(64'hFFFFA900A900A900)) 
    \pulses_to_send[7]_i_1 
       (.I0(\pulses_to_send_reg_n_0_[7] ),
        .I1(\pulses_to_send[7]_i_2_n_0 ),
        .I2(\pulses_to_send_reg_n_0_[6] ),
        .I3(\pulses_to_send[15]_i_5_n_0 ),
        .I4(\pulses_to_send[15]_i_3_n_0 ),
        .I5(instr_fifo_data[7]),
        .O(pulses_to_send[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pulses_to_send[7]_i_2 
       (.I0(\pulses_to_send_reg_n_0_[5] ),
        .I1(\pulses_to_send_reg_n_0_[1] ),
        .I2(\pulses_to_send_reg_n_0_[0] ),
        .I3(\pulses_to_send_reg_n_0_[3] ),
        .I4(\pulses_to_send_reg_n_0_[2] ),
        .I5(\pulses_to_send_reg_n_0_[4] ),
        .O(\pulses_to_send[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF606060)) 
    \pulses_to_send[8]_i_1 
       (.I0(\pulses_to_send_reg_n_0_[8] ),
        .I1(\pulses_to_send[8]_i_2_n_0 ),
        .I2(\pulses_to_send[15]_i_5_n_0 ),
        .I3(\pulses_to_send[15]_i_3_n_0 ),
        .I4(instr_fifo_data[8]),
        .O(pulses_to_send[8]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \pulses_to_send[8]_i_2 
       (.I0(\pulses_to_send[5]_i_2_n_0 ),
        .I1(\pulses_to_send_reg_n_0_[6] ),
        .I2(\pulses_to_send_reg_n_0_[7] ),
        .I3(\pulses_to_send_reg_n_0_[4] ),
        .I4(\pulses_to_send_reg_n_0_[5] ),
        .O(\pulses_to_send[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF606060)) 
    \pulses_to_send[9]_i_1 
       (.I0(\pulses_to_send_reg_n_0_[9] ),
        .I1(\pulses_to_send[10]_i_2_n_0 ),
        .I2(\pulses_to_send[15]_i_5_n_0 ),
        .I3(\pulses_to_send[15]_i_3_n_0 ),
        .I4(instr_fifo_data[9]),
        .O(pulses_to_send[9]));
  FDCE \pulses_to_send_reg[0] 
       (.C(clk),
        .CE(\pulses_to_send[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(pulses_to_send[0]),
        .Q(\pulses_to_send_reg_n_0_[0] ));
  FDCE \pulses_to_send_reg[10] 
       (.C(clk),
        .CE(\pulses_to_send[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(pulses_to_send[10]),
        .Q(\pulses_to_send_reg_n_0_[10] ));
  FDCE \pulses_to_send_reg[11] 
       (.C(clk),
        .CE(\pulses_to_send[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(pulses_to_send[11]),
        .Q(\pulses_to_send_reg_n_0_[11] ));
  FDCE \pulses_to_send_reg[12] 
       (.C(clk),
        .CE(\pulses_to_send[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(pulses_to_send[12]),
        .Q(\pulses_to_send_reg_n_0_[12] ));
  FDCE \pulses_to_send_reg[13] 
       (.C(clk),
        .CE(\pulses_to_send[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(pulses_to_send[13]),
        .Q(\pulses_to_send_reg_n_0_[13] ));
  FDCE \pulses_to_send_reg[14] 
       (.C(clk),
        .CE(\pulses_to_send[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(pulses_to_send[14]),
        .Q(\pulses_to_send_reg_n_0_[14] ));
  FDCE \pulses_to_send_reg[15] 
       (.C(clk),
        .CE(\pulses_to_send[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(pulses_to_send[15]),
        .Q(\pulses_to_send_reg_n_0_[15] ));
  FDCE \pulses_to_send_reg[1] 
       (.C(clk),
        .CE(\pulses_to_send[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(pulses_to_send[1]),
        .Q(\pulses_to_send_reg_n_0_[1] ));
  FDCE \pulses_to_send_reg[2] 
       (.C(clk),
        .CE(\pulses_to_send[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(pulses_to_send[2]),
        .Q(\pulses_to_send_reg_n_0_[2] ));
  FDCE \pulses_to_send_reg[3] 
       (.C(clk),
        .CE(\pulses_to_send[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(pulses_to_send[3]),
        .Q(\pulses_to_send_reg_n_0_[3] ));
  FDCE \pulses_to_send_reg[4] 
       (.C(clk),
        .CE(\pulses_to_send[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(pulses_to_send[4]),
        .Q(\pulses_to_send_reg_n_0_[4] ));
  FDCE \pulses_to_send_reg[5] 
       (.C(clk),
        .CE(\pulses_to_send[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(pulses_to_send[5]),
        .Q(\pulses_to_send_reg_n_0_[5] ));
  FDCE \pulses_to_send_reg[6] 
       (.C(clk),
        .CE(\pulses_to_send[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(pulses_to_send[6]),
        .Q(\pulses_to_send_reg_n_0_[6] ));
  FDCE \pulses_to_send_reg[7] 
       (.C(clk),
        .CE(\pulses_to_send[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(pulses_to_send[7]),
        .Q(\pulses_to_send_reg_n_0_[7] ));
  FDCE \pulses_to_send_reg[8] 
       (.C(clk),
        .CE(\pulses_to_send[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(pulses_to_send[8]),
        .Q(\pulses_to_send_reg_n_0_[8] ));
  FDCE \pulses_to_send_reg[9] 
       (.C(clk),
        .CE(\pulses_to_send[15]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(pulses_to_send[9]),
        .Q(\pulses_to_send_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'hFFFFFFFC00000004)) 
    rst_clock_i_1
       (.I0(rst_clock_i_2_n_0),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .I4(state__0[3]),
        .I5(rst_clock_reg_n_0),
        .O(rst_clock_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    rst_clock_i_2
       (.I0(rst_clock_i_3_n_0),
        .I1(instr_fifo_data[27]),
        .I2(instr_fifo_data[26]),
        .I3(instr_fifo_data[25]),
        .I4(instr_fifo_data[24]),
        .O(rst_clock_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    rst_clock_i_3
       (.I0(instr_fifo_data[30]),
        .I1(instr_fifo_data[31]),
        .I2(instr_fifo_data[29]),
        .I3(instr_fifo_data[28]),
        .O(rst_clock_i_3_n_0));
  FDCE rst_clock_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(rst_clock_i_1_n_0),
        .Q(rst_clock_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'h46)) 
    \state_out[0]_INST_0 
       (.I0(state__0[3]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .O(state_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'h21F0)) 
    \state_out[1]_INST_0 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .O(state_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT4 #(
    .INIT(16'hAB2A)) 
    \state_out[2]_INST_0 
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(state__0[3]),
        .O(state_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT4 #(
    .INIT(16'hECC8)) 
    \state_out[3]_INST_0 
       (.I0(state__0[1]),
        .I1(state__0[3]),
        .I2(state__0[2]),
        .I3(state__0[0]),
        .O(state_out[3]));
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
