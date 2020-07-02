-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu Jul  2 10:27:20 2020
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
    fifo_read : out STD_LOGIC;
    fifo_empty : in STD_LOGIC;
    fifo_data : in STD_LOGIC_VECTOR ( 27 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pulse_gen;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pulse_gen is
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_9_n_0\ : STD_LOGIC;
  signal coarse_delay : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \coarse_delay[10]_i_2_n_0\ : STD_LOGIC;
  signal \coarse_delay[11]_i_2_n_0\ : STD_LOGIC;
  signal \coarse_delay[14]_i_2_n_0\ : STD_LOGIC;
  signal \coarse_delay[15]_i_1_n_0\ : STD_LOGIC;
  signal \coarse_delay[15]_i_2_n_0\ : STD_LOGIC;
  signal \coarse_delay[15]_i_3_n_0\ : STD_LOGIC;
  signal \coarse_delay[15]_i_4_n_0\ : STD_LOGIC;
  signal \coarse_delay[15]_i_5_n_0\ : STD_LOGIC;
  signal \coarse_delay[4]_i_2_n_0\ : STD_LOGIC;
  signal \coarse_delay[5]_i_2_n_0\ : STD_LOGIC;
  signal \coarse_delay[7]_i_2_n_0\ : STD_LOGIC;
  signal \coarse_delay[8]_i_2_n_0\ : STD_LOGIC;
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
  signal \fine_delay[3]_i_1_n_0\ : STD_LOGIC;
  signal is_phase_meas_mode_i_1_n_0 : STD_LOGIC;
  signal is_phase_meas_mode_i_2_n_0 : STD_LOGIC;
  signal is_phase_meas_mode_i_3_n_0 : STD_LOGIC;
  signal is_phase_meas_mode_reg_n_0 : STD_LOGIC;
  signal m_axis_tdata_int : STD_LOGIC_VECTOR ( 254 downto 14 );
  signal m_axis_tdata_int1 : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \m_axis_tdata_int[254]_i_1_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_int[254]_i_3_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_int[254]_i_4_n_0\ : STD_LOGIC;
  signal \m_axis_tdata_int[254]_i_5_n_0\ : STD_LOGIC;
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
  signal \state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state__1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_10\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_5\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_6\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_8\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_9\ : label is "soft_lutpair17";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "state_wait_pulse:10,state_idle:00,state_wait_tick:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "state_wait_pulse:10,state_idle:00,state_wait_tick:01";
  attribute SOFT_HLUTNM of \coarse_delay[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \coarse_delay[10]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \coarse_delay[11]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \coarse_delay[12]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \coarse_delay[14]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \coarse_delay[15]_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \coarse_delay[15]_i_5\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \coarse_delay[4]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \coarse_delay[5]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \coarse_delay[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \coarse_delay[8]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \coarse_delay[9]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of fifo_read_i_1 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_axis_tdata[112]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_tdata[128]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_axis_tdata[144]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_tdata[160]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axis_tdata[176]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_tdata[192]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_axis_tdata[208]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tdata[224]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tdata[240]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_axis_tdata[32]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_axis_tdata[48]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axis_tdata[64]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_axis_tdata[80]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_tdata[96]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[110]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[126]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[142]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[14]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[158]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[174]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[190]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[206]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[222]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[238]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[254]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[254]_i_5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[30]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[46]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[62]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[78]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata_int[94]_i_1\ : label is "soft_lutpair8";
begin
  fifo_read <= \^fifo_read\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => \FSM_sequential_state[0]_i_2_n_0\,
      O => \state__1\(0)
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => fifo_data(25),
      I1 => fifo_data(26),
      I2 => fifo_data(27),
      I3 => fifo_data(23),
      I4 => fifo_data(24),
      I5 => fifo_data(22),
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000002"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_3_n_0\,
      I1 => \coarse_delay_reg_n_0_[15]\,
      I2 => \FSM_sequential_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_state[1]_i_5_n_0\,
      I4 => \FSM_sequential_state[1]_i_6_n_0\,
      I5 => \FSM_sequential_state[1]_i_7_n_0\,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \state__0\(1),
      I1 => fifo_empty,
      O => \FSM_sequential_state[1]_i_10_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      O => \state__1\(1)
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \state__0\(0),
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_8_n_0\,
      I1 => \FSM_sequential_state[1]_i_9_n_0\,
      I2 => \coarse_delay_reg_n_0_[6]\,
      I3 => \coarse_delay[7]_i_2_n_0\,
      I4 => \coarse_delay_reg_n_0_[8]\,
      I5 => \coarse_delay_reg_n_0_[7]\,
      O => \FSM_sequential_state[1]_i_4_n_0\
    );
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \coarse_delay_reg_n_0_[14]\,
      I1 => \coarse_delay_reg_n_0_[13]\,
      I2 => \coarse_delay_reg_n_0_[12]\,
      O => \FSM_sequential_state[1]_i_5_n_0\
    );
\FSM_sequential_state[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \coarse_delay_reg_n_0_[13]\,
      I1 => \coarse_delay_reg_n_0_[14]\,
      O => \FSM_sequential_state[1]_i_6_n_0\
    );
\FSM_sequential_state[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFBBBAAAAAAAA"
    )
        port map (
      I0 => \state__1\(1),
      I1 => is_phase_meas_mode_i_2_n_0,
      I2 => fifo_data(21),
      I3 => fifo_data(22),
      I4 => fifo_data(20),
      I5 => \FSM_sequential_state[1]_i_10_n_0\,
      O => \FSM_sequential_state[1]_i_7_n_0\
    );
\FSM_sequential_state[1]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \coarse_delay_reg_n_0_[10]\,
      I1 => \coarse_delay_reg_n_0_[11]\,
      O => \FSM_sequential_state[1]_i_8_n_0\
    );
\FSM_sequential_state[1]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \coarse_delay_reg_n_0_[11]\,
      I1 => \coarse_delay_reg_n_0_[10]\,
      I2 => \coarse_delay_reg_n_0_[9]\,
      O => \FSM_sequential_state[1]_i_9_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_state[1]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => \state__1\(0),
      Q => \state__0\(0)
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \FSM_sequential_state[1]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => \state__1\(1),
      Q => \state__0\(1)
    );
\coarse_delay[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"003A"
    )
        port map (
      I0 => fifo_data(4),
      I1 => \coarse_delay_reg_n_0_[0]\,
      I2 => \state__0\(1),
      I3 => \state__0\(0),
      O => coarse_delay(0)
    );
\coarse_delay[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E020E020E02020E"
    )
        port map (
      I0 => fifo_data(14),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \coarse_delay_reg_n_0_[10]\,
      I4 => \coarse_delay[10]_i_2_n_0\,
      I5 => \coarse_delay_reg_n_0_[9]\,
      O => coarse_delay(10)
    );
\coarse_delay[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \coarse_delay_reg_n_0_[6]\,
      I1 => \coarse_delay[7]_i_2_n_0\,
      I2 => \coarse_delay_reg_n_0_[8]\,
      I3 => \coarse_delay_reg_n_0_[7]\,
      O => \coarse_delay[10]_i_2_n_0\
    );
\coarse_delay[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E02020E0E020E02"
    )
        port map (
      I0 => fifo_data(15),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \coarse_delay_reg_n_0_[11]\,
      I4 => \coarse_delay_reg_n_0_[10]\,
      I5 => \coarse_delay[11]_i_2_n_0\,
      O => coarse_delay(11)
    );
\coarse_delay[11]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \coarse_delay_reg_n_0_[9]\,
      I1 => \coarse_delay_reg_n_0_[7]\,
      I2 => \coarse_delay_reg_n_0_[8]\,
      I3 => \coarse_delay[7]_i_2_n_0\,
      I4 => \coarse_delay_reg_n_0_[6]\,
      O => \coarse_delay[11]_i_2_n_0\
    );
\coarse_delay[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C3AA"
    )
        port map (
      I0 => fifo_data(16),
      I1 => \coarse_delay_reg_n_0_[12]\,
      I2 => \FSM_sequential_state[1]_i_4_n_0\,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => coarse_delay(12)
    );
\coarse_delay[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E020E020E02020E"
    )
        port map (
      I0 => fifo_data(17),
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \coarse_delay_reg_n_0_[13]\,
      I4 => \FSM_sequential_state[1]_i_4_n_0\,
      I5 => \coarse_delay_reg_n_0_[12]\,
      O => coarse_delay(13)
    );
\coarse_delay[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAEAEAEAEAAE"
    )
        port map (
      I0 => \coarse_delay[14]_i_2_n_0\,
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => \coarse_delay_reg_n_0_[14]\,
      I3 => \coarse_delay_reg_n_0_[13]\,
      I4 => \coarse_delay_reg_n_0_[12]\,
      I5 => \FSM_sequential_state[1]_i_4_n_0\,
      O => coarse_delay(14)
    );
\coarse_delay[14]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => fifo_data(18),
      I1 => \state__0\(0),
      I2 => \state__0\(1),
      O => \coarse_delay[14]_i_2_n_0\
    );
\coarse_delay[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFE0000"
    )
        port map (
      I0 => \coarse_delay_reg_n_0_[15]\,
      I1 => \FSM_sequential_state[1]_i_4_n_0\,
      I2 => \FSM_sequential_state[1]_i_5_n_0\,
      I3 => \FSM_sequential_state[1]_i_6_n_0\,
      I4 => \FSM_sequential_state[1]_i_3_n_0\,
      I5 => \fine_delay[3]_i_1_n_0\,
      O => \coarse_delay[15]_i_1_n_0\
    );
\coarse_delay[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5404545404540404"
    )
        port map (
      I0 => \state__0\(0),
      I1 => fifo_data(19),
      I2 => \state__0\(1),
      I3 => \FSM_sequential_state[1]_i_6_n_0\,
      I4 => \coarse_delay[15]_i_3_n_0\,
      I5 => \coarse_delay_reg_n_0_[15]\,
      O => \coarse_delay[15]_i_2_n_0\
    );
\coarse_delay[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \coarse_delay[15]_i_4_n_0\,
      I1 => \coarse_delay[7]_i_2_n_0\,
      I2 => \coarse_delay[15]_i_5_n_0\,
      I3 => \FSM_sequential_state[1]_i_9_n_0\,
      I4 => \FSM_sequential_state[1]_i_8_n_0\,
      I5 => \FSM_sequential_state[1]_i_5_n_0\,
      O => \coarse_delay[15]_i_3_n_0\
    );
\coarse_delay[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \coarse_delay_reg_n_0_[7]\,
      I1 => \coarse_delay_reg_n_0_[8]\,
      O => \coarse_delay[15]_i_4_n_0\
    );
\coarse_delay[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \coarse_delay_reg_n_0_[8]\,
      I1 => \coarse_delay_reg_n_0_[7]\,
      I2 => \coarse_delay_reg_n_0_[6]\,
      O => \coarse_delay[15]_i_5_n_0\
    );
\coarse_delay[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C3AA"
    )
        port map (
      I0 => fifo_data(5),
      I1 => \coarse_delay_reg_n_0_[1]\,
      I2 => \coarse_delay_reg_n_0_[0]\,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => coarse_delay(1)
    );
\coarse_delay[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCC3AAAA"
    )
        port map (
      I0 => fifo_data(6),
      I1 => \coarse_delay_reg_n_0_[2]\,
      I2 => \coarse_delay_reg_n_0_[0]\,
      I3 => \coarse_delay_reg_n_0_[1]\,
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => coarse_delay(2)
    );
\coarse_delay[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C3AA"
    )
        port map (
      I0 => fifo_data(7),
      I1 => \coarse_delay_reg_n_0_[3]\,
      I2 => \coarse_delay[4]_i_2_n_0\,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => coarse_delay(3)
    );
\coarse_delay[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCC3AAAA"
    )
        port map (
      I0 => fifo_data(8),
      I1 => \coarse_delay_reg_n_0_[4]\,
      I2 => \coarse_delay[4]_i_2_n_0\,
      I3 => \coarse_delay_reg_n_0_[3]\,
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => coarse_delay(4)
    );
\coarse_delay[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \coarse_delay_reg_n_0_[2]\,
      I1 => \coarse_delay_reg_n_0_[0]\,
      I2 => \coarse_delay_reg_n_0_[1]\,
      O => \coarse_delay[4]_i_2_n_0\
    );
\coarse_delay[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CC3CAAAA"
    )
        port map (
      I0 => fifo_data(9),
      I1 => \coarse_delay_reg_n_0_[5]\,
      I2 => \coarse_delay[5]_i_2_n_0\,
      I3 => \coarse_delay_reg_n_0_[4]\,
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => coarse_delay(5)
    );
\coarse_delay[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \coarse_delay_reg_n_0_[3]\,
      I1 => \coarse_delay_reg_n_0_[1]\,
      I2 => \coarse_delay_reg_n_0_[0]\,
      I3 => \coarse_delay_reg_n_0_[2]\,
      O => \coarse_delay[5]_i_2_n_0\
    );
\coarse_delay[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C3AA"
    )
        port map (
      I0 => fifo_data(10),
      I1 => \coarse_delay_reg_n_0_[6]\,
      I2 => \coarse_delay[7]_i_2_n_0\,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => coarse_delay(6)
    );
\coarse_delay[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CCC3AAAA"
    )
        port map (
      I0 => fifo_data(11),
      I1 => \coarse_delay_reg_n_0_[7]\,
      I2 => \coarse_delay[7]_i_2_n_0\,
      I3 => \coarse_delay_reg_n_0_[6]\,
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => coarse_delay(7)
    );
\coarse_delay[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \coarse_delay_reg_n_0_[3]\,
      I1 => \coarse_delay_reg_n_0_[2]\,
      I2 => \coarse_delay_reg_n_0_[0]\,
      I3 => \coarse_delay_reg_n_0_[1]\,
      I4 => \coarse_delay_reg_n_0_[5]\,
      I5 => \coarse_delay_reg_n_0_[4]\,
      O => \coarse_delay[7]_i_2_n_0\
    );
\coarse_delay[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CC3CAAAA"
    )
        port map (
      I0 => fifo_data(12),
      I1 => \coarse_delay_reg_n_0_[8]\,
      I2 => \coarse_delay[8]_i_2_n_0\,
      I3 => \coarse_delay_reg_n_0_[7]\,
      I4 => \state__0\(1),
      I5 => \state__0\(0),
      O => coarse_delay(8)
    );
\coarse_delay[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \coarse_delay_reg_n_0_[6]\,
      I1 => \coarse_delay[7]_i_2_n_0\,
      O => \coarse_delay[8]_i_2_n_0\
    );
\coarse_delay[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000C3AA"
    )
        port map (
      I0 => fifo_data(13),
      I1 => \coarse_delay_reg_n_0_[9]\,
      I2 => \coarse_delay[10]_i_2_n_0\,
      I3 => \state__0\(1),
      I4 => \state__0\(0),
      O => coarse_delay(9)
    );
\coarse_delay_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \coarse_delay[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => coarse_delay(0),
      Q => \coarse_delay_reg_n_0_[0]\
    );
\coarse_delay_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \coarse_delay[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => coarse_delay(10),
      Q => \coarse_delay_reg_n_0_[10]\
    );
\coarse_delay_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \coarse_delay[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => coarse_delay(11),
      Q => \coarse_delay_reg_n_0_[11]\
    );
\coarse_delay_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \coarse_delay[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => coarse_delay(12),
      Q => \coarse_delay_reg_n_0_[12]\
    );
\coarse_delay_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \coarse_delay[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => coarse_delay(13),
      Q => \coarse_delay_reg_n_0_[13]\
    );
\coarse_delay_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \coarse_delay[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => coarse_delay(14),
      Q => \coarse_delay_reg_n_0_[14]\
    );
\coarse_delay_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \coarse_delay[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => \coarse_delay[15]_i_2_n_0\,
      Q => \coarse_delay_reg_n_0_[15]\
    );
\coarse_delay_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \coarse_delay[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => coarse_delay(1),
      Q => \coarse_delay_reg_n_0_[1]\
    );
\coarse_delay_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \coarse_delay[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => coarse_delay(2),
      Q => \coarse_delay_reg_n_0_[2]\
    );
\coarse_delay_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \coarse_delay[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => coarse_delay(3),
      Q => \coarse_delay_reg_n_0_[3]\
    );
\coarse_delay_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \coarse_delay[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => coarse_delay(4),
      Q => \coarse_delay_reg_n_0_[4]\
    );
\coarse_delay_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \coarse_delay[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => coarse_delay(5),
      Q => \coarse_delay_reg_n_0_[5]\
    );
\coarse_delay_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \coarse_delay[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => coarse_delay(6),
      Q => \coarse_delay_reg_n_0_[6]\
    );
\coarse_delay_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \coarse_delay[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => coarse_delay(7),
      Q => \coarse_delay_reg_n_0_[7]\
    );
\coarse_delay_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \coarse_delay[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => coarse_delay(8),
      Q => \coarse_delay_reg_n_0_[8]\
    );
\coarse_delay_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \coarse_delay[15]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => coarse_delay(9),
      Q => \coarse_delay_reg_n_0_[9]\
    );
fifo_read_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD01"
    )
        port map (
      I0 => fifo_empty,
      I1 => \state__0\(1),
      I2 => \state__0\(0),
      I3 => \^fifo_read\,
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
\fine_delay[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000020"
    )
        port map (
      I0 => \FSM_sequential_state[0]_i_2_n_0\,
      I1 => fifo_data(21),
      I2 => fifo_data(20),
      I3 => \state__0\(0),
      I4 => fifo_empty,
      I5 => \state__0\(1),
      O => \fine_delay[3]_i_1_n_0\
    );
\fine_delay_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \fine_delay[3]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => fifo_data(0),
      Q => m_axis_tdata_int1(4)
    );
\fine_delay_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \fine_delay[3]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => fifo_data(1),
      Q => m_axis_tdata_int1(5)
    );
\fine_delay_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \fine_delay[3]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => fifo_data(2),
      Q => m_axis_tdata_int1(6)
    );
\fine_delay_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \fine_delay[3]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => fifo_data(3),
      Q => m_axis_tdata_int1(7)
    );
is_phase_meas_mode_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF1F0010"
    )
        port map (
      I0 => fifo_data(22),
      I1 => \state__0\(1),
      I2 => is_phase_meas_mode_i_2_n_0,
      I3 => is_phase_meas_mode_i_3_n_0,
      I4 => is_phase_meas_mode_reg_n_0,
      O => is_phase_meas_mode_i_1_n_0
    );
is_phase_meas_mode_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => fifo_data(24),
      I1 => fifo_data(23),
      I2 => fifo_data(27),
      I3 => fifo_data(26),
      I4 => fifo_data(25),
      O => is_phase_meas_mode_i_2_n_0
    );
is_phase_meas_mode_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFEFFFF"
    )
        port map (
      I0 => \state__0\(1),
      I1 => fifo_empty,
      I2 => \state__0\(0),
      I3 => fifo_data(21),
      I4 => fifo_data(22),
      I5 => fifo_data(20),
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
\m_axis_tdata[240]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => is_phase_meas_mode_reg_n_0,
      I1 => \m_axis_tdata_int_reg_n_0_[254]\,
      O => m_axis_tdata(15)
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
\m_axis_tdata_int[110]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => m_axis_tdata_int1(5),
      I1 => m_axis_tdata_int1(4),
      I2 => m_axis_tdata_int1(6),
      I3 => \state__0\(1),
      I4 => m_axis_tdata_int1(7),
      O => m_axis_tdata_int(110)
    );
\m_axis_tdata_int[126]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => m_axis_tdata_int1(5),
      I1 => m_axis_tdata_int1(4),
      I2 => m_axis_tdata_int1(6),
      I3 => \state__0\(1),
      I4 => m_axis_tdata_int1(7),
      O => m_axis_tdata_int(126)
    );
\m_axis_tdata_int[142]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => m_axis_tdata_int1(7),
      I1 => \state__0\(1),
      I2 => m_axis_tdata_int1(5),
      I3 => m_axis_tdata_int1(4),
      I4 => m_axis_tdata_int1(6),
      O => m_axis_tdata_int(142)
    );
\m_axis_tdata_int[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => m_axis_tdata_int1(5),
      I1 => m_axis_tdata_int1(4),
      I2 => m_axis_tdata_int1(6),
      I3 => \state__0\(1),
      I4 => m_axis_tdata_int1(7),
      O => m_axis_tdata_int(14)
    );
\m_axis_tdata_int[158]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => m_axis_tdata_int1(7),
      I1 => \state__0\(1),
      I2 => m_axis_tdata_int1(4),
      I3 => m_axis_tdata_int1(5),
      I4 => m_axis_tdata_int1(6),
      O => m_axis_tdata_int(158)
    );
\m_axis_tdata_int[174]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => m_axis_tdata_int1(7),
      I1 => \state__0\(1),
      I2 => m_axis_tdata_int1(5),
      I3 => m_axis_tdata_int1(4),
      I4 => m_axis_tdata_int1(6),
      O => m_axis_tdata_int(174)
    );
\m_axis_tdata_int[190]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => m_axis_tdata_int1(7),
      I1 => \state__0\(1),
      I2 => m_axis_tdata_int1(5),
      I3 => m_axis_tdata_int1(4),
      I4 => m_axis_tdata_int1(6),
      O => m_axis_tdata_int(190)
    );
\m_axis_tdata_int[206]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => m_axis_tdata_int1(7),
      I1 => \state__0\(1),
      I2 => m_axis_tdata_int1(5),
      I3 => m_axis_tdata_int1(4),
      I4 => m_axis_tdata_int1(6),
      O => m_axis_tdata_int(206)
    );
\m_axis_tdata_int[222]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => m_axis_tdata_int1(7),
      I1 => \state__0\(1),
      I2 => m_axis_tdata_int1(4),
      I3 => m_axis_tdata_int1(5),
      I4 => m_axis_tdata_int1(6),
      O => m_axis_tdata_int(222)
    );
\m_axis_tdata_int[238]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000400"
    )
        port map (
      I0 => m_axis_tdata_int1(7),
      I1 => \state__0\(1),
      I2 => m_axis_tdata_int1(5),
      I3 => m_axis_tdata_int1(4),
      I4 => m_axis_tdata_int1(6),
      O => m_axis_tdata_int(238)
    );
\m_axis_tdata_int[254]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000155555555"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \coarse_delay_reg_n_0_[15]\,
      I2 => \FSM_sequential_state[1]_i_4_n_0\,
      I3 => \FSM_sequential_state[1]_i_5_n_0\,
      I4 => \FSM_sequential_state[1]_i_6_n_0\,
      I5 => \state__0\(1),
      O => \m_axis_tdata_int[254]_i_1_n_0\
    );
\m_axis_tdata_int[254]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888F88888888"
    )
        port map (
      I0 => \m_axis_tdata_int[254]_i_3_n_0\,
      I1 => \m_axis_tdata_int[254]_i_4_n_0\,
      I2 => \m_axis_tdata_int[254]_i_5_n_0\,
      I3 => fifo_data(20),
      I4 => fifo_data(21),
      I5 => \FSM_sequential_state[0]_i_2_n_0\,
      O => m_axis_tdata_int(254)
    );
\m_axis_tdata_int[254]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \state__0\(0),
      I1 => \state__0\(1),
      I2 => m_axis_tdata_int1(7),
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
\m_axis_tdata_int[254]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \state__0\(0),
      I1 => fifo_empty,
      I2 => \state__0\(1),
      O => \m_axis_tdata_int[254]_i_5_n_0\
    );
\m_axis_tdata_int[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => m_axis_tdata_int1(4),
      I1 => m_axis_tdata_int1(5),
      I2 => m_axis_tdata_int1(6),
      I3 => \state__0\(1),
      I4 => m_axis_tdata_int1(7),
      O => m_axis_tdata_int(30)
    );
\m_axis_tdata_int[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => m_axis_tdata_int1(5),
      I1 => m_axis_tdata_int1(4),
      I2 => m_axis_tdata_int1(6),
      I3 => \state__0\(1),
      I4 => m_axis_tdata_int1(7),
      O => m_axis_tdata_int(46)
    );
\m_axis_tdata_int[62]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => m_axis_tdata_int1(5),
      I1 => m_axis_tdata_int1(4),
      I2 => m_axis_tdata_int1(6),
      I3 => \state__0\(1),
      I4 => m_axis_tdata_int1(7),
      O => m_axis_tdata_int(62)
    );
\m_axis_tdata_int[78]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => m_axis_tdata_int1(5),
      I1 => m_axis_tdata_int1(4),
      I2 => m_axis_tdata_int1(6),
      I3 => \state__0\(1),
      I4 => m_axis_tdata_int1(7),
      O => m_axis_tdata_int(78)
    );
\m_axis_tdata_int[94]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => m_axis_tdata_int1(4),
      I1 => m_axis_tdata_int1(5),
      I2 => m_axis_tdata_int1(6),
      I3 => \state__0\(1),
      I4 => m_axis_tdata_int1(7),
      O => m_axis_tdata_int(94)
    );
\m_axis_tdata_int_reg[110]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata_int[254]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => m_axis_tdata_int(110),
      Q => \m_axis_tdata_int_reg_n_0_[110]\
    );
\m_axis_tdata_int_reg[126]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata_int[254]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => m_axis_tdata_int(126),
      Q => \m_axis_tdata_int_reg_n_0_[126]\
    );
\m_axis_tdata_int_reg[142]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata_int[254]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => m_axis_tdata_int(142),
      Q => \m_axis_tdata_int_reg_n_0_[142]\
    );
\m_axis_tdata_int_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata_int[254]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => m_axis_tdata_int(14),
      Q => \m_axis_tdata_int_reg_n_0_[14]\
    );
\m_axis_tdata_int_reg[158]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata_int[254]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => m_axis_tdata_int(158),
      Q => \m_axis_tdata_int_reg_n_0_[158]\
    );
\m_axis_tdata_int_reg[174]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata_int[254]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => m_axis_tdata_int(174),
      Q => \m_axis_tdata_int_reg_n_0_[174]\
    );
\m_axis_tdata_int_reg[190]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata_int[254]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => m_axis_tdata_int(190),
      Q => \m_axis_tdata_int_reg_n_0_[190]\
    );
\m_axis_tdata_int_reg[206]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata_int[254]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => m_axis_tdata_int(206),
      Q => \m_axis_tdata_int_reg_n_0_[206]\
    );
\m_axis_tdata_int_reg[222]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata_int[254]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => m_axis_tdata_int(222),
      Q => \m_axis_tdata_int_reg_n_0_[222]\
    );
\m_axis_tdata_int_reg[238]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata_int[254]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => m_axis_tdata_int(238),
      Q => \m_axis_tdata_int_reg_n_0_[238]\
    );
\m_axis_tdata_int_reg[254]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata_int[254]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => m_axis_tdata_int(254),
      Q => \m_axis_tdata_int_reg_n_0_[254]\
    );
\m_axis_tdata_int_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata_int[254]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => m_axis_tdata_int(30),
      Q => \m_axis_tdata_int_reg_n_0_[30]\
    );
\m_axis_tdata_int_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata_int[254]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => m_axis_tdata_int(46),
      Q => \m_axis_tdata_int_reg_n_0_[46]\
    );
\m_axis_tdata_int_reg[62]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata_int[254]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => m_axis_tdata_int(62),
      Q => \m_axis_tdata_int_reg_n_0_[62]\
    );
\m_axis_tdata_int_reg[78]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata_int[254]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => m_axis_tdata_int(78),
      Q => \m_axis_tdata_int_reg_n_0_[78]\
    );
\m_axis_tdata_int_reg[94]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => \m_axis_tdata_int[254]_i_1_n_0\,
      CLR => fifo_read_i_2_n_0,
      D => m_axis_tdata_int(94),
      Q => \m_axis_tdata_int_reg_n_0_[94]\
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
    m_axis_tready : in STD_LOGIC
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
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 254 downto 14 );
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
  m_axis_tvalid <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_pulse_gen
     port map (
      clk => clk,
      fifo_data(27 downto 4) => fifo_data(31 downto 8),
      fifo_data(3 downto 0) => fifo_data(3 downto 0),
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
      rst => rst
    );
end STRUCTURE;
