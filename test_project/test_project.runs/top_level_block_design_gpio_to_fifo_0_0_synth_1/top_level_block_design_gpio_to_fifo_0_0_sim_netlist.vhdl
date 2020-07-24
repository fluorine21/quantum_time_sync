-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu Jul 23 20:08:27 2020
-- Host        : pme10D0025 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_level_block_design_gpio_to_fifo_0_0_sim_netlist.vhdl
-- Design      : top_level_block_design_gpio_to_fifo_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register is
  port (
    instr_fifo_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    emio_gpio_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    \data_out_reg[31]_0\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register is
  signal \data_out[31]_i_1_n_0\ : STD_LOGIC;
  signal \^instr_fifo_dout\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal state : STD_LOGIC;
begin
  instr_fifo_dout(31 downto 0) <= \^instr_fifo_dout\(31 downto 0);
\data_out[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => emio_gpio_i(0),
      I1 => state,
      O => \data_out[31]_i_1_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(1),
      Q => \^instr_fifo_dout\(0)
    );
\data_out_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(11),
      Q => \^instr_fifo_dout\(10)
    );
\data_out_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(12),
      Q => \^instr_fifo_dout\(11)
    );
\data_out_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(13),
      Q => \^instr_fifo_dout\(12)
    );
\data_out_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(14),
      Q => \^instr_fifo_dout\(13)
    );
\data_out_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(15),
      Q => \^instr_fifo_dout\(14)
    );
\data_out_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(16),
      Q => \^instr_fifo_dout\(15)
    );
\data_out_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(17),
      Q => \^instr_fifo_dout\(16)
    );
\data_out_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(18),
      Q => \^instr_fifo_dout\(17)
    );
\data_out_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(19),
      Q => \^instr_fifo_dout\(18)
    );
\data_out_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(20),
      Q => \^instr_fifo_dout\(19)
    );
\data_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(2),
      Q => \^instr_fifo_dout\(1)
    );
\data_out_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(21),
      Q => \^instr_fifo_dout\(20)
    );
\data_out_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(22),
      Q => \^instr_fifo_dout\(21)
    );
\data_out_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(23),
      Q => \^instr_fifo_dout\(22)
    );
\data_out_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(24),
      Q => \^instr_fifo_dout\(23)
    );
\data_out_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(25),
      Q => \^instr_fifo_dout\(24)
    );
\data_out_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(26),
      Q => \^instr_fifo_dout\(25)
    );
\data_out_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(27),
      Q => \^instr_fifo_dout\(26)
    );
\data_out_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(28),
      Q => \^instr_fifo_dout\(27)
    );
\data_out_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(29),
      Q => \^instr_fifo_dout\(28)
    );
\data_out_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(30),
      Q => \^instr_fifo_dout\(29)
    );
\data_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(3),
      Q => \^instr_fifo_dout\(2)
    );
\data_out_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(31),
      Q => \^instr_fifo_dout\(30)
    );
\data_out_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => emio_gpio_i(1),
      Q => \^instr_fifo_dout\(31)
    );
\data_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(4),
      Q => \^instr_fifo_dout\(3)
    );
\data_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(5),
      Q => \^instr_fifo_dout\(4)
    );
\data_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(6),
      Q => \^instr_fifo_dout\(5)
    );
\data_out_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(7),
      Q => \^instr_fifo_dout\(6)
    );
\data_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(8),
      Q => \^instr_fifo_dout\(7)
    );
\data_out_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(9),
      Q => \^instr_fifo_dout\(8)
    );
\data_out_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \data_out_reg[31]_0\,
      D => \^instr_fifo_dout\(10),
      Q => \^instr_fifo_dout\(9)
    );
state_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \data_out_reg[31]_0\,
      D => emio_gpio_i(0),
      Q => state
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register_0 is
  port (
    rst_0 : out STD_LOGIC;
    pulse_fifo_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    emio_gpio_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register_0 : entity is "shift_register";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register_0 is
  signal \data_out[31]_i_1__0_n_0\ : STD_LOGIC;
  signal \^pulse_fifo_dout\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^rst_0\ : STD_LOGIC;
  signal state : STD_LOGIC;
begin
  pulse_fifo_dout(31 downto 0) <= \^pulse_fifo_dout\(31 downto 0);
  rst_0 <= \^rst_0\;
\data_out[31]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => emio_gpio_i(0),
      I1 => state,
      O => \data_out[31]_i_1__0_n_0\
    );
\data_out[31]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst,
      O => \^rst_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(1),
      Q => \^pulse_fifo_dout\(0)
    );
\data_out_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(11),
      Q => \^pulse_fifo_dout\(10)
    );
\data_out_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(12),
      Q => \^pulse_fifo_dout\(11)
    );
\data_out_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(13),
      Q => \^pulse_fifo_dout\(12)
    );
\data_out_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(14),
      Q => \^pulse_fifo_dout\(13)
    );
\data_out_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(15),
      Q => \^pulse_fifo_dout\(14)
    );
\data_out_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(16),
      Q => \^pulse_fifo_dout\(15)
    );
\data_out_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(17),
      Q => \^pulse_fifo_dout\(16)
    );
\data_out_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(18),
      Q => \^pulse_fifo_dout\(17)
    );
\data_out_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(19),
      Q => \^pulse_fifo_dout\(18)
    );
\data_out_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(20),
      Q => \^pulse_fifo_dout\(19)
    );
\data_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(2),
      Q => \^pulse_fifo_dout\(1)
    );
\data_out_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(21),
      Q => \^pulse_fifo_dout\(20)
    );
\data_out_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(22),
      Q => \^pulse_fifo_dout\(21)
    );
\data_out_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(23),
      Q => \^pulse_fifo_dout\(22)
    );
\data_out_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(24),
      Q => \^pulse_fifo_dout\(23)
    );
\data_out_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(25),
      Q => \^pulse_fifo_dout\(24)
    );
\data_out_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(26),
      Q => \^pulse_fifo_dout\(25)
    );
\data_out_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(27),
      Q => \^pulse_fifo_dout\(26)
    );
\data_out_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(28),
      Q => \^pulse_fifo_dout\(27)
    );
\data_out_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(29),
      Q => \^pulse_fifo_dout\(28)
    );
\data_out_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(30),
      Q => \^pulse_fifo_dout\(29)
    );
\data_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(3),
      Q => \^pulse_fifo_dout\(2)
    );
\data_out_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(31),
      Q => \^pulse_fifo_dout\(30)
    );
\data_out_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => emio_gpio_i(1),
      Q => \^pulse_fifo_dout\(31)
    );
\data_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(4),
      Q => \^pulse_fifo_dout\(3)
    );
\data_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(5),
      Q => \^pulse_fifo_dout\(4)
    );
\data_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(6),
      Q => \^pulse_fifo_dout\(5)
    );
\data_out_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(7),
      Q => \^pulse_fifo_dout\(6)
    );
\data_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(8),
      Q => \^pulse_fifo_dout\(7)
    );
\data_out_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(9),
      Q => \^pulse_fifo_dout\(8)
    );
\data_out_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1__0_n_0\,
      CLR => \^rst_0\,
      D => \^pulse_fifo_dout\(10),
      Q => \^pulse_fifo_dout\(9)
    );
state_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => \^rst_0\,
      D => emio_gpio_i(0),
      Q => state
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gpio_to_fifo is
  port (
    instr_fifo_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pulse_fifo_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    instr_fifo_wr_en : out STD_LOGIC;
    pulse_fifo_wr_en : out STD_LOGIC;
    emio_gpio_i : in STD_LOGIC_VECTOR ( 5 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gpio_to_fifo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gpio_to_fifo is
  signal \^instr_fifo_wr_en\ : STD_LOGIC;
  signal instr_fifo_wr_en_i_1_n_0 : STD_LOGIC;
  signal \^pulse_fifo_wr_en\ : STD_LOGIC;
  signal pulse_fifo_wr_en_i_1_n_0 : STD_LOGIC;
  signal sr1_n_0 : STD_LOGIC;
  signal state_i : STD_LOGIC;
  signal state_p : STD_LOGIC;
begin
  instr_fifo_wr_en <= \^instr_fifo_wr_en\;
  pulse_fifo_wr_en <= \^pulse_fifo_wr_en\;
instr_fifo_wr_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7720"
    )
        port map (
      I0 => rst,
      I1 => state_i,
      I2 => emio_gpio_i(2),
      I3 => \^instr_fifo_wr_en\,
      O => instr_fifo_wr_en_i_1_n_0
    );
instr_fifo_wr_en_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => instr_fifo_wr_en_i_1_n_0,
      Q => \^instr_fifo_wr_en\,
      R => '0'
    );
pulse_fifo_wr_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7720"
    )
        port map (
      I0 => rst,
      I1 => state_p,
      I2 => emio_gpio_i(3),
      I3 => \^pulse_fifo_wr_en\,
      O => pulse_fifo_wr_en_i_1_n_0
    );
pulse_fifo_wr_en_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pulse_fifo_wr_en_i_1_n_0,
      Q => \^pulse_fifo_wr_en\,
      R => '0'
    );
sr0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register
     port map (
      clk => clk,
      \data_out_reg[31]_0\ => sr1_n_0,
      emio_gpio_i(1 downto 0) => emio_gpio_i(1 downto 0),
      instr_fifo_dout(31 downto 0) => instr_fifo_dout(31 downto 0)
    );
sr1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_shift_register_0
     port map (
      clk => clk,
      emio_gpio_i(1 downto 0) => emio_gpio_i(5 downto 4),
      pulse_fifo_dout(31 downto 0) => pulse_fifo_dout(31 downto 0),
      rst => rst,
      rst_0 => sr1_n_0
    );
state_i_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => sr1_n_0,
      D => emio_gpio_i(2),
      Q => state_i
    );
state_p_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => sr1_n_0,
      D => emio_gpio_i(3),
      Q => state_p
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
    emio_gpio_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rst_pl : out STD_LOGIC;
    instr_fifo_full : in STD_LOGIC;
    instr_fifo_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    instr_fifo_wr_en : out STD_LOGIC;
    pulse_fifo_full : in STD_LOGIC;
    pulse_fifo_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    pulse_fifo_wr_en : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top_level_block_design_gpio_to_fifo_0_0,gpio_to_fifo,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "gpio_to_fifo,Vivado 2020.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^emio_gpio_i\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN top_level_block_design_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^emio_gpio_i\(6 downto 0) <= emio_gpio_i(6 downto 0);
  rst_pl <= \^emio_gpio_i\(3);
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gpio_to_fifo
     port map (
      clk => clk,
      emio_gpio_i(5 downto 3) => \^emio_gpio_i\(6 downto 4),
      emio_gpio_i(2 downto 0) => \^emio_gpio_i\(2 downto 0),
      instr_fifo_dout(31 downto 0) => instr_fifo_dout(31 downto 0),
      instr_fifo_wr_en => instr_fifo_wr_en,
      pulse_fifo_dout(31 downto 0) => pulse_fifo_dout(31 downto 0),
      pulse_fifo_wr_en => pulse_fifo_wr_en,
      rst => rst
    );
end STRUCTURE;
