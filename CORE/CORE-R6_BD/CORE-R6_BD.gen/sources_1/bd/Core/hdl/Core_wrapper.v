//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
//Date        : Sun Mar  9 15:20:25 2025
//Host        : Retro-PC running 64-bit major release  (build 9200)
//Command     : generate_target Core_wrapper.bd
//Design      : Core_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Core_wrapper
   (cart_a_i,
    cart_a_o,
    cart_addr_oe_o,
    cart_ba_i,
    cart_ba_o,
    cart_ctrl_oe_o,
    cart_d_i,
    cart_d_o,
    cart_data_oe_o,
    cart_dma_i,
    cart_dotclock_o,
    cart_en_o,
    cart_exrom_i,
    cart_exrom_o,
    cart_exrom_oe_o,
    cart_game_i,
    cart_game_o,
    cart_game_oe_o,
    cart_io1_i,
    cart_io1_o,
    cart_io2_i,
    cart_io2_o,
    cart_irq_i,
    cart_irq_o,
    cart_irq_oe_o,
    cart_nmi_i,
    cart_nmi_o,
    cart_nmi_oe_o,
    cart_phi2_o,
    cart_reset_i,
    cart_reset_o,
    cart_reset_oe_o,
    cart_romh_i,
    cart_romh_o,
    cart_romh_oe_o,
    cart_roml_i,
    cart_roml_o,
    cart_roml_oe_o,
    cart_rw_i,
    cart_rw_o,
    clk_i,
    hr_clk_i,
    hr_core_address_o,
    hr_core_burstcount_o,
    hr_core_byteenable_o,
    hr_core_read_o,
    hr_core_readdata_i,
    hr_core_readdatavalid_i,
    hr_core_waitrequest_i,
    hr_core_write_o,
    hr_core_writedata_o,
    hr_high_i,
    hr_low_i,
    hr_rst_i,
    iec_atn_n_o,
    iec_clk_en_o,
    iec_clk_n_i,
    iec_clk_n_o,
    iec_data_en_o,
    iec_data_n_i,
    iec_data_n_o,
    iec_reset_n_o,
    iec_srq_en_o,
    iec_srq_n_i,
    iec_srq_n_o,
    main_audio_left_o,
    main_audio_right_o,
    main_clk_o,
    main_drive_led_col_o,
    main_drive_led_o,
    main_joy_1_down_n_i,
    main_joy_1_down_n_o,
    main_joy_1_fire_n_i,
    main_joy_1_fire_n_o,
    main_joy_1_left_n_i,
    main_joy_1_left_n_o,
    main_joy_1_right_n_i,
    main_joy_1_right_n_o,
    main_joy_1_up_n_i,
    main_joy_1_up_n_o,
    main_joy_2_down_n_i,
    main_joy_2_down_n_o,
    main_joy_2_fire_n_i,
    main_joy_2_fire_n_o,
    main_joy_2_left_n_i,
    main_joy_2_left_n_o,
    main_joy_2_right_n_i,
    main_joy_2_right_n_o,
    main_joy_2_up_n_i,
    main_joy_2_up_n_o,
    main_kb_key_num_i,
    main_kb_key_pressed_n_i,
    main_osm_control_i,
    main_pause_core_i,
    main_pot1_x_i,
    main_pot1_y_i,
    main_pot2_x_i,
    main_pot2_y_i,
    main_power_led_col_o,
    main_power_led_o,
    main_qnice_gp_reg_i,
    main_reset_core_i,
    main_reset_m2m_i,
    main_rst_o,
    main_rtc_i,
    qnice_ascal_mode_o,
    qnice_ascal_polyphase_o,
    qnice_ascal_triplebuf_o,
    qnice_audio_filter_o,
    qnice_audio_mute_o,
    qnice_clk_i,
    qnice_csync_o,
    qnice_dev_addr_i,
    qnice_dev_ce_i,
    qnice_dev_data_i,
    qnice_dev_data_o,
    qnice_dev_id_i,
    qnice_dev_wait_o,
    qnice_dev_we_i,
    qnice_dvi_o,
    qnice_flip_joyports_o,
    qnice_gp_reg_i,
    qnice_osm_cfg_scaling_o,
    qnice_osm_control_i,
    qnice_retro15kHz_o,
    qnice_rst_i,
    qnice_scandoubler_o,
    qnice_video_mode_o,
    qnice_zoom_crop_o,
    video_blue_o,
    video_ce_o,
    video_ce_ovl_o,
    video_clk_o,
    video_green_o,
    video_hblank_o,
    video_hs_o,
    video_red_o,
    video_rst_o,
    video_vblank_o,
    video_vs_o);
  input [15:0]cart_a_i;
  output [15:0]cart_a_o;
  output cart_addr_oe_o;
  input cart_ba_i;
  output cart_ba_o;
  output cart_ctrl_oe_o;
  input [7:0]cart_d_i;
  output [7:0]cart_d_o;
  output cart_data_oe_o;
  input cart_dma_i;
  output cart_dotclock_o;
  output cart_en_o;
  input cart_exrom_i;
  output cart_exrom_o;
  output cart_exrom_oe_o;
  input cart_game_i;
  output cart_game_o;
  output cart_game_oe_o;
  input cart_io1_i;
  output cart_io1_o;
  input cart_io2_i;
  output cart_io2_o;
  input cart_irq_i;
  output cart_irq_o;
  output cart_irq_oe_o;
  input cart_nmi_i;
  output cart_nmi_o;
  output cart_nmi_oe_o;
  output cart_phi2_o;
  input cart_reset_i;
  output cart_reset_o;
  output cart_reset_oe_o;
  input cart_romh_i;
  output cart_romh_o;
  output cart_romh_oe_o;
  input cart_roml_i;
  output cart_roml_o;
  output cart_roml_oe_o;
  input cart_rw_i;
  output cart_rw_o;
  input clk_i;
  input hr_clk_i;
  output [31:0]hr_core_address_o;
  output [7:0]hr_core_burstcount_o;
  output [1:0]hr_core_byteenable_o;
  output hr_core_read_o;
  input [15:0]hr_core_readdata_i;
  input hr_core_readdatavalid_i;
  input hr_core_waitrequest_i;
  output hr_core_write_o;
  output [15:0]hr_core_writedata_o;
  input hr_high_i;
  input hr_low_i;
  input hr_rst_i;
  output iec_atn_n_o;
  output iec_clk_en_o;
  input iec_clk_n_i;
  output iec_clk_n_o;
  output iec_data_en_o;
  input iec_data_n_i;
  output iec_data_n_o;
  output iec_reset_n_o;
  output iec_srq_en_o;
  input iec_srq_n_i;
  output iec_srq_n_o;
  output [15:0]main_audio_left_o;
  output [15:0]main_audio_right_o;
  output main_clk_o;
  output [23:0]main_drive_led_col_o;
  output main_drive_led_o;
  input main_joy_1_down_n_i;
  output main_joy_1_down_n_o;
  input main_joy_1_fire_n_i;
  output main_joy_1_fire_n_o;
  input main_joy_1_left_n_i;
  output main_joy_1_left_n_o;
  input main_joy_1_right_n_i;
  output main_joy_1_right_n_o;
  input main_joy_1_up_n_i;
  output main_joy_1_up_n_o;
  input main_joy_2_down_n_i;
  output main_joy_2_down_n_o;
  input main_joy_2_fire_n_i;
  output main_joy_2_fire_n_o;
  input main_joy_2_left_n_i;
  output main_joy_2_left_n_o;
  input main_joy_2_right_n_i;
  output main_joy_2_right_n_o;
  input main_joy_2_up_n_i;
  output main_joy_2_up_n_o;
  input [79:0]main_kb_key_num_i;
  input main_kb_key_pressed_n_i;
  input [255:0]main_osm_control_i;
  input main_pause_core_i;
  input [7:0]main_pot1_x_i;
  input [7:0]main_pot1_y_i;
  input [7:0]main_pot2_x_i;
  input [7:0]main_pot2_y_i;
  output [23:0]main_power_led_col_o;
  output main_power_led_o;
  input [255:0]main_qnice_gp_reg_i;
  input main_reset_core_i;
  input main_reset_m2m_i;
  output main_rst_o;
  input [64:0]main_rtc_i;
  output [1:0]qnice_ascal_mode_o;
  output qnice_ascal_polyphase_o;
  output qnice_ascal_triplebuf_o;
  output qnice_audio_filter_o;
  output qnice_audio_mute_o;
  input qnice_clk_i;
  output qnice_csync_o;
  input [27:0]qnice_dev_addr_i;
  input qnice_dev_ce_i;
  input [15:0]qnice_dev_data_i;
  output [15:0]qnice_dev_data_o;
  input [15:0]qnice_dev_id_i;
  output qnice_dev_wait_o;
  input qnice_dev_we_i;
  output qnice_dvi_o;
  output qnice_flip_joyports_o;
  input [255:0]qnice_gp_reg_i;
  output [8:0]qnice_osm_cfg_scaling_o;
  input [255:0]qnice_osm_control_i;
  output qnice_retro15kHz_o;
  input qnice_rst_i;
  output qnice_scandoubler_o;
  output qnice_video_mode_o;
  output qnice_zoom_crop_o;
  output [7:0]video_blue_o;
  output video_ce_o;
  output video_ce_ovl_o;
  output video_clk_o;
  output [7:0]video_green_o;
  output video_hblank_o;
  output video_hs_o;
  output [7:0]video_red_o;
  output video_rst_o;
  output video_vblank_o;
  output video_vs_o;

  wire [15:0]cart_a_i;
  wire [15:0]cart_a_o;
  wire cart_addr_oe_o;
  wire cart_ba_i;
  wire cart_ba_o;
  wire cart_ctrl_oe_o;
  wire [7:0]cart_d_i;
  wire [7:0]cart_d_o;
  wire cart_data_oe_o;
  wire cart_dma_i;
  wire cart_dotclock_o;
  wire cart_en_o;
  wire cart_exrom_i;
  wire cart_exrom_o;
  wire cart_exrom_oe_o;
  wire cart_game_i;
  wire cart_game_o;
  wire cart_game_oe_o;
  wire cart_io1_i;
  wire cart_io1_o;
  wire cart_io2_i;
  wire cart_io2_o;
  wire cart_irq_i;
  wire cart_irq_o;
  wire cart_irq_oe_o;
  wire cart_nmi_i;
  wire cart_nmi_o;
  wire cart_nmi_oe_o;
  wire cart_phi2_o;
  wire cart_reset_i;
  wire cart_reset_o;
  wire cart_reset_oe_o;
  wire cart_romh_i;
  wire cart_romh_o;
  wire cart_romh_oe_o;
  wire cart_roml_i;
  wire cart_roml_o;
  wire cart_roml_oe_o;
  wire cart_rw_i;
  wire cart_rw_o;
  wire clk_i;
  wire hr_clk_i;
  wire [31:0]hr_core_address_o;
  wire [7:0]hr_core_burstcount_o;
  wire [1:0]hr_core_byteenable_o;
  wire hr_core_read_o;
  wire [15:0]hr_core_readdata_i;
  wire hr_core_readdatavalid_i;
  wire hr_core_waitrequest_i;
  wire hr_core_write_o;
  wire [15:0]hr_core_writedata_o;
  wire hr_high_i;
  wire hr_low_i;
  wire hr_rst_i;
  wire iec_atn_n_o;
  wire iec_clk_en_o;
  wire iec_clk_n_i;
  wire iec_clk_n_o;
  wire iec_data_en_o;
  wire iec_data_n_i;
  wire iec_data_n_o;
  wire iec_reset_n_o;
  wire iec_srq_en_o;
  wire iec_srq_n_i;
  wire iec_srq_n_o;
  wire [15:0]main_audio_left_o;
  wire [15:0]main_audio_right_o;
  wire main_clk_o;
  wire [23:0]main_drive_led_col_o;
  wire main_drive_led_o;
  wire main_joy_1_down_n_i;
  wire main_joy_1_down_n_o;
  wire main_joy_1_fire_n_i;
  wire main_joy_1_fire_n_o;
  wire main_joy_1_left_n_i;
  wire main_joy_1_left_n_o;
  wire main_joy_1_right_n_i;
  wire main_joy_1_right_n_o;
  wire main_joy_1_up_n_i;
  wire main_joy_1_up_n_o;
  wire main_joy_2_down_n_i;
  wire main_joy_2_down_n_o;
  wire main_joy_2_fire_n_i;
  wire main_joy_2_fire_n_o;
  wire main_joy_2_left_n_i;
  wire main_joy_2_left_n_o;
  wire main_joy_2_right_n_i;
  wire main_joy_2_right_n_o;
  wire main_joy_2_up_n_i;
  wire main_joy_2_up_n_o;
  wire [79:0]main_kb_key_num_i;
  wire main_kb_key_pressed_n_i;
  wire [255:0]main_osm_control_i;
  wire main_pause_core_i;
  wire [7:0]main_pot1_x_i;
  wire [7:0]main_pot1_y_i;
  wire [7:0]main_pot2_x_i;
  wire [7:0]main_pot2_y_i;
  wire [23:0]main_power_led_col_o;
  wire main_power_led_o;
  wire [255:0]main_qnice_gp_reg_i;
  wire main_reset_core_i;
  wire main_reset_m2m_i;
  wire main_rst_o;
  wire [64:0]main_rtc_i;
  wire [1:0]qnice_ascal_mode_o;
  wire qnice_ascal_polyphase_o;
  wire qnice_ascal_triplebuf_o;
  wire qnice_audio_filter_o;
  wire qnice_audio_mute_o;
  wire qnice_clk_i;
  wire qnice_csync_o;
  wire [27:0]qnice_dev_addr_i;
  wire qnice_dev_ce_i;
  wire [15:0]qnice_dev_data_i;
  wire [15:0]qnice_dev_data_o;
  wire [15:0]qnice_dev_id_i;
  wire qnice_dev_wait_o;
  wire qnice_dev_we_i;
  wire qnice_dvi_o;
  wire qnice_flip_joyports_o;
  wire [255:0]qnice_gp_reg_i;
  wire [8:0]qnice_osm_cfg_scaling_o;
  wire [255:0]qnice_osm_control_i;
  wire qnice_retro15kHz_o;
  wire qnice_rst_i;
  wire qnice_scandoubler_o;
  wire qnice_video_mode_o;
  wire qnice_zoom_crop_o;
  wire [7:0]video_blue_o;
  wire video_ce_o;
  wire video_ce_ovl_o;
  wire video_clk_o;
  wire [7:0]video_green_o;
  wire video_hblank_o;
  wire video_hs_o;
  wire [7:0]video_red_o;
  wire video_rst_o;
  wire video_vblank_o;
  wire video_vs_o;

  Core Core_i
       (.cart_a_i(cart_a_i),
        .cart_a_o(cart_a_o),
        .cart_addr_oe_o(cart_addr_oe_o),
        .cart_ba_i(cart_ba_i),
        .cart_ba_o(cart_ba_o),
        .cart_ctrl_oe_o(cart_ctrl_oe_o),
        .cart_d_i(cart_d_i),
        .cart_d_o(cart_d_o),
        .cart_data_oe_o(cart_data_oe_o),
        .cart_dma_i(cart_dma_i),
        .cart_dotclock_o(cart_dotclock_o),
        .cart_en_o(cart_en_o),
        .cart_exrom_i(cart_exrom_i),
        .cart_exrom_o(cart_exrom_o),
        .cart_exrom_oe_o(cart_exrom_oe_o),
        .cart_game_i(cart_game_i),
        .cart_game_o(cart_game_o),
        .cart_game_oe_o(cart_game_oe_o),
        .cart_io1_i(cart_io1_i),
        .cart_io1_o(cart_io1_o),
        .cart_io2_i(cart_io2_i),
        .cart_io2_o(cart_io2_o),
        .cart_irq_i(cart_irq_i),
        .cart_irq_o(cart_irq_o),
        .cart_irq_oe_o(cart_irq_oe_o),
        .cart_nmi_i(cart_nmi_i),
        .cart_nmi_o(cart_nmi_o),
        .cart_nmi_oe_o(cart_nmi_oe_o),
        .cart_phi2_o(cart_phi2_o),
        .cart_reset_i(cart_reset_i),
        .cart_reset_o(cart_reset_o),
        .cart_reset_oe_o(cart_reset_oe_o),
        .cart_romh_i(cart_romh_i),
        .cart_romh_o(cart_romh_o),
        .cart_romh_oe_o(cart_romh_oe_o),
        .cart_roml_i(cart_roml_i),
        .cart_roml_o(cart_roml_o),
        .cart_roml_oe_o(cart_roml_oe_o),
        .cart_rw_i(cart_rw_i),
        .cart_rw_o(cart_rw_o),
        .clk_i(clk_i),
        .hr_clk_i(hr_clk_i),
        .hr_core_address_o(hr_core_address_o),
        .hr_core_burstcount_o(hr_core_burstcount_o),
        .hr_core_byteenable_o(hr_core_byteenable_o),
        .hr_core_read_o(hr_core_read_o),
        .hr_core_readdata_i(hr_core_readdata_i),
        .hr_core_readdatavalid_i(hr_core_readdatavalid_i),
        .hr_core_waitrequest_i(hr_core_waitrequest_i),
        .hr_core_write_o(hr_core_write_o),
        .hr_core_writedata_o(hr_core_writedata_o),
        .hr_high_i(hr_high_i),
        .hr_low_i(hr_low_i),
        .hr_rst_i(hr_rst_i),
        .iec_atn_n_o(iec_atn_n_o),
        .iec_clk_en_o(iec_clk_en_o),
        .iec_clk_n_i(iec_clk_n_i),
        .iec_clk_n_o(iec_clk_n_o),
        .iec_data_en_o(iec_data_en_o),
        .iec_data_n_i(iec_data_n_i),
        .iec_data_n_o(iec_data_n_o),
        .iec_reset_n_o(iec_reset_n_o),
        .iec_srq_en_o(iec_srq_en_o),
        .iec_srq_n_i(iec_srq_n_i),
        .iec_srq_n_o(iec_srq_n_o),
        .main_audio_left_o(main_audio_left_o),
        .main_audio_right_o(main_audio_right_o),
        .main_clk_o(main_clk_o),
        .main_drive_led_col_o(main_drive_led_col_o),
        .main_drive_led_o(main_drive_led_o),
        .main_joy_1_down_n_i(main_joy_1_down_n_i),
        .main_joy_1_down_n_o(main_joy_1_down_n_o),
        .main_joy_1_fire_n_i(main_joy_1_fire_n_i),
        .main_joy_1_fire_n_o(main_joy_1_fire_n_o),
        .main_joy_1_left_n_i(main_joy_1_left_n_i),
        .main_joy_1_left_n_o(main_joy_1_left_n_o),
        .main_joy_1_right_n_i(main_joy_1_right_n_i),
        .main_joy_1_right_n_o(main_joy_1_right_n_o),
        .main_joy_1_up_n_i(main_joy_1_up_n_i),
        .main_joy_1_up_n_o(main_joy_1_up_n_o),
        .main_joy_2_down_n_i(main_joy_2_down_n_i),
        .main_joy_2_down_n_o(main_joy_2_down_n_o),
        .main_joy_2_fire_n_i(main_joy_2_fire_n_i),
        .main_joy_2_fire_n_o(main_joy_2_fire_n_o),
        .main_joy_2_left_n_i(main_joy_2_left_n_i),
        .main_joy_2_left_n_o(main_joy_2_left_n_o),
        .main_joy_2_right_n_i(main_joy_2_right_n_i),
        .main_joy_2_right_n_o(main_joy_2_right_n_o),
        .main_joy_2_up_n_i(main_joy_2_up_n_i),
        .main_joy_2_up_n_o(main_joy_2_up_n_o),
        .main_kb_key_num_i(main_kb_key_num_i),
        .main_kb_key_pressed_n_i(main_kb_key_pressed_n_i),
        .main_osm_control_i(main_osm_control_i),
        .main_pause_core_i(main_pause_core_i),
        .main_pot1_x_i(main_pot1_x_i),
        .main_pot1_y_i(main_pot1_y_i),
        .main_pot2_x_i(main_pot2_x_i),
        .main_pot2_y_i(main_pot2_y_i),
        .main_power_led_col_o(main_power_led_col_o),
        .main_power_led_o(main_power_led_o),
        .main_qnice_gp_reg_i(main_qnice_gp_reg_i),
        .main_reset_core_i(main_reset_core_i),
        .main_reset_m2m_i(main_reset_m2m_i),
        .main_rst_o(main_rst_o),
        .main_rtc_i(main_rtc_i),
        .qnice_ascal_mode_o(qnice_ascal_mode_o),
        .qnice_ascal_polyphase_o(qnice_ascal_polyphase_o),
        .qnice_ascal_triplebuf_o(qnice_ascal_triplebuf_o),
        .qnice_audio_filter_o(qnice_audio_filter_o),
        .qnice_audio_mute_o(qnice_audio_mute_o),
        .qnice_clk_i(qnice_clk_i),
        .qnice_csync_o(qnice_csync_o),
        .qnice_dev_addr_i(qnice_dev_addr_i),
        .qnice_dev_ce_i(qnice_dev_ce_i),
        .qnice_dev_data_i(qnice_dev_data_i),
        .qnice_dev_data_o(qnice_dev_data_o),
        .qnice_dev_id_i(qnice_dev_id_i),
        .qnice_dev_wait_o(qnice_dev_wait_o),
        .qnice_dev_we_i(qnice_dev_we_i),
        .qnice_dvi_o(qnice_dvi_o),
        .qnice_flip_joyports_o(qnice_flip_joyports_o),
        .qnice_gp_reg_i(qnice_gp_reg_i),
        .qnice_osm_cfg_scaling_o(qnice_osm_cfg_scaling_o),
        .qnice_osm_control_i(qnice_osm_control_i),
        .qnice_retro15kHz_o(qnice_retro15kHz_o),
        .qnice_rst_i(qnice_rst_i),
        .qnice_scandoubler_o(qnice_scandoubler_o),
        .qnice_video_mode_o(qnice_video_mode_o),
        .qnice_zoom_crop_o(qnice_zoom_crop_o),
        .video_blue_o(video_blue_o),
        .video_ce_o(video_ce_o),
        .video_ce_ovl_o(video_ce_ovl_o),
        .video_clk_o(video_clk_o),
        .video_green_o(video_green_o),
        .video_hblank_o(video_hblank_o),
        .video_hs_o(video_hs_o),
        .video_red_o(video_red_o),
        .video_rst_o(video_rst_o),
        .video_vblank_o(video_vblank_o),
        .video_vs_o(video_vs_o));
endmodule
