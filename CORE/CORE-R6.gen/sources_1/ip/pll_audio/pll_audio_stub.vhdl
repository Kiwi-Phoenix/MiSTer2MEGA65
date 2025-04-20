-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
-- Date        : Mon Mar 10 20:22:43 2025
-- Host        : Retro-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Retro/Mega65/FPGA_Projects/Amiga-Core-Test/CORE/CORE-R6.gen/sources_1/ip/pll_audio/pll_audio_stub.vhdl
-- Design      : pll_audio
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg484-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pll_audio is
  Port ( 
    outclk_0 : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC;
    refclk : in STD_LOGIC
  );

  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of pll_audio : entity is "pll_audio,clk_wiz_v6_0_15_0_0,{component_name=pll_audio,use_phase_alignment=true,use_min_o_jitter=false,use_max_i_jitter=false,use_dyn_phase_shift=false,use_inclk_switchover=false,use_dyn_reconfig=false,enable_axi=0,feedback_source=FDBK_AUTO,PRIMITIVE=PLL,num_out_clk=1,clkin1_period=20.000,clkin2_period=10.0,use_power_down=false,use_reset=true,use_locked=true,use_inclk_stopped=false,feedback_type=SINGLE,CLOCK_MGR_TYPE=NA,manual_override=false}";
end pll_audio;

architecture stub of pll_audio is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "outclk_0,reset,locked,refclk";
begin
end;
