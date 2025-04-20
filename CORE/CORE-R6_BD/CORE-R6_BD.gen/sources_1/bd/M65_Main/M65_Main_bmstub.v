// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module M65_Main (
  clk_main_i,
  reset_soft_i,
  reset_hard_i,
  pause_i,
  clk_main_speed_i,
  video_ce_o,
  video_ce_ovl_o,
  video_red_o,
  video_green_o,
  video_blue_o,
  video_vs_o,
  video_hs_o,
  video_hblank_o,
  video_vblank_o,
  audio_left_o,
  audio_right_o,
  kb_key_pressed_n_i,
  joy_1_up_n_i,
  joy_1_down_n_i,
  joy_1_left_n_i,
  joy_1_right_n_i,
  joy_1_fire_n_i,
  joy_2_up_n_i,
  joy_2_down_n_i,
  joy_2_left_n_i,
  joy_2_right_n_i,
  joy_2_fire_n_i,
  pot1_x_i,
  pot1_y_i,
  pot2_x_i,
  pot2_y_i,
  paddle_speed_i,
  kb_key_num_i
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_MAIN_I CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLK_MAIN_I" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_MAIN_I, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN M65_Main_clk_main_i, INSERT_VIP 0" *)
  input clk_main_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_SOFT_I RST" *)
  (* X_INTERFACE_MODE = "slave RST.RESET_SOFT_I" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_SOFT_I, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  input reset_soft_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_HARD_I RST" *)
  (* X_INTERFACE_MODE = "slave RST.RESET_HARD_I" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_HARD_I, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  input reset_hard_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input pause_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_MAIN_SPEED_I CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLK_MAIN_SPEED_I" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_MAIN_SPEED_I, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN M65_Main_clk_main_speed_i, INSERT_VIP 0" *)
  input clk_main_speed_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output video_ce_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output video_ce_ovl_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]video_red_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]video_green_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]video_blue_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output video_vs_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output video_hs_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output video_hblank_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output video_vblank_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]audio_left_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]audio_right_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input kb_key_pressed_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input joy_1_up_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input joy_1_down_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input joy_1_left_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input joy_1_right_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input joy_1_fire_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input joy_2_up_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input joy_2_down_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input joy_2_left_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input joy_2_right_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input joy_2_fire_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]pot1_x_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]pot1_y_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]pot2_x_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]pot2_y_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [3:0]paddle_speed_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [79:0]kb_key_num_i;

  // stub module has no contents

endmodule
