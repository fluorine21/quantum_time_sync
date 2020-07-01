-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Jun 24 16:21:25 2020
-- Host        : pme10D0025 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/James/test_project/test_project.srcs/sources_1/bd/top_level_block_design/ip/top_level_block_design_gpio_to_fifo_0_0/top_level_block_design_gpio_to_fifo_0_0_stub.vhdl
-- Design      : top_level_block_design_gpio_to_fifo_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_level_block_design_gpio_to_fifo_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    emio_gpio_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rst_pl : out STD_LOGIC;
    fifo_full : in STD_LOGIC;
    fifo_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
    fifo_wr_en : out STD_LOGIC
  );

end top_level_block_design_gpio_to_fifo_0_0;

architecture stub of top_level_block_design_gpio_to_fifo_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,emio_gpio_i[31:0],rst_pl,fifo_full,fifo_dout[31:0],fifo_wr_en";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "gpio_to_fifo,Vivado 2020.1";
begin
end;