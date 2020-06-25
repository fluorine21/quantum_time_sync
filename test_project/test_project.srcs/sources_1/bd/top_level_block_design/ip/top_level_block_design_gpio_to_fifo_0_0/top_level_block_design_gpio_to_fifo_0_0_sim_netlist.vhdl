-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Jun 24 16:21:25 2020
-- Host        : pme10D0025 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/James/test_project/test_project.srcs/sources_1/bd/top_level_block_design/ip/top_level_block_design_gpio_to_fifo_0_0/top_level_block_design_gpio_to_fifo_0_0_sim_netlist.vhdl
-- Design      : top_level_block_design_gpio_to_fifo_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_level_block_design_gpio_to_fifo_0_0_shift_register is
  port (
    rst_0 : out STD_LOGIC;
    fifo_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    emio_gpio_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_level_block_design_gpio_to_fifo_0_0_shift_register : entity is "shift_register";
end top_level_block_design_gpio_to_fifo_0_0_shift_register;

architecture STRUCTURE of top_level_block_design_gpio_to_fifo_0_0_shift_register is
  signal \data_out[31]_i_1_n_0\ : STD_LOGIC;
  signal \^fifo_dout\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^rst_0\ : STD_LOGIC;
  signal state : STD_LOGIC;
begin
  fifo_dout(31 downto 0) <= \^fifo_dout\(31 downto 0);
  rst_0 <= \^rst_0\;
\data_out[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => emio_gpio_i(0),
      I1 => state,
      O => \data_out[31]_i_1_n_0\
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
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(1),
      Q => \^fifo_dout\(0)
    );
\data_out_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(11),
      Q => \^fifo_dout\(10)
    );
\data_out_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(12),
      Q => \^fifo_dout\(11)
    );
\data_out_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(13),
      Q => \^fifo_dout\(12)
    );
\data_out_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(14),
      Q => \^fifo_dout\(13)
    );
\data_out_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(15),
      Q => \^fifo_dout\(14)
    );
\data_out_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(16),
      Q => \^fifo_dout\(15)
    );
\data_out_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(17),
      Q => \^fifo_dout\(16)
    );
\data_out_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(18),
      Q => \^fifo_dout\(17)
    );
\data_out_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(19),
      Q => \^fifo_dout\(18)
    );
\data_out_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(20),
      Q => \^fifo_dout\(19)
    );
\data_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(2),
      Q => \^fifo_dout\(1)
    );
\data_out_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(21),
      Q => \^fifo_dout\(20)
    );
\data_out_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(22),
      Q => \^fifo_dout\(21)
    );
\data_out_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(23),
      Q => \^fifo_dout\(22)
    );
\data_out_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(24),
      Q => \^fifo_dout\(23)
    );
\data_out_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(25),
      Q => \^fifo_dout\(24)
    );
\data_out_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(26),
      Q => \^fifo_dout\(25)
    );
\data_out_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(27),
      Q => \^fifo_dout\(26)
    );
\data_out_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(28),
      Q => \^fifo_dout\(27)
    );
\data_out_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(29),
      Q => \^fifo_dout\(28)
    );
\data_out_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(30),
      Q => \^fifo_dout\(29)
    );
\data_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(3),
      Q => \^fifo_dout\(2)
    );
\data_out_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(31),
      Q => \^fifo_dout\(30)
    );
\data_out_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => emio_gpio_i(1),
      Q => \^fifo_dout\(31)
    );
\data_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(4),
      Q => \^fifo_dout\(3)
    );
\data_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(5),
      Q => \^fifo_dout\(4)
    );
\data_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(6),
      Q => \^fifo_dout\(5)
    );
\data_out_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(7),
      Q => \^fifo_dout\(6)
    );
\data_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(8),
      Q => \^fifo_dout\(7)
    );
\data_out_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(9),
      Q => \^fifo_dout\(8)
    );
\data_out_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \data_out[31]_i_1_n_0\,
      CLR => \^rst_0\,
      D => \^fifo_dout\(10),
      Q => \^fifo_dout\(9)
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
entity top_level_block_design_gpio_to_fifo_0_0_gpio_to_fifo is
  port (
    fifo_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_wr_en : out STD_LOGIC;
    emio_gpio_i : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC;
    rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of top_level_block_design_gpio_to_fifo_0_0_gpio_to_fifo : entity is "gpio_to_fifo";
end top_level_block_design_gpio_to_fifo_0_0_gpio_to_fifo;

architecture STRUCTURE of top_level_block_design_gpio_to_fifo_0_0_gpio_to_fifo is
  signal \^fifo_wr_en\ : STD_LOGIC;
  signal fifo_wr_en_i_1_n_0 : STD_LOGIC;
  signal sr0_n_0 : STD_LOGIC;
  signal state : STD_LOGIC;
begin
  fifo_wr_en <= \^fifo_wr_en\;
fifo_wr_en_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7720"
    )
        port map (
      I0 => rst,
      I1 => state,
      I2 => emio_gpio_i(2),
      I3 => \^fifo_wr_en\,
      O => fifo_wr_en_i_1_n_0
    );
fifo_wr_en_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => fifo_wr_en_i_1_n_0,
      Q => \^fifo_wr_en\,
      R => '0'
    );
sr0: entity work.top_level_block_design_gpio_to_fifo_0_0_shift_register
     port map (
      clk => clk,
      emio_gpio_i(1 downto 0) => emio_gpio_i(1 downto 0),
      fifo_dout(31 downto 0) => fifo_dout(31 downto 0),
      rst => rst,
      rst_0 => sr0_n_0
    );
state_reg: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => sr0_n_0,
      D => emio_gpio_i(2),
      Q => state
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top_level_block_design_gpio_to_fifo_0_0 is
  port (
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    emio_gpio_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rst_pl : out STD_LOGIC;
    fifo_full : in STD_LOGIC;
    fifo_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_wr_en : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top_level_block_design_gpio_to_fifo_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of top_level_block_design_gpio_to_fifo_0_0 : entity is "top_level_block_design_gpio_to_fifo_0_0,gpio_to_fifo,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of top_level_block_design_gpio_to_fifo_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of top_level_block_design_gpio_to_fifo_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of top_level_block_design_gpio_to_fifo_0_0 : entity is "gpio_to_fifo,Vivado 2020.1";
end top_level_block_design_gpio_to_fifo_0_0;

architecture STRUCTURE of top_level_block_design_gpio_to_fifo_0_0 is
  signal \^emio_gpio_i\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN top_level_block_design_zynq_ultra_ps_e_0_3_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst : signal is "xilinx.com:signal:reset:1.0 rst RST";
  attribute X_INTERFACE_PARAMETER of rst : signal is "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^emio_gpio_i\(3 downto 0) <= emio_gpio_i(3 downto 0);
  rst_pl <= \^emio_gpio_i\(3);
inst: entity work.top_level_block_design_gpio_to_fifo_0_0_gpio_to_fifo
     port map (
      clk => clk,
      emio_gpio_i(2 downto 0) => \^emio_gpio_i\(2 downto 0),
      fifo_dout(31 downto 0) => fifo_dout(31 downto 0),
      fifo_wr_en => fifo_wr_en,
      rst => rst
    );
end STRUCTURE;
