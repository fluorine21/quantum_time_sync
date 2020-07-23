-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu Jul 23 16:44:12 2020
-- Host        : pme10D0025 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_level_block_design_pulse_gen_0_0_sim_netlist.vhdl
-- Design      : top_level_block_design_pulse_gen_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pulse_gen is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 );
    state_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    fifo_read : out STD_LOGIC;
    fifo_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    fifo_empty : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pulse_gen;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pulse_gen is
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_9_n_0\ : STD_LOGIC;
  signal clock_period : STD_LOGIC;
  signal \clock_period[23]_i_2_n_0\ : STD_LOGIC;
  signal \clock_period_reg_n_0_[0]\ : STD_LOGIC;
  signal \clock_period_reg_n_0_[10]\ : STD_LOGIC;
  signal \clock_period_reg_n_0_[11]\ : STD_LOGIC;
  signal \clock_period_reg_n_0_[12]\ : STD_LOGIC;
  signal \clock_period_reg_n_0_[13]\ : STD_LOGIC;
  signal \clock_period_reg_n_0_[14]\ : STD_LOGIC;
  signal \clock_period_reg_n_0_[15]\ : STD_LOGIC;
  signal \clock_period_reg_n_0_[16]\ : STD_LOGIC;
  signal \clock_period_reg_n_0_[17]\ : STD_LOGIC;
  signal \clock_period_reg_n_0_[18]\ : STD_LOGIC;
  signal \clock_period_reg_n_0_[19]\ : STD_LOGIC;
  signal \clock_period_reg_n_0_[1]\ : STD_LOGIC;
  signal \clock_period_reg_n_0_[20]\ : STD_LOGIC;
  signal \clock_period_reg_n_0_[21]\ : STD_LOGIC;
  signal \clock_period_reg_n_0_[22]\ : STD_LOGIC;
  signal \clock_period_reg_n_0_[23]\ : STD_LOGIC;
  signal \clock_period_reg_n_0_[2]\ : STD_LOGIC;
  signal \clock_period_reg_n_0_[3]\ : STD_LOGIC;
  signal \clock_period_reg_n_0_[4]\ : STD_LOGIC;
  signal \clock_period_reg_n_0_[5]\ : STD_LOGIC;
  signal \clock_period_reg_n_0_[6]\ : STD_LOGIC;
  signal \clock_period_reg_n_0_[7]\ : STD_LOGIC;
  signal \clock_period_reg_n_0_[8]\ : STD_LOGIC;
  signal \clock_period_reg_n_0_[9]\ : STD_LOGIC;
  signal coarse_delay : STD_LOGIC;
  signal \coarse_delay[0]_i_1_n_0\ : STD_LOGIC;
  signal \coarse_delay[10]_i_1_n_0\ : STD_LOGIC;
  signal \coarse_delay[10]_i_2_n_0\ : STD_LOGIC;
  signal \coarse_delay[11]_i_1_n_0\ : STD_LOGIC;
  signal \coarse_delay[11]_i_2_n_0\ : STD_LOGIC;
  signal \coarse_delay[12]_i_1_n_0\ : STD_LOGIC;
  signal \coarse_delay[13]_i_1_n_0\ : STD_LOGIC;
  signal \coarse_delay[13]_i_2_n_0\ : STD_LOGIC;
  signal \coarse_delay[13]_i_3_n_0\ : STD_LOGIC;
  signal \coarse_delay[14]_i_1_n_0\ : STD_LOGIC;
  signal \coarse_delay[15]_i_2_n_0\ : STD_LOGIC;
  signal \coarse_delay[15]_i_3_n_0\ : STD_LOGIC;
  signal \coarse_delay[15]_i_4_n_0\ : STD_LOGIC;
  signal \coarse_delay[15]_i_5_n_0\ : STD_LOGIC;
  signal \coarse_delay[15]_i_6_n_0\ : STD_LOGIC;
  signal \coarse_delay[1]_i_1_n_0\ : STD_LOGIC;
  signal \coarse_delay[2]_i_1_n_0\ : STD_LOGIC;
  signal \coarse_delay[2]_i_2_n_0\ : STD_LOGIC;
  signal \coarse_delay[3]_i_1_n_0\ : STD_LOGIC;
  signal \coarse_delay[3]_i_2_n_0\ : STD_LOGIC;
  signal \coarse_delay[4]_i_1_n_0\ : STD_LOGIC;
  signal \coarse_delay[4]_i_2_n_0\ : STD_LOGIC;
  signal \coarse_delay[5]_i_1_n_0\ : STD_LOGIC;
  signal \coarse_delay[5]_i_2_n_0\ : STD_LOGIC;
  signal \coarse_delay[6]_i_1_n_0\ : STD_LOGIC;
  signal \coarse_delay[6]_i_2_n_0\ : STD_LOGIC;
  signal \coarse_delay[7]_i_1_n_0\ : STD_LOGIC;
  signal \coarse_delay[7]_i_2_n_0\ : STD_LOGIC;
  signal \coarse_delay[8]_i_1_n_0\ : STD_LOGIC;
  signal \coarse_delay[8]_i_2_n_0\ : STD_LOGIC;
  signal \coarse_delay[9]_i_1_n_0\ : STD_LOGIC;
  signal \coarse_delay[9]_i_2_n_0\ : STD_LOGIC;
  signal \coarse_delay_reg_n_0_[0]\ : STD_LOGIC;
  signal \coarse_delay_reg_n_0_[10]\ : STD_LOGIC;
  signal \coarse_delay_reg_n_0_[11]\ : STD_LOGIC;
  signal \coarse_delay_reg_n_0_[12]\ : STD_LOGIC;
  signal \coarse_delay_reg_n_0_[13]\ : STD_LOGIC;
  signal \coarse_delay_reg_n_0_[14]\ : STD_LOGIC;
  signal \coarse_delay_reg_n_0_[15]\ : STD_LOGIC;
  signal \coarse_delay_reg_n_0_[1]\ : STD_LOGIC;
  signal \coarse_delay_reg_n_0_[2]\ : STD_LOGIC;
  signal \coarse_delay_reg_n_0_[3]\ : STD_LOGIC;
  signal \coarse_delay_reg_n_0_[4]\ : STD_LOGIC;
  signal \coarse_delay_reg_n_0_[5]\ : STD_LOGIC;
  signal \coarse_delay_reg_n_0_[6]\ : STD_LOGIC;
  signal \coarse_delay_reg_n_0_[7]\ : STD_LOGIC;
  signal \coarse_delay_reg_n_0_[8]\ : STD_LOGIC;
  signal \coarse_delay_reg_n_0_[9]\ : STD_LOGIC;
  signal \^fifo_read\ : STD_LOGIC;
  signal fifo_read_i_1_n_0 : STD_LOGIC;
  signal fifo_read_i_2_n_0 : STD_LOGIC;
  signal \fine_delay[0]_i_1_n_0\ : STD_LOGIC;
  signal \fine_delay[1]_i_1_n_0\ : STD_LOGIC;
  signal \fine_delay[2]_i_1_n_0\ : STD_LOGIC;
  signal \fine_delay[3]_i_1_n_0\ : STD_LOGIC;
  signal \fine_delay[3]_i_2_n_0\ : STD_LOGIC;
  signal \fine_delay[3]_i_3_n_0\ : STD_LOGIC;
  signal is_phase_meas_mode_i_1_n_0 : STD_LOGIC;
  signal is_phase_meas_mode_i_2_n_0 : STD_LOGIC;
  signal is_phase_meas_mode_i_3_n_0 : STD_LOGIC;
  signal is_phase_meas_mode_reg_n_0 : STD_LOGIC;
  signal \m_axis_tdata[240]_INST_0_i_10_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[240]_INST_0_i_11_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[240]_INST_0_i_12_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[240]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[240]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[240]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[240]_INST_0_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[240]_INST_0_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[240]_INST_0_i_6_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[240]_INST_0_i_7_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[240]_INST_0_i_8_n_0\ : STD_LOGIC;
  signal \m_axis_tdata[240]_INST_0_i_9_n_0\ : STD_LOGIC;
  signal m_axis_tdata_int : STD_LOGIC;
  signal m_axis_tdata_int1 : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \m_axis_tdata_int[110]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_int[126]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_int[126]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_int[142]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_int[14]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_int[158]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_int[174]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_int[190]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_int[206]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_int[222]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_int[238]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_int[238]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_int[254]_i_2_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_int[254]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_int[254]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_int[254]_i_5_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_int[30]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_int[46]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_int[62]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_int[78]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_int[94]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_int_reg_n_0_[110]\ : STD_LOGIC;
  signal \m_axis_tdata_int_reg_n_0_[126]\ : STD_LOGIC;
  signal \m_axis_tdata_int_reg_n_0_[142]\ : STD_LOGIC;
  signal \m_axis_tdata_int_reg_n_0_[14]\ : STD_LOGIC;
  signal \m_axis_tdata_int_reg_n_0_[158]\ : STD_LOGIC;
  signal \m_axis_tdata_int_reg_n_0_[174]\ : STD_LOGIC;
  signal \m_axis_tdata_int_reg_n_0_[190]\ : STD_LOGIC;
  signal \m_axis_tdata_int_reg_n_0_[206]\ : STD_LOGIC;
  signal \m_axis_tdata_int_reg_n_0_[222]\ : STD_LOGIC;
  signal \m_axis_tdata_int_reg_n_0_[238]\ : STD_LOGIC;
  signal \m_axis_tdata_int_reg_n_0_[254]\ : STD_LOGIC;
  signal \m_axis_tdata_int_reg_n_0_[30]\ : STD_LOGIC;
  signal \m_axis_tdata_int_reg_n_0_[46]\ : STD_LOGIC;
  signal \m_axis_tdata_int_reg_n_0_[62]\ : STD_LOGIC;
  signal \m_axis_tdata_int_reg_n_0_[78]\ : STD_LOGIC;
  signal \m_axis_tdata_int_reg_n_0_[94]\ : STD_LOGIC;
  signal main_clock : STD_LOGIC_VECTOR ( 45 downto 0 );
  signal main_clock0 : STD_LOGIC_VECTOR ( 45 downto 1 );
  signal \main_clock0_carry__0_n_0\ : STD_LOGIC;
  signal \main_clock0_carry__0_n_1\ : STD_LOGIC;
  signal \main_clock0_carry__0_n_2\ : STD_LOGIC;
  signal \main_clock0_carry__0_n_3\ : STD_LOGIC;
  signal \main_clock0_carry__0_n_4\ : STD_LOGIC;
  signal \main_clock0_carry__0_n_5\ : STD_LOGIC;
  signal \main_clock0_carry__0_n_6\ : STD_LOGIC;
  signal \main_clock0_carry__0_n_7\ : STD_LOGIC;
  signal \main_clock0_carry__1_n_0\ : STD_LOGIC;
  signal \main_clock0_carry__1_n_1\ : STD_LOGIC;
  signal \main_clock0_carry__1_n_2\ : STD_LOGIC;
  signal \main_clock0_carry__1_n_3\ : STD_LOGIC;
  signal \main_clock0_carry__1_n_4\ : STD_LOGIC;
  signal \main_clock0_carry__1_n_5\ : STD_LOGIC;
  signal \main_clock0_carry__1_n_6\ : STD_LOGIC;
  signal \main_clock0_carry__1_n_7\ : STD_LOGIC;
  signal \main_clock0_carry__2_n_0\ : STD_LOGIC;
  signal \main_clock0_carry__2_n_1\ : STD_LOGIC;
  signal \main_clock0_carry__2_n_2\ : STD_LOGIC;
  signal \main_clock0_carry__2_n_3\ : STD_LOGIC;
  signal \main_clock0_carry__2_n_4\ : STD_LOGIC;
  signal \main_clock0_carry__2_n_5\ : STD_LOGIC;
  signal \main_clock0_carry__2_n_6\ : STD_LOGIC;
  signal \main_clock0_carry__2_n_7\ : STD_LOGIC;
  signal \main_clock0_carry__3_n_0\ : STD_LOGIC;
  signal \main_clock0_carry__3_n_1\ : STD_LOGIC;
  signal \main_clock0_carry__3_n_2\ : STD_LOGIC;
  signal \main_clock0_carry__3_n_3\ : STD_LOGIC;
  signal \main_clock0_carry__3_n_4\ : STD_LOGIC;
  signal \main_clock0_carry__3_n_5\ : STD_LOGIC;
  signal \main_clock0_carry__3_n_6\ : STD_LOGIC;
  signal \main_clock0_carry__3_n_7\ : STD_LOGIC;
  signal \main_clock0_carry__4_n_4\ : STD_LOGIC;
  signal \main_clock0_carry__4_n_5\ : STD_LOGIC;
  signal \main_clock0_carry__4_n_6\ : STD_LOGIC;
  signal \main_clock0_carry__4_n_7\ : STD_LOGIC;
  signal main_clock0_carry_n_0 : STD_LOGIC;
  signal main_clock0_carry_n_1 : STD_LOGIC;
  signal main_clock0_carry_n_2 : STD_LOGIC;
  signal main_clock0_carry_n_3 : STD_LOGIC;
  signal main_clock0_carry_n_4 : STD_LOGIC;
  signal main_clock0_carry_n_5 : STD_LOGIC;
  signal main_clock0_carry_n_6 : STD_LOGIC;
  signal main_clock0_carry_n_7 : STD_LOGIC;
  signal main_clock1 : STD_LOGIC;
  signal \main_clock1_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__0_i_15_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__0_i_16_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__0_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__0_n_1\ : STD_LOGIC;
  signal \main_clock1_carry__0_n_2\ : STD_LOGIC;
  signal \main_clock1_carry__0_n_3\ : STD_LOGIC;
  signal \main_clock1_carry__0_n_4\ : STD_LOGIC;
  signal \main_clock1_carry__0_n_5\ : STD_LOGIC;
  signal \main_clock1_carry__0_n_6\ : STD_LOGIC;
  signal \main_clock1_carry__0_n_7\ : STD_LOGIC;
  signal \main_clock1_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__1_i_13_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__1_i_14_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \main_clock1_carry__1_n_2\ : STD_LOGIC;
  signal \main_clock1_carry__1_n_3\ : STD_LOGIC;
  signal \main_clock1_carry__1_n_4\ : STD_LOGIC;
  signal \main_clock1_carry__1_n_5\ : STD_LOGIC;
  signal \main_clock1_carry__1_n_6\ : STD_LOGIC;
  signal \main_clock1_carry__1_n_7\ : STD_LOGIC;
  signal main_clock1_carry_i_10_n_0 : STD_LOGIC;
  signal main_clock1_carry_i_11_n_0 : STD_LOGIC;
  signal main_clock1_carry_i_12_n_0 : STD_LOGIC;
  signal main_clock1_carry_i_13_n_0 : STD_LOGIC;
  signal main_clock1_carry_i_14_n_0 : STD_LOGIC;
  signal main_clock1_carry_i_15_n_0 : STD_LOGIC;
  signal main_clock1_carry_i_16_n_0 : STD_LOGIC;
  signal main_clock1_carry_i_1_n_0 : STD_LOGIC;
  signal main_clock1_carry_i_2_n_0 : STD_LOGIC;
  signal main_clock1_carry_i_3_n_0 : STD_LOGIC;
  signal main_clock1_carry_i_4_n_0 : STD_LOGIC;
  signal main_clock1_carry_i_5_n_0 : STD_LOGIC;
  signal main_clock1_carry_i_6_n_0 : STD_LOGIC;
  signal main_clock1_carry_i_7_n_0 : STD_LOGIC;
  signal main_clock1_carry_i_8_n_0 : STD_LOGIC;
  signal main_clock1_carry_i_9_n_0 : STD_LOGIC;
  signal main_clock1_carry_n_0 : STD_LOGIC;
  signal main_clock1_carry_n_1 : STD_LOGIC;
  signal main_clock1_carry_n_2 : STD_LOGIC;
  signal main_clock1_carry_n_3 : STD_LOGIC;
  signal main_clock1_carry_n_4 : STD_LOGIC;
  signal main_clock1_carry_n_5 : STD_LOGIC;
  signal main_clock1_carry_n_6 : STD_LOGIC;
  signal main_clock1_carry_n_7 : STD_LOGIC;
  signal main_clock2 : STD_LOGIC_VECTOR ( 23 downto 1 );
  signal \main_clock2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \main_clock2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \main_clock2_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \main_clock2_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \main_clock2_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \main_clock2_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \main_clock2_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \main_clock2_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \main_clock2_carry__0_n_0\ : STD_LOGIC;
  signal \main_clock2_carry__0_n_1\ : STD_LOGIC;
  signal \main_clock2_carry__0_n_2\ : STD_LOGIC;
  signal \main_clock2_carry__0_n_3\ : STD_LOGIC;
  signal \main_clock2_carry__0_n_4\ : STD_LOGIC;
  signal \main_clock2_carry__0_n_5\ : STD_LOGIC;
  signal \main_clock2_carry__0_n_6\ : STD_LOGIC;
  signal \main_clock2_carry__0_n_7\ : STD_LOGIC;
  signal \main_clock2_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \main_clock2_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \main_clock2_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \main_clock2_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \main_clock2_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \main_clock2_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \main_clock2_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \main_clock2_carry__1_n_0\ : STD_LOGIC;
  signal \main_clock2_carry__1_n_2\ : STD_LOGIC;
  signal \main_clock2_carry__1_n_3\ : STD_LOGIC;
  signal \main_clock2_carry__1_n_4\ : STD_LOGIC;
  signal \main_clock2_carry__1_n_5\ : STD_LOGIC;
  signal \main_clock2_carry__1_n_6\ : STD_LOGIC;
  signal \main_clock2_carry__1_n_7\ : STD_LOGIC;
  signal main_clock2_carry_i_1_n_0 : STD_LOGIC;
  signal main_clock2_carry_i_2_n_0 : STD_LOGIC;
  signal main_clock2_carry_i_3_n_0 : STD_LOGIC;
  signal main_clock2_carry_i_4_n_0 : STD_LOGIC;
  signal main_clock2_carry_i_5_n_0 : STD_LOGIC;
  signal main_clock2_carry_i_6_n_0 : STD_LOGIC;
  signal main_clock2_carry_i_7_n_0 : STD_LOGIC;
  signal main_clock2_carry_i_8_n_0 : STD_LOGIC;
  signal main_clock2_carry_n_0 : STD_LOGIC;
  signal main_clock2_carry_n_1 : STD_LOGIC;
  signal main_clock2_carry_n_2 : STD_LOGIC;
  signal main_clock2_carry_n_3 : STD_LOGIC;
  signal main_clock2_carry_n_4 : STD_LOGIC;
  signal main_clock2_carry_n_5 : STD_LOGIC;
  signal main_clock2_carry_n_6 : STD_LOGIC;
  signal main_clock2_carry_n_7 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 45 downto 0 );
  signal pulses_to_send : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \pulses_to_send[11]_i_2_n_0\ : STD_LOGIC;
  signal \pulses_to_send[11]_i_3_n_0\ : STD_LOGIC;
  signal \pulses_to_send[12]_i_2_n_0\ : STD_LOGIC;
  signal \pulses_to_send[12]_i_3_n_0\ : STD_LOGIC;
  signal \pulses_to_send[14]_i_2_n_0\ : STD_LOGIC;
  signal \pulses_to_send[14]_i_3_n_0\ : STD_LOGIC;
  signal \pulses_to_send[14]_i_4_n_0\ : STD_LOGIC;
  signal \pulses_to_send[15]_i_1_n_0\ : STD_LOGIC;
  signal \pulses_to_send[15]_i_3_n_0\ : STD_LOGIC;
  signal \pulses_to_send[15]_i_4_n_0\ : STD_LOGIC;
  signal \pulses_to_send[15]_i_5_n_0\ : STD_LOGIC;
  signal \pulses_to_send[3]_i_2_n_0\ : STD_LOGIC;
  signal \pulses_to_send[5]_i_2_n_0\ : STD_LOGIC;
  signal \pulses_to_send[7]_i_2_n_0\ : STD_LOGIC;
  signal \pulses_to_send[7]_i_3_n_0\ : STD_LOGIC;
  signal \pulses_to_send[8]_i_2_n_0\ : STD_LOGIC;
  signal \pulses_to_send[9]_i_2_n_0\ : STD_LOGIC;
  signal \pulses_to_send_reg_n_0_[0]\ : STD_LOGIC;
  signal \pulses_to_send_reg_n_0_[10]\ : STD_LOGIC;
  signal \pulses_to_send_reg_n_0_[11]\ : STD_LOGIC;
  signal \pulses_to_send_reg_n_0_[12]\ : STD_LOGIC;
  signal \pulses_to_send_reg_n_0_[13]\ : STD_LOGIC;
  signal \pulses_to_send_reg_n_0_[14]\ : STD_LOGIC;
  signal \pulses_to_send_reg_n_0_[15]\ : STD_LOGIC;
  signal \pulses_to_send_reg_n_0_[1]\ : STD_LOGIC;
  signal \pulses_to_send_reg_n_0_[2]\ : STD_LOGIC;
  signal \pulses_to_send_reg_n_0_[3]\ : STD_LOGIC;
  signal \pulses_to_send_reg_n_0_[4]\ : STD_LOGIC;
  signal \pulses_to_send_reg_n_0_[5]\ : STD_LOGIC;
  signal \pulses_to_send_reg_n_0_[6]\ : STD_LOGIC;
  signal \pulses_to_send_reg_n_0_[7]\ : STD_LOGIC;
  signal \pulses_to_send_reg_n_0_[8]\ : STD_LOGIC;
  signal \pulses_to_send_reg_n_0_[9]\ : STD_LOGIC;
  signal rst_clock : STD_LOGIC;
  signal rst_clock_i_1_n_0 : STD_LOGIC;
  signal rst_clock_reg_n_0 : STD_LOGIC;
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state__1\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^state_out\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_main_clock0_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \NLW_main_clock0_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal NLW_main_clock1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_main_clock1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_main_clock1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW_main_clock1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_main_clock2_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 6 to 6 );
  signal \NLW_main_clock2_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_10\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_5\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_6\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_7\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_8\ : label is "soft_lutpair10";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "state_rst_read:001,state_read:010,state_toggle_end:101,state_wait_tick:011,state_wait_pulse:100,state_idle:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "state_rst_read:001,state_read:010,state_toggle_end:101,state_wait_tick:011,state_wait_pulse:100,state_idle:000";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "state_rst_read:001,state_read:010,state_toggle_end:101,state_wait_tick:011,state_wait_pulse:100,state_idle:000";
  attribute SOFT_HLUTNM of \coarse_delay[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \coarse_delay[10]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \coarse_delay[11]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \coarse_delay[13]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \coarse_delay[13]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \coarse_delay[13]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \coarse_delay[15]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \coarse_delay[15]_i_5\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \coarse_delay[15]_i_6\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \coarse_delay[3]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \coarse_delay[4]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \coarse_delay[5]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \coarse_delay[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \coarse_delay[8]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \coarse_delay[9]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of fifo_read_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \fine_delay[0]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \fine_delay[1]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \fine_delay[2]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \fine_delay[3]_i_2\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \fine_delay[3]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of is_phase_meas_mode_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \m_axis_tdata[112]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m_axis_tdata[128]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \m_axis_tdata[144]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \m_axis_tdata[160]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \m_axis_tdata[176]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m_axis_tdata[192]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m_axis_tdata[208]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m_axis_tdata[224]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axis_tdata[240]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_axis_tdata[32]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m_axis_tdata[48]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m_axis_tdata[64]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m_axis_tdata[80]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m_axis_tdata[96]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[110]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[126]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[126]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[142]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[14]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[158]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[174]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[190]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[206]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[222]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[238]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[238]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[254]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[254]_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[254]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[30]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[46]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[62]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[78]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[94]_i_1\ : label is "soft_lutpair20";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of main_clock0_carry : label is 35;
  attribute ADDER_THRESHOLD of \main_clock0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \main_clock0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \main_clock0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \main_clock0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \main_clock0_carry__4\ : label is 35;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of main_clock1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \main_clock1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \main_clock1_carry__1\ : label is 11;
  attribute SOFT_HLUTNM of \main_clock[0]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \main_clock[10]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \main_clock[11]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \main_clock[12]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \main_clock[13]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \main_clock[14]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \main_clock[15]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \main_clock[16]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \main_clock[17]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \main_clock[18]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \main_clock[19]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \main_clock[1]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \main_clock[20]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \main_clock[21]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \main_clock[22]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \main_clock[23]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \main_clock[24]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \main_clock[25]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \main_clock[26]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \main_clock[27]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \main_clock[28]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \main_clock[29]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \main_clock[2]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \main_clock[30]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \main_clock[31]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \main_clock[32]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \main_clock[33]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \main_clock[34]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \main_clock[35]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \main_clock[36]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \main_clock[37]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \main_clock[38]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \main_clock[39]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \main_clock[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \main_clock[40]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \main_clock[41]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \main_clock[42]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \main_clock[43]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \main_clock[44]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \main_clock[45]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \main_clock[4]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \main_clock[5]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \main_clock[6]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \main_clock[7]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \main_clock[8]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \main_clock[9]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \pulses_to_send[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pulses_to_send[12]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pulses_to_send[14]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \pulses_to_send[14]_i_4\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \pulses_to_send[15]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \pulses_to_send[15]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \pulses_to_send[3]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \pulses_to_send[5]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \pulses_to_send[7]_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \pulses_to_send[8]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of rst_clock_i_1 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \state_out[0]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \state_out[1]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \state_out[2]_INST_0\ : label is "soft_lutpair13";
begin
  fifo_read <= \^fifo_read\;
  state_out(2 downto 0) <= \^state_out\(2 downto 0);
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100011111111"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => fifo_data(24),
      I4 => fifo_data(25),
      I5 => \state__0\(1),
      O => \state__1\(0)
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => fifo_data(27),
      I1 => fifo_data(31),
      I2 => fifo_data(30),
      I3 => fifo_data(28),
      I4 => fifo_data(29),
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1130"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \FSM_sequential_state[1]_i_2_n_0\,
      I3 => \state__0\(0),
      O => \state__1\(1)
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_2_n_0\,
      I1 => \state__0\(1),
      I2 => fifo_data(24),
      I3 => fifo_data(26),
      I4 => fifo_data(25),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8BBB8BBBB88BBBB"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_3_n_0\,
      I1 => \state__0\(2),
      I2 => \m_axis_tdata[240]_INST_0_i_1_n_0\,
      I3 => \state__0\(1),
      I4 => fifo_empty,
      I5 => \state__0\(0),
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \coarse_delay_reg_n_0_[8]\,
      I1 => \coarse_delay_reg_n_0_[9]\,
      O => \FSM_sequential_state[2]_i_10_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1000FFFF"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_4_n_0\,
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => \FSM_sequential_state[2]_i_5_n_0\,
      O => \state__1\(2)
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_6_n_0\,
      I1 => \pulses_to_send[12]_i_2_n_0\,
      I2 => \FSM_sequential_state[2]_i_7_n_0\,
      I3 => \pulses_to_send_reg_n_0_[15]\,
      I4 => \state__0\(0),
      I5 => \FSM_sequential_state[2]_i_4_n_0\,
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_8_n_0\,
      I1 => \coarse_delay[4]_i_2_n_0\,
      I2 => \FSM_sequential_state[2]_i_9_n_0\,
      I3 => \FSM_sequential_state[2]_i_10_n_0\,
      I4 => \coarse_delay_reg_n_0_[11]\,
      I5 => \coarse_delay_reg_n_0_[10]\,
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \pulses_to_send[15]_i_5_n_0\,
      O => \FSM_sequential_state[2]_i_5_n_0\
    );
\FSM_sequential_state[2]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \pulses_to_send_reg_n_0_[13]\,
      I1 => \pulses_to_send_reg_n_0_[14]\,
      O => \FSM_sequential_state[2]_i_6_n_0\
    );
\FSM_sequential_state[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \pulses_to_send_reg_n_0_[14]\,
      I1 => \pulses_to_send_reg_n_0_[13]\,
      I2 => \pulses_to_send_reg_n_0_[12]\,
      O => \FSM_sequential_state[2]_i_7_n_0\
    );
\FSM_sequential_state[2]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \coarse_delay_reg_n_0_[5]\,
      I1 => \coarse_delay_reg_n_0_[4]\,
      I2 => \coarse_delay_reg_n_0_[6]\,
      I3 => \coarse_delay_reg_n_0_[7]\,
      O => \FSM_sequential_state[2]_i_8_n_0\
    );
\FSM_sequential_state[2]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \coarse_delay_reg_n_0_[12]\,
      I1 => \coarse_delay_reg_n_0_[13]\,
      I2 => \coarse_delay_reg_n_0_[15]\,
      I3 => \coarse_delay_reg_n_0_[14]\,
      O => \FSM_sequential_state[2]_i_9_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_state[2]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => \state__1\(0),
      Q => \state__0\(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_state[2]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => \state__1\(1),
      Q => \state__0\(1)
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_state[2]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => \state__1\(2),
      Q => \state__0\(2)
    );
\clock_period[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \clock_period[23]_i_2_n_0\,
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => fifo_data(25),
      I4 => fifo_data(24),
      I5 => fifo_data(26),
      O => clock_period
    );
\clock_period[23]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      O => \clock_period[23]_i_2_n_0\
    );
\clock_period_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clock_period,
      CLR => fifo_read_i_2_n_0,
      D => fifo_data(0),
      Q => \clock_period_reg_n_0_[0]\
    );
\clock_period_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clock_period,
      CLR => fifo_read_i_2_n_0,
      D => fifo_data(10),
      Q => \clock_period_reg_n_0_[10]\
    );
\clock_period_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clock_period,
      CLR => fifo_read_i_2_n_0,
      D => fifo_data(11),
      Q => \clock_period_reg_n_0_[11]\
    );
\clock_period_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clock_period,
      CLR => fifo_read_i_2_n_0,
      D => fifo_data(12),
      Q => \clock_period_reg_n_0_[12]\
    );
\clock_period_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clock_period,
      CLR => fifo_read_i_2_n_0,
      D => fifo_data(13),
      Q => \clock_period_reg_n_0_[13]\
    );
\clock_period_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clock_period,
      CLR => fifo_read_i_2_n_0,
      D => fifo_data(14),
      Q => \clock_period_reg_n_0_[14]\
    );
\clock_period_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clock_period,
      CLR => fifo_read_i_2_n_0,
      D => fifo_data(15),
      Q => \clock_period_reg_n_0_[15]\
    );
\clock_period_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clock_period,
      CLR => fifo_read_i_2_n_0,
      D => fifo_data(16),
      Q => \clock_period_reg_n_0_[16]\
    );
\clock_period_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clock_period,
      CLR => fifo_read_i_2_n_0,
      D => fifo_data(17),
      Q => \clock_period_reg_n_0_[17]\
    );
\clock_period_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clock_period,
      CLR => fifo_read_i_2_n_0,
      D => fifo_data(18),
      Q => \clock_period_reg_n_0_[18]\
    );
\clock_period_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clock_period,
      CLR => fifo_read_i_2_n_0,
      D => fifo_data(19),
      Q => \clock_period_reg_n_0_[19]\
    );
\clock_period_reg[1]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => clock_period,
      D => fifo_data(1),
      PRE => fifo_read_i_2_n_0,
      Q => \clock_period_reg_n_0_[1]\
    );
\clock_period_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clock_period,
      CLR => fifo_read_i_2_n_0,
      D => fifo_data(20),
      Q => \clock_period_reg_n_0_[20]\
    );
\clock_period_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clock_period,
      CLR => fifo_read_i_2_n_0,
      D => fifo_data(21),
      Q => \clock_period_reg_n_0_[21]\
    );
\clock_period_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clock_period,
      CLR => fifo_read_i_2_n_0,
      D => fifo_data(22),
      Q => \clock_period_reg_n_0_[22]\
    );
\clock_period_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clock_period,
      CLR => fifo_read_i_2_n_0,
      D => fifo_data(23),
      Q => \clock_period_reg_n_0_[23]\
    );
\clock_period_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clock_period,
      CLR => fifo_read_i_2_n_0,
      D => fifo_data(2),
      Q => \clock_period_reg_n_0_[2]\
    );
\clock_period_reg[3]\: unisim.vcomponents.FDPE
     port map (
      C => clk,
      CE => clock_period,
      D => fifo_data(3),
      PRE => fifo_read_i_2_n_0,
      Q => \clock_period_reg_n_0_[3]\
    );
\clock_period_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clock_period,
      CLR => fifo_read_i_2_n_0,
      D => fifo_data(4),
      Q => \clock_period_reg_n_0_[4]\
    );
\clock_period_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clock_period,
      CLR => fifo_read_i_2_n_0,
      D => fifo_data(5),
      Q => \clock_period_reg_n_0_[5]\
    );
\clock_period_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clock_period,
      CLR => fifo_read_i_2_n_0,
      D => fifo_data(6),
      Q => \clock_period_reg_n_0_[6]\
    );
\clock_period_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clock_period,
      CLR => fifo_read_i_2_n_0,
      D => fifo_data(7),
      Q => \clock_period_reg_n_0_[7]\
    );
\clock_period_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clock_period,
      CLR => fifo_read_i_2_n_0,
      D => fifo_data(8),
      Q => \clock_period_reg_n_0_[8]\
    );
\clock_period_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => clock_period,
      CLR => fifo_read_i_2_n_0,
      D => fifo_data(9),
      Q => \clock_period_reg_n_0_[9]\
    );
\coarse_delay[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05057F4F"
    )
        port map (
      I0 => \coarse_delay_reg_n_0_[0]\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => fifo_data(8),
      I4 => \state__0\(2),
      O => \coarse_delay[0]_i_1_n_0\
    );
\coarse_delay[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"060F6F6F06006F6F"
    )
        port map (
      I0 => \coarse_delay[10]_i_2_n_0\,
      I1 => \coarse_delay_reg_n_0_[10]\,
      I2 => \state__0\(2),
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      I5 => fifo_data(18),
      O => \coarse_delay[10]_i_1_n_0\
    );
\coarse_delay[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \coarse_delay[8]_i_2_n_0\,
      I1 => \coarse_delay_reg_n_0_[9]\,
      I2 => \coarse_delay_reg_n_0_[8]\,
      O => \coarse_delay[10]_i_2_n_0\
    );
\coarse_delay[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"060F6F6F06006F6F"
    )
        port map (
      I0 => \coarse_delay[11]_i_2_n_0\,
      I1 => \coarse_delay_reg_n_0_[11]\,
      I2 => \state__0\(2),
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      I5 => fifo_data(19),
      O => \coarse_delay[11]_i_1_n_0\
    );
\coarse_delay[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \coarse_delay_reg_n_0_[8]\,
      I1 => \coarse_delay_reg_n_0_[9]\,
      I2 => \coarse_delay[8]_i_2_n_0\,
      I3 => \coarse_delay_reg_n_0_[10]\,
      O => \coarse_delay[11]_i_2_n_0\
    );
\coarse_delay[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"060F6F6F06006F6F"
    )
        port map (
      I0 => \coarse_delay[13]_i_3_n_0\,
      I1 => \coarse_delay_reg_n_0_[12]\,
      I2 => \state__0\(2),
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      I5 => fifo_data(20),
      O => \coarse_delay[12]_i_1_n_0\
    );
\coarse_delay[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8288"
    )
        port map (
      I0 => \coarse_delay[13]_i_2_n_0\,
      I1 => \coarse_delay_reg_n_0_[13]\,
      I2 => \coarse_delay_reg_n_0_[12]\,
      I3 => \coarse_delay[13]_i_3_n_0\,
      I4 => \coarse_delay[15]_i_3_n_0\,
      O => \coarse_delay[13]_i_1_n_0\
    );
\coarse_delay[13]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3F2F"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(2),
      I2 => \state__0\(1),
      I3 => fifo_data(21),
      O => \coarse_delay[13]_i_2_n_0\
    );
\coarse_delay[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \coarse_delay_reg_n_0_[10]\,
      I1 => \coarse_delay[8]_i_2_n_0\,
      I2 => \coarse_delay_reg_n_0_[9]\,
      I3 => \coarse_delay_reg_n_0_[8]\,
      I4 => \coarse_delay_reg_n_0_[11]\,
      O => \coarse_delay[13]_i_3_n_0\
    );
\coarse_delay[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"060F6F6F06006F6F"
    )
        port map (
      I0 => \coarse_delay[15]_i_4_n_0\,
      I1 => \coarse_delay_reg_n_0_[14]\,
      I2 => \state__0\(2),
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      I5 => fifo_data(22),
      O => \coarse_delay[14]_i_1_n_0\
    );
\coarse_delay[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00004202"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \m_axis_tdata[240]_INST_0_i_1_n_0\,
      I4 => \FSM_sequential_state[2]_i_4_n_0\,
      I5 => \fine_delay[3]_i_1_n_0\,
      O => coarse_delay
    );
\coarse_delay[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFEFEEEE"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_4_n_0\,
      I1 => \coarse_delay[15]_i_3_n_0\,
      I2 => \coarse_delay[15]_i_4_n_0\,
      I3 => \coarse_delay_reg_n_0_[14]\,
      I4 => \coarse_delay_reg_n_0_[15]\,
      I5 => \coarse_delay[15]_i_5_n_0\,
      O => \coarse_delay[15]_i_2_n_0\
    );
\coarse_delay[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      O => \coarse_delay[15]_i_3_n_0\
    );
\coarse_delay[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
        port map (
      I0 => \coarse_delay_reg_n_0_[11]\,
      I1 => \coarse_delay_reg_n_0_[8]\,
      I2 => \coarse_delay_reg_n_0_[9]\,
      I3 => \coarse_delay[8]_i_2_n_0\,
      I4 => \coarse_delay_reg_n_0_[10]\,
      I5 => \coarse_delay[15]_i_6_n_0\,
      O => \coarse_delay[15]_i_4_n_0\
    );
\coarse_delay[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC04"
    )
        port map (
      I0 => fifo_data(23),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      O => \coarse_delay[15]_i_5_n_0\
    );
\coarse_delay[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \coarse_delay_reg_n_0_[13]\,
      I1 => \coarse_delay_reg_n_0_[12]\,
      O => \coarse_delay[15]_i_6_n_0\
    );
\coarse_delay[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"009900999FFF90FF"
    )
        port map (
      I0 => \coarse_delay_reg_n_0_[1]\,
      I1 => \coarse_delay_reg_n_0_[0]\,
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => fifo_data(9),
      I5 => \state__0\(2),
      O => \coarse_delay[1]_i_1_n_0\
    );
\coarse_delay[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"090F9F9F09009F9F"
    )
        port map (
      I0 => \coarse_delay_reg_n_0_[2]\,
      I1 => \coarse_delay[2]_i_2_n_0\,
      I2 => \state__0\(2),
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      I5 => fifo_data(10),
      O => \coarse_delay[2]_i_1_n_0\
    );
\coarse_delay[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \coarse_delay_reg_n_0_[1]\,
      I1 => \coarse_delay_reg_n_0_[0]\,
      O => \coarse_delay[2]_i_2_n_0\
    );
\coarse_delay[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFEAAAB"
    )
        port map (
      I0 => \coarse_delay[15]_i_3_n_0\,
      I1 => \coarse_delay_reg_n_0_[2]\,
      I2 => \coarse_delay_reg_n_0_[0]\,
      I3 => \coarse_delay_reg_n_0_[1]\,
      I4 => \coarse_delay_reg_n_0_[3]\,
      I5 => \coarse_delay[3]_i_2_n_0\,
      O => \coarse_delay[3]_i_1_n_0\
    );
\coarse_delay[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC04"
    )
        port map (
      I0 => fifo_data(11),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \state__0\(2),
      O => \coarse_delay[3]_i_2_n_0\
    );
\coarse_delay[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"060F6F6F06006F6F"
    )
        port map (
      I0 => \coarse_delay[4]_i_2_n_0\,
      I1 => \coarse_delay_reg_n_0_[4]\,
      I2 => \state__0\(2),
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      I5 => fifo_data(12),
      O => \coarse_delay[4]_i_1_n_0\
    );
\coarse_delay[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \coarse_delay_reg_n_0_[0]\,
      I1 => \coarse_delay_reg_n_0_[1]\,
      I2 => \coarse_delay_reg_n_0_[3]\,
      I3 => \coarse_delay_reg_n_0_[2]\,
      O => \coarse_delay[4]_i_2_n_0\
    );
\coarse_delay[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"090F9F9F09009F9F"
    )
        port map (
      I0 => \coarse_delay[5]_i_2_n_0\,
      I1 => \coarse_delay_reg_n_0_[5]\,
      I2 => \state__0\(2),
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      I5 => fifo_data(13),
      O => \coarse_delay[5]_i_1_n_0\
    );
\coarse_delay[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \coarse_delay_reg_n_0_[4]\,
      I1 => \coarse_delay_reg_n_0_[2]\,
      I2 => \coarse_delay_reg_n_0_[3]\,
      I3 => \coarse_delay_reg_n_0_[1]\,
      I4 => \coarse_delay_reg_n_0_[0]\,
      O => \coarse_delay[5]_i_2_n_0\
    );
\coarse_delay[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"060F6F6F06006F6F"
    )
        port map (
      I0 => \coarse_delay[6]_i_2_n_0\,
      I1 => \coarse_delay_reg_n_0_[6]\,
      I2 => \state__0\(2),
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      I5 => fifo_data(14),
      O => \coarse_delay[6]_i_1_n_0\
    );
\coarse_delay[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \coarse_delay_reg_n_0_[5]\,
      I1 => \coarse_delay_reg_n_0_[0]\,
      I2 => \coarse_delay_reg_n_0_[1]\,
      I3 => \coarse_delay_reg_n_0_[3]\,
      I4 => \coarse_delay_reg_n_0_[2]\,
      I5 => \coarse_delay_reg_n_0_[4]\,
      O => \coarse_delay[6]_i_2_n_0\
    );
\coarse_delay[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22AA20AA"
    )
        port map (
      I0 => \coarse_delay[7]_i_2_n_0\,
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      I4 => fifo_data(15),
      O => \coarse_delay[7]_i_1_n_0\
    );
\coarse_delay[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAA9AA"
    )
        port map (
      I0 => \coarse_delay_reg_n_0_[7]\,
      I1 => \coarse_delay_reg_n_0_[6]\,
      I2 => \coarse_delay_reg_n_0_[5]\,
      I3 => \coarse_delay[4]_i_2_n_0\,
      I4 => \coarse_delay_reg_n_0_[4]\,
      I5 => \coarse_delay[15]_i_3_n_0\,
      O => \coarse_delay[7]_i_2_n_0\
    );
\coarse_delay[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"060F6F6F06006F6F"
    )
        port map (
      I0 => \coarse_delay[8]_i_2_n_0\,
      I1 => \coarse_delay_reg_n_0_[8]\,
      I2 => \state__0\(2),
      I3 => \state__0\(0),
      I4 => \state__0\(1),
      I5 => fifo_data(16),
      O => \coarse_delay[8]_i_1_n_0\
    );
\coarse_delay[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \coarse_delay[4]_i_2_n_0\,
      I1 => \coarse_delay_reg_n_0_[7]\,
      I2 => \coarse_delay_reg_n_0_[6]\,
      I3 => \coarse_delay_reg_n_0_[4]\,
      I4 => \coarse_delay_reg_n_0_[5]\,
      O => \coarse_delay[8]_i_2_n_0\
    );
\coarse_delay[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0A0AAA8A"
    )
        port map (
      I0 => \coarse_delay[9]_i_2_n_0\,
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => fifo_data(17),
      I4 => \state__0\(2),
      O => \coarse_delay[9]_i_1_n_0\
    );
\coarse_delay[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF151515FFFF15"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => \coarse_delay[8]_i_2_n_0\,
      I4 => \coarse_delay_reg_n_0_[9]\,
      I5 => \coarse_delay_reg_n_0_[8]\,
      O => \coarse_delay[9]_i_2_n_0\
    );
\coarse_delay_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => coarse_delay,
      CLR => fifo_read_i_2_n_0,
      D => \coarse_delay[0]_i_1_n_0\,
      Q => \coarse_delay_reg_n_0_[0]\
    );
\coarse_delay_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => coarse_delay,
      CLR => fifo_read_i_2_n_0,
      D => \coarse_delay[10]_i_1_n_0\,
      Q => \coarse_delay_reg_n_0_[10]\
    );
\coarse_delay_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => coarse_delay,
      CLR => fifo_read_i_2_n_0,
      D => \coarse_delay[11]_i_1_n_0\,
      Q => \coarse_delay_reg_n_0_[11]\
    );
\coarse_delay_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => coarse_delay,
      CLR => fifo_read_i_2_n_0,
      D => \coarse_delay[12]_i_1_n_0\,
      Q => \coarse_delay_reg_n_0_[12]\
    );
\coarse_delay_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => coarse_delay,
      CLR => fifo_read_i_2_n_0,
      D => \coarse_delay[13]_i_1_n_0\,
      Q => \coarse_delay_reg_n_0_[13]\
    );
\coarse_delay_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => coarse_delay,
      CLR => fifo_read_i_2_n_0,
      D => \coarse_delay[14]_i_1_n_0\,
      Q => \coarse_delay_reg_n_0_[14]\
    );
\coarse_delay_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => coarse_delay,
      CLR => fifo_read_i_2_n_0,
      D => \coarse_delay[15]_i_2_n_0\,
      Q => \coarse_delay_reg_n_0_[15]\
    );
\coarse_delay_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => coarse_delay,
      CLR => fifo_read_i_2_n_0,
      D => \coarse_delay[1]_i_1_n_0\,
      Q => \coarse_delay_reg_n_0_[1]\
    );
\coarse_delay_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => coarse_delay,
      CLR => fifo_read_i_2_n_0,
      D => \coarse_delay[2]_i_1_n_0\,
      Q => \coarse_delay_reg_n_0_[2]\
    );
\coarse_delay_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => coarse_delay,
      CLR => fifo_read_i_2_n_0,
      D => \coarse_delay[3]_i_1_n_0\,
      Q => \coarse_delay_reg_n_0_[3]\
    );
\coarse_delay_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => coarse_delay,
      CLR => fifo_read_i_2_n_0,
      D => \coarse_delay[4]_i_1_n_0\,
      Q => \coarse_delay_reg_n_0_[4]\
    );
\coarse_delay_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => coarse_delay,
      CLR => fifo_read_i_2_n_0,
      D => \coarse_delay[5]_i_1_n_0\,
      Q => \coarse_delay_reg_n_0_[5]\
    );
\coarse_delay_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => coarse_delay,
      CLR => fifo_read_i_2_n_0,
      D => \coarse_delay[6]_i_1_n_0\,
      Q => \coarse_delay_reg_n_0_[6]\
    );
\coarse_delay_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => coarse_delay,
      CLR => fifo_read_i_2_n_0,
      D => \coarse_delay[7]_i_1_n_0\,
      Q => \coarse_delay_reg_n_0_[7]\
    );
\coarse_delay_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => coarse_delay,
      CLR => fifo_read_i_2_n_0,
      D => \coarse_delay[8]_i_1_n_0\,
      Q => \coarse_delay_reg_n_0_[8]\
    );
\coarse_delay_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => coarse_delay,
      CLR => fifo_read_i_2_n_0,
      D => \coarse_delay[9]_i_1_n_0\,
      Q => \coarse_delay_reg_n_0_[9]\
    );
fifo_read_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF10001"
    )
        port map (
      I0 => \state__0\(0),
      I1 => fifo_empty,
      I2 => \state__0\(2),
      I3 => \state__0\(1),
      I4 => \^fifo_read\,
      O => fifo_read_i_1_n_0
    );
fifo_read_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => fifo_read_i_2_n_0
    );
fifo_read_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => fifo_read_i_1_n_0,
      Q => \^fifo_read\
    );
\fine_delay[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fifo_data(0),
      I1 => \state__0\(2),
      O => \fine_delay[0]_i_1_n_0\
    );
\fine_delay[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fifo_data(1),
      I1 => \state__0\(2),
      O => \fine_delay[1]_i_1_n_0\
    );
\fine_delay[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fifo_data(2),
      I1 => \state__0\(2),
      O => \fine_delay[2]_i_1_n_0\
    );
\fine_delay[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => fifo_data(25),
      I1 => fifo_data(26),
      I2 => fifo_data(24),
      I3 => \state__0\(1),
      I4 => \FSM_sequential_state[0]_i_2_n_0\,
      I5 => \fine_delay[3]_i_3_n_0\,
      O => \fine_delay[3]_i_1_n_0\
    );
\fine_delay[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fifo_data(3),
      I1 => \state__0\(2),
      O => \fine_delay[3]_i_2_n_0\
    );
\fine_delay[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      O => \fine_delay[3]_i_3_n_0\
    );
\fine_delay_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \fine_delay[3]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => \fine_delay[0]_i_1_n_0\,
      Q => m_axis_tdata_int1(4)
    );
\fine_delay_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \fine_delay[3]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => \fine_delay[1]_i_1_n_0\,
      Q => m_axis_tdata_int1(5)
    );
\fine_delay_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \fine_delay[3]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => \fine_delay[2]_i_1_n_0\,
      Q => m_axis_tdata_int1(6)
    );
\fine_delay_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \fine_delay[3]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => \fine_delay[3]_i_2_n_0\,
      Q => m_axis_tdata_int1(7)
    );
is_phase_meas_mode_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F222F2F20222020"
    )
        port map (
      I0 => fifo_data(24),
      I1 => \state__0\(2),
      I2 => is_phase_meas_mode_i_2_n_0,
      I3 => is_phase_meas_mode_i_3_n_0,
      I4 => \pulses_to_send[15]_i_3_n_0\,
      I5 => is_phase_meas_mode_reg_n_0,
      O => is_phase_meas_mode_i_1_n_0
    );
is_phase_meas_mode_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040004040000000"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \clock_period[23]_i_2_n_0\,
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => fifo_data(25),
      I4 => fifo_data(24),
      I5 => fifo_data(26),
      O => is_phase_meas_mode_i_2_n_0
    );
is_phase_meas_mode_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      O => is_phase_meas_mode_i_3_n_0
    );
is_phase_meas_mode_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => is_phase_meas_mode_i_1_n_0,
      Q => is_phase_meas_mode_reg_n_0
    );
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \m_axis_tdata_int_reg_n_0_[14]\,
      I1 => is_phase_meas_mode_reg_n_0,
      O => m_axis_tdata(0)
    );
\m_axis_tdata[112]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \m_axis_tdata_int_reg_n_0_[126]\,
      I1 => is_phase_meas_mode_reg_n_0,
      O => m_axis_tdata(7)
    );
\m_axis_tdata[128]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \m_axis_tdata_int_reg_n_0_[142]\,
      I1 => is_phase_meas_mode_reg_n_0,
      O => m_axis_tdata(8)
    );
\m_axis_tdata[144]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \m_axis_tdata_int_reg_n_0_[158]\,
      I1 => is_phase_meas_mode_reg_n_0,
      O => m_axis_tdata(9)
    );
\m_axis_tdata[160]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \m_axis_tdata_int_reg_n_0_[174]\,
      I1 => is_phase_meas_mode_reg_n_0,
      O => m_axis_tdata(10)
    );
\m_axis_tdata[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \m_axis_tdata_int_reg_n_0_[30]\,
      I1 => is_phase_meas_mode_reg_n_0,
      O => m_axis_tdata(1)
    );
\m_axis_tdata[176]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \m_axis_tdata_int_reg_n_0_[190]\,
      I1 => is_phase_meas_mode_reg_n_0,
      O => m_axis_tdata(11)
    );
\m_axis_tdata[192]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \m_axis_tdata_int_reg_n_0_[206]\,
      I1 => is_phase_meas_mode_reg_n_0,
      O => m_axis_tdata(12)
    );
\m_axis_tdata[208]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \m_axis_tdata_int_reg_n_0_[222]\,
      I1 => is_phase_meas_mode_reg_n_0,
      O => m_axis_tdata(13)
    );
\m_axis_tdata[224]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \m_axis_tdata_int_reg_n_0_[238]\,
      I1 => is_phase_meas_mode_reg_n_0,
      O => m_axis_tdata(14)
    );
\m_axis_tdata[240]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \m_axis_tdata[240]_INST_0_i_1_n_0\,
      I1 => is_phase_meas_mode_reg_n_0,
      I2 => \m_axis_tdata_int_reg_n_0_[254]\,
      O => m_axis_tdata(15)
    );
\m_axis_tdata[240]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \m_axis_tdata[240]_INST_0_i_2_n_0\,
      I1 => \m_axis_tdata[240]_INST_0_i_3_n_0\,
      I2 => \m_axis_tdata[240]_INST_0_i_4_n_0\,
      I3 => \m_axis_tdata[240]_INST_0_i_5_n_0\,
      I4 => \m_axis_tdata[240]_INST_0_i_6_n_0\,
      O => \m_axis_tdata[240]_INST_0_i_1_n_0\
    );
\m_axis_tdata[240]_INST_0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => main_clock(29),
      I1 => main_clock(28),
      I2 => main_clock(39),
      I3 => main_clock(38),
      O => \m_axis_tdata[240]_INST_0_i_10_n_0\
    );
\m_axis_tdata[240]_INST_0_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => main_clock(41),
      I1 => main_clock(40),
      I2 => main_clock(45),
      I3 => main_clock(44),
      O => \m_axis_tdata[240]_INST_0_i_11_n_0\
    );
\m_axis_tdata[240]_INST_0_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => main_clock(20),
      I1 => main_clock(15),
      I2 => main_clock(18),
      I3 => main_clock(6),
      O => \m_axis_tdata[240]_INST_0_i_12_n_0\
    );
\m_axis_tdata[240]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => main_clock(0),
      I1 => main_clock(19),
      I2 => main_clock(2),
      I3 => main_clock(7),
      I4 => \m_axis_tdata[240]_INST_0_i_7_n_0\,
      O => \m_axis_tdata[240]_INST_0_i_2_n_0\
    );
\m_axis_tdata[240]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => main_clock(9),
      I1 => main_clock(21),
      I2 => main_clock(8),
      I3 => main_clock(10),
      I4 => \m_axis_tdata[240]_INST_0_i_8_n_0\,
      O => \m_axis_tdata[240]_INST_0_i_3_n_0\
    );
\m_axis_tdata[240]_INST_0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \m_axis_tdata[240]_INST_0_i_9_n_0\,
      I1 => \m_axis_tdata[240]_INST_0_i_10_n_0\,
      I2 => main_clock(35),
      I3 => main_clock(34),
      I4 => main_clock(37),
      I5 => main_clock(36),
      O => \m_axis_tdata[240]_INST_0_i_4_n_0\
    );
\m_axis_tdata[240]_INST_0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => main_clock(32),
      I1 => main_clock(33),
      I2 => main_clock(26),
      I3 => main_clock(27),
      I4 => \m_axis_tdata[240]_INST_0_i_11_n_0\,
      O => \m_axis_tdata[240]_INST_0_i_5_n_0\
    );
\m_axis_tdata[240]_INST_0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => main_clock(11),
      I1 => main_clock(16),
      I2 => main_clock(3),
      I3 => main_clock(12),
      I4 => \m_axis_tdata[240]_INST_0_i_12_n_0\,
      O => \m_axis_tdata[240]_INST_0_i_6_n_0\
    );
\m_axis_tdata[240]_INST_0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => main_clock(5),
      I1 => main_clock(1),
      I2 => main_clock(22),
      I3 => main_clock(4),
      O => \m_axis_tdata[240]_INST_0_i_7_n_0\
    );
\m_axis_tdata[240]_INST_0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => main_clock(17),
      I1 => main_clock(13),
      I2 => main_clock(23),
      I3 => main_clock(14),
      O => \m_axis_tdata[240]_INST_0_i_8_n_0\
    );
\m_axis_tdata[240]_INST_0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => main_clock(25),
      I1 => main_clock(24),
      I2 => main_clock(42),
      I3 => main_clock(43),
      I4 => main_clock(30),
      I5 => main_clock(31),
      O => \m_axis_tdata[240]_INST_0_i_9_n_0\
    );
\m_axis_tdata[32]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \m_axis_tdata_int_reg_n_0_[46]\,
      I1 => is_phase_meas_mode_reg_n_0,
      O => m_axis_tdata(2)
    );
\m_axis_tdata[48]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \m_axis_tdata_int_reg_n_0_[62]\,
      I1 => is_phase_meas_mode_reg_n_0,
      O => m_axis_tdata(3)
    );
\m_axis_tdata[64]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \m_axis_tdata_int_reg_n_0_[78]\,
      I1 => is_phase_meas_mode_reg_n_0,
      O => m_axis_tdata(4)
    );
\m_axis_tdata[80]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \m_axis_tdata_int_reg_n_0_[94]\,
      I1 => is_phase_meas_mode_reg_n_0,
      O => m_axis_tdata(5)
    );
\m_axis_tdata[96]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \m_axis_tdata_int_reg_n_0_[110]\,
      I1 => is_phase_meas_mode_reg_n_0,
      O => m_axis_tdata(6)
    );
\m_axis_tdata_int[110]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => m_axis_tdata_int1(5),
      I1 => m_axis_tdata_int1(4),
      I2 => m_axis_tdata_int1(6),
      I3 => \m_axis_tdata_int[126]_i_2_n_0\,
      O => \m_axis_tdata_int[110]_i_1_n_0\
    );
\m_axis_tdata_int[126]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => m_axis_tdata_int1(5),
      I1 => m_axis_tdata_int1(4),
      I2 => m_axis_tdata_int1(6),
      I3 => \m_axis_tdata_int[126]_i_2_n_0\,
      O => \m_axis_tdata_int[126]_i_1_n_0\
    );
\m_axis_tdata_int[126]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B1FF"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      I3 => m_axis_tdata_int1(7),
      O => \m_axis_tdata_int[126]_i_2_n_0\
    );
\m_axis_tdata_int[142]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \m_axis_tdata_int[238]_i_2_n_0\,
      I1 => m_axis_tdata_int1(5),
      I2 => m_axis_tdata_int1(4),
      I3 => m_axis_tdata_int1(6),
      O => \m_axis_tdata_int[142]_i_1_n_0\
    );
\m_axis_tdata_int[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => m_axis_tdata_int1(5),
      I1 => m_axis_tdata_int1(4),
      I2 => m_axis_tdata_int1(6),
      I3 => \m_axis_tdata_int[126]_i_2_n_0\,
      O => \m_axis_tdata_int[14]_i_1_n_0\
    );
\m_axis_tdata_int[158]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \m_axis_tdata_int[238]_i_2_n_0\,
      I1 => m_axis_tdata_int1(4),
      I2 => m_axis_tdata_int1(5),
      I3 => m_axis_tdata_int1(6),
      O => \m_axis_tdata_int[158]_i_1_n_0\
    );
\m_axis_tdata_int[174]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \m_axis_tdata_int[238]_i_2_n_0\,
      I1 => m_axis_tdata_int1(5),
      I2 => m_axis_tdata_int1(4),
      I3 => m_axis_tdata_int1(6),
      O => \m_axis_tdata_int[174]_i_1_n_0\
    );
\m_axis_tdata_int[190]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \m_axis_tdata_int[238]_i_2_n_0\,
      I1 => m_axis_tdata_int1(5),
      I2 => m_axis_tdata_int1(4),
      I3 => m_axis_tdata_int1(6),
      O => \m_axis_tdata_int[190]_i_1_n_0\
    );
\m_axis_tdata_int[206]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \m_axis_tdata_int[238]_i_2_n_0\,
      I1 => m_axis_tdata_int1(5),
      I2 => m_axis_tdata_int1(4),
      I3 => m_axis_tdata_int1(6),
      O => \m_axis_tdata_int[206]_i_1_n_0\
    );
\m_axis_tdata_int[222]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \m_axis_tdata_int[238]_i_2_n_0\,
      I1 => m_axis_tdata_int1(4),
      I2 => m_axis_tdata_int1(5),
      I3 => m_axis_tdata_int1(6),
      O => \m_axis_tdata_int[222]_i_1_n_0\
    );
\m_axis_tdata_int[238]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => m_axis_tdata_int1(5),
      I1 => m_axis_tdata_int1(4),
      I2 => m_axis_tdata_int1(6),
      I3 => \m_axis_tdata_int[238]_i_2_n_0\,
      O => \m_axis_tdata_int[238]_i_1_n_0\
    );
\m_axis_tdata_int[238]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1054"
    )
        port map (
      I0 => m_axis_tdata_int1(7),
      I1 => \state__0\(2),
      I2 => \state__0\(0),
      I3 => \state__0\(1),
      O => \m_axis_tdata_int[238]_i_2_n_0\
    );
\m_axis_tdata_int[254]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FF800000FF00"
    )
        port map (
      I0 => \m_axis_tdata[240]_INST_0_i_1_n_0\,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \m_axis_tdata_int[254]_i_3_n_0\,
      I4 => \state__0\(2),
      I5 => \FSM_sequential_state[2]_i_4_n_0\,
      O => m_axis_tdata_int
    );
\m_axis_tdata_int[254]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"040804AA"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \m_axis_tdata_int[254]_i_4_n_0\,
      I2 => m_axis_tdata_int1(7),
      I3 => \state__0\(2),
      I4 => \state__0\(0),
      O => \m_axis_tdata_int[254]_i_2_n_0\
    );
\m_axis_tdata_int[254]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010055555555"
    )
        port map (
      I0 => \state__0\(0),
      I1 => fifo_data(25),
      I2 => \m_axis_tdata_int[254]_i_5_n_0\,
      I3 => \FSM_sequential_state[0]_i_2_n_0\,
      I4 => \state__0\(2),
      I5 => \state__0\(1),
      O => \m_axis_tdata_int[254]_i_3_n_0\
    );
\m_axis_tdata_int[254]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => m_axis_tdata_int1(6),
      I1 => m_axis_tdata_int1(4),
      I2 => m_axis_tdata_int1(5),
      O => \m_axis_tdata_int[254]_i_4_n_0\
    );
\m_axis_tdata_int[254]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => fifo_data(24),
      I1 => fifo_data(26),
      O => \m_axis_tdata_int[254]_i_5_n_0\
    );
\m_axis_tdata_int[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => m_axis_tdata_int1(4),
      I1 => m_axis_tdata_int1(5),
      I2 => m_axis_tdata_int1(6),
      I3 => \m_axis_tdata_int[126]_i_2_n_0\,
      O => \m_axis_tdata_int[30]_i_1_n_0\
    );
\m_axis_tdata_int[46]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => m_axis_tdata_int1(5),
      I1 => m_axis_tdata_int1(4),
      I2 => m_axis_tdata_int1(6),
      I3 => \m_axis_tdata_int[126]_i_2_n_0\,
      O => \m_axis_tdata_int[46]_i_1_n_0\
    );
\m_axis_tdata_int[62]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => m_axis_tdata_int1(5),
      I1 => m_axis_tdata_int1(4),
      I2 => m_axis_tdata_int1(6),
      I3 => \m_axis_tdata_int[126]_i_2_n_0\,
      O => \m_axis_tdata_int[62]_i_1_n_0\
    );
\m_axis_tdata_int[78]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => m_axis_tdata_int1(5),
      I1 => m_axis_tdata_int1(4),
      I2 => m_axis_tdata_int1(6),
      I3 => \m_axis_tdata_int[126]_i_2_n_0\,
      O => \m_axis_tdata_int[78]_i_1_n_0\
    );
\m_axis_tdata_int[94]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => m_axis_tdata_int1(4),
      I1 => m_axis_tdata_int1(5),
      I2 => m_axis_tdata_int1(6),
      I3 => \m_axis_tdata_int[126]_i_2_n_0\,
      O => \m_axis_tdata_int[94]_i_1_n_0\
    );
\m_axis_tdata_int_reg[110]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => m_axis_tdata_int,
      CLR => fifo_read_i_2_n_0,
      D => \m_axis_tdata_int[110]_i_1_n_0\,
      Q => \m_axis_tdata_int_reg_n_0_[110]\
    );
\m_axis_tdata_int_reg[126]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => m_axis_tdata_int,
      CLR => fifo_read_i_2_n_0,
      D => \m_axis_tdata_int[126]_i_1_n_0\,
      Q => \m_axis_tdata_int_reg_n_0_[126]\
    );
\m_axis_tdata_int_reg[142]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => m_axis_tdata_int,
      CLR => fifo_read_i_2_n_0,
      D => \m_axis_tdata_int[142]_i_1_n_0\,
      Q => \m_axis_tdata_int_reg_n_0_[142]\
    );
\m_axis_tdata_int_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => m_axis_tdata_int,
      CLR => fifo_read_i_2_n_0,
      D => \m_axis_tdata_int[14]_i_1_n_0\,
      Q => \m_axis_tdata_int_reg_n_0_[14]\
    );
\m_axis_tdata_int_reg[158]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => m_axis_tdata_int,
      CLR => fifo_read_i_2_n_0,
      D => \m_axis_tdata_int[158]_i_1_n_0\,
      Q => \m_axis_tdata_int_reg_n_0_[158]\
    );
\m_axis_tdata_int_reg[174]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => m_axis_tdata_int,
      CLR => fifo_read_i_2_n_0,
      D => \m_axis_tdata_int[174]_i_1_n_0\,
      Q => \m_axis_tdata_int_reg_n_0_[174]\
    );
\m_axis_tdata_int_reg[190]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => m_axis_tdata_int,
      CLR => fifo_read_i_2_n_0,
      D => \m_axis_tdata_int[190]_i_1_n_0\,
      Q => \m_axis_tdata_int_reg_n_0_[190]\
    );
\m_axis_tdata_int_reg[206]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => m_axis_tdata_int,
      CLR => fifo_read_i_2_n_0,
      D => \m_axis_tdata_int[206]_i_1_n_0\,
      Q => \m_axis_tdata_int_reg_n_0_[206]\
    );
\m_axis_tdata_int_reg[222]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => m_axis_tdata_int,
      CLR => fifo_read_i_2_n_0,
      D => \m_axis_tdata_int[222]_i_1_n_0\,
      Q => \m_axis_tdata_int_reg_n_0_[222]\
    );
\m_axis_tdata_int_reg[238]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => m_axis_tdata_int,
      CLR => fifo_read_i_2_n_0,
      D => \m_axis_tdata_int[238]_i_1_n_0\,
      Q => \m_axis_tdata_int_reg_n_0_[238]\
    );
\m_axis_tdata_int_reg[254]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => m_axis_tdata_int,
      CLR => fifo_read_i_2_n_0,
      D => \m_axis_tdata_int[254]_i_2_n_0\,
      Q => \m_axis_tdata_int_reg_n_0_[254]\
    );
\m_axis_tdata_int_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => m_axis_tdata_int,
      CLR => fifo_read_i_2_n_0,
      D => \m_axis_tdata_int[30]_i_1_n_0\,
      Q => \m_axis_tdata_int_reg_n_0_[30]\
    );
\m_axis_tdata_int_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => m_axis_tdata_int,
      CLR => fifo_read_i_2_n_0,
      D => \m_axis_tdata_int[46]_i_1_n_0\,
      Q => \m_axis_tdata_int_reg_n_0_[46]\
    );
\m_axis_tdata_int_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => m_axis_tdata_int,
      CLR => fifo_read_i_2_n_0,
      D => \m_axis_tdata_int[62]_i_1_n_0\,
      Q => \m_axis_tdata_int_reg_n_0_[62]\
    );
\m_axis_tdata_int_reg[78]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => m_axis_tdata_int,
      CLR => fifo_read_i_2_n_0,
      D => \m_axis_tdata_int[78]_i_1_n_0\,
      Q => \m_axis_tdata_int_reg_n_0_[78]\
    );
\m_axis_tdata_int_reg[94]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => m_axis_tdata_int,
      CLR => fifo_read_i_2_n_0,
      D => \m_axis_tdata_int[94]_i_1_n_0\,
      Q => \m_axis_tdata_int_reg_n_0_[94]\
    );
main_clock0_carry: unisim.vcomponents.CARRY8
     port map (
      CI => main_clock(0),
      CI_TOP => '0',
      CO(7) => main_clock0_carry_n_0,
      CO(6) => main_clock0_carry_n_1,
      CO(5) => main_clock0_carry_n_2,
      CO(4) => main_clock0_carry_n_3,
      CO(3) => main_clock0_carry_n_4,
      CO(2) => main_clock0_carry_n_5,
      CO(1) => main_clock0_carry_n_6,
      CO(0) => main_clock0_carry_n_7,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => main_clock0(8 downto 1),
      S(7 downto 0) => main_clock(8 downto 1)
    );
\main_clock0_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => main_clock0_carry_n_0,
      CI_TOP => '0',
      CO(7) => \main_clock0_carry__0_n_0\,
      CO(6) => \main_clock0_carry__0_n_1\,
      CO(5) => \main_clock0_carry__0_n_2\,
      CO(4) => \main_clock0_carry__0_n_3\,
      CO(3) => \main_clock0_carry__0_n_4\,
      CO(2) => \main_clock0_carry__0_n_5\,
      CO(1) => \main_clock0_carry__0_n_6\,
      CO(0) => \main_clock0_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => main_clock0(16 downto 9),
      S(7 downto 0) => main_clock(16 downto 9)
    );
\main_clock0_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \main_clock0_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \main_clock0_carry__1_n_0\,
      CO(6) => \main_clock0_carry__1_n_1\,
      CO(5) => \main_clock0_carry__1_n_2\,
      CO(4) => \main_clock0_carry__1_n_3\,
      CO(3) => \main_clock0_carry__1_n_4\,
      CO(2) => \main_clock0_carry__1_n_5\,
      CO(1) => \main_clock0_carry__1_n_6\,
      CO(0) => \main_clock0_carry__1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => main_clock0(24 downto 17),
      S(7 downto 0) => main_clock(24 downto 17)
    );
\main_clock0_carry__2\: unisim.vcomponents.CARRY8
     port map (
      CI => \main_clock0_carry__1_n_0\,
      CI_TOP => '0',
      CO(7) => \main_clock0_carry__2_n_0\,
      CO(6) => \main_clock0_carry__2_n_1\,
      CO(5) => \main_clock0_carry__2_n_2\,
      CO(4) => \main_clock0_carry__2_n_3\,
      CO(3) => \main_clock0_carry__2_n_4\,
      CO(2) => \main_clock0_carry__2_n_5\,
      CO(1) => \main_clock0_carry__2_n_6\,
      CO(0) => \main_clock0_carry__2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => main_clock0(32 downto 25),
      S(7 downto 0) => main_clock(32 downto 25)
    );
\main_clock0_carry__3\: unisim.vcomponents.CARRY8
     port map (
      CI => \main_clock0_carry__2_n_0\,
      CI_TOP => '0',
      CO(7) => \main_clock0_carry__3_n_0\,
      CO(6) => \main_clock0_carry__3_n_1\,
      CO(5) => \main_clock0_carry__3_n_2\,
      CO(4) => \main_clock0_carry__3_n_3\,
      CO(3) => \main_clock0_carry__3_n_4\,
      CO(2) => \main_clock0_carry__3_n_5\,
      CO(1) => \main_clock0_carry__3_n_6\,
      CO(0) => \main_clock0_carry__3_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => main_clock0(40 downto 33),
      S(7 downto 0) => main_clock(40 downto 33)
    );
\main_clock0_carry__4\: unisim.vcomponents.CARRY8
     port map (
      CI => \main_clock0_carry__3_n_0\,
      CI_TOP => '0',
      CO(7 downto 4) => \NLW_main_clock0_carry__4_CO_UNCONNECTED\(7 downto 4),
      CO(3) => \main_clock0_carry__4_n_4\,
      CO(2) => \main_clock0_carry__4_n_5\,
      CO(1) => \main_clock0_carry__4_n_6\,
      CO(0) => \main_clock0_carry__4_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 5) => \NLW_main_clock0_carry__4_O_UNCONNECTED\(7 downto 5),
      O(4 downto 0) => main_clock0(45 downto 41),
      S(7 downto 5) => B"000",
      S(4 downto 0) => main_clock(45 downto 41)
    );
main_clock1_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '1',
      CI_TOP => '0',
      CO(7) => main_clock1_carry_n_0,
      CO(6) => main_clock1_carry_n_1,
      CO(5) => main_clock1_carry_n_2,
      CO(4) => main_clock1_carry_n_3,
      CO(3) => main_clock1_carry_n_4,
      CO(2) => main_clock1_carry_n_5,
      CO(1) => main_clock1_carry_n_6,
      CO(0) => main_clock1_carry_n_7,
      DI(7) => main_clock1_carry_i_1_n_0,
      DI(6) => main_clock1_carry_i_2_n_0,
      DI(5) => main_clock1_carry_i_3_n_0,
      DI(4) => main_clock1_carry_i_4_n_0,
      DI(3) => main_clock1_carry_i_5_n_0,
      DI(2) => main_clock1_carry_i_6_n_0,
      DI(1) => main_clock1_carry_i_7_n_0,
      DI(0) => main_clock1_carry_i_8_n_0,
      O(7 downto 0) => NLW_main_clock1_carry_O_UNCONNECTED(7 downto 0),
      S(7) => main_clock1_carry_i_9_n_0,
      S(6) => main_clock1_carry_i_10_n_0,
      S(5) => main_clock1_carry_i_11_n_0,
      S(4) => main_clock1_carry_i_12_n_0,
      S(3) => main_clock1_carry_i_13_n_0,
      S(2) => main_clock1_carry_i_14_n_0,
      S(1) => main_clock1_carry_i_15_n_0,
      S(0) => main_clock1_carry_i_16_n_0
    );
\main_clock1_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => main_clock1_carry_n_0,
      CI_TOP => '0',
      CO(7) => \main_clock1_carry__0_n_0\,
      CO(6) => \main_clock1_carry__0_n_1\,
      CO(5) => \main_clock1_carry__0_n_2\,
      CO(4) => \main_clock1_carry__0_n_3\,
      CO(3) => \main_clock1_carry__0_n_4\,
      CO(2) => \main_clock1_carry__0_n_5\,
      CO(1) => \main_clock1_carry__0_n_6\,
      CO(0) => \main_clock1_carry__0_n_7\,
      DI(7) => \main_clock1_carry__0_i_1_n_0\,
      DI(6) => \main_clock1_carry__0_i_2_n_0\,
      DI(5) => \main_clock1_carry__0_i_3_n_0\,
      DI(4) => \main_clock1_carry__0_i_4_n_0\,
      DI(3) => \main_clock1_carry__0_i_5_n_0\,
      DI(2) => \main_clock1_carry__0_i_6_n_0\,
      DI(1) => \main_clock1_carry__0_i_7_n_0\,
      DI(0) => \main_clock1_carry__0_i_8_n_0\,
      O(7 downto 0) => \NLW_main_clock1_carry__0_O_UNCONNECTED\(7 downto 0),
      S(7) => \main_clock1_carry__0_i_9_n_0\,
      S(6) => \main_clock1_carry__0_i_10_n_0\,
      S(5) => \main_clock1_carry__0_i_11_n_0\,
      S(4) => \main_clock1_carry__0_i_12_n_0\,
      S(3) => \main_clock1_carry__0_i_13_n_0\,
      S(2) => \main_clock1_carry__0_i_14_n_0\,
      S(1) => \main_clock1_carry__0_i_15_n_0\,
      S(0) => \main_clock1_carry__0_i_16_n_0\
    );
\main_clock1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \main_clock2_carry__1_n_0\,
      I1 => main_clock(31),
      I2 => main_clock(30),
      O => \main_clock1_carry__0_i_1_n_0\
    );
\main_clock1_carry__0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => main_clock(29),
      I1 => main_clock(28),
      I2 => \main_clock2_carry__1_n_0\,
      O => \main_clock1_carry__0_i_10_n_0\
    );
\main_clock1_carry__0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => main_clock(27),
      I1 => main_clock(26),
      I2 => \main_clock2_carry__1_n_0\,
      O => \main_clock1_carry__0_i_11_n_0\
    );
\main_clock1_carry__0_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => main_clock(25),
      I1 => main_clock(24),
      I2 => \main_clock2_carry__1_n_0\,
      O => \main_clock1_carry__0_i_12_n_0\
    );
\main_clock1_carry__0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => main_clock2(23),
      I1 => main_clock(23),
      I2 => main_clock2(22),
      I3 => main_clock(22),
      O => \main_clock1_carry__0_i_13_n_0\
    );
\main_clock1_carry__0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => main_clock2(21),
      I1 => main_clock(21),
      I2 => main_clock2(20),
      I3 => main_clock(20),
      O => \main_clock1_carry__0_i_14_n_0\
    );
\main_clock1_carry__0_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => main_clock2(19),
      I1 => main_clock(19),
      I2 => main_clock2(18),
      I3 => main_clock(18),
      O => \main_clock1_carry__0_i_15_n_0\
    );
\main_clock1_carry__0_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => main_clock2(17),
      I1 => main_clock(17),
      I2 => main_clock2(16),
      I3 => main_clock(16),
      O => \main_clock1_carry__0_i_16_n_0\
    );
\main_clock1_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \main_clock2_carry__1_n_0\,
      I1 => main_clock(29),
      I2 => main_clock(28),
      O => \main_clock1_carry__0_i_2_n_0\
    );
\main_clock1_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \main_clock2_carry__1_n_0\,
      I1 => main_clock(27),
      I2 => main_clock(26),
      O => \main_clock1_carry__0_i_3_n_0\
    );
\main_clock1_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \main_clock2_carry__1_n_0\,
      I1 => main_clock(25),
      I2 => main_clock(24),
      O => \main_clock1_carry__0_i_4_n_0\
    );
\main_clock1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => main_clock(23),
      I1 => main_clock2(23),
      I2 => main_clock(22),
      I3 => main_clock2(22),
      O => \main_clock1_carry__0_i_5_n_0\
    );
\main_clock1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => main_clock(21),
      I1 => main_clock2(21),
      I2 => main_clock(20),
      I3 => main_clock2(20),
      O => \main_clock1_carry__0_i_6_n_0\
    );
\main_clock1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => main_clock(19),
      I1 => main_clock2(19),
      I2 => main_clock(18),
      I3 => main_clock2(18),
      O => \main_clock1_carry__0_i_7_n_0\
    );
\main_clock1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => main_clock(17),
      I1 => main_clock2(17),
      I2 => main_clock(16),
      I3 => main_clock2(16),
      O => \main_clock1_carry__0_i_8_n_0\
    );
\main_clock1_carry__0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => main_clock(31),
      I1 => main_clock(30),
      I2 => \main_clock2_carry__1_n_0\,
      O => \main_clock1_carry__0_i_9_n_0\
    );
\main_clock1_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \main_clock1_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_main_clock1_carry__1_CO_UNCONNECTED\(7),
      CO(6) => main_clock1,
      CO(5) => \main_clock1_carry__1_n_2\,
      CO(4) => \main_clock1_carry__1_n_3\,
      CO(3) => \main_clock1_carry__1_n_4\,
      CO(2) => \main_clock1_carry__1_n_5\,
      CO(1) => \main_clock1_carry__1_n_6\,
      CO(0) => \main_clock1_carry__1_n_7\,
      DI(7) => '0',
      DI(6) => \main_clock1_carry__1_i_1_n_0\,
      DI(5) => \main_clock1_carry__1_i_2_n_0\,
      DI(4) => \main_clock1_carry__1_i_3_n_0\,
      DI(3) => \main_clock1_carry__1_i_4_n_0\,
      DI(2) => \main_clock1_carry__1_i_5_n_0\,
      DI(1) => \main_clock1_carry__1_i_6_n_0\,
      DI(0) => \main_clock1_carry__1_i_7_n_0\,
      O(7 downto 0) => \NLW_main_clock1_carry__1_O_UNCONNECTED\(7 downto 0),
      S(7) => '0',
      S(6) => \main_clock1_carry__1_i_8_n_0\,
      S(5) => \main_clock1_carry__1_i_9_n_0\,
      S(4) => \main_clock1_carry__1_i_10_n_0\,
      S(3) => \main_clock1_carry__1_i_11_n_0\,
      S(2) => \main_clock1_carry__1_i_12_n_0\,
      S(1) => \main_clock1_carry__1_i_13_n_0\,
      S(0) => \main_clock1_carry__1_i_14_n_0\
    );
\main_clock1_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \main_clock2_carry__1_n_0\,
      I1 => main_clock(45),
      I2 => main_clock(44),
      O => \main_clock1_carry__1_i_1_n_0\
    );
\main_clock1_carry__1_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => main_clock(41),
      I1 => main_clock(40),
      I2 => \main_clock2_carry__1_n_0\,
      O => \main_clock1_carry__1_i_10_n_0\
    );
\main_clock1_carry__1_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => main_clock(39),
      I1 => main_clock(38),
      I2 => \main_clock2_carry__1_n_0\,
      O => \main_clock1_carry__1_i_11_n_0\
    );
\main_clock1_carry__1_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => main_clock(37),
      I1 => main_clock(36),
      I2 => \main_clock2_carry__1_n_0\,
      O => \main_clock1_carry__1_i_12_n_0\
    );
\main_clock1_carry__1_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => main_clock(35),
      I1 => main_clock(34),
      I2 => \main_clock2_carry__1_n_0\,
      O => \main_clock1_carry__1_i_13_n_0\
    );
\main_clock1_carry__1_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => main_clock(33),
      I1 => main_clock(32),
      I2 => \main_clock2_carry__1_n_0\,
      O => \main_clock1_carry__1_i_14_n_0\
    );
\main_clock1_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \main_clock2_carry__1_n_0\,
      I1 => main_clock(43),
      I2 => main_clock(42),
      O => \main_clock1_carry__1_i_2_n_0\
    );
\main_clock1_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \main_clock2_carry__1_n_0\,
      I1 => main_clock(41),
      I2 => main_clock(40),
      O => \main_clock1_carry__1_i_3_n_0\
    );
\main_clock1_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \main_clock2_carry__1_n_0\,
      I1 => main_clock(39),
      I2 => main_clock(38),
      O => \main_clock1_carry__1_i_4_n_0\
    );
\main_clock1_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \main_clock2_carry__1_n_0\,
      I1 => main_clock(37),
      I2 => main_clock(36),
      O => \main_clock1_carry__1_i_5_n_0\
    );
\main_clock1_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \main_clock2_carry__1_n_0\,
      I1 => main_clock(35),
      I2 => main_clock(34),
      O => \main_clock1_carry__1_i_6_n_0\
    );
\main_clock1_carry__1_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \main_clock2_carry__1_n_0\,
      I1 => main_clock(33),
      I2 => main_clock(32),
      O => \main_clock1_carry__1_i_7_n_0\
    );
\main_clock1_carry__1_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => main_clock(45),
      I1 => main_clock(44),
      I2 => \main_clock2_carry__1_n_0\,
      O => \main_clock1_carry__1_i_8_n_0\
    );
\main_clock1_carry__1_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => main_clock(43),
      I1 => main_clock(42),
      I2 => \main_clock2_carry__1_n_0\,
      O => \main_clock1_carry__1_i_9_n_0\
    );
main_clock1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => main_clock(15),
      I1 => main_clock2(15),
      I2 => main_clock(14),
      I3 => main_clock2(14),
      O => main_clock1_carry_i_1_n_0
    );
main_clock1_carry_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => main_clock2(13),
      I1 => main_clock(13),
      I2 => main_clock2(12),
      I3 => main_clock(12),
      O => main_clock1_carry_i_10_n_0
    );
main_clock1_carry_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => main_clock2(11),
      I1 => main_clock(11),
      I2 => main_clock2(10),
      I3 => main_clock(10),
      O => main_clock1_carry_i_11_n_0
    );
main_clock1_carry_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => main_clock2(9),
      I1 => main_clock(9),
      I2 => main_clock2(8),
      I3 => main_clock(8),
      O => main_clock1_carry_i_12_n_0
    );
main_clock1_carry_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => main_clock2(7),
      I1 => main_clock(7),
      I2 => main_clock2(6),
      I3 => main_clock(6),
      O => main_clock1_carry_i_13_n_0
    );
main_clock1_carry_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => main_clock2(5),
      I1 => main_clock(5),
      I2 => main_clock2(4),
      I3 => main_clock(4),
      O => main_clock1_carry_i_14_n_0
    );
main_clock1_carry_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => main_clock2(3),
      I1 => main_clock(3),
      I2 => main_clock2(2),
      I3 => main_clock(2),
      O => main_clock1_carry_i_15_n_0
    );
main_clock1_carry_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => main_clock(0),
      I1 => \clock_period_reg_n_0_[0]\,
      I2 => main_clock2(1),
      I3 => main_clock(1),
      O => main_clock1_carry_i_16_n_0
    );
main_clock1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => main_clock(13),
      I1 => main_clock2(13),
      I2 => main_clock(12),
      I3 => main_clock2(12),
      O => main_clock1_carry_i_2_n_0
    );
main_clock1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => main_clock(11),
      I1 => main_clock2(11),
      I2 => main_clock(10),
      I3 => main_clock2(10),
      O => main_clock1_carry_i_3_n_0
    );
main_clock1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => main_clock(9),
      I1 => main_clock2(9),
      I2 => main_clock(8),
      I3 => main_clock2(8),
      O => main_clock1_carry_i_4_n_0
    );
main_clock1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => main_clock(7),
      I1 => main_clock2(7),
      I2 => main_clock(6),
      I3 => main_clock2(6),
      O => main_clock1_carry_i_5_n_0
    );
main_clock1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => main_clock(5),
      I1 => main_clock2(5),
      I2 => main_clock(4),
      I3 => main_clock2(4),
      O => main_clock1_carry_i_6_n_0
    );
main_clock1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => main_clock(3),
      I1 => main_clock2(3),
      I2 => main_clock(2),
      I3 => main_clock2(2),
      O => main_clock1_carry_i_7_n_0
    );
main_clock1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B222"
    )
        port map (
      I0 => main_clock(1),
      I1 => main_clock2(1),
      I2 => \clock_period_reg_n_0_[0]\,
      I3 => main_clock(0),
      O => main_clock1_carry_i_8_n_0
    );
main_clock1_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => main_clock2(15),
      I1 => main_clock(15),
      I2 => main_clock2(14),
      I3 => main_clock(14),
      O => main_clock1_carry_i_9_n_0
    );
main_clock2_carry: unisim.vcomponents.CARRY8
     port map (
      CI => \clock_period_reg_n_0_[0]\,
      CI_TOP => '0',
      CO(7) => main_clock2_carry_n_0,
      CO(6) => main_clock2_carry_n_1,
      CO(5) => main_clock2_carry_n_2,
      CO(4) => main_clock2_carry_n_3,
      CO(3) => main_clock2_carry_n_4,
      CO(2) => main_clock2_carry_n_5,
      CO(1) => main_clock2_carry_n_6,
      CO(0) => main_clock2_carry_n_7,
      DI(7) => \clock_period_reg_n_0_[8]\,
      DI(6) => \clock_period_reg_n_0_[7]\,
      DI(5) => \clock_period_reg_n_0_[6]\,
      DI(4) => \clock_period_reg_n_0_[5]\,
      DI(3) => \clock_period_reg_n_0_[4]\,
      DI(2) => \clock_period_reg_n_0_[3]\,
      DI(1) => \clock_period_reg_n_0_[2]\,
      DI(0) => \clock_period_reg_n_0_[1]\,
      O(7 downto 0) => main_clock2(8 downto 1),
      S(7) => main_clock2_carry_i_1_n_0,
      S(6) => main_clock2_carry_i_2_n_0,
      S(5) => main_clock2_carry_i_3_n_0,
      S(4) => main_clock2_carry_i_4_n_0,
      S(3) => main_clock2_carry_i_5_n_0,
      S(2) => main_clock2_carry_i_6_n_0,
      S(1) => main_clock2_carry_i_7_n_0,
      S(0) => main_clock2_carry_i_8_n_0
    );
\main_clock2_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => main_clock2_carry_n_0,
      CI_TOP => '0',
      CO(7) => \main_clock2_carry__0_n_0\,
      CO(6) => \main_clock2_carry__0_n_1\,
      CO(5) => \main_clock2_carry__0_n_2\,
      CO(4) => \main_clock2_carry__0_n_3\,
      CO(3) => \main_clock2_carry__0_n_4\,
      CO(2) => \main_clock2_carry__0_n_5\,
      CO(1) => \main_clock2_carry__0_n_6\,
      CO(0) => \main_clock2_carry__0_n_7\,
      DI(7) => \clock_period_reg_n_0_[16]\,
      DI(6) => \clock_period_reg_n_0_[15]\,
      DI(5) => \clock_period_reg_n_0_[14]\,
      DI(4) => \clock_period_reg_n_0_[13]\,
      DI(3) => \clock_period_reg_n_0_[12]\,
      DI(2) => \clock_period_reg_n_0_[11]\,
      DI(1) => \clock_period_reg_n_0_[10]\,
      DI(0) => \clock_period_reg_n_0_[9]\,
      O(7 downto 0) => main_clock2(16 downto 9),
      S(7) => \main_clock2_carry__0_i_1_n_0\,
      S(6) => \main_clock2_carry__0_i_2_n_0\,
      S(5) => \main_clock2_carry__0_i_3_n_0\,
      S(4) => \main_clock2_carry__0_i_4_n_0\,
      S(3) => \main_clock2_carry__0_i_5_n_0\,
      S(2) => \main_clock2_carry__0_i_6_n_0\,
      S(1) => \main_clock2_carry__0_i_7_n_0\,
      S(0) => \main_clock2_carry__0_i_8_n_0\
    );
\main_clock2_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clock_period_reg_n_0_[16]\,
      O => \main_clock2_carry__0_i_1_n_0\
    );
\main_clock2_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clock_period_reg_n_0_[15]\,
      O => \main_clock2_carry__0_i_2_n_0\
    );
\main_clock2_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clock_period_reg_n_0_[14]\,
      O => \main_clock2_carry__0_i_3_n_0\
    );
\main_clock2_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clock_period_reg_n_0_[13]\,
      O => \main_clock2_carry__0_i_4_n_0\
    );
\main_clock2_carry__0_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clock_period_reg_n_0_[12]\,
      O => \main_clock2_carry__0_i_5_n_0\
    );
\main_clock2_carry__0_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clock_period_reg_n_0_[11]\,
      O => \main_clock2_carry__0_i_6_n_0\
    );
\main_clock2_carry__0_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clock_period_reg_n_0_[10]\,
      O => \main_clock2_carry__0_i_7_n_0\
    );
\main_clock2_carry__0_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clock_period_reg_n_0_[9]\,
      O => \main_clock2_carry__0_i_8_n_0\
    );
\main_clock2_carry__1\: unisim.vcomponents.CARRY8
     port map (
      CI => \main_clock2_carry__0_n_0\,
      CI_TOP => '0',
      CO(7) => \main_clock2_carry__1_n_0\,
      CO(6) => \NLW_main_clock2_carry__1_CO_UNCONNECTED\(6),
      CO(5) => \main_clock2_carry__1_n_2\,
      CO(4) => \main_clock2_carry__1_n_3\,
      CO(3) => \main_clock2_carry__1_n_4\,
      CO(2) => \main_clock2_carry__1_n_5\,
      CO(1) => \main_clock2_carry__1_n_6\,
      CO(0) => \main_clock2_carry__1_n_7\,
      DI(7) => '0',
      DI(6) => \clock_period_reg_n_0_[23]\,
      DI(5) => \clock_period_reg_n_0_[22]\,
      DI(4) => \clock_period_reg_n_0_[21]\,
      DI(3) => \clock_period_reg_n_0_[20]\,
      DI(2) => \clock_period_reg_n_0_[19]\,
      DI(1) => \clock_period_reg_n_0_[18]\,
      DI(0) => \clock_period_reg_n_0_[17]\,
      O(7) => \NLW_main_clock2_carry__1_O_UNCONNECTED\(7),
      O(6 downto 0) => main_clock2(23 downto 17),
      S(7) => '1',
      S(6) => \main_clock2_carry__1_i_1_n_0\,
      S(5) => \main_clock2_carry__1_i_2_n_0\,
      S(4) => \main_clock2_carry__1_i_3_n_0\,
      S(3) => \main_clock2_carry__1_i_4_n_0\,
      S(2) => \main_clock2_carry__1_i_5_n_0\,
      S(1) => \main_clock2_carry__1_i_6_n_0\,
      S(0) => \main_clock2_carry__1_i_7_n_0\
    );
\main_clock2_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clock_period_reg_n_0_[23]\,
      O => \main_clock2_carry__1_i_1_n_0\
    );
\main_clock2_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clock_period_reg_n_0_[22]\,
      O => \main_clock2_carry__1_i_2_n_0\
    );
\main_clock2_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clock_period_reg_n_0_[21]\,
      O => \main_clock2_carry__1_i_3_n_0\
    );
\main_clock2_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clock_period_reg_n_0_[20]\,
      O => \main_clock2_carry__1_i_4_n_0\
    );
\main_clock2_carry__1_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clock_period_reg_n_0_[19]\,
      O => \main_clock2_carry__1_i_5_n_0\
    );
\main_clock2_carry__1_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clock_period_reg_n_0_[18]\,
      O => \main_clock2_carry__1_i_6_n_0\
    );
\main_clock2_carry__1_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clock_period_reg_n_0_[17]\,
      O => \main_clock2_carry__1_i_7_n_0\
    );
main_clock2_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clock_period_reg_n_0_[8]\,
      O => main_clock2_carry_i_1_n_0
    );
main_clock2_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clock_period_reg_n_0_[7]\,
      O => main_clock2_carry_i_2_n_0
    );
main_clock2_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clock_period_reg_n_0_[6]\,
      O => main_clock2_carry_i_3_n_0
    );
main_clock2_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clock_period_reg_n_0_[5]\,
      O => main_clock2_carry_i_4_n_0
    );
main_clock2_carry_i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clock_period_reg_n_0_[4]\,
      O => main_clock2_carry_i_5_n_0
    );
main_clock2_carry_i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clock_period_reg_n_0_[3]\,
      O => main_clock2_carry_i_6_n_0
    );
main_clock2_carry_i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clock_period_reg_n_0_[2]\,
      O => main_clock2_carry_i_7_n_0
    );
main_clock2_carry_i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \clock_period_reg_n_0_[1]\,
      O => main_clock2_carry_i_8_n_0
    );
\main_clock[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => main_clock(0),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(0)
    );
\main_clock[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(10),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(10)
    );
\main_clock[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(11),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(11)
    );
\main_clock[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(12),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(12)
    );
\main_clock[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(13),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(13)
    );
\main_clock[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(14),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(14)
    );
\main_clock[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(15),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(15)
    );
\main_clock[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(16),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(16)
    );
\main_clock[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(17),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(17)
    );
\main_clock[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(18),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(18)
    );
\main_clock[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(19),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(19)
    );
\main_clock[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(1),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(1)
    );
\main_clock[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(20),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(20)
    );
\main_clock[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(21),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(21)
    );
\main_clock[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(22),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(22)
    );
\main_clock[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(23),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(23)
    );
\main_clock[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(24),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(24)
    );
\main_clock[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(25),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(25)
    );
\main_clock[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(26),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(26)
    );
\main_clock[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(27),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(27)
    );
\main_clock[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(28),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(28)
    );
\main_clock[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(29),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(29)
    );
\main_clock[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(2),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(2)
    );
\main_clock[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(30),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(30)
    );
\main_clock[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(31),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(31)
    );
\main_clock[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(32),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(32)
    );
\main_clock[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(33),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(33)
    );
\main_clock[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(34),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(34)
    );
\main_clock[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(35),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(35)
    );
\main_clock[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(36),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(36)
    );
\main_clock[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(37),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(37)
    );
\main_clock[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(38),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(38)
    );
\main_clock[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(39),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(39)
    );
\main_clock[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(3),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(3)
    );
\main_clock[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(40),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(40)
    );
\main_clock[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(41),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(41)
    );
\main_clock[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(42),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(42)
    );
\main_clock[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(43),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(43)
    );
\main_clock[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(44),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(44)
    );
\main_clock[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(45),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(45)
    );
\main_clock[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(4),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(4)
    );
\main_clock[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(5),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(5)
    );
\main_clock[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(6),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(6)
    );
\main_clock[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(7),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(7)
    );
\main_clock[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(8),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(8)
    );
\main_clock[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => main_clock0(9),
      I1 => rst_clock_reg_n_0,
      I2 => main_clock1,
      O => p_0_in(9)
    );
\main_clock_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(0),
      Q => main_clock(0)
    );
\main_clock_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(10),
      Q => main_clock(10)
    );
\main_clock_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(11),
      Q => main_clock(11)
    );
\main_clock_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(12),
      Q => main_clock(12)
    );
\main_clock_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(13),
      Q => main_clock(13)
    );
\main_clock_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(14),
      Q => main_clock(14)
    );
\main_clock_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(15),
      Q => main_clock(15)
    );
\main_clock_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(16),
      Q => main_clock(16)
    );
\main_clock_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(17),
      Q => main_clock(17)
    );
\main_clock_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(18),
      Q => main_clock(18)
    );
\main_clock_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(19),
      Q => main_clock(19)
    );
\main_clock_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(1),
      Q => main_clock(1)
    );
\main_clock_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(20),
      Q => main_clock(20)
    );
\main_clock_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(21),
      Q => main_clock(21)
    );
\main_clock_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(22),
      Q => main_clock(22)
    );
\main_clock_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(23),
      Q => main_clock(23)
    );
\main_clock_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(24),
      Q => main_clock(24)
    );
\main_clock_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(25),
      Q => main_clock(25)
    );
\main_clock_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(26),
      Q => main_clock(26)
    );
\main_clock_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(27),
      Q => main_clock(27)
    );
\main_clock_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(28),
      Q => main_clock(28)
    );
\main_clock_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(29),
      Q => main_clock(29)
    );
\main_clock_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(2),
      Q => main_clock(2)
    );
\main_clock_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(30),
      Q => main_clock(30)
    );
\main_clock_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(31),
      Q => main_clock(31)
    );
\main_clock_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(32),
      Q => main_clock(32)
    );
\main_clock_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(33),
      Q => main_clock(33)
    );
\main_clock_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(34),
      Q => main_clock(34)
    );
\main_clock_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(35),
      Q => main_clock(35)
    );
\main_clock_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(36),
      Q => main_clock(36)
    );
\main_clock_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(37),
      Q => main_clock(37)
    );
\main_clock_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(38),
      Q => main_clock(38)
    );
\main_clock_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(39),
      Q => main_clock(39)
    );
\main_clock_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(3),
      Q => main_clock(3)
    );
\main_clock_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(40),
      Q => main_clock(40)
    );
\main_clock_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(41),
      Q => main_clock(41)
    );
\main_clock_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(42),
      Q => main_clock(42)
    );
\main_clock_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(43),
      Q => main_clock(43)
    );
\main_clock_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(44),
      Q => main_clock(44)
    );
\main_clock_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(45),
      Q => main_clock(45)
    );
\main_clock_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(4),
      Q => main_clock(4)
    );
\main_clock_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(5),
      Q => main_clock(5)
    );
\main_clock_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(6),
      Q => main_clock(6)
    );
\main_clock_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(7),
      Q => main_clock(7)
    );
\main_clock_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(8),
      Q => main_clock(8)
    );
\main_clock_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => p_0_in(9),
      Q => main_clock(9)
    );
\pulses_to_send[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F150015"
    )
        port map (
      I0 => \pulses_to_send_reg_n_0_[0]\,
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      I3 => \pulses_to_send[15]_i_5_n_0\,
      I4 => fifo_data(0),
      O => pulses_to_send(0)
    );
\pulses_to_send[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF0006066666"
    )
        port map (
      I0 => \pulses_to_send_reg_n_0_[10]\,
      I1 => \pulses_to_send[11]_i_2_n_0\,
      I2 => \state__0\(1),
      I3 => fifo_data(10),
      I4 => \state__0\(2),
      I5 => \pulses_to_send[15]_i_5_n_0\,
      O => pulses_to_send(10)
    );
\pulses_to_send[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000000A600A6"
    )
        port map (
      I0 => \pulses_to_send_reg_n_0_[11]\,
      I1 => \pulses_to_send[11]_i_2_n_0\,
      I2 => \pulses_to_send_reg_n_0_[10]\,
      I3 => \pulses_to_send[14]_i_3_n_0\,
      I4 => \pulses_to_send[11]_i_3_n_0\,
      I5 => \pulses_to_send[15]_i_5_n_0\,
      O => pulses_to_send(11)
    );
\pulses_to_send[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \pulses_to_send_reg_n_0_[8]\,
      I1 => \pulses_to_send[5]_i_2_n_0\,
      I2 => \pulses_to_send[12]_i_3_n_0\,
      I3 => \pulses_to_send_reg_n_0_[9]\,
      O => \pulses_to_send[11]_i_2_n_0\
    );
\pulses_to_send[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fifo_data(11),
      I1 => \state__0\(2),
      O => \pulses_to_send[11]_i_3_n_0\
    );
\pulses_to_send[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF0006066666"
    )
        port map (
      I0 => \pulses_to_send_reg_n_0_[12]\,
      I1 => \pulses_to_send[12]_i_2_n_0\,
      I2 => \state__0\(1),
      I3 => fifo_data(12),
      I4 => \state__0\(2),
      I5 => \pulses_to_send[15]_i_5_n_0\,
      O => pulses_to_send(12)
    );
\pulses_to_send[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \pulses_to_send_reg_n_0_[9]\,
      I1 => \pulses_to_send[12]_i_3_n_0\,
      I2 => \pulses_to_send[5]_i_2_n_0\,
      I3 => \pulses_to_send_reg_n_0_[8]\,
      I4 => \pulses_to_send_reg_n_0_[11]\,
      I5 => \pulses_to_send_reg_n_0_[10]\,
      O => \pulses_to_send[12]_i_2_n_0\
    );
\pulses_to_send[12]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \pulses_to_send_reg_n_0_[5]\,
      I1 => \pulses_to_send_reg_n_0_[4]\,
      I2 => \pulses_to_send_reg_n_0_[7]\,
      I3 => \pulses_to_send_reg_n_0_[6]\,
      O => \pulses_to_send[12]_i_3_n_0\
    );
\pulses_to_send[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF0006066666"
    )
        port map (
      I0 => \pulses_to_send_reg_n_0_[13]\,
      I1 => \pulses_to_send[14]_i_2_n_0\,
      I2 => \state__0\(1),
      I3 => fifo_data(13),
      I4 => \state__0\(2),
      I5 => \pulses_to_send[15]_i_5_n_0\,
      O => pulses_to_send(13)
    );
\pulses_to_send[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000009A009A"
    )
        port map (
      I0 => \pulses_to_send_reg_n_0_[14]\,
      I1 => \pulses_to_send_reg_n_0_[13]\,
      I2 => \pulses_to_send[14]_i_2_n_0\,
      I3 => \pulses_to_send[14]_i_3_n_0\,
      I4 => \pulses_to_send[14]_i_4_n_0\,
      I5 => \pulses_to_send[15]_i_5_n_0\,
      O => pulses_to_send(14)
    );
\pulses_to_send[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \pulses_to_send_reg_n_0_[10]\,
      I1 => \pulses_to_send_reg_n_0_[11]\,
      I2 => \pulses_to_send[9]_i_2_n_0\,
      I3 => \pulses_to_send_reg_n_0_[9]\,
      I4 => \pulses_to_send_reg_n_0_[12]\,
      O => \pulses_to_send[14]_i_2_n_0\
    );
\pulses_to_send[14]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      O => \pulses_to_send[14]_i_3_n_0\
    );
\pulses_to_send[14]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => fifo_data(14),
      I1 => \state__0\(2),
      O => \pulses_to_send[14]_i_4_n_0\
    );
\pulses_to_send[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008000FFFFFFFF"
    )
        port map (
      I0 => rst,
      I1 => \state__0\(0),
      I2 => \^state_out\(2),
      I3 => \m_axis_tdata[240]_INST_0_i_1_n_0\,
      I4 => \pulses_to_send[15]_i_3_n_0\,
      I5 => \FSM_sequential_state[2]_i_5_n_0\,
      O => \pulses_to_send[15]_i_1_n_0\
    );
\pulses_to_send[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF0014143C3C"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \pulses_to_send_reg_n_0_[15]\,
      I2 => \pulses_to_send[15]_i_4_n_0\,
      I3 => fifo_data(15),
      I4 => \state__0\(2),
      I5 => \pulses_to_send[15]_i_5_n_0\,
      O => pulses_to_send(15)
    );
\pulses_to_send[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \pulses_to_send_reg_n_0_[13]\,
      I1 => \pulses_to_send_reg_n_0_[14]\,
      I2 => \pulses_to_send[12]_i_2_n_0\,
      I3 => \pulses_to_send_reg_n_0_[12]\,
      I4 => \pulses_to_send_reg_n_0_[15]\,
      O => \pulses_to_send[15]_i_3_n_0\
    );
\pulses_to_send[15]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \pulses_to_send_reg_n_0_[12]\,
      I1 => \pulses_to_send[12]_i_2_n_0\,
      I2 => \pulses_to_send_reg_n_0_[14]\,
      I3 => \pulses_to_send_reg_n_0_[13]\,
      O => \pulses_to_send[15]_i_4_n_0\
    );
\pulses_to_send[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => fifo_data(25),
      I1 => fifo_data(24),
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      I5 => fifo_data(26),
      O => \pulses_to_send[15]_i_5_n_0\
    );
\pulses_to_send[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF099900000999"
    )
        port map (
      I0 => \pulses_to_send_reg_n_0_[0]\,
      I1 => \pulses_to_send_reg_n_0_[1]\,
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      I4 => \pulses_to_send[15]_i_5_n_0\,
      I5 => fifo_data(1),
      O => pulses_to_send(1)
    );
\pulses_to_send[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A900FFFFA900A900"
    )
        port map (
      I0 => \pulses_to_send_reg_n_0_[2]\,
      I1 => \pulses_to_send_reg_n_0_[1]\,
      I2 => \pulses_to_send_reg_n_0_[0]\,
      I3 => \pulses_to_send[7]_i_3_n_0\,
      I4 => \FSM_sequential_state[2]_i_5_n_0\,
      I5 => fifo_data(2),
      O => pulses_to_send(2)
    );
\pulses_to_send[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A900FFFFA900A900"
    )
        port map (
      I0 => \pulses_to_send_reg_n_0_[3]\,
      I1 => \pulses_to_send[3]_i_2_n_0\,
      I2 => \pulses_to_send_reg_n_0_[2]\,
      I3 => \pulses_to_send[7]_i_3_n_0\,
      I4 => \FSM_sequential_state[2]_i_5_n_0\,
      I5 => fifo_data(3),
      O => pulses_to_send(3)
    );
\pulses_to_send[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \pulses_to_send_reg_n_0_[0]\,
      I1 => \pulses_to_send_reg_n_0_[1]\,
      O => \pulses_to_send[3]_i_2_n_0\
    );
\pulses_to_send[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF066600000666"
    )
        port map (
      I0 => \pulses_to_send_reg_n_0_[4]\,
      I1 => \pulses_to_send[5]_i_2_n_0\,
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      I4 => \pulses_to_send[15]_i_5_n_0\,
      I5 => fifo_data(4),
      O => pulses_to_send(4)
    );
\pulses_to_send[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A600FFFFA600A600"
    )
        port map (
      I0 => \pulses_to_send_reg_n_0_[5]\,
      I1 => \pulses_to_send[5]_i_2_n_0\,
      I2 => \pulses_to_send_reg_n_0_[4]\,
      I3 => \pulses_to_send[7]_i_3_n_0\,
      I4 => \FSM_sequential_state[2]_i_5_n_0\,
      I5 => fifo_data(5),
      O => pulses_to_send(5)
    );
\pulses_to_send[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \pulses_to_send_reg_n_0_[1]\,
      I1 => \pulses_to_send_reg_n_0_[0]\,
      I2 => \pulses_to_send_reg_n_0_[3]\,
      I3 => \pulses_to_send_reg_n_0_[2]\,
      O => \pulses_to_send[5]_i_2_n_0\
    );
\pulses_to_send[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF099900000999"
    )
        port map (
      I0 => \pulses_to_send_reg_n_0_[6]\,
      I1 => \pulses_to_send[7]_i_2_n_0\,
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      I4 => \pulses_to_send[15]_i_5_n_0\,
      I5 => fifo_data(6),
      O => pulses_to_send(6)
    );
\pulses_to_send[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A900FFFFA900A900"
    )
        port map (
      I0 => \pulses_to_send_reg_n_0_[7]\,
      I1 => \pulses_to_send[7]_i_2_n_0\,
      I2 => \pulses_to_send_reg_n_0_[6]\,
      I3 => \pulses_to_send[7]_i_3_n_0\,
      I4 => \FSM_sequential_state[2]_i_5_n_0\,
      I5 => fifo_data(7),
      O => pulses_to_send(7)
    );
\pulses_to_send[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \pulses_to_send_reg_n_0_[5]\,
      I1 => \pulses_to_send_reg_n_0_[1]\,
      I2 => \pulses_to_send_reg_n_0_[0]\,
      I3 => \pulses_to_send_reg_n_0_[3]\,
      I4 => \pulses_to_send_reg_n_0_[2]\,
      I5 => \pulses_to_send_reg_n_0_[4]\,
      O => \pulses_to_send[7]_i_2_n_0\
    );
\pulses_to_send[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => \pulses_to_send[15]_i_5_n_0\,
      O => \pulses_to_send[7]_i_3_n_0\
    );
\pulses_to_send[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF066600000666"
    )
        port map (
      I0 => \pulses_to_send_reg_n_0_[8]\,
      I1 => \pulses_to_send[8]_i_2_n_0\,
      I2 => \state__0\(1),
      I3 => \state__0\(2),
      I4 => \pulses_to_send[15]_i_5_n_0\,
      I5 => fifo_data(8),
      O => pulses_to_send(8)
    );
\pulses_to_send[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \pulses_to_send[5]_i_2_n_0\,
      I1 => \pulses_to_send_reg_n_0_[6]\,
      I2 => \pulses_to_send_reg_n_0_[7]\,
      I3 => \pulses_to_send_reg_n_0_[4]\,
      I4 => \pulses_to_send_reg_n_0_[5]\,
      O => \pulses_to_send[8]_i_2_n_0\
    );
\pulses_to_send[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FF0006066666"
    )
        port map (
      I0 => \pulses_to_send_reg_n_0_[9]\,
      I1 => \pulses_to_send[9]_i_2_n_0\,
      I2 => \state__0\(1),
      I3 => fifo_data(9),
      I4 => \state__0\(2),
      I5 => \pulses_to_send[15]_i_5_n_0\,
      O => pulses_to_send(9)
    );
\pulses_to_send[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \pulses_to_send_reg_n_0_[5]\,
      I1 => \pulses_to_send_reg_n_0_[4]\,
      I2 => \pulses_to_send_reg_n_0_[7]\,
      I3 => \pulses_to_send_reg_n_0_[6]\,
      I4 => \pulses_to_send[5]_i_2_n_0\,
      I5 => \pulses_to_send_reg_n_0_[8]\,
      O => \pulses_to_send[9]_i_2_n_0\
    );
\pulses_to_send_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \pulses_to_send[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => pulses_to_send(0),
      Q => \pulses_to_send_reg_n_0_[0]\
    );
\pulses_to_send_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \pulses_to_send[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => pulses_to_send(10),
      Q => \pulses_to_send_reg_n_0_[10]\
    );
\pulses_to_send_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \pulses_to_send[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => pulses_to_send(11),
      Q => \pulses_to_send_reg_n_0_[11]\
    );
\pulses_to_send_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \pulses_to_send[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => pulses_to_send(12),
      Q => \pulses_to_send_reg_n_0_[12]\
    );
\pulses_to_send_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \pulses_to_send[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => pulses_to_send(13),
      Q => \pulses_to_send_reg_n_0_[13]\
    );
\pulses_to_send_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \pulses_to_send[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => pulses_to_send(14),
      Q => \pulses_to_send_reg_n_0_[14]\
    );
\pulses_to_send_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \pulses_to_send[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => pulses_to_send(15),
      Q => \pulses_to_send_reg_n_0_[15]\
    );
\pulses_to_send_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \pulses_to_send[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => pulses_to_send(1),
      Q => \pulses_to_send_reg_n_0_[1]\
    );
\pulses_to_send_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \pulses_to_send[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => pulses_to_send(2),
      Q => \pulses_to_send_reg_n_0_[2]\
    );
\pulses_to_send_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \pulses_to_send[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => pulses_to_send(3),
      Q => \pulses_to_send_reg_n_0_[3]\
    );
\pulses_to_send_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \pulses_to_send[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => pulses_to_send(4),
      Q => \pulses_to_send_reg_n_0_[4]\
    );
\pulses_to_send_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \pulses_to_send[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => pulses_to_send(5),
      Q => \pulses_to_send_reg_n_0_[5]\
    );
\pulses_to_send_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \pulses_to_send[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => pulses_to_send(6),
      Q => \pulses_to_send_reg_n_0_[6]\
    );
\pulses_to_send_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \pulses_to_send[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => pulses_to_send(7),
      Q => \pulses_to_send_reg_n_0_[7]\
    );
\pulses_to_send_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \pulses_to_send[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => pulses_to_send(8),
      Q => \pulses_to_send_reg_n_0_[8]\
    );
\pulses_to_send_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \pulses_to_send[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => pulses_to_send(9),
      Q => \pulses_to_send_reg_n_0_[9]\
    );
rst_clock_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      I2 => rst_clock,
      I3 => rst_clock_reg_n_0,
      O => rst_clock_i_1_n_0
    );
rst_clock_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000555D"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \FSM_sequential_state[0]_i_2_n_0\,
      I2 => \m_axis_tdata_int[254]_i_5_n_0\,
      I3 => fifo_data(25),
      I4 => \state__0\(0),
      I5 => \state__0\(2),
      O => rst_clock
    );
rst_clock_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => fifo_read_i_2_n_0,
      D => rst_clock_i_1_n_0,
      Q => rst_clock_reg_n_0
    );
\state_out[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \state__0\(2),
      O => \^state_out\(0)
    );
\state_out[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(2),
      O => \^state_out\(1)
    );
\state_out[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \state__0\(1),
      O => \^state_out\(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    fifo_empty : in STD_LOGIC;
    fifo_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_read : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    state_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top_level_block_design_pulse_gen_0_0,pulse_gen,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "pulse_gen,Vivado 2020.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 254 downto 14 );
  signal \^state_out\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET rst, FREQ_HZ 250000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN top_level_block_design_usp_rf_data_converter_0_0_clk_dac1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_PARAMETER of m_axis_tready : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 250000000, PHASE 0.000, CLK_DOMAIN top_level_block_design_usp_rf_data_converter_0_0_clk_dac1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
begin
  m_axis_tdata(255) <= \<const0>\;
  m_axis_tdata(254) <= \^m_axis_tdata\(254);
  m_axis_tdata(253) <= \^m_axis_tdata\(254);
  m_axis_tdata(252) <= \^m_axis_tdata\(254);
  m_axis_tdata(251) <= \^m_axis_tdata\(254);
  m_axis_tdata(250) <= \^m_axis_tdata\(254);
  m_axis_tdata(249) <= \^m_axis_tdata\(254);
  m_axis_tdata(248) <= \^m_axis_tdata\(254);
  m_axis_tdata(247) <= \^m_axis_tdata\(254);
  m_axis_tdata(246) <= \^m_axis_tdata\(254);
  m_axis_tdata(245) <= \^m_axis_tdata\(254);
  m_axis_tdata(244) <= \^m_axis_tdata\(254);
  m_axis_tdata(243) <= \^m_axis_tdata\(254);
  m_axis_tdata(242) <= \^m_axis_tdata\(254);
  m_axis_tdata(241) <= \^m_axis_tdata\(254);
  m_axis_tdata(240) <= \^m_axis_tdata\(254);
  m_axis_tdata(239) <= \<const0>\;
  m_axis_tdata(238) <= \^m_axis_tdata\(238);
  m_axis_tdata(237) <= \^m_axis_tdata\(238);
  m_axis_tdata(236) <= \^m_axis_tdata\(238);
  m_axis_tdata(235) <= \^m_axis_tdata\(238);
  m_axis_tdata(234) <= \^m_axis_tdata\(238);
  m_axis_tdata(233) <= \^m_axis_tdata\(238);
  m_axis_tdata(232) <= \^m_axis_tdata\(238);
  m_axis_tdata(231) <= \^m_axis_tdata\(238);
  m_axis_tdata(230) <= \^m_axis_tdata\(238);
  m_axis_tdata(229) <= \^m_axis_tdata\(238);
  m_axis_tdata(228) <= \^m_axis_tdata\(238);
  m_axis_tdata(227) <= \^m_axis_tdata\(238);
  m_axis_tdata(226) <= \^m_axis_tdata\(238);
  m_axis_tdata(225) <= \^m_axis_tdata\(238);
  m_axis_tdata(224) <= \^m_axis_tdata\(238);
  m_axis_tdata(223) <= \<const0>\;
  m_axis_tdata(222) <= \^m_axis_tdata\(222);
  m_axis_tdata(221) <= \^m_axis_tdata\(222);
  m_axis_tdata(220) <= \^m_axis_tdata\(222);
  m_axis_tdata(219) <= \^m_axis_tdata\(222);
  m_axis_tdata(218) <= \^m_axis_tdata\(222);
  m_axis_tdata(217) <= \^m_axis_tdata\(222);
  m_axis_tdata(216) <= \^m_axis_tdata\(222);
  m_axis_tdata(215) <= \^m_axis_tdata\(222);
  m_axis_tdata(214) <= \^m_axis_tdata\(222);
  m_axis_tdata(213) <= \^m_axis_tdata\(222);
  m_axis_tdata(212) <= \^m_axis_tdata\(222);
  m_axis_tdata(211) <= \^m_axis_tdata\(222);
  m_axis_tdata(210) <= \^m_axis_tdata\(222);
  m_axis_tdata(209) <= \^m_axis_tdata\(222);
  m_axis_tdata(208) <= \^m_axis_tdata\(222);
  m_axis_tdata(207) <= \<const0>\;
  m_axis_tdata(206) <= \^m_axis_tdata\(206);
  m_axis_tdata(205) <= \^m_axis_tdata\(206);
  m_axis_tdata(204) <= \^m_axis_tdata\(206);
  m_axis_tdata(203) <= \^m_axis_tdata\(206);
  m_axis_tdata(202) <= \^m_axis_tdata\(206);
  m_axis_tdata(201) <= \^m_axis_tdata\(206);
  m_axis_tdata(200) <= \^m_axis_tdata\(206);
  m_axis_tdata(199) <= \^m_axis_tdata\(206);
  m_axis_tdata(198) <= \^m_axis_tdata\(206);
  m_axis_tdata(197) <= \^m_axis_tdata\(206);
  m_axis_tdata(196) <= \^m_axis_tdata\(206);
  m_axis_tdata(195) <= \^m_axis_tdata\(206);
  m_axis_tdata(194) <= \^m_axis_tdata\(206);
  m_axis_tdata(193) <= \^m_axis_tdata\(206);
  m_axis_tdata(192) <= \^m_axis_tdata\(206);
  m_axis_tdata(191) <= \<const0>\;
  m_axis_tdata(190) <= \^m_axis_tdata\(190);
  m_axis_tdata(189) <= \^m_axis_tdata\(190);
  m_axis_tdata(188) <= \^m_axis_tdata\(190);
  m_axis_tdata(187) <= \^m_axis_tdata\(190);
  m_axis_tdata(186) <= \^m_axis_tdata\(190);
  m_axis_tdata(185) <= \^m_axis_tdata\(190);
  m_axis_tdata(184) <= \^m_axis_tdata\(190);
  m_axis_tdata(183) <= \^m_axis_tdata\(190);
  m_axis_tdata(182) <= \^m_axis_tdata\(190);
  m_axis_tdata(181) <= \^m_axis_tdata\(190);
  m_axis_tdata(180) <= \^m_axis_tdata\(190);
  m_axis_tdata(179) <= \^m_axis_tdata\(190);
  m_axis_tdata(178) <= \^m_axis_tdata\(190);
  m_axis_tdata(177) <= \^m_axis_tdata\(190);
  m_axis_tdata(176) <= \^m_axis_tdata\(190);
  m_axis_tdata(175) <= \<const0>\;
  m_axis_tdata(174) <= \^m_axis_tdata\(174);
  m_axis_tdata(173) <= \^m_axis_tdata\(174);
  m_axis_tdata(172) <= \^m_axis_tdata\(174);
  m_axis_tdata(171) <= \^m_axis_tdata\(174);
  m_axis_tdata(170) <= \^m_axis_tdata\(174);
  m_axis_tdata(169) <= \^m_axis_tdata\(174);
  m_axis_tdata(168) <= \^m_axis_tdata\(174);
  m_axis_tdata(167) <= \^m_axis_tdata\(174);
  m_axis_tdata(166) <= \^m_axis_tdata\(174);
  m_axis_tdata(165) <= \^m_axis_tdata\(174);
  m_axis_tdata(164) <= \^m_axis_tdata\(174);
  m_axis_tdata(163) <= \^m_axis_tdata\(174);
  m_axis_tdata(162) <= \^m_axis_tdata\(174);
  m_axis_tdata(161) <= \^m_axis_tdata\(174);
  m_axis_tdata(160) <= \^m_axis_tdata\(174);
  m_axis_tdata(159) <= \<const0>\;
  m_axis_tdata(158) <= \^m_axis_tdata\(158);
  m_axis_tdata(157) <= \^m_axis_tdata\(158);
  m_axis_tdata(156) <= \^m_axis_tdata\(158);
  m_axis_tdata(155) <= \^m_axis_tdata\(158);
  m_axis_tdata(154) <= \^m_axis_tdata\(158);
  m_axis_tdata(153) <= \^m_axis_tdata\(158);
  m_axis_tdata(152) <= \^m_axis_tdata\(158);
  m_axis_tdata(151) <= \^m_axis_tdata\(158);
  m_axis_tdata(150) <= \^m_axis_tdata\(158);
  m_axis_tdata(149) <= \^m_axis_tdata\(158);
  m_axis_tdata(148) <= \^m_axis_tdata\(158);
  m_axis_tdata(147) <= \^m_axis_tdata\(158);
  m_axis_tdata(146) <= \^m_axis_tdata\(158);
  m_axis_tdata(145) <= \^m_axis_tdata\(158);
  m_axis_tdata(144) <= \^m_axis_tdata\(158);
  m_axis_tdata(143) <= \<const0>\;
  m_axis_tdata(142) <= \^m_axis_tdata\(142);
  m_axis_tdata(141) <= \^m_axis_tdata\(142);
  m_axis_tdata(140) <= \^m_axis_tdata\(142);
  m_axis_tdata(139) <= \^m_axis_tdata\(142);
  m_axis_tdata(138) <= \^m_axis_tdata\(142);
  m_axis_tdata(137) <= \^m_axis_tdata\(142);
  m_axis_tdata(136) <= \^m_axis_tdata\(142);
  m_axis_tdata(135) <= \^m_axis_tdata\(142);
  m_axis_tdata(134) <= \^m_axis_tdata\(142);
  m_axis_tdata(133) <= \^m_axis_tdata\(142);
  m_axis_tdata(132) <= \^m_axis_tdata\(142);
  m_axis_tdata(131) <= \^m_axis_tdata\(142);
  m_axis_tdata(130) <= \^m_axis_tdata\(142);
  m_axis_tdata(129) <= \^m_axis_tdata\(142);
  m_axis_tdata(128) <= \^m_axis_tdata\(142);
  m_axis_tdata(127) <= \<const0>\;
  m_axis_tdata(126) <= \^m_axis_tdata\(126);
  m_axis_tdata(125) <= \^m_axis_tdata\(126);
  m_axis_tdata(124) <= \^m_axis_tdata\(126);
  m_axis_tdata(123) <= \^m_axis_tdata\(126);
  m_axis_tdata(122) <= \^m_axis_tdata\(126);
  m_axis_tdata(121) <= \^m_axis_tdata\(126);
  m_axis_tdata(120) <= \^m_axis_tdata\(126);
  m_axis_tdata(119) <= \^m_axis_tdata\(126);
  m_axis_tdata(118) <= \^m_axis_tdata\(126);
  m_axis_tdata(117) <= \^m_axis_tdata\(126);
  m_axis_tdata(116) <= \^m_axis_tdata\(126);
  m_axis_tdata(115) <= \^m_axis_tdata\(126);
  m_axis_tdata(114) <= \^m_axis_tdata\(126);
  m_axis_tdata(113) <= \^m_axis_tdata\(126);
  m_axis_tdata(112) <= \^m_axis_tdata\(126);
  m_axis_tdata(111) <= \<const0>\;
  m_axis_tdata(110) <= \^m_axis_tdata\(110);
  m_axis_tdata(109) <= \^m_axis_tdata\(110);
  m_axis_tdata(108) <= \^m_axis_tdata\(110);
  m_axis_tdata(107) <= \^m_axis_tdata\(110);
  m_axis_tdata(106) <= \^m_axis_tdata\(110);
  m_axis_tdata(105) <= \^m_axis_tdata\(110);
  m_axis_tdata(104) <= \^m_axis_tdata\(110);
  m_axis_tdata(103) <= \^m_axis_tdata\(110);
  m_axis_tdata(102) <= \^m_axis_tdata\(110);
  m_axis_tdata(101) <= \^m_axis_tdata\(110);
  m_axis_tdata(100) <= \^m_axis_tdata\(110);
  m_axis_tdata(99) <= \^m_axis_tdata\(110);
  m_axis_tdata(98) <= \^m_axis_tdata\(110);
  m_axis_tdata(97) <= \^m_axis_tdata\(110);
  m_axis_tdata(96) <= \^m_axis_tdata\(110);
  m_axis_tdata(95) <= \<const0>\;
  m_axis_tdata(94) <= \^m_axis_tdata\(94);
  m_axis_tdata(93) <= \^m_axis_tdata\(94);
  m_axis_tdata(92) <= \^m_axis_tdata\(94);
  m_axis_tdata(91) <= \^m_axis_tdata\(94);
  m_axis_tdata(90) <= \^m_axis_tdata\(94);
  m_axis_tdata(89) <= \^m_axis_tdata\(94);
  m_axis_tdata(88) <= \^m_axis_tdata\(94);
  m_axis_tdata(87) <= \^m_axis_tdata\(94);
  m_axis_tdata(86) <= \^m_axis_tdata\(94);
  m_axis_tdata(85) <= \^m_axis_tdata\(94);
  m_axis_tdata(84) <= \^m_axis_tdata\(94);
  m_axis_tdata(83) <= \^m_axis_tdata\(94);
  m_axis_tdata(82) <= \^m_axis_tdata\(94);
  m_axis_tdata(81) <= \^m_axis_tdata\(94);
  m_axis_tdata(80) <= \^m_axis_tdata\(94);
  m_axis_tdata(79) <= \<const0>\;
  m_axis_tdata(78) <= \^m_axis_tdata\(78);
  m_axis_tdata(77) <= \^m_axis_tdata\(78);
  m_axis_tdata(76) <= \^m_axis_tdata\(78);
  m_axis_tdata(75) <= \^m_axis_tdata\(78);
  m_axis_tdata(74) <= \^m_axis_tdata\(78);
  m_axis_tdata(73) <= \^m_axis_tdata\(78);
  m_axis_tdata(72) <= \^m_axis_tdata\(78);
  m_axis_tdata(71) <= \^m_axis_tdata\(78);
  m_axis_tdata(70) <= \^m_axis_tdata\(78);
  m_axis_tdata(69) <= \^m_axis_tdata\(78);
  m_axis_tdata(68) <= \^m_axis_tdata\(78);
  m_axis_tdata(67) <= \^m_axis_tdata\(78);
  m_axis_tdata(66) <= \^m_axis_tdata\(78);
  m_axis_tdata(65) <= \^m_axis_tdata\(78);
  m_axis_tdata(64) <= \^m_axis_tdata\(78);
  m_axis_tdata(63) <= \<const0>\;
  m_axis_tdata(62) <= \^m_axis_tdata\(62);
  m_axis_tdata(61) <= \^m_axis_tdata\(62);
  m_axis_tdata(60) <= \^m_axis_tdata\(62);
  m_axis_tdata(59) <= \^m_axis_tdata\(62);
  m_axis_tdata(58) <= \^m_axis_tdata\(62);
  m_axis_tdata(57) <= \^m_axis_tdata\(62);
  m_axis_tdata(56) <= \^m_axis_tdata\(62);
  m_axis_tdata(55) <= \^m_axis_tdata\(62);
  m_axis_tdata(54) <= \^m_axis_tdata\(62);
  m_axis_tdata(53) <= \^m_axis_tdata\(62);
  m_axis_tdata(52) <= \^m_axis_tdata\(62);
  m_axis_tdata(51) <= \^m_axis_tdata\(62);
  m_axis_tdata(50) <= \^m_axis_tdata\(62);
  m_axis_tdata(49) <= \^m_axis_tdata\(62);
  m_axis_tdata(48) <= \^m_axis_tdata\(62);
  m_axis_tdata(47) <= \<const0>\;
  m_axis_tdata(46) <= \^m_axis_tdata\(46);
  m_axis_tdata(45) <= \^m_axis_tdata\(46);
  m_axis_tdata(44) <= \^m_axis_tdata\(46);
  m_axis_tdata(43) <= \^m_axis_tdata\(46);
  m_axis_tdata(42) <= \^m_axis_tdata\(46);
  m_axis_tdata(41) <= \^m_axis_tdata\(46);
  m_axis_tdata(40) <= \^m_axis_tdata\(46);
  m_axis_tdata(39) <= \^m_axis_tdata\(46);
  m_axis_tdata(38) <= \^m_axis_tdata\(46);
  m_axis_tdata(37) <= \^m_axis_tdata\(46);
  m_axis_tdata(36) <= \^m_axis_tdata\(46);
  m_axis_tdata(35) <= \^m_axis_tdata\(46);
  m_axis_tdata(34) <= \^m_axis_tdata\(46);
  m_axis_tdata(33) <= \^m_axis_tdata\(46);
  m_axis_tdata(32) <= \^m_axis_tdata\(46);
  m_axis_tdata(31) <= \<const0>\;
  m_axis_tdata(30) <= \^m_axis_tdata\(30);
  m_axis_tdata(29) <= \^m_axis_tdata\(30);
  m_axis_tdata(28) <= \^m_axis_tdata\(30);
  m_axis_tdata(27) <= \^m_axis_tdata\(30);
  m_axis_tdata(26) <= \^m_axis_tdata\(30);
  m_axis_tdata(25) <= \^m_axis_tdata\(30);
  m_axis_tdata(24) <= \^m_axis_tdata\(30);
  m_axis_tdata(23) <= \^m_axis_tdata\(30);
  m_axis_tdata(22) <= \^m_axis_tdata\(30);
  m_axis_tdata(21) <= \^m_axis_tdata\(30);
  m_axis_tdata(20) <= \^m_axis_tdata\(30);
  m_axis_tdata(19) <= \^m_axis_tdata\(30);
  m_axis_tdata(18) <= \^m_axis_tdata\(30);
  m_axis_tdata(17) <= \^m_axis_tdata\(30);
  m_axis_tdata(16) <= \^m_axis_tdata\(30);
  m_axis_tdata(15) <= \<const0>\;
  m_axis_tdata(14) <= \^m_axis_tdata\(14);
  m_axis_tdata(13) <= \^m_axis_tdata\(14);
  m_axis_tdata(12) <= \^m_axis_tdata\(14);
  m_axis_tdata(11) <= \^m_axis_tdata\(14);
  m_axis_tdata(10) <= \^m_axis_tdata\(14);
  m_axis_tdata(9) <= \^m_axis_tdata\(14);
  m_axis_tdata(8) <= \^m_axis_tdata\(14);
  m_axis_tdata(7) <= \^m_axis_tdata\(14);
  m_axis_tdata(6) <= \^m_axis_tdata\(14);
  m_axis_tdata(5) <= \^m_axis_tdata\(14);
  m_axis_tdata(4) <= \^m_axis_tdata\(14);
  m_axis_tdata(3) <= \^m_axis_tdata\(14);
  m_axis_tdata(2) <= \^m_axis_tdata\(14);
  m_axis_tdata(1) <= \^m_axis_tdata\(14);
  m_axis_tdata(0) <= \^m_axis_tdata\(14);
  m_axis_tvalid <= \<const1>\;
  state_out(7) <= \<const0>\;
  state_out(6) <= \<const0>\;
  state_out(5) <= \<const0>\;
  state_out(4) <= \<const0>\;
  state_out(3) <= \<const0>\;
  state_out(2 downto 0) <= \^state_out\(2 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pulse_gen
     port map (
      clk => clk,
      fifo_data(31 downto 0) => fifo_data(31 downto 0),
      fifo_empty => fifo_empty,
      fifo_read => fifo_read,
      m_axis_tdata(15) => \^m_axis_tdata\(254),
      m_axis_tdata(14) => \^m_axis_tdata\(238),
      m_axis_tdata(13) => \^m_axis_tdata\(222),
      m_axis_tdata(12) => \^m_axis_tdata\(206),
      m_axis_tdata(11) => \^m_axis_tdata\(190),
      m_axis_tdata(10) => \^m_axis_tdata\(174),
      m_axis_tdata(9) => \^m_axis_tdata\(158),
      m_axis_tdata(8) => \^m_axis_tdata\(142),
      m_axis_tdata(7) => \^m_axis_tdata\(126),
      m_axis_tdata(6) => \^m_axis_tdata\(110),
      m_axis_tdata(5) => \^m_axis_tdata\(94),
      m_axis_tdata(4) => \^m_axis_tdata\(78),
      m_axis_tdata(3) => \^m_axis_tdata\(62),
      m_axis_tdata(2) => \^m_axis_tdata\(46),
      m_axis_tdata(1) => \^m_axis_tdata\(30),
      m_axis_tdata(0) => \^m_axis_tdata\(14),
      rst => rst,
      state_out(2 downto 0) => \^state_out\(2 downto 0)
    );
end STRUCTURE;
