// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Fri Jul 24 11:09:53 2020
// Host        : pme10D0025 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_level_block_design_pulse_gen_0_0_sim_netlist.v
// Design      : top_level_block_design_pulse_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pulse_gen
   (m_axis_tdata,
    state_out,
    instr_fifo_read,
    pulse_fifo_read,
    rst,
    instr_fifo_data,
    clk,
    pulse_fifo_data,
    pulse_fifo_empty,
    instr_fifo_empty);
  output [15:0]m_axis_tdata;
  output [3:0]state_out;
  output instr_fifo_read;
  output pulse_fifo_read;
  input rst;
  input [31:0]instr_fifo_data;
  input clk;
  input [19:0]pulse_fifo_data;
  input pulse_fifo_empty;
  input instr_fifo_empty;

  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[0]_i_5_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[3]_i_10_n_0 ;
  wire \FSM_sequential_state[3]_i_1_n_0 ;
  wire \FSM_sequential_state[3]_i_3_n_0 ;
  wire \FSM_sequential_state[3]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_5_n_0 ;
  wire \FSM_sequential_state[3]_i_6_n_0 ;
  wire \FSM_sequential_state[3]_i_7_n_0 ;
  wire \FSM_sequential_state[3]_i_8_n_0 ;
  wire \FSM_sequential_state[3]_i_9_n_0 ;
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
  wire \clock_period[23]_i_4_n_0 ;
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
  wire clock_pre_tick0_carry__0_i_1_n_0;
  wire clock_pre_tick0_carry__0_i_2_n_0;
  wire clock_pre_tick0_carry__0_i_3_n_0;
  wire clock_pre_tick0_carry__0_i_4_n_0;
  wire clock_pre_tick0_carry__0_i_5_n_0;
  wire clock_pre_tick0_carry__0_i_6_n_0;
  wire clock_pre_tick0_carry__0_i_7_n_0;
  wire clock_pre_tick0_carry__0_i_8_n_0;
  wire clock_pre_tick0_carry__0_n_0;
  wire clock_pre_tick0_carry__0_n_1;
  wire clock_pre_tick0_carry__0_n_2;
  wire clock_pre_tick0_carry__0_n_3;
  wire clock_pre_tick0_carry__0_n_4;
  wire clock_pre_tick0_carry__0_n_5;
  wire clock_pre_tick0_carry__0_n_6;
  wire clock_pre_tick0_carry__0_n_7;
  wire clock_pre_tick0_carry__1_i_1_n_0;
  wire clock_pre_tick0_carry__1_i_2_n_0;
  wire clock_pre_tick0_carry__1_i_3_n_0;
  wire clock_pre_tick0_carry__1_i_4_n_0;
  wire clock_pre_tick0_carry__1_i_5_n_0;
  wire clock_pre_tick0_carry__1_i_6_n_0;
  wire clock_pre_tick0_carry__1_i_7_n_0;
  wire clock_pre_tick0_carry__1_n_0;
  wire clock_pre_tick0_carry__1_n_2;
  wire clock_pre_tick0_carry__1_n_3;
  wire clock_pre_tick0_carry__1_n_4;
  wire clock_pre_tick0_carry__1_n_5;
  wire clock_pre_tick0_carry__1_n_6;
  wire clock_pre_tick0_carry__1_n_7;
  wire clock_pre_tick0_carry_i_1_n_0;
  wire clock_pre_tick0_carry_i_2_n_0;
  wire clock_pre_tick0_carry_i_3_n_0;
  wire clock_pre_tick0_carry_i_4_n_0;
  wire clock_pre_tick0_carry_i_5_n_0;
  wire clock_pre_tick0_carry_i_6_n_0;
  wire clock_pre_tick0_carry_i_7_n_0;
  wire clock_pre_tick0_carry_i_8_n_0;
  wire clock_pre_tick0_carry_n_0;
  wire clock_pre_tick0_carry_n_1;
  wire clock_pre_tick0_carry_n_2;
  wire clock_pre_tick0_carry_n_3;
  wire clock_pre_tick0_carry_n_4;
  wire clock_pre_tick0_carry_n_5;
  wire clock_pre_tick0_carry_n_6;
  wire clock_pre_tick0_carry_n_7;
  wire clock_pre_tick_carry__0_i_10_n_0;
  wire clock_pre_tick_carry__0_i_11_n_0;
  wire clock_pre_tick_carry__0_i_12_n_0;
  wire clock_pre_tick_carry__0_i_13_n_0;
  wire clock_pre_tick_carry__0_i_14_n_0;
  wire clock_pre_tick_carry__0_i_15_n_0;
  wire clock_pre_tick_carry__0_i_16_n_0;
  wire clock_pre_tick_carry__0_i_1_n_0;
  wire clock_pre_tick_carry__0_i_2_n_0;
  wire clock_pre_tick_carry__0_i_3_n_0;
  wire clock_pre_tick_carry__0_i_4_n_0;
  wire clock_pre_tick_carry__0_i_5_n_0;
  wire clock_pre_tick_carry__0_i_6_n_0;
  wire clock_pre_tick_carry__0_i_7_n_0;
  wire clock_pre_tick_carry__0_i_8_n_0;
  wire clock_pre_tick_carry__0_i_9_n_0;
  wire clock_pre_tick_carry__0_n_0;
  wire clock_pre_tick_carry__0_n_1;
  wire clock_pre_tick_carry__0_n_2;
  wire clock_pre_tick_carry__0_n_3;
  wire clock_pre_tick_carry__0_n_4;
  wire clock_pre_tick_carry__0_n_5;
  wire clock_pre_tick_carry__0_n_6;
  wire clock_pre_tick_carry__0_n_7;
  wire clock_pre_tick_carry__1_i_10_n_0;
  wire clock_pre_tick_carry__1_i_11_n_0;
  wire clock_pre_tick_carry__1_i_12_n_0;
  wire clock_pre_tick_carry__1_i_13_n_0;
  wire clock_pre_tick_carry__1_i_14_n_0;
  wire clock_pre_tick_carry__1_i_1_n_0;
  wire clock_pre_tick_carry__1_i_2_n_0;
  wire clock_pre_tick_carry__1_i_3_n_0;
  wire clock_pre_tick_carry__1_i_4_n_0;
  wire clock_pre_tick_carry__1_i_5_n_0;
  wire clock_pre_tick_carry__1_i_6_n_0;
  wire clock_pre_tick_carry__1_i_7_n_0;
  wire clock_pre_tick_carry__1_i_8_n_0;
  wire clock_pre_tick_carry__1_i_9_n_0;
  wire clock_pre_tick_carry__1_n_2;
  wire clock_pre_tick_carry__1_n_3;
  wire clock_pre_tick_carry__1_n_4;
  wire clock_pre_tick_carry__1_n_5;
  wire clock_pre_tick_carry__1_n_6;
  wire clock_pre_tick_carry__1_n_7;
  wire clock_pre_tick_carry_i_10_n_0;
  wire clock_pre_tick_carry_i_11_n_0;
  wire clock_pre_tick_carry_i_12_n_0;
  wire clock_pre_tick_carry_i_13_n_0;
  wire clock_pre_tick_carry_i_14_n_0;
  wire clock_pre_tick_carry_i_15_n_0;
  wire clock_pre_tick_carry_i_16_n_0;
  wire clock_pre_tick_carry_i_1_n_0;
  wire clock_pre_tick_carry_i_2_n_0;
  wire clock_pre_tick_carry_i_3_n_0;
  wire clock_pre_tick_carry_i_4_n_0;
  wire clock_pre_tick_carry_i_5_n_0;
  wire clock_pre_tick_carry_i_6_n_0;
  wire clock_pre_tick_carry_i_7_n_0;
  wire clock_pre_tick_carry_i_8_n_0;
  wire clock_pre_tick_carry_i_9_n_0;
  wire clock_pre_tick_carry_n_0;
  wire clock_pre_tick_carry_n_1;
  wire clock_pre_tick_carry_n_2;
  wire clock_pre_tick_carry_n_3;
  wire clock_pre_tick_carry_n_4;
  wire clock_pre_tick_carry_n_5;
  wire clock_pre_tick_carry_n_6;
  wire clock_pre_tick_carry_n_7;
  wire coarse_delay;
  wire \coarse_delay[0]_i_1_n_0 ;
  wire \coarse_delay[10]_i_1_n_0 ;
  wire \coarse_delay[10]_i_2_n_0 ;
  wire \coarse_delay[11]_i_2_n_0 ;
  wire \coarse_delay[11]_i_3_n_0 ;
  wire \coarse_delay[12]_i_1_n_0 ;
  wire \coarse_delay[12]_i_2_n_0 ;
  wire \coarse_delay[13]_i_1_n_0 ;
  wire \coarse_delay[13]_i_2_n_0 ;
  wire \coarse_delay[14]_i_1_n_0 ;
  wire \coarse_delay[14]_i_2_n_0 ;
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
  wire \coarse_delay[7]_i_2_n_0 ;
  wire \coarse_delay[7]_i_3_n_0 ;
  wire \coarse_delay[8]_i_1_n_0 ;
  wire \coarse_delay[9]_i_1_n_0 ;
  wire \coarse_delay[9]_i_2_n_0 ;
  wire \coarse_delay[9]_i_3_n_0 ;
  wire \coarse_delay_reg[11]_i_1_n_0 ;
  wire \coarse_delay_reg[7]_i_1_n_0 ;
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
  wire dead_pulses;
  wire \dead_pulses[0]_i_1_n_0 ;
  wire \dead_pulses[1]_i_1_n_0 ;
  wire \dead_pulses[2]_i_1_n_0 ;
  wire \dead_pulses[3]_i_1_n_0 ;
  wire \dead_pulses[3]_i_2_n_0 ;
  wire \dead_pulses[4]_i_1_n_0 ;
  wire \dead_pulses[5]_i_1_n_0 ;
  wire \dead_pulses[5]_i_2_n_0 ;
  wire \dead_pulses[6]_i_1_n_0 ;
  wire \dead_pulses[7]_i_2_n_0 ;
  wire \dead_pulses[7]_i_3_n_0 ;
  wire \dead_pulses[7]_i_4_n_0 ;
  wire \dead_pulses[7]_i_5_n_0 ;
  wire \dead_pulses[7]_i_6_n_0 ;
  wire \dead_pulses_reg_n_0_[0] ;
  wire \dead_pulses_reg_n_0_[1] ;
  wire \dead_pulses_reg_n_0_[2] ;
  wire \dead_pulses_reg_n_0_[3] ;
  wire \dead_pulses_reg_n_0_[4] ;
  wire \dead_pulses_reg_n_0_[5] ;
  wire \dead_pulses_reg_n_0_[6] ;
  wire \dead_pulses_reg_n_0_[7] ;
  wire \fine_delay[0]_i_1_n_0 ;
  wire \fine_delay[1]_i_1_n_0 ;
  wire \fine_delay[2]_i_1_n_0 ;
  wire \fine_delay[3]_i_1_n_0 ;
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
  wire [15:0]m_axis_tdata;
  wire \m_axis_tdata[240]_INST_0_i_10_n_0 ;
  wire \m_axis_tdata[240]_INST_0_i_11_n_0 ;
  wire \m_axis_tdata[240]_INST_0_i_12_n_0 ;
  wire \m_axis_tdata[240]_INST_0_i_1_n_0 ;
  wire \m_axis_tdata[240]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[240]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[240]_INST_0_i_4_n_0 ;
  wire \m_axis_tdata[240]_INST_0_i_5_n_0 ;
  wire \m_axis_tdata[240]_INST_0_i_6_n_0 ;
  wire \m_axis_tdata[240]_INST_0_i_7_n_0 ;
  wire \m_axis_tdata[240]_INST_0_i_8_n_0 ;
  wire \m_axis_tdata[240]_INST_0_i_9_n_0 ;
  wire m_axis_tdata_int;
  wire [7:4]m_axis_tdata_int1;
  wire \m_axis_tdata_int[110]_i_1_n_0 ;
  wire \m_axis_tdata_int[126]_i_1_n_0 ;
  wire \m_axis_tdata_int[126]_i_2_n_0 ;
  wire \m_axis_tdata_int[142]_i_1_n_0 ;
  wire \m_axis_tdata_int[14]_i_1_n_0 ;
  wire \m_axis_tdata_int[158]_i_1_n_0 ;
  wire \m_axis_tdata_int[174]_i_1_n_0 ;
  wire \m_axis_tdata_int[190]_i_1_n_0 ;
  wire \m_axis_tdata_int[206]_i_1_n_0 ;
  wire \m_axis_tdata_int[222]_i_1_n_0 ;
  wire \m_axis_tdata_int[238]_i_1_n_0 ;
  wire \m_axis_tdata_int[238]_i_2_n_0 ;
  wire \m_axis_tdata_int[254]_i_2_n_0 ;
  wire \m_axis_tdata_int[254]_i_3_n_0 ;
  wire \m_axis_tdata_int[254]_i_4_n_0 ;
  wire \m_axis_tdata_int[254]_i_5_n_0 ;
  wire \m_axis_tdata_int[30]_i_1_n_0 ;
  wire \m_axis_tdata_int[46]_i_1_n_0 ;
  wire \m_axis_tdata_int[62]_i_1_n_0 ;
  wire \m_axis_tdata_int[78]_i_1_n_0 ;
  wire \m_axis_tdata_int[94]_i_1_n_0 ;
  wire \m_axis_tdata_int_reg_n_0_[110] ;
  wire \m_axis_tdata_int_reg_n_0_[126] ;
  wire \m_axis_tdata_int_reg_n_0_[142] ;
  wire \m_axis_tdata_int_reg_n_0_[14] ;
  wire \m_axis_tdata_int_reg_n_0_[158] ;
  wire \m_axis_tdata_int_reg_n_0_[174] ;
  wire \m_axis_tdata_int_reg_n_0_[190] ;
  wire \m_axis_tdata_int_reg_n_0_[206] ;
  wire \m_axis_tdata_int_reg_n_0_[222] ;
  wire \m_axis_tdata_int_reg_n_0_[238] ;
  wire \m_axis_tdata_int_reg_n_0_[254] ;
  wire \m_axis_tdata_int_reg_n_0_[30] ;
  wire \m_axis_tdata_int_reg_n_0_[46] ;
  wire \m_axis_tdata_int_reg_n_0_[62] ;
  wire \m_axis_tdata_int_reg_n_0_[78] ;
  wire \m_axis_tdata_int_reg_n_0_[94] ;
  wire [45:0]main_clock;
  wire [45:1]main_clock0;
  wire main_clock0_carry__0_n_0;
  wire main_clock0_carry__0_n_1;
  wire main_clock0_carry__0_n_2;
  wire main_clock0_carry__0_n_3;
  wire main_clock0_carry__0_n_4;
  wire main_clock0_carry__0_n_5;
  wire main_clock0_carry__0_n_6;
  wire main_clock0_carry__0_n_7;
  wire main_clock0_carry__1_n_0;
  wire main_clock0_carry__1_n_1;
  wire main_clock0_carry__1_n_2;
  wire main_clock0_carry__1_n_3;
  wire main_clock0_carry__1_n_4;
  wire main_clock0_carry__1_n_5;
  wire main_clock0_carry__1_n_6;
  wire main_clock0_carry__1_n_7;
  wire main_clock0_carry__2_n_0;
  wire main_clock0_carry__2_n_1;
  wire main_clock0_carry__2_n_2;
  wire main_clock0_carry__2_n_3;
  wire main_clock0_carry__2_n_4;
  wire main_clock0_carry__2_n_5;
  wire main_clock0_carry__2_n_6;
  wire main_clock0_carry__2_n_7;
  wire main_clock0_carry__3_n_0;
  wire main_clock0_carry__3_n_1;
  wire main_clock0_carry__3_n_2;
  wire main_clock0_carry__3_n_3;
  wire main_clock0_carry__3_n_4;
  wire main_clock0_carry__3_n_5;
  wire main_clock0_carry__3_n_6;
  wire main_clock0_carry__3_n_7;
  wire main_clock0_carry__4_n_4;
  wire main_clock0_carry__4_n_5;
  wire main_clock0_carry__4_n_6;
  wire main_clock0_carry__4_n_7;
  wire main_clock0_carry_n_0;
  wire main_clock0_carry_n_1;
  wire main_clock0_carry_n_2;
  wire main_clock0_carry_n_3;
  wire main_clock0_carry_n_4;
  wire main_clock0_carry_n_5;
  wire main_clock0_carry_n_6;
  wire main_clock0_carry_n_7;
  wire [45:0]p_0_in;
  wire [19:0]pulse_fifo_data;
  wire pulse_fifo_empty;
  wire pulse_fifo_read;
  wire pulse_fifo_read_i_10_n_0;
  wire pulse_fifo_read_i_11_n_0;
  wire pulse_fifo_read_i_12_n_0;
  wire pulse_fifo_read_i_13_n_0;
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
  wire \pulses_to_send[0]_i_2_n_0 ;
  wire \pulses_to_send[11]_i_2_n_0 ;
  wire \pulses_to_send[12]_i_2_n_0 ;
  wire \pulses_to_send[12]_i_3_n_0 ;
  wire \pulses_to_send[14]_i_2_n_0 ;
  wire \pulses_to_send[14]_i_3_n_0 ;
  wire \pulses_to_send[15]_i_1_n_0 ;
  wire \pulses_to_send[15]_i_3_n_0 ;
  wire \pulses_to_send[15]_i_4_n_0 ;
  wire \pulses_to_send[15]_i_5_n_0 ;
  wire \pulses_to_send[3]_i_2_n_0 ;
  wire \pulses_to_send[5]_i_2_n_0 ;
  wire \pulses_to_send[7]_i_2_n_0 ;
  wire \pulses_to_send[9]_i_2_n_0 ;
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
  wire rst_clock_reg_n_0;
  wire [3:0]state__0;
  wire [3:0]state__1;
  wire [3:0]state_out;
  wire [6:6]NLW_clock_pre_tick0_carry__1_CO_UNCONNECTED;
  wire [7:7]NLW_clock_pre_tick0_carry__1_O_UNCONNECTED;
  wire [7:0]NLW_clock_pre_tick_carry_O_UNCONNECTED;
  wire [7:0]NLW_clock_pre_tick_carry__0_O_UNCONNECTED;
  wire [7:7]NLW_clock_pre_tick_carry__1_CO_UNCONNECTED;
  wire [7:0]NLW_clock_pre_tick_carry__1_O_UNCONNECTED;
  wire [7:4]NLW_main_clock0_carry__4_CO_UNCONNECTED;
  wire [7:5]NLW_main_clock0_carry__4_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h00AA00A2AAAA22A2)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_state[0]_i_3_n_0 ),
        .I2(\FSM_sequential_state[0]_i_4_n_0 ),
        .I3(state__0[0]),
        .I4(\FSM_sequential_state[0]_i_5_n_0 ),
        .I5(state__0[3]),
        .O(state__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\FSM_sequential_state[3]_i_7_n_0 ),
        .I1(state__0[3]),
        .I2(state__0[1]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hFFFFFDFF)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(\clock_period[23]_i_3_n_0 ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(instr_fifo_data[24]),
        .I4(instr_fifo_data[25]),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hAAAABAAA)) 
    \FSM_sequential_state[0]_i_5 
       (.I0(state__0[3]),
        .I1(pulse_fifo_empty),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(\FSM_sequential_state[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h20AA28AA)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(\FSM_sequential_state[1]_i_2_n_0 ),
        .I1(state__0[1]),
        .I2(state__0[0]),
        .I3(state__0[3]),
        .I4(\FSM_sequential_state[3]_i_7_n_0 ),
        .O(state__1[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00283028)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\FSM_sequential_state[1]_i_3_n_0 ),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(pulse_fifo_empty),
        .I5(state__0[3]),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h44F44F4444444444)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(instr_fifo_data[25]),
        .I3(instr_fifo_data[24]),
        .I4(instr_fifo_data[26]),
        .I5(\clock_period[23]_i_3_n_0 ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000008)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(state__0[3]),
        .I4(\FSM_sequential_state[3]_i_7_n_0 ),
        .I5(\FSM_sequential_state[2]_i_2_n_0 ),
        .O(state__1[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAABAAAAA)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(\pulses_to_send[15]_i_4_n_0 ),
        .I1(pulse_fifo_empty),
        .I2(state__0[2]),
        .I3(state__0[3]),
        .I4(state__0[1]),
        .I5(state__0[0]),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
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
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[3]_i_10 
       (.I0(\coarse_delay_reg_n_0_[12] ),
        .I1(\coarse_delay_reg_n_0_[13] ),
        .I2(\coarse_delay_reg_n_0_[15] ),
        .I3(\coarse_delay_reg_n_0_[14] ),
        .O(\FSM_sequential_state[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h3CFC0CCC4CCC4CCC)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(\FSM_sequential_state[3]_i_7_n_0 ),
        .I1(state__0[3]),
        .I2(state__0[1]),
        .I3(pulse_fifo_empty),
        .I4(state__0[2]),
        .I5(state__0[0]),
        .O(state__1[3]));
  LUT6 #(
    .INIT(64'h4400003077CC0030)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(\FSM_sequential_state[3]_i_7_n_0 ),
        .I1(state__0[3]),
        .I2(instr_fifo_empty),
        .I3(state__0[0]),
        .I4(state__0[1]),
        .I5(clock_pre_tick),
        .O(\FSM_sequential_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00C0000800000008)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(\FSM_sequential_state[3]_i_7_n_0 ),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .I4(state__0[0]),
        .I5(\dead_pulses[7]_i_5_n_0 ),
        .O(\FSM_sequential_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(\pulses_to_send_reg_n_0_[13] ),
        .I1(\pulses_to_send_reg_n_0_[14] ),
        .I2(\pulses_to_send[12]_i_2_n_0 ),
        .I3(\pulses_to_send_reg_n_0_[12] ),
        .I4(\pulses_to_send_reg_n_0_[15] ),
        .O(\FSM_sequential_state[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \FSM_sequential_state[3]_i_6 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .O(\FSM_sequential_state[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \FSM_sequential_state[3]_i_7 
       (.I0(\FSM_sequential_state[3]_i_8_n_0 ),
        .I1(\coarse_delay[4]_i_2_n_0 ),
        .I2(\FSM_sequential_state[3]_i_9_n_0 ),
        .I3(\coarse_delay_reg_n_0_[9] ),
        .I4(\coarse_delay_reg_n_0_[8] ),
        .I5(\FSM_sequential_state[3]_i_10_n_0 ),
        .O(\FSM_sequential_state[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_state[3]_i_8 
       (.I0(\coarse_delay_reg_n_0_[5] ),
        .I1(\coarse_delay_reg_n_0_[4] ),
        .I2(\coarse_delay_reg_n_0_[6] ),
        .I3(\coarse_delay_reg_n_0_[7] ),
        .O(\FSM_sequential_state[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[3]_i_9 
       (.I0(\coarse_delay_reg_n_0_[10] ),
        .I1(\coarse_delay_reg_n_0_[11] ),
        .O(\FSM_sequential_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "state_ss_3:1001,state_ss_1:0110,state_toggle_end:0101,state_wait_pulse:0100,state_wait_tick:0011,state_read:0010,state_ss_wait:0111,state_ss_5:1011,state_rst_read:0001,state_idle:0000,state_ss_4:1010,state_ss_2:1000" *) 
  FDCE \FSM_sequential_state_reg[0] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(state__1[0]),
        .Q(state__0[0]));
  (* FSM_ENCODED_STATES = "state_ss_3:1001,state_ss_1:0110,state_toggle_end:0101,state_wait_pulse:0100,state_wait_tick:0011,state_read:0010,state_ss_wait:0111,state_ss_5:1011,state_rst_read:0001,state_idle:0000,state_ss_4:1010,state_ss_2:1000" *) 
  FDCE \FSM_sequential_state_reg[1] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(state__1[1]),
        .Q(state__0[1]));
  (* FSM_ENCODED_STATES = "state_ss_3:1001,state_ss_1:0110,state_toggle_end:0101,state_wait_pulse:0100,state_wait_tick:0011,state_read:0010,state_ss_wait:0111,state_ss_5:1011,state_rst_read:0001,state_idle:0000,state_ss_4:1010,state_ss_2:1000" *) 
  FDCE \FSM_sequential_state_reg[2] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(state__1[2]),
        .Q(state__0[2]));
  (* FSM_ENCODED_STATES = "state_ss_3:1001,state_ss_1:0110,state_toggle_end:0101,state_wait_pulse:0100,state_wait_tick:0011,state_read:0010,state_ss_wait:0111,state_ss_5:1011,state_rst_read:0001,state_idle:0000,state_ss_4:1010,state_ss_2:1000" *) 
  FDCE \FSM_sequential_state_reg[3] 
       (.C(clk),
        .CE(\FSM_sequential_state[3]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(state__1[3]),
        .Q(state__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[0]_i_1 
       (.I0(instr_fifo_data[0]),
        .I1(state__0[3]),
        .O(\clock_period[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[10]_i_1 
       (.I0(instr_fifo_data[10]),
        .I1(state__0[3]),
        .O(\clock_period[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[11]_i_1 
       (.I0(instr_fifo_data[11]),
        .I1(state__0[3]),
        .O(\clock_period[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[12]_i_1 
       (.I0(instr_fifo_data[12]),
        .I1(state__0[3]),
        .O(\clock_period[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[13]_i_1 
       (.I0(instr_fifo_data[13]),
        .I1(state__0[3]),
        .O(\clock_period[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[14]_i_1 
       (.I0(instr_fifo_data[14]),
        .I1(state__0[3]),
        .O(\clock_period[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[15]_i_1 
       (.I0(instr_fifo_data[15]),
        .I1(state__0[3]),
        .O(\clock_period[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[16]_i_1 
       (.I0(instr_fifo_data[16]),
        .I1(state__0[3]),
        .O(\clock_period[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[17]_i_1 
       (.I0(instr_fifo_data[17]),
        .I1(state__0[3]),
        .O(\clock_period[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[18]_i_1 
       (.I0(instr_fifo_data[18]),
        .I1(state__0[3]),
        .O(\clock_period[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[19]_i_1 
       (.I0(instr_fifo_data[19]),
        .I1(state__0[3]),
        .O(\clock_period[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[1]_i_1 
       (.I0(instr_fifo_data[1]),
        .I1(state__0[3]),
        .O(\clock_period[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[20]_i_1 
       (.I0(instr_fifo_data[20]),
        .I1(state__0[3]),
        .O(\clock_period[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[21]_i_1 
       (.I0(instr_fifo_data[21]),
        .I1(state__0[3]),
        .O(\clock_period[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[22]_i_1 
       (.I0(instr_fifo_data[22]),
        .I1(state__0[3]),
        .O(\clock_period[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400000)) 
    \clock_period[23]_i_1 
       (.I0(instr_fifo_data[26]),
        .I1(\clock_period[23]_i_3_n_0 ),
        .I2(\clock_period[23]_i_4_n_0 ),
        .I3(instr_fifo_data[24]),
        .I4(instr_fifo_data[25]),
        .O(clock_period));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[23]_i_2 
       (.I0(instr_fifo_data[23]),
        .I1(state__0[3]),
        .O(\clock_period[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \clock_period[23]_i_3 
       (.I0(instr_fifo_data[29]),
        .I1(instr_fifo_data[27]),
        .I2(instr_fifo_data[31]),
        .I3(instr_fifo_data[30]),
        .I4(instr_fifo_data[28]),
        .O(\clock_period[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \clock_period[23]_i_4 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .I3(state__0[3]),
        .O(\clock_period[23]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[2]_i_1 
       (.I0(instr_fifo_data[2]),
        .I1(state__0[3]),
        .O(\clock_period[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[3]_i_1 
       (.I0(instr_fifo_data[3]),
        .I1(state__0[3]),
        .O(\clock_period[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[4]_i_1 
       (.I0(instr_fifo_data[4]),
        .I1(state__0[3]),
        .O(\clock_period[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[5]_i_1 
       (.I0(instr_fifo_data[5]),
        .I1(state__0[3]),
        .O(\clock_period[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[6]_i_1 
       (.I0(instr_fifo_data[6]),
        .I1(state__0[3]),
        .O(\clock_period[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[7]_i_1 
       (.I0(instr_fifo_data[7]),
        .I1(state__0[3]),
        .O(\clock_period[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \clock_period[8]_i_1 
       (.I0(instr_fifo_data[8]),
        .I1(state__0[3]),
        .O(\clock_period[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
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
  CARRY8 clock_pre_tick0_carry
       (.CI(\clock_period_reg_n_0_[0] ),
        .CI_TOP(1'b0),
        .CO({clock_pre_tick0_carry_n_0,clock_pre_tick0_carry_n_1,clock_pre_tick0_carry_n_2,clock_pre_tick0_carry_n_3,clock_pre_tick0_carry_n_4,clock_pre_tick0_carry_n_5,clock_pre_tick0_carry_n_6,clock_pre_tick0_carry_n_7}),
        .DI({\clock_period_reg_n_0_[8] ,\clock_period_reg_n_0_[7] ,\clock_period_reg_n_0_[6] ,\clock_period_reg_n_0_[5] ,\clock_period_reg_n_0_[4] ,\clock_period_reg_n_0_[3] ,\clock_period_reg_n_0_[2] ,\clock_period_reg_n_0_[1] }),
        .O(clock_pre_tick0[8:1]),
        .S({clock_pre_tick0_carry_i_1_n_0,clock_pre_tick0_carry_i_2_n_0,clock_pre_tick0_carry_i_3_n_0,clock_pre_tick0_carry_i_4_n_0,clock_pre_tick0_carry_i_5_n_0,clock_pre_tick0_carry_i_6_n_0,clock_pre_tick0_carry_i_7_n_0,clock_pre_tick0_carry_i_8_n_0}));
  CARRY8 clock_pre_tick0_carry__0
       (.CI(clock_pre_tick0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({clock_pre_tick0_carry__0_n_0,clock_pre_tick0_carry__0_n_1,clock_pre_tick0_carry__0_n_2,clock_pre_tick0_carry__0_n_3,clock_pre_tick0_carry__0_n_4,clock_pre_tick0_carry__0_n_5,clock_pre_tick0_carry__0_n_6,clock_pre_tick0_carry__0_n_7}),
        .DI({\clock_period_reg_n_0_[16] ,\clock_period_reg_n_0_[15] ,\clock_period_reg_n_0_[14] ,\clock_period_reg_n_0_[13] ,\clock_period_reg_n_0_[12] ,\clock_period_reg_n_0_[11] ,\clock_period_reg_n_0_[10] ,\clock_period_reg_n_0_[9] }),
        .O(clock_pre_tick0[16:9]),
        .S({clock_pre_tick0_carry__0_i_1_n_0,clock_pre_tick0_carry__0_i_2_n_0,clock_pre_tick0_carry__0_i_3_n_0,clock_pre_tick0_carry__0_i_4_n_0,clock_pre_tick0_carry__0_i_5_n_0,clock_pre_tick0_carry__0_i_6_n_0,clock_pre_tick0_carry__0_i_7_n_0,clock_pre_tick0_carry__0_i_8_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    clock_pre_tick0_carry__0_i_1
       (.I0(\clock_period_reg_n_0_[16] ),
        .O(clock_pre_tick0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clock_pre_tick0_carry__0_i_2
       (.I0(\clock_period_reg_n_0_[15] ),
        .O(clock_pre_tick0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clock_pre_tick0_carry__0_i_3
       (.I0(\clock_period_reg_n_0_[14] ),
        .O(clock_pre_tick0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clock_pre_tick0_carry__0_i_4
       (.I0(\clock_period_reg_n_0_[13] ),
        .O(clock_pre_tick0_carry__0_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clock_pre_tick0_carry__0_i_5
       (.I0(\clock_period_reg_n_0_[12] ),
        .O(clock_pre_tick0_carry__0_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clock_pre_tick0_carry__0_i_6
       (.I0(\clock_period_reg_n_0_[11] ),
        .O(clock_pre_tick0_carry__0_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clock_pre_tick0_carry__0_i_7
       (.I0(\clock_period_reg_n_0_[10] ),
        .O(clock_pre_tick0_carry__0_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clock_pre_tick0_carry__0_i_8
       (.I0(\clock_period_reg_n_0_[9] ),
        .O(clock_pre_tick0_carry__0_i_8_n_0));
  CARRY8 clock_pre_tick0_carry__1
       (.CI(clock_pre_tick0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({clock_pre_tick0_carry__1_n_0,NLW_clock_pre_tick0_carry__1_CO_UNCONNECTED[6],clock_pre_tick0_carry__1_n_2,clock_pre_tick0_carry__1_n_3,clock_pre_tick0_carry__1_n_4,clock_pre_tick0_carry__1_n_5,clock_pre_tick0_carry__1_n_6,clock_pre_tick0_carry__1_n_7}),
        .DI({1'b0,\clock_period_reg_n_0_[23] ,\clock_period_reg_n_0_[22] ,\clock_period_reg_n_0_[21] ,\clock_period_reg_n_0_[20] ,\clock_period_reg_n_0_[19] ,\clock_period_reg_n_0_[18] ,\clock_period_reg_n_0_[17] }),
        .O({NLW_clock_pre_tick0_carry__1_O_UNCONNECTED[7],clock_pre_tick0[23:17]}),
        .S({1'b1,clock_pre_tick0_carry__1_i_1_n_0,clock_pre_tick0_carry__1_i_2_n_0,clock_pre_tick0_carry__1_i_3_n_0,clock_pre_tick0_carry__1_i_4_n_0,clock_pre_tick0_carry__1_i_5_n_0,clock_pre_tick0_carry__1_i_6_n_0,clock_pre_tick0_carry__1_i_7_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    clock_pre_tick0_carry__1_i_1
       (.I0(\clock_period_reg_n_0_[23] ),
        .O(clock_pre_tick0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clock_pre_tick0_carry__1_i_2
       (.I0(\clock_period_reg_n_0_[22] ),
        .O(clock_pre_tick0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clock_pre_tick0_carry__1_i_3
       (.I0(\clock_period_reg_n_0_[21] ),
        .O(clock_pre_tick0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clock_pre_tick0_carry__1_i_4
       (.I0(\clock_period_reg_n_0_[20] ),
        .O(clock_pre_tick0_carry__1_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clock_pre_tick0_carry__1_i_5
       (.I0(\clock_period_reg_n_0_[19] ),
        .O(clock_pre_tick0_carry__1_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clock_pre_tick0_carry__1_i_6
       (.I0(\clock_period_reg_n_0_[18] ),
        .O(clock_pre_tick0_carry__1_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clock_pre_tick0_carry__1_i_7
       (.I0(\clock_period_reg_n_0_[17] ),
        .O(clock_pre_tick0_carry__1_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clock_pre_tick0_carry_i_1
       (.I0(\clock_period_reg_n_0_[8] ),
        .O(clock_pre_tick0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clock_pre_tick0_carry_i_2
       (.I0(\clock_period_reg_n_0_[7] ),
        .O(clock_pre_tick0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clock_pre_tick0_carry_i_3
       (.I0(\clock_period_reg_n_0_[6] ),
        .O(clock_pre_tick0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clock_pre_tick0_carry_i_4
       (.I0(\clock_period_reg_n_0_[5] ),
        .O(clock_pre_tick0_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clock_pre_tick0_carry_i_5
       (.I0(\clock_period_reg_n_0_[4] ),
        .O(clock_pre_tick0_carry_i_5_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clock_pre_tick0_carry_i_6
       (.I0(\clock_period_reg_n_0_[3] ),
        .O(clock_pre_tick0_carry_i_6_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clock_pre_tick0_carry_i_7
       (.I0(\clock_period_reg_n_0_[2] ),
        .O(clock_pre_tick0_carry_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    clock_pre_tick0_carry_i_8
       (.I0(\clock_period_reg_n_0_[1] ),
        .O(clock_pre_tick0_carry_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 clock_pre_tick_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({clock_pre_tick_carry_n_0,clock_pre_tick_carry_n_1,clock_pre_tick_carry_n_2,clock_pre_tick_carry_n_3,clock_pre_tick_carry_n_4,clock_pre_tick_carry_n_5,clock_pre_tick_carry_n_6,clock_pre_tick_carry_n_7}),
        .DI({clock_pre_tick_carry_i_1_n_0,clock_pre_tick_carry_i_2_n_0,clock_pre_tick_carry_i_3_n_0,clock_pre_tick_carry_i_4_n_0,clock_pre_tick_carry_i_5_n_0,clock_pre_tick_carry_i_6_n_0,clock_pre_tick_carry_i_7_n_0,clock_pre_tick_carry_i_8_n_0}),
        .O(NLW_clock_pre_tick_carry_O_UNCONNECTED[7:0]),
        .S({clock_pre_tick_carry_i_9_n_0,clock_pre_tick_carry_i_10_n_0,clock_pre_tick_carry_i_11_n_0,clock_pre_tick_carry_i_12_n_0,clock_pre_tick_carry_i_13_n_0,clock_pre_tick_carry_i_14_n_0,clock_pre_tick_carry_i_15_n_0,clock_pre_tick_carry_i_16_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 clock_pre_tick_carry__0
       (.CI(clock_pre_tick_carry_n_0),
        .CI_TOP(1'b0),
        .CO({clock_pre_tick_carry__0_n_0,clock_pre_tick_carry__0_n_1,clock_pre_tick_carry__0_n_2,clock_pre_tick_carry__0_n_3,clock_pre_tick_carry__0_n_4,clock_pre_tick_carry__0_n_5,clock_pre_tick_carry__0_n_6,clock_pre_tick_carry__0_n_7}),
        .DI({clock_pre_tick_carry__0_i_1_n_0,clock_pre_tick_carry__0_i_2_n_0,clock_pre_tick_carry__0_i_3_n_0,clock_pre_tick_carry__0_i_4_n_0,clock_pre_tick_carry__0_i_5_n_0,clock_pre_tick_carry__0_i_6_n_0,clock_pre_tick_carry__0_i_7_n_0,clock_pre_tick_carry__0_i_8_n_0}),
        .O(NLW_clock_pre_tick_carry__0_O_UNCONNECTED[7:0]),
        .S({clock_pre_tick_carry__0_i_9_n_0,clock_pre_tick_carry__0_i_10_n_0,clock_pre_tick_carry__0_i_11_n_0,clock_pre_tick_carry__0_i_12_n_0,clock_pre_tick_carry__0_i_13_n_0,clock_pre_tick_carry__0_i_14_n_0,clock_pre_tick_carry__0_i_15_n_0,clock_pre_tick_carry__0_i_16_n_0}));
  LUT3 #(
    .INIT(8'hA8)) 
    clock_pre_tick_carry__0_i_1
       (.I0(clock_pre_tick0_carry__1_n_0),
        .I1(main_clock[31]),
        .I2(main_clock[30]),
        .O(clock_pre_tick_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    clock_pre_tick_carry__0_i_10
       (.I0(main_clock[29]),
        .I1(main_clock[28]),
        .I2(clock_pre_tick0_carry__1_n_0),
        .O(clock_pre_tick_carry__0_i_10_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    clock_pre_tick_carry__0_i_11
       (.I0(main_clock[27]),
        .I1(main_clock[26]),
        .I2(clock_pre_tick0_carry__1_n_0),
        .O(clock_pre_tick_carry__0_i_11_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    clock_pre_tick_carry__0_i_12
       (.I0(main_clock[25]),
        .I1(main_clock[24]),
        .I2(clock_pre_tick0_carry__1_n_0),
        .O(clock_pre_tick_carry__0_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    clock_pre_tick_carry__0_i_13
       (.I0(clock_pre_tick0[23]),
        .I1(main_clock[23]),
        .I2(clock_pre_tick0[22]),
        .I3(main_clock[22]),
        .O(clock_pre_tick_carry__0_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    clock_pre_tick_carry__0_i_14
       (.I0(clock_pre_tick0[21]),
        .I1(main_clock[21]),
        .I2(clock_pre_tick0[20]),
        .I3(main_clock[20]),
        .O(clock_pre_tick_carry__0_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    clock_pre_tick_carry__0_i_15
       (.I0(clock_pre_tick0[19]),
        .I1(main_clock[19]),
        .I2(clock_pre_tick0[18]),
        .I3(main_clock[18]),
        .O(clock_pre_tick_carry__0_i_15_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    clock_pre_tick_carry__0_i_16
       (.I0(clock_pre_tick0[17]),
        .I1(main_clock[17]),
        .I2(clock_pre_tick0[16]),
        .I3(main_clock[16]),
        .O(clock_pre_tick_carry__0_i_16_n_0));
  LUT3 #(
    .INIT(8'hA8)) 
    clock_pre_tick_carry__0_i_2
       (.I0(clock_pre_tick0_carry__1_n_0),
        .I1(main_clock[29]),
        .I2(main_clock[28]),
        .O(clock_pre_tick_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'hA8)) 
    clock_pre_tick_carry__0_i_3
       (.I0(clock_pre_tick0_carry__1_n_0),
        .I1(main_clock[27]),
        .I2(main_clock[26]),
        .O(clock_pre_tick_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'hA8)) 
    clock_pre_tick_carry__0_i_4
       (.I0(clock_pre_tick0_carry__1_n_0),
        .I1(main_clock[25]),
        .I2(main_clock[24]),
        .O(clock_pre_tick_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    clock_pre_tick_carry__0_i_5
       (.I0(main_clock[23]),
        .I1(clock_pre_tick0[23]),
        .I2(main_clock[22]),
        .I3(clock_pre_tick0[22]),
        .O(clock_pre_tick_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    clock_pre_tick_carry__0_i_6
       (.I0(main_clock[21]),
        .I1(clock_pre_tick0[21]),
        .I2(main_clock[20]),
        .I3(clock_pre_tick0[20]),
        .O(clock_pre_tick_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    clock_pre_tick_carry__0_i_7
       (.I0(main_clock[19]),
        .I1(clock_pre_tick0[19]),
        .I2(main_clock[18]),
        .I3(clock_pre_tick0[18]),
        .O(clock_pre_tick_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    clock_pre_tick_carry__0_i_8
       (.I0(main_clock[17]),
        .I1(clock_pre_tick0[17]),
        .I2(main_clock[16]),
        .I3(clock_pre_tick0[16]),
        .O(clock_pre_tick_carry__0_i_8_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    clock_pre_tick_carry__0_i_9
       (.I0(main_clock[31]),
        .I1(main_clock[30]),
        .I2(clock_pre_tick0_carry__1_n_0),
        .O(clock_pre_tick_carry__0_i_9_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 clock_pre_tick_carry__1
       (.CI(clock_pre_tick_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_clock_pre_tick_carry__1_CO_UNCONNECTED[7],clock_pre_tick,clock_pre_tick_carry__1_n_2,clock_pre_tick_carry__1_n_3,clock_pre_tick_carry__1_n_4,clock_pre_tick_carry__1_n_5,clock_pre_tick_carry__1_n_6,clock_pre_tick_carry__1_n_7}),
        .DI({1'b0,clock_pre_tick_carry__1_i_1_n_0,clock_pre_tick_carry__1_i_2_n_0,clock_pre_tick_carry__1_i_3_n_0,clock_pre_tick_carry__1_i_4_n_0,clock_pre_tick_carry__1_i_5_n_0,clock_pre_tick_carry__1_i_6_n_0,clock_pre_tick_carry__1_i_7_n_0}),
        .O(NLW_clock_pre_tick_carry__1_O_UNCONNECTED[7:0]),
        .S({1'b0,clock_pre_tick_carry__1_i_8_n_0,clock_pre_tick_carry__1_i_9_n_0,clock_pre_tick_carry__1_i_10_n_0,clock_pre_tick_carry__1_i_11_n_0,clock_pre_tick_carry__1_i_12_n_0,clock_pre_tick_carry__1_i_13_n_0,clock_pre_tick_carry__1_i_14_n_0}));
  LUT3 #(
    .INIT(8'hA8)) 
    clock_pre_tick_carry__1_i_1
       (.I0(clock_pre_tick0_carry__1_n_0),
        .I1(main_clock[45]),
        .I2(main_clock[44]),
        .O(clock_pre_tick_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    clock_pre_tick_carry__1_i_10
       (.I0(main_clock[41]),
        .I1(main_clock[40]),
        .I2(clock_pre_tick0_carry__1_n_0),
        .O(clock_pre_tick_carry__1_i_10_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    clock_pre_tick_carry__1_i_11
       (.I0(main_clock[39]),
        .I1(main_clock[38]),
        .I2(clock_pre_tick0_carry__1_n_0),
        .O(clock_pre_tick_carry__1_i_11_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    clock_pre_tick_carry__1_i_12
       (.I0(main_clock[37]),
        .I1(main_clock[36]),
        .I2(clock_pre_tick0_carry__1_n_0),
        .O(clock_pre_tick_carry__1_i_12_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    clock_pre_tick_carry__1_i_13
       (.I0(main_clock[35]),
        .I1(main_clock[34]),
        .I2(clock_pre_tick0_carry__1_n_0),
        .O(clock_pre_tick_carry__1_i_13_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    clock_pre_tick_carry__1_i_14
       (.I0(main_clock[33]),
        .I1(main_clock[32]),
        .I2(clock_pre_tick0_carry__1_n_0),
        .O(clock_pre_tick_carry__1_i_14_n_0));
  LUT3 #(
    .INIT(8'hA8)) 
    clock_pre_tick_carry__1_i_2
       (.I0(clock_pre_tick0_carry__1_n_0),
        .I1(main_clock[43]),
        .I2(main_clock[42]),
        .O(clock_pre_tick_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'hA8)) 
    clock_pre_tick_carry__1_i_3
       (.I0(clock_pre_tick0_carry__1_n_0),
        .I1(main_clock[41]),
        .I2(main_clock[40]),
        .O(clock_pre_tick_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'hA8)) 
    clock_pre_tick_carry__1_i_4
       (.I0(clock_pre_tick0_carry__1_n_0),
        .I1(main_clock[39]),
        .I2(main_clock[38]),
        .O(clock_pre_tick_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'hA8)) 
    clock_pre_tick_carry__1_i_5
       (.I0(clock_pre_tick0_carry__1_n_0),
        .I1(main_clock[37]),
        .I2(main_clock[36]),
        .O(clock_pre_tick_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'hA8)) 
    clock_pre_tick_carry__1_i_6
       (.I0(clock_pre_tick0_carry__1_n_0),
        .I1(main_clock[35]),
        .I2(main_clock[34]),
        .O(clock_pre_tick_carry__1_i_6_n_0));
  LUT3 #(
    .INIT(8'hA8)) 
    clock_pre_tick_carry__1_i_7
       (.I0(clock_pre_tick0_carry__1_n_0),
        .I1(main_clock[33]),
        .I2(main_clock[32]),
        .O(clock_pre_tick_carry__1_i_7_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    clock_pre_tick_carry__1_i_8
       (.I0(main_clock[45]),
        .I1(main_clock[44]),
        .I2(clock_pre_tick0_carry__1_n_0),
        .O(clock_pre_tick_carry__1_i_8_n_0));
  LUT3 #(
    .INIT(8'h18)) 
    clock_pre_tick_carry__1_i_9
       (.I0(main_clock[43]),
        .I1(main_clock[42]),
        .I2(clock_pre_tick0_carry__1_n_0),
        .O(clock_pre_tick_carry__1_i_9_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    clock_pre_tick_carry_i_1
       (.I0(main_clock[15]),
        .I1(clock_pre_tick0[15]),
        .I2(main_clock[14]),
        .I3(clock_pre_tick0[14]),
        .O(clock_pre_tick_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    clock_pre_tick_carry_i_10
       (.I0(clock_pre_tick0[13]),
        .I1(main_clock[13]),
        .I2(clock_pre_tick0[12]),
        .I3(main_clock[12]),
        .O(clock_pre_tick_carry_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    clock_pre_tick_carry_i_11
       (.I0(clock_pre_tick0[11]),
        .I1(main_clock[11]),
        .I2(clock_pre_tick0[10]),
        .I3(main_clock[10]),
        .O(clock_pre_tick_carry_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    clock_pre_tick_carry_i_12
       (.I0(clock_pre_tick0[9]),
        .I1(main_clock[9]),
        .I2(clock_pre_tick0[8]),
        .I3(main_clock[8]),
        .O(clock_pre_tick_carry_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    clock_pre_tick_carry_i_13
       (.I0(clock_pre_tick0[7]),
        .I1(main_clock[7]),
        .I2(clock_pre_tick0[6]),
        .I3(main_clock[6]),
        .O(clock_pre_tick_carry_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    clock_pre_tick_carry_i_14
       (.I0(clock_pre_tick0[5]),
        .I1(main_clock[5]),
        .I2(clock_pre_tick0[4]),
        .I3(main_clock[4]),
        .O(clock_pre_tick_carry_i_14_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    clock_pre_tick_carry_i_15
       (.I0(clock_pre_tick0[3]),
        .I1(main_clock[3]),
        .I2(clock_pre_tick0[2]),
        .I3(main_clock[2]),
        .O(clock_pre_tick_carry_i_15_n_0));
  LUT4 #(
    .INIT(16'h6006)) 
    clock_pre_tick_carry_i_16
       (.I0(main_clock[0]),
        .I1(\clock_period_reg_n_0_[0] ),
        .I2(clock_pre_tick0[1]),
        .I3(main_clock[1]),
        .O(clock_pre_tick_carry_i_16_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    clock_pre_tick_carry_i_2
       (.I0(main_clock[13]),
        .I1(clock_pre_tick0[13]),
        .I2(main_clock[12]),
        .I3(clock_pre_tick0[12]),
        .O(clock_pre_tick_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    clock_pre_tick_carry_i_3
       (.I0(main_clock[11]),
        .I1(clock_pre_tick0[11]),
        .I2(main_clock[10]),
        .I3(clock_pre_tick0[10]),
        .O(clock_pre_tick_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    clock_pre_tick_carry_i_4
       (.I0(main_clock[9]),
        .I1(clock_pre_tick0[9]),
        .I2(main_clock[8]),
        .I3(clock_pre_tick0[8]),
        .O(clock_pre_tick_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    clock_pre_tick_carry_i_5
       (.I0(main_clock[7]),
        .I1(clock_pre_tick0[7]),
        .I2(main_clock[6]),
        .I3(clock_pre_tick0[6]),
        .O(clock_pre_tick_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    clock_pre_tick_carry_i_6
       (.I0(main_clock[5]),
        .I1(clock_pre_tick0[5]),
        .I2(main_clock[4]),
        .I3(clock_pre_tick0[4]),
        .O(clock_pre_tick_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    clock_pre_tick_carry_i_7
       (.I0(main_clock[3]),
        .I1(clock_pre_tick0[3]),
        .I2(main_clock[2]),
        .I3(clock_pre_tick0[2]),
        .O(clock_pre_tick_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'hB222)) 
    clock_pre_tick_carry_i_8
       (.I0(main_clock[1]),
        .I1(clock_pre_tick0[1]),
        .I2(\clock_period_reg_n_0_[0] ),
        .I3(main_clock[0]),
        .O(clock_pre_tick_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    clock_pre_tick_carry_i_9
       (.I0(clock_pre_tick0[15]),
        .I1(main_clock[15]),
        .I2(clock_pre_tick0[14]),
        .I3(main_clock[14]),
        .O(clock_pre_tick_carry_i_9_n_0));
  LUT5 #(
    .INIT(32'h74777444)) 
    \coarse_delay[0]_i_1 
       (.I0(\coarse_delay_reg_n_0_[0] ),
        .I1(\coarse_delay[15]_i_7_n_0 ),
        .I2(instr_fifo_data[8]),
        .I3(\coarse_delay[14]_i_2_n_0 ),
        .I4(pulse_fifo_data[4]),
        .O(\coarse_delay[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \coarse_delay[10]_i_1 
       (.I0(\coarse_delay_reg_n_0_[10] ),
        .I1(\coarse_delay[10]_i_2_n_0 ),
        .I2(\coarse_delay[15]_i_7_n_0 ),
        .I3(instr_fifo_data[18]),
        .I4(\coarse_delay[14]_i_2_n_0 ),
        .I5(pulse_fifo_data[14]),
        .O(\coarse_delay[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \coarse_delay[10]_i_2 
       (.I0(\coarse_delay[9]_i_2_n_0 ),
        .I1(\coarse_delay_reg_n_0_[9] ),
        .I2(\coarse_delay_reg_n_0_[8] ),
        .O(\coarse_delay[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBAABAFF88AA8A00)) 
    \coarse_delay[11]_i_2 
       (.I0(instr_fifo_data[19]),
        .I1(state__0[3]),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .I5(pulse_fifo_data[15]),
        .O(\coarse_delay[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAA9A)) 
    \coarse_delay[11]_i_3 
       (.I0(\coarse_delay_reg_n_0_[11] ),
        .I1(\coarse_delay_reg_n_0_[10] ),
        .I2(\coarse_delay[9]_i_2_n_0 ),
        .I3(\coarse_delay_reg_n_0_[9] ),
        .I4(\coarse_delay_reg_n_0_[8] ),
        .O(\coarse_delay[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \coarse_delay[12]_i_1 
       (.I0(\coarse_delay_reg_n_0_[12] ),
        .I1(\coarse_delay[12]_i_2_n_0 ),
        .I2(\coarse_delay[15]_i_7_n_0 ),
        .I3(instr_fifo_data[20]),
        .I4(\coarse_delay[14]_i_2_n_0 ),
        .I5(pulse_fifo_data[16]),
        .O(\coarse_delay[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \coarse_delay[12]_i_2 
       (.I0(\coarse_delay_reg_n_0_[8] ),
        .I1(\coarse_delay_reg_n_0_[9] ),
        .I2(\coarse_delay[9]_i_2_n_0 ),
        .I3(\coarse_delay_reg_n_0_[11] ),
        .I4(\coarse_delay_reg_n_0_[10] ),
        .O(\coarse_delay[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \coarse_delay[13]_i_1 
       (.I0(\coarse_delay_reg_n_0_[13] ),
        .I1(\coarse_delay[13]_i_2_n_0 ),
        .I2(\coarse_delay[15]_i_7_n_0 ),
        .I3(instr_fifo_data[21]),
        .I4(\coarse_delay[14]_i_2_n_0 ),
        .I5(pulse_fifo_data[17]),
        .O(\coarse_delay[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \coarse_delay[13]_i_2 
       (.I0(\coarse_delay_reg_n_0_[10] ),
        .I1(\coarse_delay_reg_n_0_[11] ),
        .I2(\coarse_delay[9]_i_2_n_0 ),
        .I3(\coarse_delay_reg_n_0_[9] ),
        .I4(\coarse_delay_reg_n_0_[8] ),
        .I5(\coarse_delay_reg_n_0_[12] ),
        .O(\coarse_delay[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \coarse_delay[14]_i_1 
       (.I0(\coarse_delay_reg_n_0_[14] ),
        .I1(\coarse_delay[15]_i_6_n_0 ),
        .I2(\coarse_delay[15]_i_7_n_0 ),
        .I3(instr_fifo_data[22]),
        .I4(\coarse_delay[14]_i_2_n_0 ),
        .I5(pulse_fifo_data[18]),
        .O(\coarse_delay[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hAFB0)) 
    \coarse_delay[14]_i_2 
       (.I0(state__0[3]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .O(\coarse_delay[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAAE)) 
    \coarse_delay[15]_i_1 
       (.I0(\coarse_delay[15]_i_3_n_0 ),
        .I1(\coarse_delay[15]_i_4_n_0 ),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .I4(state__0[0]),
        .I5(\coarse_delay[15]_i_5_n_0 ),
        .O(coarse_delay));
  LUT5 #(
    .INIT(32'h9AFF9A00)) 
    \coarse_delay[15]_i_2 
       (.I0(\coarse_delay_reg_n_0_[15] ),
        .I1(\coarse_delay_reg_n_0_[14] ),
        .I2(\coarse_delay[15]_i_6_n_0 ),
        .I3(\coarse_delay[15]_i_7_n_0 ),
        .I4(\coarse_delay[15]_i_8_n_0 ),
        .O(\coarse_delay[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000C000000EC0000)) 
    \coarse_delay[15]_i_3 
       (.I0(clock_pre_tick),
        .I1(state__0[3]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(state__0[0]),
        .I5(\FSM_sequential_state[3]_i_7_n_0 ),
        .O(\coarse_delay[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \coarse_delay[15]_i_4 
       (.I0(state__0[2]),
        .I1(\FSM_sequential_state[3]_i_7_n_0 ),
        .O(\coarse_delay[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00000000005D0000)) 
    \coarse_delay[15]_i_5 
       (.I0(state__0[3]),
        .I1(clock_pre_tick),
        .I2(\FSM_sequential_state[3]_i_7_n_0 ),
        .I3(pulse_fifo_read_i_6_n_0),
        .I4(state__0[1]),
        .I5(\coarse_delay[15]_i_9_n_0 ),
        .O(\coarse_delay[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \coarse_delay[15]_i_6 
       (.I0(\FSM_sequential_state[3]_i_9_n_0 ),
        .I1(\coarse_delay[9]_i_2_n_0 ),
        .I2(\coarse_delay_reg_n_0_[9] ),
        .I3(\coarse_delay_reg_n_0_[8] ),
        .I4(\coarse_delay_reg_n_0_[12] ),
        .I5(\coarse_delay_reg_n_0_[13] ),
        .O(\coarse_delay[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFE7)) 
    \coarse_delay[15]_i_7 
       (.I0(state__0[0]),
        .I1(state__0[3]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .O(\coarse_delay[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hBBAABAFF88AA8A00)) 
    \coarse_delay[15]_i_8 
       (.I0(instr_fifo_data[23]),
        .I1(state__0[3]),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .I5(pulse_fifo_data[19]),
        .O(\coarse_delay[15]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h55455555)) 
    \coarse_delay[15]_i_9 
       (.I0(state__0[3]),
        .I1(instr_fifo_data[26]),
        .I2(instr_fifo_data[24]),
        .I3(instr_fifo_data[25]),
        .I4(\clock_period[23]_i_3_n_0 ),
        .O(\coarse_delay[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h9F909F9F9F909090)) 
    \coarse_delay[1]_i_1 
       (.I0(\coarse_delay_reg_n_0_[1] ),
        .I1(\coarse_delay_reg_n_0_[0] ),
        .I2(\coarse_delay[15]_i_7_n_0 ),
        .I3(instr_fifo_data[9]),
        .I4(\coarse_delay[14]_i_2_n_0 ),
        .I5(pulse_fifo_data[5]),
        .O(\coarse_delay[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9F909F9F9F909090)) 
    \coarse_delay[2]_i_1 
       (.I0(\coarse_delay[2]_i_2_n_0 ),
        .I1(\coarse_delay_reg_n_0_[2] ),
        .I2(\coarse_delay[15]_i_7_n_0 ),
        .I3(instr_fifo_data[10]),
        .I4(\coarse_delay[14]_i_2_n_0 ),
        .I5(pulse_fifo_data[6]),
        .O(\coarse_delay[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
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
        .I4(\coarse_delay[14]_i_2_n_0 ),
        .I5(pulse_fifo_data[7]),
        .O(\coarse_delay[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
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
       (.I0(\coarse_delay_reg_n_0_[4] ),
        .I1(\coarse_delay[4]_i_2_n_0 ),
        .I2(\coarse_delay[15]_i_7_n_0 ),
        .I3(instr_fifo_data[12]),
        .I4(\coarse_delay[14]_i_2_n_0 ),
        .I5(pulse_fifo_data[8]),
        .O(\coarse_delay[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
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
        .I4(\coarse_delay[14]_i_2_n_0 ),
        .I5(pulse_fifo_data[9]),
        .O(\coarse_delay[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
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
    .INIT(64'h6F606F6F6F606060)) 
    \coarse_delay[6]_i_1 
       (.I0(\coarse_delay_reg_n_0_[6] ),
        .I1(\coarse_delay[6]_i_2_n_0 ),
        .I2(\coarse_delay[15]_i_7_n_0 ),
        .I3(instr_fifo_data[14]),
        .I4(\coarse_delay[14]_i_2_n_0 ),
        .I5(pulse_fifo_data[10]),
        .O(\coarse_delay[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \coarse_delay[6]_i_2 
       (.I0(\coarse_delay_reg_n_0_[5] ),
        .I1(\coarse_delay_reg_n_0_[3] ),
        .I2(\coarse_delay_reg_n_0_[1] ),
        .I3(\coarse_delay_reg_n_0_[0] ),
        .I4(\coarse_delay_reg_n_0_[2] ),
        .I5(\coarse_delay_reg_n_0_[4] ),
        .O(\coarse_delay[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBAABAFF88AA8A00)) 
    \coarse_delay[7]_i_2 
       (.I0(instr_fifo_data[15]),
        .I1(state__0[3]),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .I4(state__0[1]),
        .I5(pulse_fifo_data[11]),
        .O(\coarse_delay[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \coarse_delay[7]_i_3 
       (.I0(\coarse_delay_reg_n_0_[7] ),
        .I1(\coarse_delay_reg_n_0_[6] ),
        .I2(\coarse_delay_reg_n_0_[5] ),
        .I3(\coarse_delay[4]_i_2_n_0 ),
        .I4(\coarse_delay_reg_n_0_[4] ),
        .O(\coarse_delay[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6F606F6F6F606060)) 
    \coarse_delay[8]_i_1 
       (.I0(\coarse_delay_reg_n_0_[8] ),
        .I1(\coarse_delay[9]_i_2_n_0 ),
        .I2(\coarse_delay[15]_i_7_n_0 ),
        .I3(instr_fifo_data[16]),
        .I4(\coarse_delay[14]_i_2_n_0 ),
        .I5(pulse_fifo_data[12]),
        .O(\coarse_delay[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h9AFF9A00)) 
    \coarse_delay[9]_i_1 
       (.I0(\coarse_delay_reg_n_0_[9] ),
        .I1(\coarse_delay_reg_n_0_[8] ),
        .I2(\coarse_delay[9]_i_2_n_0 ),
        .I3(\coarse_delay[15]_i_7_n_0 ),
        .I4(\coarse_delay[9]_i_3_n_0 ),
        .O(\coarse_delay[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \coarse_delay[9]_i_2 
       (.I0(\coarse_delay[4]_i_2_n_0 ),
        .I1(\coarse_delay_reg_n_0_[7] ),
        .I2(\coarse_delay_reg_n_0_[6] ),
        .I3(\coarse_delay_reg_n_0_[4] ),
        .I4(\coarse_delay_reg_n_0_[5] ),
        .O(\coarse_delay[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBAABAFF88AA8A00)) 
    \coarse_delay[9]_i_3 
       (.I0(instr_fifo_data[17]),
        .I1(state__0[3]),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .I4(state__0[1]),
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
        .D(\coarse_delay_reg[11]_i_1_n_0 ),
        .Q(\coarse_delay_reg_n_0_[11] ));
  MUXF7 \coarse_delay_reg[11]_i_1 
       (.I0(\coarse_delay[11]_i_2_n_0 ),
        .I1(\coarse_delay[11]_i_3_n_0 ),
        .O(\coarse_delay_reg[11]_i_1_n_0 ),
        .S(\coarse_delay[15]_i_7_n_0 ));
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
        .D(\coarse_delay_reg[7]_i_1_n_0 ),
        .Q(\coarse_delay_reg_n_0_[7] ));
  MUXF7 \coarse_delay_reg[7]_i_1 
       (.I0(\coarse_delay[7]_i_2_n_0 ),
        .I1(\coarse_delay[7]_i_3_n_0 ),
        .O(\coarse_delay_reg[7]_i_1_n_0 ),
        .S(\coarse_delay[15]_i_7_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0074)) 
    \dead_pulses[0]_i_1 
       (.I0(\dead_pulses_reg_n_0_[0] ),
        .I1(state__0[0]),
        .I2(instr_fifo_data[16]),
        .I3(state__0[3]),
        .O(\dead_pulses[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00009F90)) 
    \dead_pulses[3]_i_1 
       (.I0(\dead_pulses_reg_n_0_[3] ),
        .I1(\dead_pulses[3]_i_2_n_0 ),
        .I2(state__0[0]),
        .I3(instr_fifo_data[19]),
        .I4(state__0[3]),
        .O(\dead_pulses[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \dead_pulses[3]_i_2 
       (.I0(\dead_pulses_reg_n_0_[2] ),
        .I1(\dead_pulses_reg_n_0_[1] ),
        .I2(\dead_pulses_reg_n_0_[0] ),
        .O(\dead_pulses[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00009F90)) 
    \dead_pulses[4]_i_1 
       (.I0(\dead_pulses_reg_n_0_[4] ),
        .I1(\dead_pulses[5]_i_2_n_0 ),
        .I2(state__0[0]),
        .I3(instr_fifo_data[20]),
        .I4(state__0[3]),
        .O(\dead_pulses[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000A9FFA900)) 
    \dead_pulses[5]_i_1 
       (.I0(\dead_pulses_reg_n_0_[5] ),
        .I1(\dead_pulses[5]_i_2_n_0 ),
        .I2(\dead_pulses_reg_n_0_[4] ),
        .I3(state__0[0]),
        .I4(instr_fifo_data[21]),
        .I5(state__0[3]),
        .O(\dead_pulses[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \dead_pulses[5]_i_2 
       (.I0(\dead_pulses_reg_n_0_[3] ),
        .I1(\dead_pulses_reg_n_0_[0] ),
        .I2(\dead_pulses_reg_n_0_[1] ),
        .I3(\dead_pulses_reg_n_0_[2] ),
        .O(\dead_pulses[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h00009F90)) 
    \dead_pulses[6]_i_1 
       (.I0(\dead_pulses_reg_n_0_[6] ),
        .I1(\dead_pulses[7]_i_6_n_0 ),
        .I2(state__0[0]),
        .I3(instr_fifo_data[22]),
        .I4(state__0[3]),
        .O(\dead_pulses[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888888A888888)) 
    \dead_pulses[7]_i_1 
       (.I0(\dead_pulses[7]_i_3_n_0 ),
        .I1(\dead_pulses[7]_i_4_n_0 ),
        .I2(\dead_pulses[7]_i_5_n_0 ),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(\m_axis_tdata[240]_INST_0_i_1_n_0 ),
        .O(dead_pulses));
  LUT6 #(
    .INIT(64'h00000000A9FFA900)) 
    \dead_pulses[7]_i_2 
       (.I0(\dead_pulses_reg_n_0_[7] ),
        .I1(\dead_pulses[7]_i_6_n_0 ),
        .I2(\dead_pulses_reg_n_0_[6] ),
        .I3(state__0[0]),
        .I4(instr_fifo_data[23]),
        .I5(state__0[3]),
        .O(\dead_pulses[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \dead_pulses[7]_i_3 
       (.I0(state__0[1]),
        .I1(state__0[3]),
        .O(\dead_pulses[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \dead_pulses[7]_i_4 
       (.I0(instr_fifo_data[26]),
        .I1(instr_fifo_data[24]),
        .I2(instr_fifo_data[25]),
        .I3(\clock_period[23]_i_3_n_0 ),
        .I4(state__0[0]),
        .I5(state__0[2]),
        .O(\dead_pulses[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \dead_pulses[7]_i_5 
       (.I0(\dead_pulses[5]_i_2_n_0 ),
        .I1(\dead_pulses_reg_n_0_[7] ),
        .I2(\dead_pulses_reg_n_0_[6] ),
        .I3(\dead_pulses_reg_n_0_[4] ),
        .I4(\dead_pulses_reg_n_0_[5] ),
        .O(\dead_pulses[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \dead_pulses[7]_i_6 
       (.I0(\dead_pulses_reg_n_0_[5] ),
        .I1(\dead_pulses_reg_n_0_[3] ),
        .I2(\dead_pulses_reg_n_0_[0] ),
        .I3(\dead_pulses_reg_n_0_[1] ),
        .I4(\dead_pulses_reg_n_0_[2] ),
        .I5(\dead_pulses_reg_n_0_[4] ),
        .O(\dead_pulses[7]_i_6_n_0 ));
  FDCE \dead_pulses_reg[0] 
       (.C(clk),
        .CE(dead_pulses),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\dead_pulses[0]_i_1_n_0 ),
        .Q(\dead_pulses_reg_n_0_[0] ));
  FDCE \dead_pulses_reg[1] 
       (.C(clk),
        .CE(dead_pulses),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\dead_pulses[1]_i_1_n_0 ),
        .Q(\dead_pulses_reg_n_0_[1] ));
  FDCE \dead_pulses_reg[2] 
       (.C(clk),
        .CE(dead_pulses),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\dead_pulses[2]_i_1_n_0 ),
        .Q(\dead_pulses_reg_n_0_[2] ));
  FDCE \dead_pulses_reg[3] 
       (.C(clk),
        .CE(dead_pulses),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\dead_pulses[3]_i_1_n_0 ),
        .Q(\dead_pulses_reg_n_0_[3] ));
  FDCE \dead_pulses_reg[4] 
       (.C(clk),
        .CE(dead_pulses),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\dead_pulses[4]_i_1_n_0 ),
        .Q(\dead_pulses_reg_n_0_[4] ));
  FDCE \dead_pulses_reg[5] 
       (.C(clk),
        .CE(dead_pulses),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\dead_pulses[5]_i_1_n_0 ),
        .Q(\dead_pulses_reg_n_0_[5] ));
  FDCE \dead_pulses_reg[6] 
       (.C(clk),
        .CE(dead_pulses),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\dead_pulses[6]_i_1_n_0 ),
        .Q(\dead_pulses_reg_n_0_[6] ));
  FDCE \dead_pulses_reg[7] 
       (.C(clk),
        .CE(dead_pulses),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\dead_pulses[7]_i_2_n_0 ),
        .Q(\dead_pulses_reg_n_0_[7] ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \fine_delay[0]_i_1 
       (.I0(pulse_fifo_data[0]),
        .I1(state__0[1]),
        .I2(instr_fifo_data[0]),
        .I3(state__0[2]),
        .O(\fine_delay[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \fine_delay[1]_i_1 
       (.I0(pulse_fifo_data[1]),
        .I1(state__0[1]),
        .I2(instr_fifo_data[1]),
        .I3(state__0[2]),
        .O(\fine_delay[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h00E2)) 
    \fine_delay[2]_i_1 
       (.I0(pulse_fifo_data[2]),
        .I1(state__0[1]),
        .I2(instr_fifo_data[2]),
        .I3(state__0[2]),
        .O(\fine_delay[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5555555500000400)) 
    \fine_delay[3]_i_1 
       (.I0(\coarse_delay[15]_i_7_n_0 ),
        .I1(\clock_period[23]_i_3_n_0 ),
        .I2(instr_fifo_data[25]),
        .I3(instr_fifo_data[24]),
        .I4(instr_fifo_data[26]),
        .I5(state__0[3]),
        .O(\fine_delay[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
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
        .CE(\fine_delay[3]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\fine_delay[0]_i_1_n_0 ),
        .Q(m_axis_tdata_int1[4]));
  FDCE \fine_delay_reg[1] 
       (.C(clk),
        .CE(\fine_delay[3]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\fine_delay[1]_i_1_n_0 ),
        .Q(m_axis_tdata_int1[5]));
  FDCE \fine_delay_reg[2] 
       (.C(clk),
        .CE(\fine_delay[3]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\fine_delay[2]_i_1_n_0 ),
        .Q(m_axis_tdata_int1[6]));
  FDCE \fine_delay_reg[3] 
       (.C(clk),
        .CE(\fine_delay[3]_i_1_n_0 ),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\fine_delay[3]_i_2_n_0 ),
        .Q(m_axis_tdata_int1[7]));
  LUT6 #(
    .INIT(64'hFFFFFFF100000001)) 
    instr_fifo_read_i_1
       (.I0(state__0[0]),
        .I1(instr_fifo_empty),
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
    .INIT(64'hFFFFFFFF0000D57F)) 
    is_phase_meas_mode_i_2
       (.I0(\clock_period[23]_i_3_n_0 ),
        .I1(instr_fifo_data[25]),
        .I2(instr_fifo_data[24]),
        .I3(instr_fifo_data[26]),
        .I4(state__0[2]),
        .I5(is_phase_meas_mode_i_3_n_0),
        .O(is_phase_meas_mode_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[14] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[112]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[126] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[128]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[142] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[144]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[158] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[160]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[174] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[30] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[176]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[190] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[192]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[206] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[208]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[222] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[224]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[238] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \m_axis_tdata[240]_INST_0 
       (.I0(\m_axis_tdata[240]_INST_0_i_1_n_0 ),
        .I1(is_phase_meas_mode_reg_n_0),
        .I2(\m_axis_tdata_int_reg_n_0_[254] ),
        .O(m_axis_tdata[15]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \m_axis_tdata[240]_INST_0_i_1 
       (.I0(\m_axis_tdata[240]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[240]_INST_0_i_3_n_0 ),
        .I2(\m_axis_tdata[240]_INST_0_i_4_n_0 ),
        .I3(\m_axis_tdata[240]_INST_0_i_5_n_0 ),
        .I4(\m_axis_tdata[240]_INST_0_i_6_n_0 ),
        .O(\m_axis_tdata[240]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[240]_INST_0_i_10 
       (.I0(main_clock[29]),
        .I1(main_clock[28]),
        .I2(main_clock[33]),
        .I3(main_clock[32]),
        .O(\m_axis_tdata[240]_INST_0_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[240]_INST_0_i_11 
       (.I0(main_clock[31]),
        .I1(main_clock[30]),
        .I2(main_clock[45]),
        .I3(main_clock[44]),
        .O(\m_axis_tdata[240]_INST_0_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[240]_INST_0_i_12 
       (.I0(main_clock[21]),
        .I1(main_clock[19]),
        .I2(main_clock[23]),
        .I3(main_clock[8]),
        .O(\m_axis_tdata[240]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \m_axis_tdata[240]_INST_0_i_2 
       (.I0(main_clock[0]),
        .I1(main_clock[20]),
        .I2(main_clock[10]),
        .I3(main_clock[12]),
        .I4(\m_axis_tdata[240]_INST_0_i_7_n_0 ),
        .O(\m_axis_tdata[240]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \m_axis_tdata[240]_INST_0_i_3 
       (.I0(main_clock[9]),
        .I1(main_clock[14]),
        .I2(main_clock[4]),
        .I3(main_clock[5]),
        .I4(\m_axis_tdata[240]_INST_0_i_8_n_0 ),
        .O(\m_axis_tdata[240]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_axis_tdata[240]_INST_0_i_4 
       (.I0(\m_axis_tdata[240]_INST_0_i_9_n_0 ),
        .I1(\m_axis_tdata[240]_INST_0_i_10_n_0 ),
        .I2(main_clock[35]),
        .I3(main_clock[34]),
        .I4(main_clock[39]),
        .I5(main_clock[38]),
        .O(\m_axis_tdata[240]_INST_0_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \m_axis_tdata[240]_INST_0_i_5 
       (.I0(main_clock[42]),
        .I1(main_clock[43]),
        .I2(main_clock[36]),
        .I3(main_clock[37]),
        .I4(\m_axis_tdata[240]_INST_0_i_11_n_0 ),
        .O(\m_axis_tdata[240]_INST_0_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \m_axis_tdata[240]_INST_0_i_6 
       (.I0(main_clock[15]),
        .I1(main_clock[17]),
        .I2(main_clock[2]),
        .I3(main_clock[11]),
        .I4(\m_axis_tdata[240]_INST_0_i_12_n_0 ),
        .O(\m_axis_tdata[240]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[240]_INST_0_i_7 
       (.I0(main_clock[7]),
        .I1(main_clock[6]),
        .I2(main_clock[13]),
        .I3(main_clock[1]),
        .O(\m_axis_tdata[240]_INST_0_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_axis_tdata[240]_INST_0_i_8 
       (.I0(main_clock[18]),
        .I1(main_clock[16]),
        .I2(main_clock[22]),
        .I3(main_clock[3]),
        .O(\m_axis_tdata[240]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_axis_tdata[240]_INST_0_i_9 
       (.I0(main_clock[27]),
        .I1(main_clock[26]),
        .I2(main_clock[40]),
        .I3(main_clock[41]),
        .I4(main_clock[24]),
        .I5(main_clock[25]),
        .O(\m_axis_tdata[240]_INST_0_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[32]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[46] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[48]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[62] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[64]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[78] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[80]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[94] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tdata[96]_INST_0 
       (.I0(\m_axis_tdata_int_reg_n_0_[110] ),
        .I1(is_phase_meas_mode_reg_n_0),
        .O(m_axis_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \m_axis_tdata_int[110]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[6]),
        .I3(\m_axis_tdata_int[126]_i_2_n_0 ),
        .O(\m_axis_tdata_int[110]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \m_axis_tdata_int[126]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[6]),
        .I3(\m_axis_tdata_int[126]_i_2_n_0 ),
        .O(\m_axis_tdata_int[126]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h8B9BFFFF)) 
    \m_axis_tdata_int[126]_i_2 
       (.I0(state__0[3]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .I4(m_axis_tdata_int1[7]),
        .O(\m_axis_tdata_int[126]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_axis_tdata_int[142]_i_1 
       (.I0(\m_axis_tdata_int[238]_i_2_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .O(\m_axis_tdata_int[142]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \m_axis_tdata_int[14]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[6]),
        .I3(\m_axis_tdata_int[126]_i_2_n_0 ),
        .O(\m_axis_tdata_int[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \m_axis_tdata_int[158]_i_1 
       (.I0(\m_axis_tdata_int[238]_i_2_n_0 ),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .O(\m_axis_tdata_int[158]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \m_axis_tdata_int[174]_i_1 
       (.I0(\m_axis_tdata_int[238]_i_2_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .O(\m_axis_tdata_int[174]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0200)) 
    \m_axis_tdata_int[190]_i_1 
       (.I0(\m_axis_tdata_int[238]_i_2_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .O(\m_axis_tdata_int[190]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \m_axis_tdata_int[206]_i_1 
       (.I0(\m_axis_tdata_int[238]_i_2_n_0 ),
        .I1(m_axis_tdata_int1[5]),
        .I2(m_axis_tdata_int1[4]),
        .I3(m_axis_tdata_int1[6]),
        .O(\m_axis_tdata_int[206]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \m_axis_tdata_int[222]_i_1 
       (.I0(\m_axis_tdata_int[238]_i_2_n_0 ),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .I3(m_axis_tdata_int1[6]),
        .O(\m_axis_tdata_int[222]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \m_axis_tdata_int[238]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[6]),
        .I3(\m_axis_tdata_int[238]_i_2_n_0 ),
        .O(\m_axis_tdata_int[238]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h15101410)) 
    \m_axis_tdata_int[238]_i_2 
       (.I0(m_axis_tdata_int1[7]),
        .I1(state__0[3]),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .O(\m_axis_tdata_int[238]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0700FFFF03000300)) 
    \m_axis_tdata_int[254]_i_1 
       (.I0(state__0[3]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(\m_axis_tdata_int[254]_i_3_n_0 ),
        .I4(\m_axis_tdata_int[254]_i_4_n_0 ),
        .I5(\FSM_sequential_state[3]_i_7_n_0 ),
        .O(m_axis_tdata_int));
  LUT6 #(
    .INIT(64'h00220F2F00000200)) 
    \m_axis_tdata_int[254]_i_2 
       (.I0(\m_axis_tdata_int[254]_i_5_n_0 ),
        .I1(m_axis_tdata_int1[7]),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .I4(state__0[3]),
        .I5(state__0[1]),
        .O(\m_axis_tdata_int[254]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F8F0F0F0F8F0FFF)) 
    \m_axis_tdata_int[254]_i_3 
       (.I0(\FSM_sequential_state[3]_i_7_n_0 ),
        .I1(clock_pre_tick),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(state__0[3]),
        .I5(rst_clock_i_2_n_0),
        .O(\m_axis_tdata_int[254]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFF1FFF)) 
    \m_axis_tdata_int[254]_i_4 
       (.I0(state__0[3]),
        .I1(clock_pre_tick),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(state__0[2]),
        .O(\m_axis_tdata_int[254]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \m_axis_tdata_int[254]_i_5 
       (.I0(m_axis_tdata_int1[6]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[5]),
        .O(\m_axis_tdata_int[254]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \m_axis_tdata_int[30]_i_1 
       (.I0(m_axis_tdata_int1[4]),
        .I1(m_axis_tdata_int1[5]),
        .I2(m_axis_tdata_int1[6]),
        .I3(\m_axis_tdata_int[126]_i_2_n_0 ),
        .O(\m_axis_tdata_int[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \m_axis_tdata_int[46]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[6]),
        .I3(\m_axis_tdata_int[126]_i_2_n_0 ),
        .O(\m_axis_tdata_int[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \m_axis_tdata_int[62]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[6]),
        .I3(\m_axis_tdata_int[126]_i_2_n_0 ),
        .O(\m_axis_tdata_int[62]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \m_axis_tdata_int[78]_i_1 
       (.I0(m_axis_tdata_int1[5]),
        .I1(m_axis_tdata_int1[4]),
        .I2(m_axis_tdata_int1[6]),
        .I3(\m_axis_tdata_int[126]_i_2_n_0 ),
        .O(\m_axis_tdata_int[78]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \m_axis_tdata_int[94]_i_1 
       (.I0(m_axis_tdata_int1[4]),
        .I1(m_axis_tdata_int1[5]),
        .I2(m_axis_tdata_int1[6]),
        .I3(\m_axis_tdata_int[126]_i_2_n_0 ),
        .O(\m_axis_tdata_int[94]_i_1_n_0 ));
  FDCE \m_axis_tdata_int_reg[110] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\m_axis_tdata_int[110]_i_1_n_0 ),
        .Q(\m_axis_tdata_int_reg_n_0_[110] ));
  FDCE \m_axis_tdata_int_reg[126] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\m_axis_tdata_int[126]_i_1_n_0 ),
        .Q(\m_axis_tdata_int_reg_n_0_[126] ));
  FDCE \m_axis_tdata_int_reg[142] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\m_axis_tdata_int[142]_i_1_n_0 ),
        .Q(\m_axis_tdata_int_reg_n_0_[142] ));
  FDCE \m_axis_tdata_int_reg[14] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\m_axis_tdata_int[14]_i_1_n_0 ),
        .Q(\m_axis_tdata_int_reg_n_0_[14] ));
  FDCE \m_axis_tdata_int_reg[158] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\m_axis_tdata_int[158]_i_1_n_0 ),
        .Q(\m_axis_tdata_int_reg_n_0_[158] ));
  FDCE \m_axis_tdata_int_reg[174] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\m_axis_tdata_int[174]_i_1_n_0 ),
        .Q(\m_axis_tdata_int_reg_n_0_[174] ));
  FDCE \m_axis_tdata_int_reg[190] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\m_axis_tdata_int[190]_i_1_n_0 ),
        .Q(\m_axis_tdata_int_reg_n_0_[190] ));
  FDCE \m_axis_tdata_int_reg[206] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\m_axis_tdata_int[206]_i_1_n_0 ),
        .Q(\m_axis_tdata_int_reg_n_0_[206] ));
  FDCE \m_axis_tdata_int_reg[222] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\m_axis_tdata_int[222]_i_1_n_0 ),
        .Q(\m_axis_tdata_int_reg_n_0_[222] ));
  FDCE \m_axis_tdata_int_reg[238] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\m_axis_tdata_int[238]_i_1_n_0 ),
        .Q(\m_axis_tdata_int_reg_n_0_[238] ));
  FDCE \m_axis_tdata_int_reg[254] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\m_axis_tdata_int[254]_i_2_n_0 ),
        .Q(\m_axis_tdata_int_reg_n_0_[254] ));
  FDCE \m_axis_tdata_int_reg[30] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\m_axis_tdata_int[30]_i_1_n_0 ),
        .Q(\m_axis_tdata_int_reg_n_0_[30] ));
  FDCE \m_axis_tdata_int_reg[46] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\m_axis_tdata_int[46]_i_1_n_0 ),
        .Q(\m_axis_tdata_int_reg_n_0_[46] ));
  FDCE \m_axis_tdata_int_reg[62] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\m_axis_tdata_int[62]_i_1_n_0 ),
        .Q(\m_axis_tdata_int_reg_n_0_[62] ));
  FDCE \m_axis_tdata_int_reg[78] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\m_axis_tdata_int[78]_i_1_n_0 ),
        .Q(\m_axis_tdata_int_reg_n_0_[78] ));
  FDCE \m_axis_tdata_int_reg[94] 
       (.C(clk),
        .CE(m_axis_tdata_int),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(\m_axis_tdata_int[94]_i_1_n_0 ),
        .Q(\m_axis_tdata_int_reg_n_0_[94] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 main_clock0_carry
       (.CI(main_clock[0]),
        .CI_TOP(1'b0),
        .CO({main_clock0_carry_n_0,main_clock0_carry_n_1,main_clock0_carry_n_2,main_clock0_carry_n_3,main_clock0_carry_n_4,main_clock0_carry_n_5,main_clock0_carry_n_6,main_clock0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(main_clock0[8:1]),
        .S(main_clock[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 main_clock0_carry__0
       (.CI(main_clock0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({main_clock0_carry__0_n_0,main_clock0_carry__0_n_1,main_clock0_carry__0_n_2,main_clock0_carry__0_n_3,main_clock0_carry__0_n_4,main_clock0_carry__0_n_5,main_clock0_carry__0_n_6,main_clock0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(main_clock0[16:9]),
        .S(main_clock[16:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 main_clock0_carry__1
       (.CI(main_clock0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({main_clock0_carry__1_n_0,main_clock0_carry__1_n_1,main_clock0_carry__1_n_2,main_clock0_carry__1_n_3,main_clock0_carry__1_n_4,main_clock0_carry__1_n_5,main_clock0_carry__1_n_6,main_clock0_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(main_clock0[24:17]),
        .S(main_clock[24:17]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 main_clock0_carry__2
       (.CI(main_clock0_carry__1_n_0),
        .CI_TOP(1'b0),
        .CO({main_clock0_carry__2_n_0,main_clock0_carry__2_n_1,main_clock0_carry__2_n_2,main_clock0_carry__2_n_3,main_clock0_carry__2_n_4,main_clock0_carry__2_n_5,main_clock0_carry__2_n_6,main_clock0_carry__2_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(main_clock0[32:25]),
        .S(main_clock[32:25]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 main_clock0_carry__3
       (.CI(main_clock0_carry__2_n_0),
        .CI_TOP(1'b0),
        .CO({main_clock0_carry__3_n_0,main_clock0_carry__3_n_1,main_clock0_carry__3_n_2,main_clock0_carry__3_n_3,main_clock0_carry__3_n_4,main_clock0_carry__3_n_5,main_clock0_carry__3_n_6,main_clock0_carry__3_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(main_clock0[40:33]),
        .S(main_clock[40:33]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 main_clock0_carry__4
       (.CI(main_clock0_carry__3_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_main_clock0_carry__4_CO_UNCONNECTED[7:4],main_clock0_carry__4_n_4,main_clock0_carry__4_n_5,main_clock0_carry__4_n_6,main_clock0_carry__4_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_main_clock0_carry__4_O_UNCONNECTED[7:5],main_clock0[45:41]}),
        .S({1'b0,1'b0,1'b0,main_clock[45:41]}));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \main_clock[0]_i_1 
       (.I0(main_clock[0]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[10]_i_1 
       (.I0(main_clock0[10]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[11]_i_1 
       (.I0(main_clock0[11]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[12]_i_1 
       (.I0(main_clock0[12]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[13]_i_1 
       (.I0(main_clock0[13]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[14]_i_1 
       (.I0(main_clock0[14]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[15]_i_1 
       (.I0(main_clock0[15]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[16]_i_1 
       (.I0(main_clock0[16]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[17]_i_1 
       (.I0(main_clock0[17]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[18]_i_1 
       (.I0(main_clock0[18]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[19]_i_1 
       (.I0(main_clock0[19]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[1]_i_1 
       (.I0(main_clock0[1]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[20]_i_1 
       (.I0(main_clock0[20]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[21]_i_1 
       (.I0(main_clock0[21]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[22]_i_1 
       (.I0(main_clock0[22]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[23]_i_1 
       (.I0(main_clock0[23]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[24]_i_1 
       (.I0(main_clock0[24]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[25]_i_1 
       (.I0(main_clock0[25]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[26]_i_1 
       (.I0(main_clock0[26]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[27]_i_1 
       (.I0(main_clock0[27]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[28]_i_1 
       (.I0(main_clock0[28]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[29]_i_1 
       (.I0(main_clock0[29]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[2]_i_1 
       (.I0(main_clock0[2]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[30]_i_1 
       (.I0(main_clock0[30]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[30]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[31]_i_1 
       (.I0(main_clock0[31]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[32]_i_1 
       (.I0(main_clock0[32]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[32]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[33]_i_1 
       (.I0(main_clock0[33]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[33]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[34]_i_1 
       (.I0(main_clock0[34]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[34]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[35]_i_1 
       (.I0(main_clock0[35]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[35]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[36]_i_1 
       (.I0(main_clock0[36]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[36]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[37]_i_1 
       (.I0(main_clock0[37]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[37]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[38]_i_1 
       (.I0(main_clock0[38]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[38]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[39]_i_1 
       (.I0(main_clock0[39]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[39]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[3]_i_1 
       (.I0(main_clock0[3]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[40]_i_1 
       (.I0(main_clock0[40]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[40]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[41]_i_1 
       (.I0(main_clock0[41]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[41]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[42]_i_1 
       (.I0(main_clock0[42]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[42]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[43]_i_1 
       (.I0(main_clock0[43]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[43]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[44]_i_1 
       (.I0(main_clock0[44]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[44]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[45]_i_1 
       (.I0(main_clock0[45]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[45]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[4]_i_1 
       (.I0(main_clock0[4]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[5]_i_1 
       (.I0(main_clock0[5]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[6]_i_1 
       (.I0(main_clock0[6]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[7]_i_1 
       (.I0(main_clock0[7]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \main_clock[8]_i_1 
       (.I0(main_clock0[8]),
        .I1(rst_clock_reg_n_0),
        .I2(clock_pre_tick),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
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
  FDCE \main_clock_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(p_0_in[9]),
        .Q(main_clock[9]));
  LUT6 #(
    .INIT(64'hFFFF54FF00005400)) 
    pulse_fifo_read_i_1
       (.I0(pulse_fifo_read_i_2_n_0),
        .I1(pulse_fifo_read_i_3_n_0),
        .I2(pulse_fifo_read_i_4_n_0),
        .I3(rst),
        .I4(pulse_fifo_read_i_5_n_0),
        .I5(pulse_fifo_read),
        .O(pulse_fifo_read_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    pulse_fifo_read_i_10
       (.I0(\dead_pulses_reg_n_0_[5] ),
        .I1(\dead_pulses_reg_n_0_[4] ),
        .I2(\dead_pulses_reg_n_0_[6] ),
        .I3(\dead_pulses_reg_n_0_[7] ),
        .I4(\dead_pulses[5]_i_2_n_0 ),
        .I5(state__0[2]),
        .O(pulse_fifo_read_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    pulse_fifo_read_i_11
       (.I0(\coarse_delay_reg_n_0_[11] ),
        .I1(\coarse_delay_reg_n_0_[10] ),
        .I2(\coarse_delay_reg_n_0_[8] ),
        .I3(\coarse_delay_reg_n_0_[3] ),
        .O(pulse_fifo_read_i_11_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    pulse_fifo_read_i_12
       (.I0(\coarse_delay_reg_n_0_[5] ),
        .I1(\coarse_delay_reg_n_0_[4] ),
        .I2(\coarse_delay_reg_n_0_[9] ),
        .I3(pulse_fifo_empty),
        .O(pulse_fifo_read_i_12_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    pulse_fifo_read_i_13
       (.I0(\coarse_delay_reg_n_0_[7] ),
        .I1(\coarse_delay_reg_n_0_[6] ),
        .O(pulse_fifo_read_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pulse_fifo_read_i_2
       (.I0(state__0[3]),
        .I1(state__0[2]),
        .O(pulse_fifo_read_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pulse_fifo_read_i_3
       (.I0(clock_pre_tick),
        .I1(state__0[1]),
        .O(pulse_fifo_read_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pulse_fifo_read_i_4
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .O(pulse_fifo_read_i_4_n_0));
  LUT6 #(
    .INIT(64'hAE00EE00AE00EEEE)) 
    pulse_fifo_read_i_5
       (.I0(pulse_fifo_read_i_6_n_0),
        .I1(pulse_fifo_read_i_7_n_0),
        .I2(clock_pre_tick),
        .I3(pulse_fifo_read_i_8_n_0),
        .I4(pulse_fifo_read_i_9_n_0),
        .I5(pulse_fifo_read_i_10_n_0),
        .O(pulse_fifo_read_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'hE)) 
    pulse_fifo_read_i_6
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .O(pulse_fifo_read_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hB)) 
    pulse_fifo_read_i_7
       (.I0(state__0[1]),
        .I1(state__0[3]),
        .O(pulse_fifo_read_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8FFF)) 
    pulse_fifo_read_i_8
       (.I0(state__0[2]),
        .I1(state__0[3]),
        .I2(state__0[1]),
        .I3(state__0[0]),
        .O(pulse_fifo_read_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    pulse_fifo_read_i_9
       (.I0(pulse_fifo_read_i_11_n_0),
        .I1(pulse_fifo_read_i_12_n_0),
        .I2(\FSM_sequential_state[3]_i_10_n_0 ),
        .I3(state__0[3]),
        .I4(pulse_fifo_read_i_13_n_0),
        .I5(\coarse_delay[3]_i_2_n_0 ),
        .O(pulse_fifo_read_i_9_n_0));
  FDRE pulse_fifo_read_reg
       (.C(clk),
        .CE(1'b1),
        .D(pulse_fifo_read_i_1_n_0),
        .Q(pulse_fifo_read),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h40E040EF40EF40EF)) 
    \pulses_to_send[0]_i_1 
       (.I0(\pulses_to_send[0]_i_2_n_0 ),
        .I1(instr_fifo_data[0]),
        .I2(\clock_period[23]_i_4_n_0 ),
        .I3(\pulses_to_send_reg_n_0_[0] ),
        .I4(state__0[2]),
        .I5(state__0[3]),
        .O(pulses_to_send[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hD7FF)) 
    \pulses_to_send[0]_i_2 
       (.I0(\clock_period[23]_i_3_n_0 ),
        .I1(instr_fifo_data[25]),
        .I2(instr_fifo_data[24]),
        .I3(instr_fifo_data[26]),
        .O(\pulses_to_send[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF066600000666)) 
    \pulses_to_send[10]_i_1 
       (.I0(\pulses_to_send_reg_n_0_[10] ),
        .I1(\pulses_to_send[11]_i_2_n_0 ),
        .I2(state__0[2]),
        .I3(state__0[3]),
        .I4(\pulses_to_send[15]_i_4_n_0 ),
        .I5(instr_fifo_data[10]),
        .O(pulses_to_send[10]));
  LUT6 #(
    .INIT(64'hFFFFA600A600A600)) 
    \pulses_to_send[11]_i_1 
       (.I0(\pulses_to_send_reg_n_0_[11] ),
        .I1(\pulses_to_send[11]_i_2_n_0 ),
        .I2(\pulses_to_send_reg_n_0_[10] ),
        .I3(\pulses_to_send[14]_i_3_n_0 ),
        .I4(\pulses_to_send[15]_i_4_n_0 ),
        .I5(instr_fifo_data[11]),
        .O(pulses_to_send[11]));
  LUT4 #(
    .INIT(16'h0008)) 
    \pulses_to_send[11]_i_2 
       (.I0(\pulses_to_send[12]_i_3_n_0 ),
        .I1(\pulses_to_send[5]_i_2_n_0 ),
        .I2(\pulses_to_send_reg_n_0_[9] ),
        .I3(\pulses_to_send_reg_n_0_[8] ),
        .O(\pulses_to_send[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF066600000666)) 
    \pulses_to_send[12]_i_1 
       (.I0(\pulses_to_send_reg_n_0_[12] ),
        .I1(\pulses_to_send[12]_i_2_n_0 ),
        .I2(state__0[2]),
        .I3(state__0[3]),
        .I4(\pulses_to_send[15]_i_4_n_0 ),
        .I5(instr_fifo_data[12]),
        .O(pulses_to_send[12]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \pulses_to_send[12]_i_2 
       (.I0(\pulses_to_send_reg_n_0_[8] ),
        .I1(\pulses_to_send_reg_n_0_[9] ),
        .I2(\pulses_to_send[5]_i_2_n_0 ),
        .I3(\pulses_to_send[12]_i_3_n_0 ),
        .I4(\pulses_to_send_reg_n_0_[11] ),
        .I5(\pulses_to_send_reg_n_0_[10] ),
        .O(\pulses_to_send[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \pulses_to_send[12]_i_3 
       (.I0(\pulses_to_send_reg_n_0_[5] ),
        .I1(\pulses_to_send_reg_n_0_[4] ),
        .I2(\pulses_to_send_reg_n_0_[7] ),
        .I3(\pulses_to_send_reg_n_0_[6] ),
        .O(\pulses_to_send[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF066600000666)) 
    \pulses_to_send[13]_i_1 
       (.I0(\pulses_to_send_reg_n_0_[13] ),
        .I1(\pulses_to_send[14]_i_2_n_0 ),
        .I2(state__0[2]),
        .I3(state__0[3]),
        .I4(\pulses_to_send[15]_i_4_n_0 ),
        .I5(instr_fifo_data[13]),
        .O(pulses_to_send[13]));
  LUT6 #(
    .INIT(64'hFFFF9A009A009A00)) 
    \pulses_to_send[14]_i_1 
       (.I0(\pulses_to_send_reg_n_0_[14] ),
        .I1(\pulses_to_send_reg_n_0_[13] ),
        .I2(\pulses_to_send[14]_i_2_n_0 ),
        .I3(\pulses_to_send[14]_i_3_n_0 ),
        .I4(\pulses_to_send[15]_i_4_n_0 ),
        .I5(instr_fifo_data[14]),
        .O(pulses_to_send[14]));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \pulses_to_send[14]_i_2 
       (.I0(\pulses_to_send_reg_n_0_[10] ),
        .I1(\pulses_to_send_reg_n_0_[11] ),
        .I2(\pulses_to_send[9]_i_2_n_0 ),
        .I3(\pulses_to_send_reg_n_0_[9] ),
        .I4(\pulses_to_send_reg_n_0_[8] ),
        .I5(\pulses_to_send_reg_n_0_[12] ),
        .O(\pulses_to_send[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \pulses_to_send[14]_i_3 
       (.I0(state__0[2]),
        .I1(state__0[3]),
        .I2(\pulses_to_send[15]_i_4_n_0 ),
        .O(\pulses_to_send[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000004)) 
    \pulses_to_send[15]_i_1 
       (.I0(\m_axis_tdata[240]_INST_0_i_1_n_0 ),
        .I1(rst),
        .I2(pulse_fifo_read_i_4_n_0),
        .I3(\pulses_to_send[15]_i_3_n_0 ),
        .I4(\FSM_sequential_state[3]_i_5_n_0 ),
        .I5(\pulses_to_send[15]_i_4_n_0 ),
        .O(\pulses_to_send[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF077000000770)) 
    \pulses_to_send[15]_i_2 
       (.I0(state__0[2]),
        .I1(state__0[3]),
        .I2(\pulses_to_send_reg_n_0_[15] ),
        .I3(\pulses_to_send[15]_i_5_n_0 ),
        .I4(\pulses_to_send[15]_i_4_n_0 ),
        .I5(instr_fifo_data[15]),
        .O(pulses_to_send[15]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFF1F)) 
    \pulses_to_send[15]_i_3 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(state__0[3]),
        .O(\pulses_to_send[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h08800000)) 
    \pulses_to_send[15]_i_4 
       (.I0(\clock_period[23]_i_4_n_0 ),
        .I1(instr_fifo_data[26]),
        .I2(instr_fifo_data[24]),
        .I3(instr_fifo_data[25]),
        .I4(\clock_period[23]_i_3_n_0 ),
        .O(\pulses_to_send[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \pulses_to_send[15]_i_5 
       (.I0(\pulses_to_send_reg_n_0_[12] ),
        .I1(\pulses_to_send[12]_i_2_n_0 ),
        .I2(\pulses_to_send_reg_n_0_[14] ),
        .I3(\pulses_to_send_reg_n_0_[13] ),
        .O(\pulses_to_send[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00C3C3C3)) 
    \pulses_to_send[1]_i_1 
       (.I0(instr_fifo_data[1]),
        .I1(\pulses_to_send_reg_n_0_[0] ),
        .I2(\pulses_to_send_reg_n_0_[1] ),
        .I3(state__0[2]),
        .I4(state__0[3]),
        .I5(\pulses_to_send[15]_i_4_n_0 ),
        .O(pulses_to_send[1]));
  LUT6 #(
    .INIT(64'hFFFFA900A900A900)) 
    \pulses_to_send[2]_i_1 
       (.I0(\pulses_to_send_reg_n_0_[2] ),
        .I1(\pulses_to_send_reg_n_0_[1] ),
        .I2(\pulses_to_send_reg_n_0_[0] ),
        .I3(\pulses_to_send[14]_i_3_n_0 ),
        .I4(\pulses_to_send[15]_i_4_n_0 ),
        .I5(instr_fifo_data[2]),
        .O(pulses_to_send[2]));
  LUT6 #(
    .INIT(64'hFFFFA900A900A900)) 
    \pulses_to_send[3]_i_1 
       (.I0(\pulses_to_send_reg_n_0_[3] ),
        .I1(\pulses_to_send[3]_i_2_n_0 ),
        .I2(\pulses_to_send_reg_n_0_[2] ),
        .I3(\pulses_to_send[14]_i_3_n_0 ),
        .I4(\pulses_to_send[15]_i_4_n_0 ),
        .I5(instr_fifo_data[3]),
        .O(pulses_to_send[3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \pulses_to_send[3]_i_2 
       (.I0(\pulses_to_send_reg_n_0_[0] ),
        .I1(\pulses_to_send_reg_n_0_[1] ),
        .O(\pulses_to_send[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF066600000666)) 
    \pulses_to_send[4]_i_1 
       (.I0(\pulses_to_send_reg_n_0_[4] ),
        .I1(\pulses_to_send[5]_i_2_n_0 ),
        .I2(state__0[2]),
        .I3(state__0[3]),
        .I4(\pulses_to_send[15]_i_4_n_0 ),
        .I5(instr_fifo_data[4]),
        .O(pulses_to_send[4]));
  LUT6 #(
    .INIT(64'hFFFFA600A600A600)) 
    \pulses_to_send[5]_i_1 
       (.I0(\pulses_to_send_reg_n_0_[5] ),
        .I1(\pulses_to_send[5]_i_2_n_0 ),
        .I2(\pulses_to_send_reg_n_0_[4] ),
        .I3(\pulses_to_send[14]_i_3_n_0 ),
        .I4(\pulses_to_send[15]_i_4_n_0 ),
        .I5(instr_fifo_data[5]),
        .O(pulses_to_send[5]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \pulses_to_send[5]_i_2 
       (.I0(\pulses_to_send_reg_n_0_[1] ),
        .I1(\pulses_to_send_reg_n_0_[0] ),
        .I2(\pulses_to_send_reg_n_0_[3] ),
        .I3(\pulses_to_send_reg_n_0_[2] ),
        .O(\pulses_to_send[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF099900000999)) 
    \pulses_to_send[6]_i_1 
       (.I0(\pulses_to_send_reg_n_0_[6] ),
        .I1(\pulses_to_send[7]_i_2_n_0 ),
        .I2(state__0[2]),
        .I3(state__0[3]),
        .I4(\pulses_to_send[15]_i_4_n_0 ),
        .I5(instr_fifo_data[6]),
        .O(pulses_to_send[6]));
  LUT6 #(
    .INIT(64'hFFFFA900A900A900)) 
    \pulses_to_send[7]_i_1 
       (.I0(\pulses_to_send_reg_n_0_[7] ),
        .I1(\pulses_to_send[7]_i_2_n_0 ),
        .I2(\pulses_to_send_reg_n_0_[6] ),
        .I3(\pulses_to_send[14]_i_3_n_0 ),
        .I4(\pulses_to_send[15]_i_4_n_0 ),
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
  LUT6 #(
    .INIT(64'hFFFF066600000666)) 
    \pulses_to_send[8]_i_1 
       (.I0(\pulses_to_send_reg_n_0_[8] ),
        .I1(\pulses_to_send[9]_i_2_n_0 ),
        .I2(state__0[2]),
        .I3(state__0[3]),
        .I4(\pulses_to_send[15]_i_4_n_0 ),
        .I5(instr_fifo_data[8]),
        .O(pulses_to_send[8]));
  LUT6 #(
    .INIT(64'hFFFFA600A600A600)) 
    \pulses_to_send[9]_i_1 
       (.I0(\pulses_to_send_reg_n_0_[9] ),
        .I1(\pulses_to_send[9]_i_2_n_0 ),
        .I2(\pulses_to_send_reg_n_0_[8] ),
        .I3(\pulses_to_send[14]_i_3_n_0 ),
        .I4(\pulses_to_send[15]_i_4_n_0 ),
        .I5(instr_fifo_data[9]),
        .O(pulses_to_send[9]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \pulses_to_send[9]_i_2 
       (.I0(\pulses_to_send[5]_i_2_n_0 ),
        .I1(\pulses_to_send_reg_n_0_[6] ),
        .I2(\pulses_to_send_reg_n_0_[7] ),
        .I3(\pulses_to_send_reg_n_0_[4] ),
        .I4(\pulses_to_send_reg_n_0_[5] ),
        .O(\pulses_to_send[9]_i_2_n_0 ));
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
    .INIT(64'hFFFEFFFE00000100)) 
    rst_clock_i_1
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(rst_clock_i_2_n_0),
        .I5(rst_clock_reg_n_0),
        .O(rst_clock_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFEFF)) 
    rst_clock_i_2
       (.I0(instr_fifo_data[24]),
        .I1(instr_fifo_data[25]),
        .I2(instr_fifo_data[26]),
        .I3(\clock_period[23]_i_3_n_0 ),
        .O(rst_clock_i_2_n_0));
  FDCE rst_clock_reg
       (.C(clk),
        .CE(1'b1),
        .CLR(instr_fifo_read_i_2_n_0),
        .D(rst_clock_i_1_n_0),
        .Q(rst_clock_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \state_out[0]_INST_0 
       (.I0(state__0[0]),
        .I1(state__0[3]),
        .O(state_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h9C)) 
    \state_out[1]_INST_0 
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .I2(state__0[3]),
        .O(state_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h1710)) 
    \state_out[2]_INST_0 
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .I2(state__0[3]),
        .I3(state__0[2]),
        .O(state_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFC80)) 
    \state_out[3]_INST_0 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[3]),
        .O(state_out[3]));
endmodule

(* CHECK_LICENSE_TYPE = "top_level_block_design_pulse_gen_0_0,pulse_gen,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "pulse_gen,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  wire [254:14]\^m_axis_tdata ;
  wire [31:0]pulse_fifo_data;
  wire pulse_fifo_empty;
  wire pulse_fifo_read;
  wire rst;
  wire [3:0]\^state_out ;

  assign m_axis_tdata[255] = \<const0> ;
  assign m_axis_tdata[254] = \^m_axis_tdata [254];
  assign m_axis_tdata[253] = \^m_axis_tdata [254];
  assign m_axis_tdata[252] = \^m_axis_tdata [254];
  assign m_axis_tdata[251] = \^m_axis_tdata [254];
  assign m_axis_tdata[250] = \^m_axis_tdata [254];
  assign m_axis_tdata[249] = \^m_axis_tdata [254];
  assign m_axis_tdata[248] = \^m_axis_tdata [254];
  assign m_axis_tdata[247] = \^m_axis_tdata [254];
  assign m_axis_tdata[246] = \^m_axis_tdata [254];
  assign m_axis_tdata[245] = \^m_axis_tdata [254];
  assign m_axis_tdata[244] = \^m_axis_tdata [254];
  assign m_axis_tdata[243] = \^m_axis_tdata [254];
  assign m_axis_tdata[242] = \^m_axis_tdata [254];
  assign m_axis_tdata[241] = \^m_axis_tdata [254];
  assign m_axis_tdata[240] = \^m_axis_tdata [254];
  assign m_axis_tdata[239] = \<const0> ;
  assign m_axis_tdata[238] = \^m_axis_tdata [238];
  assign m_axis_tdata[237] = \^m_axis_tdata [238];
  assign m_axis_tdata[236] = \^m_axis_tdata [238];
  assign m_axis_tdata[235] = \^m_axis_tdata [238];
  assign m_axis_tdata[234] = \^m_axis_tdata [238];
  assign m_axis_tdata[233] = \^m_axis_tdata [238];
  assign m_axis_tdata[232] = \^m_axis_tdata [238];
  assign m_axis_tdata[231] = \^m_axis_tdata [238];
  assign m_axis_tdata[230] = \^m_axis_tdata [238];
  assign m_axis_tdata[229] = \^m_axis_tdata [238];
  assign m_axis_tdata[228] = \^m_axis_tdata [238];
  assign m_axis_tdata[227] = \^m_axis_tdata [238];
  assign m_axis_tdata[226] = \^m_axis_tdata [238];
  assign m_axis_tdata[225] = \^m_axis_tdata [238];
  assign m_axis_tdata[224] = \^m_axis_tdata [238];
  assign m_axis_tdata[223] = \<const0> ;
  assign m_axis_tdata[222] = \^m_axis_tdata [222];
  assign m_axis_tdata[221] = \^m_axis_tdata [222];
  assign m_axis_tdata[220] = \^m_axis_tdata [222];
  assign m_axis_tdata[219] = \^m_axis_tdata [222];
  assign m_axis_tdata[218] = \^m_axis_tdata [222];
  assign m_axis_tdata[217] = \^m_axis_tdata [222];
  assign m_axis_tdata[216] = \^m_axis_tdata [222];
  assign m_axis_tdata[215] = \^m_axis_tdata [222];
  assign m_axis_tdata[214] = \^m_axis_tdata [222];
  assign m_axis_tdata[213] = \^m_axis_tdata [222];
  assign m_axis_tdata[212] = \^m_axis_tdata [222];
  assign m_axis_tdata[211] = \^m_axis_tdata [222];
  assign m_axis_tdata[210] = \^m_axis_tdata [222];
  assign m_axis_tdata[209] = \^m_axis_tdata [222];
  assign m_axis_tdata[208] = \^m_axis_tdata [222];
  assign m_axis_tdata[207] = \<const0> ;
  assign m_axis_tdata[206] = \^m_axis_tdata [206];
  assign m_axis_tdata[205] = \^m_axis_tdata [206];
  assign m_axis_tdata[204] = \^m_axis_tdata [206];
  assign m_axis_tdata[203] = \^m_axis_tdata [206];
  assign m_axis_tdata[202] = \^m_axis_tdata [206];
  assign m_axis_tdata[201] = \^m_axis_tdata [206];
  assign m_axis_tdata[200] = \^m_axis_tdata [206];
  assign m_axis_tdata[199] = \^m_axis_tdata [206];
  assign m_axis_tdata[198] = \^m_axis_tdata [206];
  assign m_axis_tdata[197] = \^m_axis_tdata [206];
  assign m_axis_tdata[196] = \^m_axis_tdata [206];
  assign m_axis_tdata[195] = \^m_axis_tdata [206];
  assign m_axis_tdata[194] = \^m_axis_tdata [206];
  assign m_axis_tdata[193] = \^m_axis_tdata [206];
  assign m_axis_tdata[192] = \^m_axis_tdata [206];
  assign m_axis_tdata[191] = \<const0> ;
  assign m_axis_tdata[190] = \^m_axis_tdata [190];
  assign m_axis_tdata[189] = \^m_axis_tdata [190];
  assign m_axis_tdata[188] = \^m_axis_tdata [190];
  assign m_axis_tdata[187] = \^m_axis_tdata [190];
  assign m_axis_tdata[186] = \^m_axis_tdata [190];
  assign m_axis_tdata[185] = \^m_axis_tdata [190];
  assign m_axis_tdata[184] = \^m_axis_tdata [190];
  assign m_axis_tdata[183] = \^m_axis_tdata [190];
  assign m_axis_tdata[182] = \^m_axis_tdata [190];
  assign m_axis_tdata[181] = \^m_axis_tdata [190];
  assign m_axis_tdata[180] = \^m_axis_tdata [190];
  assign m_axis_tdata[179] = \^m_axis_tdata [190];
  assign m_axis_tdata[178] = \^m_axis_tdata [190];
  assign m_axis_tdata[177] = \^m_axis_tdata [190];
  assign m_axis_tdata[176] = \^m_axis_tdata [190];
  assign m_axis_tdata[175] = \<const0> ;
  assign m_axis_tdata[174] = \^m_axis_tdata [174];
  assign m_axis_tdata[173] = \^m_axis_tdata [174];
  assign m_axis_tdata[172] = \^m_axis_tdata [174];
  assign m_axis_tdata[171] = \^m_axis_tdata [174];
  assign m_axis_tdata[170] = \^m_axis_tdata [174];
  assign m_axis_tdata[169] = \^m_axis_tdata [174];
  assign m_axis_tdata[168] = \^m_axis_tdata [174];
  assign m_axis_tdata[167] = \^m_axis_tdata [174];
  assign m_axis_tdata[166] = \^m_axis_tdata [174];
  assign m_axis_tdata[165] = \^m_axis_tdata [174];
  assign m_axis_tdata[164] = \^m_axis_tdata [174];
  assign m_axis_tdata[163] = \^m_axis_tdata [174];
  assign m_axis_tdata[162] = \^m_axis_tdata [174];
  assign m_axis_tdata[161] = \^m_axis_tdata [174];
  assign m_axis_tdata[160] = \^m_axis_tdata [174];
  assign m_axis_tdata[159] = \<const0> ;
  assign m_axis_tdata[158] = \^m_axis_tdata [158];
  assign m_axis_tdata[157] = \^m_axis_tdata [158];
  assign m_axis_tdata[156] = \^m_axis_tdata [158];
  assign m_axis_tdata[155] = \^m_axis_tdata [158];
  assign m_axis_tdata[154] = \^m_axis_tdata [158];
  assign m_axis_tdata[153] = \^m_axis_tdata [158];
  assign m_axis_tdata[152] = \^m_axis_tdata [158];
  assign m_axis_tdata[151] = \^m_axis_tdata [158];
  assign m_axis_tdata[150] = \^m_axis_tdata [158];
  assign m_axis_tdata[149] = \^m_axis_tdata [158];
  assign m_axis_tdata[148] = \^m_axis_tdata [158];
  assign m_axis_tdata[147] = \^m_axis_tdata [158];
  assign m_axis_tdata[146] = \^m_axis_tdata [158];
  assign m_axis_tdata[145] = \^m_axis_tdata [158];
  assign m_axis_tdata[144] = \^m_axis_tdata [158];
  assign m_axis_tdata[143] = \<const0> ;
  assign m_axis_tdata[142] = \^m_axis_tdata [142];
  assign m_axis_tdata[141] = \^m_axis_tdata [142];
  assign m_axis_tdata[140] = \^m_axis_tdata [142];
  assign m_axis_tdata[139] = \^m_axis_tdata [142];
  assign m_axis_tdata[138] = \^m_axis_tdata [142];
  assign m_axis_tdata[137] = \^m_axis_tdata [142];
  assign m_axis_tdata[136] = \^m_axis_tdata [142];
  assign m_axis_tdata[135] = \^m_axis_tdata [142];
  assign m_axis_tdata[134] = \^m_axis_tdata [142];
  assign m_axis_tdata[133] = \^m_axis_tdata [142];
  assign m_axis_tdata[132] = \^m_axis_tdata [142];
  assign m_axis_tdata[131] = \^m_axis_tdata [142];
  assign m_axis_tdata[130] = \^m_axis_tdata [142];
  assign m_axis_tdata[129] = \^m_axis_tdata [142];
  assign m_axis_tdata[128] = \^m_axis_tdata [142];
  assign m_axis_tdata[127] = \<const0> ;
  assign m_axis_tdata[126] = \^m_axis_tdata [126];
  assign m_axis_tdata[125] = \^m_axis_tdata [126];
  assign m_axis_tdata[124] = \^m_axis_tdata [126];
  assign m_axis_tdata[123] = \^m_axis_tdata [126];
  assign m_axis_tdata[122] = \^m_axis_tdata [126];
  assign m_axis_tdata[121] = \^m_axis_tdata [126];
  assign m_axis_tdata[120] = \^m_axis_tdata [126];
  assign m_axis_tdata[119] = \^m_axis_tdata [126];
  assign m_axis_tdata[118] = \^m_axis_tdata [126];
  assign m_axis_tdata[117] = \^m_axis_tdata [126];
  assign m_axis_tdata[116] = \^m_axis_tdata [126];
  assign m_axis_tdata[115] = \^m_axis_tdata [126];
  assign m_axis_tdata[114] = \^m_axis_tdata [126];
  assign m_axis_tdata[113] = \^m_axis_tdata [126];
  assign m_axis_tdata[112] = \^m_axis_tdata [126];
  assign m_axis_tdata[111] = \<const0> ;
  assign m_axis_tdata[110] = \^m_axis_tdata [110];
  assign m_axis_tdata[109] = \^m_axis_tdata [110];
  assign m_axis_tdata[108] = \^m_axis_tdata [110];
  assign m_axis_tdata[107] = \^m_axis_tdata [110];
  assign m_axis_tdata[106] = \^m_axis_tdata [110];
  assign m_axis_tdata[105] = \^m_axis_tdata [110];
  assign m_axis_tdata[104] = \^m_axis_tdata [110];
  assign m_axis_tdata[103] = \^m_axis_tdata [110];
  assign m_axis_tdata[102] = \^m_axis_tdata [110];
  assign m_axis_tdata[101] = \^m_axis_tdata [110];
  assign m_axis_tdata[100] = \^m_axis_tdata [110];
  assign m_axis_tdata[99] = \^m_axis_tdata [110];
  assign m_axis_tdata[98] = \^m_axis_tdata [110];
  assign m_axis_tdata[97] = \^m_axis_tdata [110];
  assign m_axis_tdata[96] = \^m_axis_tdata [110];
  assign m_axis_tdata[95] = \<const0> ;
  assign m_axis_tdata[94] = \^m_axis_tdata [94];
  assign m_axis_tdata[93] = \^m_axis_tdata [94];
  assign m_axis_tdata[92] = \^m_axis_tdata [94];
  assign m_axis_tdata[91] = \^m_axis_tdata [94];
  assign m_axis_tdata[90] = \^m_axis_tdata [94];
  assign m_axis_tdata[89] = \^m_axis_tdata [94];
  assign m_axis_tdata[88] = \^m_axis_tdata [94];
  assign m_axis_tdata[87] = \^m_axis_tdata [94];
  assign m_axis_tdata[86] = \^m_axis_tdata [94];
  assign m_axis_tdata[85] = \^m_axis_tdata [94];
  assign m_axis_tdata[84] = \^m_axis_tdata [94];
  assign m_axis_tdata[83] = \^m_axis_tdata [94];
  assign m_axis_tdata[82] = \^m_axis_tdata [94];
  assign m_axis_tdata[81] = \^m_axis_tdata [94];
  assign m_axis_tdata[80] = \^m_axis_tdata [94];
  assign m_axis_tdata[79] = \<const0> ;
  assign m_axis_tdata[78] = \^m_axis_tdata [78];
  assign m_axis_tdata[77] = \^m_axis_tdata [78];
  assign m_axis_tdata[76] = \^m_axis_tdata [78];
  assign m_axis_tdata[75] = \^m_axis_tdata [78];
  assign m_axis_tdata[74] = \^m_axis_tdata [78];
  assign m_axis_tdata[73] = \^m_axis_tdata [78];
  assign m_axis_tdata[72] = \^m_axis_tdata [78];
  assign m_axis_tdata[71] = \^m_axis_tdata [78];
  assign m_axis_tdata[70] = \^m_axis_tdata [78];
  assign m_axis_tdata[69] = \^m_axis_tdata [78];
  assign m_axis_tdata[68] = \^m_axis_tdata [78];
  assign m_axis_tdata[67] = \^m_axis_tdata [78];
  assign m_axis_tdata[66] = \^m_axis_tdata [78];
  assign m_axis_tdata[65] = \^m_axis_tdata [78];
  assign m_axis_tdata[64] = \^m_axis_tdata [78];
  assign m_axis_tdata[63] = \<const0> ;
  assign m_axis_tdata[62] = \^m_axis_tdata [62];
  assign m_axis_tdata[61] = \^m_axis_tdata [62];
  assign m_axis_tdata[60] = \^m_axis_tdata [62];
  assign m_axis_tdata[59] = \^m_axis_tdata [62];
  assign m_axis_tdata[58] = \^m_axis_tdata [62];
  assign m_axis_tdata[57] = \^m_axis_tdata [62];
  assign m_axis_tdata[56] = \^m_axis_tdata [62];
  assign m_axis_tdata[55] = \^m_axis_tdata [62];
  assign m_axis_tdata[54] = \^m_axis_tdata [62];
  assign m_axis_tdata[53] = \^m_axis_tdata [62];
  assign m_axis_tdata[52] = \^m_axis_tdata [62];
  assign m_axis_tdata[51] = \^m_axis_tdata [62];
  assign m_axis_tdata[50] = \^m_axis_tdata [62];
  assign m_axis_tdata[49] = \^m_axis_tdata [62];
  assign m_axis_tdata[48] = \^m_axis_tdata [62];
  assign m_axis_tdata[47] = \<const0> ;
  assign m_axis_tdata[46] = \^m_axis_tdata [46];
  assign m_axis_tdata[45] = \^m_axis_tdata [46];
  assign m_axis_tdata[44] = \^m_axis_tdata [46];
  assign m_axis_tdata[43] = \^m_axis_tdata [46];
  assign m_axis_tdata[42] = \^m_axis_tdata [46];
  assign m_axis_tdata[41] = \^m_axis_tdata [46];
  assign m_axis_tdata[40] = \^m_axis_tdata [46];
  assign m_axis_tdata[39] = \^m_axis_tdata [46];
  assign m_axis_tdata[38] = \^m_axis_tdata [46];
  assign m_axis_tdata[37] = \^m_axis_tdata [46];
  assign m_axis_tdata[36] = \^m_axis_tdata [46];
  assign m_axis_tdata[35] = \^m_axis_tdata [46];
  assign m_axis_tdata[34] = \^m_axis_tdata [46];
  assign m_axis_tdata[33] = \^m_axis_tdata [46];
  assign m_axis_tdata[32] = \^m_axis_tdata [46];
  assign m_axis_tdata[31] = \<const0> ;
  assign m_axis_tdata[30] = \^m_axis_tdata [30];
  assign m_axis_tdata[29] = \^m_axis_tdata [30];
  assign m_axis_tdata[28] = \^m_axis_tdata [30];
  assign m_axis_tdata[27] = \^m_axis_tdata [30];
  assign m_axis_tdata[26] = \^m_axis_tdata [30];
  assign m_axis_tdata[25] = \^m_axis_tdata [30];
  assign m_axis_tdata[24] = \^m_axis_tdata [30];
  assign m_axis_tdata[23] = \^m_axis_tdata [30];
  assign m_axis_tdata[22] = \^m_axis_tdata [30];
  assign m_axis_tdata[21] = \^m_axis_tdata [30];
  assign m_axis_tdata[20] = \^m_axis_tdata [30];
  assign m_axis_tdata[19] = \^m_axis_tdata [30];
  assign m_axis_tdata[18] = \^m_axis_tdata [30];
  assign m_axis_tdata[17] = \^m_axis_tdata [30];
  assign m_axis_tdata[16] = \^m_axis_tdata [30];
  assign m_axis_tdata[15] = \<const0> ;
  assign m_axis_tdata[14] = \^m_axis_tdata [14];
  assign m_axis_tdata[13] = \^m_axis_tdata [14];
  assign m_axis_tdata[12] = \^m_axis_tdata [14];
  assign m_axis_tdata[11] = \^m_axis_tdata [14];
  assign m_axis_tdata[10] = \^m_axis_tdata [14];
  assign m_axis_tdata[9] = \^m_axis_tdata [14];
  assign m_axis_tdata[8] = \^m_axis_tdata [14];
  assign m_axis_tdata[7] = \^m_axis_tdata [14];
  assign m_axis_tdata[6] = \^m_axis_tdata [14];
  assign m_axis_tdata[5] = \^m_axis_tdata [14];
  assign m_axis_tdata[4] = \^m_axis_tdata [14];
  assign m_axis_tdata[3] = \^m_axis_tdata [14];
  assign m_axis_tdata[2] = \^m_axis_tdata [14];
  assign m_axis_tdata[1] = \^m_axis_tdata [14];
  assign m_axis_tdata[0] = \^m_axis_tdata [14];
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pulse_gen inst
       (.clk(clk),
        .instr_fifo_data(instr_fifo_data),
        .instr_fifo_empty(instr_fifo_empty),
        .instr_fifo_read(instr_fifo_read),
        .m_axis_tdata({\^m_axis_tdata [254],\^m_axis_tdata [238],\^m_axis_tdata [222],\^m_axis_tdata [206],\^m_axis_tdata [190],\^m_axis_tdata [174],\^m_axis_tdata [158],\^m_axis_tdata [142],\^m_axis_tdata [126],\^m_axis_tdata [110],\^m_axis_tdata [94],\^m_axis_tdata [78],\^m_axis_tdata [62],\^m_axis_tdata [46],\^m_axis_tdata [30],\^m_axis_tdata [14]}),
        .pulse_fifo_data({pulse_fifo_data[23:8],pulse_fifo_data[3:0]}),
        .pulse_fifo_empty(pulse_fifo_empty),
        .pulse_fifo_read(pulse_fifo_read),
        .rst(rst),
        .state_out(\^state_out ));
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
