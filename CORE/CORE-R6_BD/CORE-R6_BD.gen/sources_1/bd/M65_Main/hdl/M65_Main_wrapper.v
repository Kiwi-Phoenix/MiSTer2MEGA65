//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
//Date        : Sun Mar  9 11:46:43 2025
//Host        : Retro-PC running 64-bit major release  (build 9200)
//Command     : generate_target M65_Main_wrapper.bd
//Design      : M65_Main_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module M65_Main_wrapper
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
  input clk_main_i;
  input clk_main_speed_i;
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
  input reset_hard_i;
  input reset_soft_i;
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
  wire joy_1_down_n_i;
  wire joy_1_fire_n_i;
  wire joy_1_left_n_i;
  wire joy_1_right_n_i;
  wire joy_1_up_n_i;
  wire joy_2_down_n_i;
  wire joy_2_fire_n_i;
  wire joy_2_left_n_i;
  wire joy_2_right_n_i;
  wire joy_2_up_n_i;
  wire [79:0]kb_key_num_i;
  wire kb_key_pressed_n_i;
  wire [3:0]paddle_speed_i;
  wire pause_i;
  wire [7:0]pot1_x_i;
  wire [7:0]pot1_y_i;
  wire [7:0]pot2_x_i;
  wire [7:0]pot2_y_i;
  wire reset_hard_i;
  wire reset_soft_i;
  wire [7:0]video_blue_o;
  wire video_ce_o;
  wire video_ce_ovl_o;
  wire [7:0]video_green_o;
  wire video_hblank_o;
  wire video_hs_o;
  wire [7:0]video_red_o;
  wire video_vblank_o;
  wire video_vs_o;

  M65_Main M65_Main_i
       (.audio_left_o(audio_left_o),
        .audio_right_o(audio_right_o),
        .clk_main_i(clk_main_i),
        .clk_main_speed_i(clk_main_speed_i),
        .joy_1_down_n_i(joy_1_down_n_i),
        .joy_1_fire_n_i(joy_1_fire_n_i),
        .joy_1_left_n_i(joy_1_left_n_i),
        .joy_1_right_n_i(joy_1_right_n_i),
        .joy_1_up_n_i(joy_1_up_n_i),
        .joy_2_down_n_i(joy_2_down_n_i),
        .joy_2_fire_n_i(joy_2_fire_n_i),
        .joy_2_left_n_i(joy_2_left_n_i),
        .joy_2_right_n_i(joy_2_right_n_i),
        .joy_2_up_n_i(joy_2_up_n_i),
        .kb_key_num_i(kb_key_num_i),
        .kb_key_pressed_n_i(kb_key_pressed_n_i),
        .paddle_speed_i(paddle_speed_i),
        .pause_i(pause_i),
        .pot1_x_i(pot1_x_i),
        .pot1_y_i(pot1_y_i),
        .pot2_x_i(pot2_x_i),
        .pot2_y_i(pot2_y_i),
        .reset_hard_i(reset_hard_i),
        .reset_soft_i(reset_soft_i),
        .video_blue_o(video_blue_o),
        .video_ce_o(video_ce_o),
        .video_ce_ovl_o(video_ce_ovl_o),
        .video_green_o(video_green_o),
        .video_hblank_o(video_hblank_o),
        .video_hs_o(video_hs_o),
        .video_red_o(video_red_o),
        .video_vblank_o(video_vblank_o),
        .video_vs_o(video_vs_o));
endmodule
