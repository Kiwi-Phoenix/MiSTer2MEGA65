// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:M65_Main:1.0
// IP Revision: 2

(* X_CORE_INFO = "M65_Main,Vivado 2024.2.1" *)
(* CHECK_LICENSE_TYPE = "M65_Core_M65_Main_0_0,M65_Main,{}" *)
(* CORE_GENERATION_INFO = "M65_Core_M65_Main_0_0,M65_Main,{x_ipProduct=Vivado 2024.2.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=M65_Main,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "IPI" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module M65_Core_M65_Main_0_0 (
  audio_left_o,
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
  video_vs_o
);

output wire [15 : 0] audio_left_o;
output wire [15 : 0] audio_right_o;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_MAIN_I CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_MAIN_I, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
input wire clk_main_i;
input wire clk_main_speed_i;
input wire joy_1_down_n_i;
input wire joy_1_fire_n_i;
input wire joy_1_left_n_i;
input wire joy_1_right_n_i;
input wire joy_1_up_n_i;
input wire joy_2_down_n_i;
input wire joy_2_fire_n_i;
input wire joy_2_left_n_i;
input wire joy_2_right_n_i;
input wire joy_2_up_n_i;
input wire kb_key_num_i;
input wire kb_key_pressed_n_i;
input wire [3 : 0] paddle_speed_i;
input wire pause_i;
input wire [7 : 0] pot1_x_i;
input wire [7 : 0] pot1_y_i;
input wire [7 : 0] pot2_x_i;
input wire [7 : 0] pot2_y_i;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_HARD_I RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_HARD_I, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
input wire reset_hard_i;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_SOFT_I RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_SOFT_I, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
input wire reset_soft_i;
output wire [7 : 0] video_blue_o;
output wire video_ce_o;
output wire video_ce_ovl_o;
output wire [7 : 0] video_green_o;
output wire video_hblank_o;
output wire video_hs_o;
output wire [7 : 0] video_red_o;
output wire video_vblank_o;
output wire video_vs_o;

  M65_Main inst (
    .audio_left_o(audio_left_o),
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
    .video_vs_o(video_vs_o)
  );
endmodule
