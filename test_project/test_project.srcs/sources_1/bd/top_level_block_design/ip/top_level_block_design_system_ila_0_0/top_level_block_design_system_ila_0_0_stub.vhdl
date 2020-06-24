-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Jun 24 11:11:43 2020
-- Host        : pme10D0025 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top top_level_block_design_system_ila_0_0 -prefix
--               top_level_block_design_system_ila_0_0_ top_level_block_design_system_ila_0_0_stub.vhdl
-- Design      : top_level_block_design_system_ila_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_level_block_design_system_ila_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    SLOT_0_GPIO_tri_t : in STD_LOGIC_VECTOR ( 39 downto 0 );
    SLOT_0_GPIO_tri_o : in STD_LOGIC_VECTOR ( 39 downto 0 );
    SLOT_0_GPIO_tri_i : in STD_LOGIC_VECTOR ( 39 downto 0 )
  );

end top_level_block_design_system_ila_0_0;

architecture stub of top_level_block_design_system_ila_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,SLOT_0_GPIO_tri_t[39:0],SLOT_0_GPIO_tri_o[39:0],SLOT_0_GPIO_tri_i[39:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_1ad1,Vivado 2020.1";
begin
end;
