-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Fri Jul 24 11:09:53 2020
-- Host        : pme10D0025 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/James/test_project/test_project.srcs/sources_1/bd/top_level_block_design/ip/top_level_block_design_pulse_gen_0_0/top_level_block_design_pulse_gen_0_0_stub.vhdl
-- Design      : top_level_block_design_pulse_gen_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity top_level_block_design_pulse_gen_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    instr_fifo_empty : in STD_LOGIC;
    instr_fifo_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    instr_fifo_read : out STD_LOGIC;
    pulse_fifo_empty : in STD_LOGIC;
    pulse_fifo_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    pulse_fifo_read : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    state_out : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end top_level_block_design_pulse_gen_0_0;

architecture stub of top_level_block_design_pulse_gen_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,instr_fifo_empty,instr_fifo_data[31:0],instr_fifo_read,pulse_fifo_empty,pulse_fifo_data[31:0],pulse_fifo_read,m_axis_tdata[255:0],m_axis_tvalid,m_axis_tready,state_out[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "pulse_gen,Vivado 2020.1";
begin
end;
