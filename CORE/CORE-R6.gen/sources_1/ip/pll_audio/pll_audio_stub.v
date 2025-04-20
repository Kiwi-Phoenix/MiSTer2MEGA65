// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
// Date        : Mon Mar 10 20:22:43 2025
// Host        : Retro-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/Retro/Mega65/FPGA_Projects/Amiga-Core-Test/CORE/CORE-R6.gen/sources_1/ip/pll_audio/pll_audio_stub.v
// Design      : pll_audio
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CORE_GENERATION_INFO = "pll_audio,clk_wiz_v6_0_15_0_0,{component_name=pll_audio,use_phase_alignment=true,use_min_o_jitter=false,use_max_i_jitter=false,use_dyn_phase_shift=false,use_inclk_switchover=false,use_dyn_reconfig=false,enable_axi=0,feedback_source=FDBK_AUTO,PRIMITIVE=PLL,num_out_clk=1,clkin1_period=20.000,clkin2_period=10.0,use_power_down=false,use_reset=true,use_locked=true,use_inclk_stopped=false,feedback_type=SINGLE,CLOCK_MGR_TYPE=NA,manual_override=false}" *) 
module pll_audio(outclk_0, reset, locked, refclk)
/* synthesis syn_black_box black_box_pad_pin="reset,locked,refclk" */
/* synthesis syn_force_seq_prim="outclk_0" */;
  output outclk_0 /* synthesis syn_isclock = 1 */;
  input reset;
  output locked;
  input refclk;
endmodule
