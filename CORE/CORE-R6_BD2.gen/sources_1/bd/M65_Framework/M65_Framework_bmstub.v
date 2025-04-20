// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module M65_Framework (
  clk_i,
  reset_n_i,
  uart_rxd_i,
  uart_txd_o,
  vga_red_o,
  vga_green_o,
  vga_blue_o,
  vga_hs_o,
  vga_vs_o,
  vdac_clk_o,
  vdac_sync_n_o,
  vdac_blank_n_o,
  tmds_data_p_o,
  tmds_data_n_o,
  tmds_clk_p_o,
  tmds_clk_n_o,
  kb_io0_o,
  kb_io1_o,
  kb_io2_i,
  sd_reset_o,
  sd_clk_o,
  sd_mosi_o,
  sd_miso_i,
  sd_cd_i,
  sd2_reset_o,
  sd2_clk_o,
  sd2_mosi_o,
  sd2_miso_i,
  sd2_cd_i,
  joy_1_up_n_i,
  joy_1_down_n_i,
  joy_1_left_n_i,
  joy_1_right_n_i,
  joy_1_fire_n_i,
  joy_1_up_n_o,
  joy_1_down_n_o,
  joy_1_left_n_o,
  joy_1_right_n_o,
  joy_1_fire_n_o,
  joy_2_up_n_i,
  joy_2_down_n_i,
  joy_2_left_n_i,
  joy_2_right_n_i,
  joy_2_fire_n_i,
  joy_2_up_n_o,
  joy_2_down_n_o,
  joy_2_left_n_o,
  joy_2_right_n_o,
  joy_2_fire_n_o,
  paddle_i,
  paddle_drain_o,
  hr_d_io,
  hr_rwds_io,
  hr_reset_o,
  hr_clk_p_o,
  hr_cs0_o,
  qnice_clk_o,
  qnice_rst_o,
  main_clk_i,
  main_rst_i,
  main_qnice_reset_o,
  main_qnice_pause_o,
  main_reset_m2m_o,
  main_reset_core_o,
  main_key_num_o,
  main_key_pressed_n_o,
  main_power_led_i,
  main_power_led_col_i,
  main_drive_led_i,
  main_drive_led_col_i,
  main_osm_control_m_o,
  main_qnice_gp_reg_o,
  main_audio_l_i,
  main_audio_r_i,
  video_clk_i,
  video_rst_i,
  video_ce_i,
  video_ce_ovl_i,
  video_red_i,
  video_green_i,
  video_blue_i,
  video_vs_i,
  video_hs_i,
  video_hblank_i,
  video_vblank_i,
  main_joy1_up_n_o,
  main_joy1_down_n_o,
  main_joy1_left_n_o,
  main_joy1_right_n_o,
  main_joy1_fire_n_o,
  main_joy1_up_n_i,
  main_joy1_down_n_i,
  main_joy1_left_n_i,
  main_joy1_right_n_i,
  main_joy1_fire_n_i,
  main_joy2_up_n_o,
  main_joy2_down_n_o,
  main_joy2_left_n_o,
  main_joy2_right_n_o,
  main_joy2_fire_n_o,
  main_joy2_up_n_i,
  main_joy2_down_n_i,
  main_joy2_left_n_i,
  main_joy2_right_n_i,
  main_joy2_fire_n_i,
  main_pot1_x_o,
  main_pot1_y_o,
  main_pot2_x_o,
  main_pot2_y_o,
  main_rtc_o,
  audio_clk_o,
  audio_reset_o,
  audio_left_o,
  audio_right_o,
  hr_clk_o,
  hr_rst_o,
  hr_core_write_i,
  hr_core_read_i,
  hr_core_address_i,
  hr_core_writedata_i,
  hr_core_byteenable_i,
  hr_core_burstcount_i,
  hr_core_readdata_o,
  hr_core_readdatavalid_o,
  hr_core_waitrequest_o,
  hr_high_o,
  hr_low_o,
  qnice_dvi_i,
  qnice_video_mode_i,
  qnice_osm_cfg_scaling_i,
  qnice_retro15kHz_i,
  qnice_scandoubler_i,
  qnice_csync_i,
  qnice_audio_mute_i,
  qnice_audio_filter_i,
  qnice_zoom_crop_i,
  qnice_ascal_mode_i,
  qnice_ascal_polyphase_i,
  qnice_ascal_triplebuf_i,
  qnice_flip_joyports_i,
  qnice_osm_control_m_o,
  qnice_gp_reg_o,
  qnice_ramrom_dev_o,
  qnice_ramrom_addr_o,
  qnice_ramrom_data_out_o,
  qnice_ramrom_data_in_i,
  qnice_ramrom_ce_o,
  qnice_ramrom_we_o,
  qnice_ramrom_wait_i,
  hdmi_scl_io,
  hdmi_sda_io,
  vga_scl_io,
  vga_sda_io,
  audio_scl_io,
  audio_sda_io,
  i2c_scl_io,
  i2c_sda_io,
  grove_sda_io,
  grove_scl_io,
  fpga_sda_io,
  fpga_scl_io
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_I CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLK_I" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_I, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN M65_Framework_clk_i, INSERT_VIP 0" *)
  input clk_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_N_I RST" *)
  (* X_INTERFACE_MODE = "slave RST.RESET_N_I" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_N_I, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  input reset_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input uart_rxd_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output uart_txd_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]vga_red_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]vga_green_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]vga_blue_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output vga_hs_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output vga_vs_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.VDAC_CLK_O CLK" *)
  (* X_INTERFACE_MODE = "master CLK.VDAC_CLK_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.VDAC_CLK_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
  output vdac_clk_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output vdac_sync_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output vdac_blank_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [2:0]tmds_data_p_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [2:0]tmds_data_n_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.TMDS_CLK_P_O CLK" *)
  (* X_INTERFACE_MODE = "master CLK.TMDS_CLK_P_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.TMDS_CLK_P_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
  output tmds_clk_p_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.TMDS_CLK_N_O CLK" *)
  (* X_INTERFACE_MODE = "master CLK.TMDS_CLK_N_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.TMDS_CLK_N_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
  output tmds_clk_n_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.KB_IO0_O CLK" *)
  (* X_INTERFACE_MODE = "master CLK.KB_IO0_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.KB_IO0_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
  output kb_io0_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output kb_io1_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input kb_io2_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.SD_RESET_O RST" *)
  (* X_INTERFACE_MODE = "master RST.SD_RESET_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.SD_RESET_O, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  output sd_reset_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output sd_clk_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output sd_mosi_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input sd_miso_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input sd_cd_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.SD2_RESET_O RST" *)
  (* X_INTERFACE_MODE = "master RST.SD2_RESET_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.SD2_RESET_O, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  output sd2_reset_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SD2_CLK_O CLK" *)
  (* X_INTERFACE_MODE = "master CLK.SD2_CLK_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SD2_CLK_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
  output sd2_clk_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output sd2_mosi_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input sd2_miso_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input sd2_cd_i;
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
  output joy_1_up_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output joy_1_down_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output joy_1_left_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output joy_1_right_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output joy_1_fire_n_o;
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
  output joy_2_up_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output joy_2_down_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output joy_2_left_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output joy_2_right_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output joy_2_fire_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input [3:0]paddle_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output paddle_drain_o;
  (* X_INTERFACE_IGNORE = "true" *)
  inout [7:0]hr_d_io;
  (* X_INTERFACE_IGNORE = "true" *)
  inout hr_rwds_io;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.HR_RESET_O RST" *)
  (* X_INTERFACE_MODE = "master RST.HR_RESET_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.HR_RESET_O, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  output hr_reset_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.HR_CLK_P_O CLK" *)
  (* X_INTERFACE_MODE = "master CLK.HR_CLK_P_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.HR_CLK_P_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
  output hr_clk_p_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output hr_cs0_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.QNICE_CLK_O CLK" *)
  (* X_INTERFACE_MODE = "master CLK.QNICE_CLK_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.QNICE_CLK_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
  output qnice_clk_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.QNICE_RST_O RST" *)
  (* X_INTERFACE_MODE = "master RST.QNICE_RST_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.QNICE_RST_O, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  output qnice_rst_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.MAIN_CLK_I CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.MAIN_CLK_I" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.MAIN_CLK_I, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN M65_Framework_main_clk_i, INSERT_VIP 0" *)
  input main_clk_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.MAIN_RST_I RST" *)
  (* X_INTERFACE_MODE = "slave RST.MAIN_RST_I" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.MAIN_RST_I, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  input main_rst_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.MAIN_QNICE_RESET_O RST" *)
  (* X_INTERFACE_MODE = "master RST.MAIN_QNICE_RESET_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.MAIN_QNICE_RESET_O, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  output main_qnice_reset_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output main_qnice_pause_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.MAIN_RESET_M2M_O RST" *)
  (* X_INTERFACE_MODE = "master RST.MAIN_RESET_M2M_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.MAIN_RESET_M2M_O, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  output main_reset_m2m_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.MAIN_RESET_CORE_O RST" *)
  (* X_INTERFACE_MODE = "master RST.MAIN_RESET_CORE_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.MAIN_RESET_CORE_O, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  output main_reset_core_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output main_key_num_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output main_key_pressed_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input main_power_led_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [23:0]main_power_led_col_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input main_drive_led_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [23:0]main_drive_led_col_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]main_osm_control_m_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]main_qnice_gp_reg_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input [15:0]main_audio_l_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [15:0]main_audio_r_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.VIDEO_CLK_I CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.VIDEO_CLK_I" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.VIDEO_CLK_I, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN M65_Framework_video_clk_i, INSERT_VIP 0" *)
  input video_clk_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.VIDEO_RST_I RST" *)
  (* X_INTERFACE_MODE = "slave RST.VIDEO_RST_I" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.VIDEO_RST_I, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  input video_rst_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input video_ce_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input video_ce_ovl_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]video_red_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]video_green_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]video_blue_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input video_vs_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input video_hs_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input video_hblank_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input video_vblank_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output main_joy1_up_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output main_joy1_down_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output main_joy1_left_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output main_joy1_right_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output main_joy1_fire_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input main_joy1_up_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input main_joy1_down_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input main_joy1_left_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input main_joy1_right_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input main_joy1_fire_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output main_joy2_up_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output main_joy2_down_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output main_joy2_left_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output main_joy2_right_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output main_joy2_fire_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input main_joy2_up_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input main_joy2_down_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input main_joy2_left_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input main_joy2_right_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input main_joy2_fire_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]main_pot1_x_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]main_pot1_y_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]main_pot2_x_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]main_pot2_y_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [64:0]main_rtc_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AUDIO_CLK_O CLK" *)
  (* X_INTERFACE_MODE = "master CLK.AUDIO_CLK_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AUDIO_CLK_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
  output audio_clk_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AUDIO_RESET_O RST" *)
  (* X_INTERFACE_MODE = "master RST.AUDIO_RESET_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AUDIO_RESET_O, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  output audio_reset_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]audio_left_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]audio_right_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.HR_CLK_O CLK" *)
  (* X_INTERFACE_MODE = "master CLK.HR_CLK_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.HR_CLK_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
  output hr_clk_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.HR_RST_O RST" *)
  (* X_INTERFACE_MODE = "master RST.HR_RST_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.HR_RST_O, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  output hr_rst_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input hr_core_write_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input hr_core_read_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]hr_core_address_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [15:0]hr_core_writedata_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]hr_core_byteenable_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]hr_core_burstcount_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]hr_core_readdata_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output hr_core_readdatavalid_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output hr_core_waitrequest_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output hr_high_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output hr_low_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input qnice_dvi_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input qnice_video_mode_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [8:0]qnice_osm_cfg_scaling_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input qnice_retro15kHz_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input qnice_scandoubler_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input qnice_csync_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input qnice_audio_mute_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input qnice_audio_filter_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input qnice_zoom_crop_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [1:0]qnice_ascal_mode_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input qnice_ascal_polyphase_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input qnice_ascal_triplebuf_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input qnice_flip_joyports_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]qnice_osm_control_m_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [255:0]qnice_gp_reg_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]qnice_ramrom_dev_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [27:0]qnice_ramrom_addr_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]qnice_ramrom_data_out_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input [15:0]qnice_ramrom_data_in_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output qnice_ramrom_ce_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output qnice_ramrom_we_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input qnice_ramrom_wait_i;
  (* X_INTERFACE_IGNORE = "true" *)
  inout hdmi_scl_io;
  (* X_INTERFACE_IGNORE = "true" *)
  inout hdmi_sda_io;
  (* X_INTERFACE_IGNORE = "true" *)
  inout vga_scl_io;
  (* X_INTERFACE_IGNORE = "true" *)
  inout vga_sda_io;
  (* X_INTERFACE_IGNORE = "true" *)
  inout audio_scl_io;
  (* X_INTERFACE_IGNORE = "true" *)
  inout audio_sda_io;
  (* X_INTERFACE_IGNORE = "true" *)
  inout i2c_scl_io;
  (* X_INTERFACE_IGNORE = "true" *)
  inout i2c_sda_io;
  (* X_INTERFACE_IGNORE = "true" *)
  inout grove_sda_io;
  (* X_INTERFACE_IGNORE = "true" *)
  inout grove_scl_io;
  (* X_INTERFACE_IGNORE = "true" *)
  inout fpga_sda_io;
  (* X_INTERFACE_IGNORE = "true" *)
  inout fpga_scl_io;

  // stub module has no contents

endmodule
