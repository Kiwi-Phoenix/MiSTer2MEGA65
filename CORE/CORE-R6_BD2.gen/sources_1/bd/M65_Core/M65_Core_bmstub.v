// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module M65_Core (
  qnice_clk_i,
  qnice_rst_i,
  qnice_dvi_o,
  qnice_video_mode_o,
  qnice_osm_cfg_scaling_o,
  qnice_scandoubler_o,
  qnice_audio_mute_o,
  qnice_audio_filter_o,
  qnice_zoom_crop_o,
  qnice_ascal_mode_o,
  qnice_ascal_polyphase_o,
  qnice_ascal_triplebuf_o,
  qnice_retro15kHz_o,
  qnice_csync_o,
  qnice_flip_joyports_o,
  qnice_osm_control_i,
  qnice_gp_reg_i,
  qnice_dev_id_i,
  qnice_dev_addr_i,
  qnice_dev_data_i,
  qnice_dev_data_o,
  qnice_dev_ce_i,
  qnice_dev_we_i,
  qnice_dev_wait_o,
  hr_clk_i,
  hr_rst_i,
  hr_core_write_o,
  hr_core_read_o,
  hr_core_address_o,
  hr_core_writedata_o,
  hr_core_byteenable_o,
  hr_core_burstcount_o,
  hr_core_readdata_i,
  hr_core_readdatavalid_i,
  hr_core_waitrequest_i,
  hr_high_i,
  hr_low_i,
  video_clk_o,
  video_rst_o,
  video_ce_o,
  video_ce_ovl_o,
  video_red_o,
  video_green_o,
  video_blue_o,
  video_vs_o,
  video_hs_o,
  video_hblank_o,
  video_vblank_o,
  clk_i,
  main_clk_o,
  main_rst_o,
  main_reset_m2m_i,
  main_reset_core_i,
  main_pause_core_i,
  main_osm_control_i,
  main_qnice_gp_reg_i,
  main_audio_left_o,
  main_audio_right_o,
  main_kb_key_num_i,
  main_kb_key_pressed_n_i,
  main_power_led_o,
  main_drive_led_o,
  main_drive_led_col_o,
  main_power_led_col_o,
  main_joy_1_up_n_i,
  main_joy_1_down_n_i,
  main_joy_1_left_n_i,
  main_joy_1_right_n_i,
  main_joy_1_fire_n_i,
  main_joy_1_up_n_o,
  main_joy_1_down_n_o,
  main_joy_1_left_n_o,
  main_joy_1_right_n_o,
  main_joy_1_fire_n_o,
  main_joy_2_up_n_i,
  main_joy_2_down_n_i,
  main_joy_2_left_n_i,
  main_joy_2_right_n_i,
  main_joy_2_fire_n_i,
  main_joy_2_up_n_o,
  main_joy_2_down_n_o,
  main_joy_2_left_n_o,
  main_joy_2_right_n_o,
  main_joy_2_fire_n_o,
  main_pot1_x_i,
  main_pot1_y_i,
  main_pot2_x_i,
  main_pot2_y_i,
  main_rtc_i,
  iec_reset_n_o,
  iec_atn_n_o,
  iec_clk_en_o,
  iec_clk_n_i,
  iec_clk_n_o,
  iec_data_en_o,
  iec_data_n_i,
  iec_data_n_o,
  iec_srq_en_o,
  iec_srq_n_i,
  iec_srq_n_o,
  cart_en_o,
  cart_phi2_o,
  cart_dotclock_o,
  cart_dma_i,
  cart_reset_oe_o,
  cart_reset_i,
  cart_reset_o,
  cart_game_oe_o,
  cart_game_i,
  cart_game_o,
  cart_exrom_oe_o,
  cart_exrom_i,
  cart_exrom_o,
  cart_nmi_oe_o,
  cart_nmi_i,
  cart_nmi_o,
  cart_irq_oe_o,
  cart_irq_i,
  cart_irq_o,
  cart_roml_oe_o,
  cart_roml_i,
  cart_roml_o,
  cart_romh_oe_o,
  cart_romh_i,
  cart_romh_o,
  cart_ctrl_oe_o,
  cart_ba_i,
  cart_rw_i,
  cart_io1_i,
  cart_io2_i,
  cart_ba_o,
  cart_rw_o,
  cart_io1_o,
  cart_io2_o,
  cart_addr_oe_o,
  cart_a_i,
  cart_a_o,
  cart_data_oe_o,
  cart_d_i,
  cart_d_o
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.QNICE_CLK_I CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.QNICE_CLK_I" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.QNICE_CLK_I, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN M65_Core_qnice_clk_i, INSERT_VIP 0" *)
  input qnice_clk_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.QNICE_RST_I RST" *)
  (* X_INTERFACE_MODE = "slave RST.QNICE_RST_I" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.QNICE_RST_I, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  input qnice_rst_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output qnice_dvi_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output qnice_video_mode_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [8:0]qnice_osm_cfg_scaling_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output qnice_scandoubler_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output qnice_audio_mute_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output qnice_audio_filter_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output qnice_zoom_crop_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]qnice_ascal_mode_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output qnice_ascal_polyphase_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output qnice_ascal_triplebuf_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output qnice_retro15kHz_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output qnice_csync_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output qnice_flip_joyports_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]qnice_osm_control_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]qnice_gp_reg_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [15:0]qnice_dev_id_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [27:0]qnice_dev_addr_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [15:0]qnice_dev_data_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]qnice_dev_data_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input qnice_dev_ce_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input qnice_dev_we_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output qnice_dev_wait_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.HR_CLK_I CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.HR_CLK_I" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.HR_CLK_I, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN M65_Core_hr_clk_i, INSERT_VIP 0" *)
  input hr_clk_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.HR_RST_I RST" *)
  (* X_INTERFACE_MODE = "slave RST.HR_RST_I" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.HR_RST_I, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  input hr_rst_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output hr_core_write_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output hr_core_read_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [31:0]hr_core_address_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]hr_core_writedata_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]hr_core_byteenable_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]hr_core_burstcount_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input [15:0]hr_core_readdata_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input hr_core_readdatavalid_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input hr_core_waitrequest_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input hr_high_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input hr_low_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.VIDEO_CLK_O CLK" *)
  (* X_INTERFACE_MODE = "master CLK.VIDEO_CLK_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.VIDEO_CLK_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
  output video_clk_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.VIDEO_RST_O RST" *)
  (* X_INTERFACE_MODE = "master RST.VIDEO_RST_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.VIDEO_RST_O, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  output video_rst_o;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_I CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLK_I" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_I, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN M65_Core_clk_i, INSERT_VIP 0" *)
  input clk_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.MAIN_CLK_O CLK" *)
  (* X_INTERFACE_MODE = "master CLK.MAIN_CLK_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.MAIN_CLK_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
  output main_clk_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.MAIN_RST_O RST" *)
  (* X_INTERFACE_MODE = "master RST.MAIN_RST_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.MAIN_RST_O, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  output main_rst_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.MAIN_RESET_M2M_I RST" *)
  (* X_INTERFACE_MODE = "slave RST.MAIN_RESET_M2M_I" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.MAIN_RESET_M2M_I, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  input main_reset_m2m_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.MAIN_RESET_CORE_I RST" *)
  (* X_INTERFACE_MODE = "slave RST.MAIN_RESET_CORE_I" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.MAIN_RESET_CORE_I, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  input main_reset_core_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input main_pause_core_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]main_osm_control_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [255:0]main_qnice_gp_reg_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]main_audio_left_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]main_audio_right_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input main_kb_key_num_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input main_kb_key_pressed_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output main_power_led_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output main_drive_led_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [23:0]main_drive_led_col_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [23:0]main_power_led_col_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input main_joy_1_up_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input main_joy_1_down_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input main_joy_1_left_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input main_joy_1_right_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input main_joy_1_fire_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output main_joy_1_up_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output main_joy_1_down_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output main_joy_1_left_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output main_joy_1_right_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output main_joy_1_fire_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input main_joy_2_up_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input main_joy_2_down_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input main_joy_2_left_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input main_joy_2_right_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input main_joy_2_fire_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output main_joy_2_up_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output main_joy_2_down_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output main_joy_2_left_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output main_joy_2_right_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output main_joy_2_fire_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]main_pot1_x_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]main_pot1_y_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]main_pot2_x_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]main_pot2_y_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [64:0]main_rtc_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.IEC_RESET_N_O RST" *)
  (* X_INTERFACE_MODE = "master RST.IEC_RESET_N_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.IEC_RESET_N_O, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  output iec_reset_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output iec_atn_n_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.IEC_CLK_EN_O CLK" *)
  (* X_INTERFACE_MODE = "master CLK.IEC_CLK_EN_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.IEC_CLK_EN_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
  output iec_clk_en_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.IEC_CLK_N_I CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.IEC_CLK_N_I" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.IEC_CLK_N_I, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN M65_Core_iec_clk_n_i, INSERT_VIP 0" *)
  input iec_clk_n_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.IEC_CLK_N_O CLK" *)
  (* X_INTERFACE_MODE = "master CLK.IEC_CLK_N_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.IEC_CLK_N_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
  output iec_clk_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output iec_data_en_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input iec_data_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output iec_data_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output iec_srq_en_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input iec_srq_n_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output iec_srq_n_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output cart_en_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output cart_phi2_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CART_DOTCLOCK_O CLK" *)
  (* X_INTERFACE_MODE = "master CLK.CART_DOTCLOCK_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CART_DOTCLOCK_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
  output cart_dotclock_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input cart_dma_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.CART_RESET_OE_O RST" *)
  (* X_INTERFACE_MODE = "master RST.CART_RESET_OE_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.CART_RESET_OE_O, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  output cart_reset_oe_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.CART_RESET_I RST" *)
  (* X_INTERFACE_MODE = "slave RST.CART_RESET_I" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.CART_RESET_I, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  input cart_reset_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.CART_RESET_O RST" *)
  (* X_INTERFACE_MODE = "master RST.CART_RESET_O" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.CART_RESET_O, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  output cart_reset_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output cart_game_oe_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input cart_game_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output cart_game_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output cart_exrom_oe_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input cart_exrom_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output cart_exrom_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output cart_nmi_oe_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input cart_nmi_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output cart_nmi_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output cart_irq_oe_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input cart_irq_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output cart_irq_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output cart_roml_oe_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input cart_roml_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output cart_roml_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output cart_romh_oe_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input cart_romh_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output cart_romh_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output cart_ctrl_oe_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input cart_ba_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input cart_rw_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input cart_io1_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input cart_io2_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output cart_ba_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output cart_rw_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output cart_io1_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output cart_io2_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output cart_addr_oe_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input [15:0]cart_a_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]cart_a_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output cart_data_oe_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]cart_d_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]cart_d_o;

  // stub module has no contents

endmodule
