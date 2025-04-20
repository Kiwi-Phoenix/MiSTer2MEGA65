//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
//Date        : Sun Mar  9 11:46:43 2025
//Host        : Retro-PC running 64-bit major release  (build 9200)
//Command     : generate_target M65_Main.bd
//Design      : M65_Main
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "M65_Main,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=M65_Main,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=1,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "M65_Main.hwdef" *) 
module M65_Main
   (audio_left_o,
    audio_right_o,
    clk_main_i,
    clk_main_speed_i,
    joy_1_down_n_i,
    joy_1_fire_n_i,
    joy_1_left_n_i,
    joy_1_right_n_i,
    joy_1_up_n_i,
    joy_2_down_n_i,
    joy_2_fire_n_i,
    joy_2_left_n_i,
    joy_2_right_n_i,
    joy_2_up_n_i,
    kb_key_num_i,
    kb_key_pressed_n_i,
    paddle_speed_i,
    pause_i,
    pot1_x_i,
    pot1_y_i,
    pot2_x_i,
    pot2_y_i,
    reset_hard_i,
    reset_soft_i,
    video_blue_o,
    video_ce_o,
    video_ce_ovl_o,
    video_green_o,
    video_hblank_o,
    video_hs_o,
    video_red_o,
    video_vblank_o,
    video_vs_o);
  output [15:0]audio_left_o;
  output [15:0]audio_right_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_MAIN_I CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_MAIN_I, CLK_DOMAIN M65_Main_clk_main_i, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_main_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_MAIN_SPEED_I CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_MAIN_SPEED_I, CLK_DOMAIN M65_Main_clk_main_speed_i, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_main_speed_i;
  input joy_1_down_n_i;
  input joy_1_fire_n_i;
  input joy_1_left_n_i;
  input joy_1_right_n_i;
  input joy_1_up_n_i;
  input joy_2_down_n_i;
  input joy_2_fire_n_i;
  input joy_2_left_n_i;
  input joy_2_right_n_i;
  input joy_2_up_n_i;
  input [79:0]kb_key_num_i;
  input kb_key_pressed_n_i;
  input [3:0]paddle_speed_i;
  input pause_i;
  input [7:0]pot1_x_i;
  input [7:0]pot1_y_i;
  input [7:0]pot2_x_i;
  input [7:0]pot2_y_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_HARD_I RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_HARD_I, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_hard_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_SOFT_I RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_SOFT_I, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_soft_i;
  output [7:0]video_blue_o;
  output video_ce_o;
  output video_ce_ovl_o;
  output [7:0]video_green_o;
  output video_hblank_o;
  output video_hs_o;
  output [7:0]video_red_o;
  output video_vblank_o;
  output video_vs_o;

  wire [15:0]audio_left_o;
  wire [15:0]audio_right_o;
  wire clk_main_i;
  wire clk_main_speed_i;
  wire [79:0]kb_key_num_i;
  wire kb_key_pressed_n_i;
  wire [7:0]video_blue_o;
  wire [7:0]video_green_o;
  wire video_hs_o;
  wire [7:0]video_red_o;
  wire video_vs_o;

  M65_Main_Amiga_EMU_0_0 Amiga_EMU_0
       (.AUDIO_L(audio_left_o),
        .AUDIO_R(audio_right_o),
        .CLK_50M(clk_main_speed_i),
        .CLK_AUDIO(clk_main_i),
        .DDRAM_BUSY(1'b0),
        .DDRAM_DOUT_READY(1'b0),
        .FB_LL(1'b0),
        .FB_PAL_DIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .FB_VBL(1'b0),
        .HDMI_HEIGHT({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .HDMI_WIDTH({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .OSD_STATUS(1'b0),
        .RESET(1'b0),
        .SDRAM2_EN(1'b0),
        .SD_CD(1'b0),
        .SD_MISO(1'b0),
        .UART_CTS(1'b0),
        .UART_DSR(1'b0),
        .UART_RXD(1'b0),
        .USER_IN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .VGA_B(video_blue_o),
        .VGA_G(video_green_o),
        .VGA_HS(video_hs_o),
        .VGA_VS(video_vs_o),
        .VIDEO_R(video_red_o));
  M65_Main_keyboard_0_0 keyboard_0
       (.clk_main_i(clk_main_i),
        .key_num_i(kb_key_num_i[31:0]),
        .key_pressed_n_i(kb_key_pressed_n_i));
endmodule
