//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
//Date        : Sun Mar 16 14:40:25 2025
//Host        : Retro-PC running 64-bit major release  (build 9200)
//Command     : generate_target M65_Framework_wrapper.bd
//Design      : M65_Framework_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module M65_Framework_wrapper
   (audio_clk_o,
    audio_left_o,
    audio_reset_o,
    audio_right_o,
    audio_scl_io,
    audio_sda_io,
    clk_i,
    fpga_scl_io,
    fpga_sda_io,
    grove_scl_io,
    grove_sda_io,
    hdmi_scl_io,
    hdmi_sda_io,
    hr_clk_o,
    hr_clk_p_o,
    hr_core_address_i,
    hr_core_burstcount_i,
    hr_core_byteenable_i,
    hr_core_read_i,
    hr_core_readdata_o,
    hr_core_readdatavalid_o,
    hr_core_waitrequest_o,
    hr_core_write_i,
    hr_core_writedata_i,
    hr_cs0_o,
    hr_d_io,
    hr_high_o,
    hr_low_o,
    hr_reset_o,
    hr_rst_o,
    hr_rwds_io,
    i2c_scl_io,
    i2c_sda_io,
    joy_1_down_n_i,
    joy_1_down_n_o,
    joy_1_fire_n_i,
    joy_1_fire_n_o,
    joy_1_left_n_i,
    joy_1_left_n_o,
    joy_1_right_n_i,
    joy_1_right_n_o,
    joy_1_up_n_i,
    joy_1_up_n_o,
    joy_2_down_n_i,
    joy_2_down_n_o,
    joy_2_fire_n_i,
    joy_2_fire_n_o,
    joy_2_left_n_i,
    joy_2_left_n_o,
    joy_2_right_n_i,
    joy_2_right_n_o,
    joy_2_up_n_i,
    joy_2_up_n_o,
    kb_io0_o,
    kb_io1_o,
    kb_io2_i,
    main_audio_l_i,
    main_audio_r_i,
    main_clk_i,
    main_drive_led_col_i,
    main_drive_led_i,
    main_joy1_down_n_i,
    main_joy1_down_n_o,
    main_joy1_fire_n_i,
    main_joy1_fire_n_o,
    main_joy1_left_n_i,
    main_joy1_left_n_o,
    main_joy1_right_n_i,
    main_joy1_right_n_o,
    main_joy1_up_n_i,
    main_joy1_up_n_o,
    main_joy2_down_n_i,
    main_joy2_down_n_o,
    main_joy2_fire_n_i,
    main_joy2_fire_n_o,
    main_joy2_left_n_i,
    main_joy2_left_n_o,
    main_joy2_right_n_i,
    main_joy2_right_n_o,
    main_joy2_up_n_i,
    main_joy2_up_n_o,
    main_key_num_o,
    main_key_pressed_n_o,
    main_osm_control_m_o,
    main_pot1_x_o,
    main_pot1_y_o,
    main_pot2_x_o,
    main_pot2_y_o,
    main_power_led_col_i,
    main_power_led_i,
    main_qnice_gp_reg_o,
    main_qnice_pause_o,
    main_qnice_reset_o,
    main_reset_core_o,
    main_reset_m2m_o,
    main_rst_i,
    main_rtc_o,
    paddle_drain_o,
    paddle_i,
    qnice_ascal_mode_i,
    qnice_ascal_polyphase_i,
    qnice_ascal_triplebuf_i,
    qnice_audio_filter_i,
    qnice_audio_mute_i,
    qnice_clk_o,
    qnice_csync_i,
    qnice_dvi_i,
    qnice_flip_joyports_i,
    qnice_gp_reg_o,
    qnice_osm_cfg_scaling_i,
    qnice_osm_control_m_o,
    qnice_ramrom_addr_o,
    qnice_ramrom_ce_o,
    qnice_ramrom_data_in_i,
    qnice_ramrom_data_out_o,
    qnice_ramrom_dev_o,
    qnice_ramrom_wait_i,
    qnice_ramrom_we_o,
    qnice_retro15kHz_i,
    qnice_rst_o,
    qnice_scandoubler_i,
    qnice_video_mode_i,
    qnice_zoom_crop_i,
    reset_n_i,
    sd2_cd_i,
    sd2_clk_o,
    sd2_miso_i,
    sd2_mosi_o,
    sd2_reset_o,
    sd_cd_i,
    sd_clk_o,
    sd_miso_i,
    sd_mosi_o,
    sd_reset_o,
    tmds_clk_n_o,
    tmds_clk_p_o,
    tmds_data_n_o,
    tmds_data_p_o,
    uart_rxd_i,
    uart_txd_o,
    vdac_blank_n_o,
    vdac_clk_o,
    vdac_sync_n_o,
    vga_blue_o,
    vga_green_o,
    vga_hs_o,
    vga_red_o,
    vga_scl_io,
    vga_sda_io,
    vga_vs_o,
    video_blue_i,
    video_ce_i,
    video_ce_ovl_i,
    video_clk_i,
    video_green_i,
    video_hblank_i,
    video_hs_i,
    video_red_i,
    video_rst_i,
    video_vblank_i,
    video_vs_i);
  output audio_clk_o;
  output [15:0]audio_left_o;
  output audio_reset_o;
  output [15:0]audio_right_o;
  inout audio_scl_io;
  inout audio_sda_io;
  input clk_i;
  inout fpga_scl_io;
  inout fpga_sda_io;
  inout grove_scl_io;
  inout grove_sda_io;
  inout hdmi_scl_io;
  inout hdmi_sda_io;
  output hr_clk_o;
  output hr_clk_p_o;
  input [31:0]hr_core_address_i;
  input [7:0]hr_core_burstcount_i;
  input [1:0]hr_core_byteenable_i;
  input hr_core_read_i;
  output [15:0]hr_core_readdata_o;
  output hr_core_readdatavalid_o;
  output hr_core_waitrequest_o;
  input hr_core_write_i;
  input [15:0]hr_core_writedata_i;
  output hr_cs0_o;
  inout [7:0]hr_d_io;
  output hr_high_o;
  output hr_low_o;
  output hr_reset_o;
  output hr_rst_o;
  inout hr_rwds_io;
  inout i2c_scl_io;
  inout i2c_sda_io;
  input joy_1_down_n_i;
  output joy_1_down_n_o;
  input joy_1_fire_n_i;
  output joy_1_fire_n_o;
  input joy_1_left_n_i;
  output joy_1_left_n_o;
  input joy_1_right_n_i;
  output joy_1_right_n_o;
  input joy_1_up_n_i;
  output joy_1_up_n_o;
  input joy_2_down_n_i;
  output joy_2_down_n_o;
  input joy_2_fire_n_i;
  output joy_2_fire_n_o;
  input joy_2_left_n_i;
  output joy_2_left_n_o;
  input joy_2_right_n_i;
  output joy_2_right_n_o;
  input joy_2_up_n_i;
  output joy_2_up_n_o;
  output kb_io0_o;
  output kb_io1_o;
  input kb_io2_i;
  input [15:0]main_audio_l_i;
  input [15:0]main_audio_r_i;
  input main_clk_i;
  input [23:0]main_drive_led_col_i;
  input main_drive_led_i;
  input main_joy1_down_n_i;
  output main_joy1_down_n_o;
  input main_joy1_fire_n_i;
  output main_joy1_fire_n_o;
  input main_joy1_left_n_i;
  output main_joy1_left_n_o;
  input main_joy1_right_n_i;
  output main_joy1_right_n_o;
  input main_joy1_up_n_i;
  output main_joy1_up_n_o;
  input main_joy2_down_n_i;
  output main_joy2_down_n_o;
  input main_joy2_fire_n_i;
  output main_joy2_fire_n_o;
  input main_joy2_left_n_i;
  output main_joy2_left_n_o;
  input main_joy2_right_n_i;
  output main_joy2_right_n_o;
  input main_joy2_up_n_i;
  output main_joy2_up_n_o;
  output main_key_num_o;
  output main_key_pressed_n_o;
  output [255:0]main_osm_control_m_o;
  output [7:0]main_pot1_x_o;
  output [7:0]main_pot1_y_o;
  output [7:0]main_pot2_x_o;
  output [7:0]main_pot2_y_o;
  input [23:0]main_power_led_col_i;
  input main_power_led_i;
  output [255:0]main_qnice_gp_reg_o;
  output main_qnice_pause_o;
  output main_qnice_reset_o;
  output main_reset_core_o;
  output main_reset_m2m_o;
  input main_rst_i;
  output [64:0]main_rtc_o;
  output paddle_drain_o;
  input [3:0]paddle_i;
  input [1:0]qnice_ascal_mode_i;
  input qnice_ascal_polyphase_i;
  input qnice_ascal_triplebuf_i;
  input qnice_audio_filter_i;
  input qnice_audio_mute_i;
  output qnice_clk_o;
  input qnice_csync_i;
  input qnice_dvi_i;
  input qnice_flip_joyports_i;
  output [255:0]qnice_gp_reg_o;
  input [8:0]qnice_osm_cfg_scaling_i;
  output [255:0]qnice_osm_control_m_o;
  output [27:0]qnice_ramrom_addr_o;
  output qnice_ramrom_ce_o;
  input [15:0]qnice_ramrom_data_in_i;
  output [15:0]qnice_ramrom_data_out_o;
  output [15:0]qnice_ramrom_dev_o;
  input qnice_ramrom_wait_i;
  output qnice_ramrom_we_o;
  input qnice_retro15kHz_i;
  output qnice_rst_o;
  input qnice_scandoubler_i;
  input qnice_video_mode_i;
  input qnice_zoom_crop_i;
  input reset_n_i;
  input sd2_cd_i;
  output sd2_clk_o;
  input sd2_miso_i;
  output sd2_mosi_o;
  output sd2_reset_o;
  input sd_cd_i;
  output sd_clk_o;
  input sd_miso_i;
  output sd_mosi_o;
  output sd_reset_o;
  output tmds_clk_n_o;
  output tmds_clk_p_o;
  output [2:0]tmds_data_n_o;
  output [2:0]tmds_data_p_o;
  input uart_rxd_i;
  output uart_txd_o;
  output vdac_blank_n_o;
  output vdac_clk_o;
  output vdac_sync_n_o;
  output [7:0]vga_blue_o;
  output [7:0]vga_green_o;
  output vga_hs_o;
  output [7:0]vga_red_o;
  inout vga_scl_io;
  inout vga_sda_io;
  output vga_vs_o;
  input [7:0]video_blue_i;
  input video_ce_i;
  input video_ce_ovl_i;
  input video_clk_i;
  input [7:0]video_green_i;
  input video_hblank_i;
  input video_hs_i;
  input [7:0]video_red_i;
  input video_rst_i;
  input video_vblank_i;
  input video_vs_i;

  wire audio_clk_o;
  wire [15:0]audio_left_o;
  wire audio_reset_o;
  wire [15:0]audio_right_o;
  wire audio_scl_io;
  wire audio_sda_io;
  wire clk_i;
  wire fpga_scl_io;
  wire fpga_sda_io;
  wire grove_scl_io;
  wire grove_sda_io;
  wire hdmi_scl_io;
  wire hdmi_sda_io;
  wire hr_clk_o;
  wire hr_clk_p_o;
  wire [31:0]hr_core_address_i;
  wire [7:0]hr_core_burstcount_i;
  wire [1:0]hr_core_byteenable_i;
  wire hr_core_read_i;
  wire [15:0]hr_core_readdata_o;
  wire hr_core_readdatavalid_o;
  wire hr_core_waitrequest_o;
  wire hr_core_write_i;
  wire [15:0]hr_core_writedata_i;
  wire hr_cs0_o;
  wire [7:0]hr_d_io;
  wire hr_high_o;
  wire hr_low_o;
  wire hr_reset_o;
  wire hr_rst_o;
  wire hr_rwds_io;
  wire i2c_scl_io;
  wire i2c_sda_io;
  wire joy_1_down_n_i;
  wire joy_1_down_n_o;
  wire joy_1_fire_n_i;
  wire joy_1_fire_n_o;
  wire joy_1_left_n_i;
  wire joy_1_left_n_o;
  wire joy_1_right_n_i;
  wire joy_1_right_n_o;
  wire joy_1_up_n_i;
  wire joy_1_up_n_o;
  wire joy_2_down_n_i;
  wire joy_2_down_n_o;
  wire joy_2_fire_n_i;
  wire joy_2_fire_n_o;
  wire joy_2_left_n_i;
  wire joy_2_left_n_o;
  wire joy_2_right_n_i;
  wire joy_2_right_n_o;
  wire joy_2_up_n_i;
  wire joy_2_up_n_o;
  wire kb_io0_o;
  wire kb_io1_o;
  wire kb_io2_i;
  wire [15:0]main_audio_l_i;
  wire [15:0]main_audio_r_i;
  wire main_clk_i;
  wire [23:0]main_drive_led_col_i;
  wire main_drive_led_i;
  wire main_joy1_down_n_i;
  wire main_joy1_down_n_o;
  wire main_joy1_fire_n_i;
  wire main_joy1_fire_n_o;
  wire main_joy1_left_n_i;
  wire main_joy1_left_n_o;
  wire main_joy1_right_n_i;
  wire main_joy1_right_n_o;
  wire main_joy1_up_n_i;
  wire main_joy1_up_n_o;
  wire main_joy2_down_n_i;
  wire main_joy2_down_n_o;
  wire main_joy2_fire_n_i;
  wire main_joy2_fire_n_o;
  wire main_joy2_left_n_i;
  wire main_joy2_left_n_o;
  wire main_joy2_right_n_i;
  wire main_joy2_right_n_o;
  wire main_joy2_up_n_i;
  wire main_joy2_up_n_o;
  wire main_key_num_o;
  wire main_key_pressed_n_o;
  wire [255:0]main_osm_control_m_o;
  wire [7:0]main_pot1_x_o;
  wire [7:0]main_pot1_y_o;
  wire [7:0]main_pot2_x_o;
  wire [7:0]main_pot2_y_o;
  wire [23:0]main_power_led_col_i;
  wire main_power_led_i;
  wire [255:0]main_qnice_gp_reg_o;
  wire main_qnice_pause_o;
  wire main_qnice_reset_o;
  wire main_reset_core_o;
  wire main_reset_m2m_o;
  wire main_rst_i;
  wire [64:0]main_rtc_o;
  wire paddle_drain_o;
  wire [3:0]paddle_i;
  wire [1:0]qnice_ascal_mode_i;
  wire qnice_ascal_polyphase_i;
  wire qnice_ascal_triplebuf_i;
  wire qnice_audio_filter_i;
  wire qnice_audio_mute_i;
  wire qnice_clk_o;
  wire qnice_csync_i;
  wire qnice_dvi_i;
  wire qnice_flip_joyports_i;
  wire [255:0]qnice_gp_reg_o;
  wire [8:0]qnice_osm_cfg_scaling_i;
  wire [255:0]qnice_osm_control_m_o;
  wire [27:0]qnice_ramrom_addr_o;
  wire qnice_ramrom_ce_o;
  wire [15:0]qnice_ramrom_data_in_i;
  wire [15:0]qnice_ramrom_data_out_o;
  wire [15:0]qnice_ramrom_dev_o;
  wire qnice_ramrom_wait_i;
  wire qnice_ramrom_we_o;
  wire qnice_retro15kHz_i;
  wire qnice_rst_o;
  wire qnice_scandoubler_i;
  wire qnice_video_mode_i;
  wire qnice_zoom_crop_i;
  wire reset_n_i;
  wire sd2_cd_i;
  wire sd2_clk_o;
  wire sd2_miso_i;
  wire sd2_mosi_o;
  wire sd2_reset_o;
  wire sd_cd_i;
  wire sd_clk_o;
  wire sd_miso_i;
  wire sd_mosi_o;
  wire sd_reset_o;
  wire tmds_clk_n_o;
  wire tmds_clk_p_o;
  wire [2:0]tmds_data_n_o;
  wire [2:0]tmds_data_p_o;
  wire uart_rxd_i;
  wire uart_txd_o;
  wire vdac_blank_n_o;
  wire vdac_clk_o;
  wire vdac_sync_n_o;
  wire [7:0]vga_blue_o;
  wire [7:0]vga_green_o;
  wire vga_hs_o;
  wire [7:0]vga_red_o;
  wire vga_scl_io;
  wire vga_sda_io;
  wire vga_vs_o;
  wire [7:0]video_blue_i;
  wire video_ce_i;
  wire video_ce_ovl_i;
  wire video_clk_i;
  wire [7:0]video_green_i;
  wire video_hblank_i;
  wire video_hs_i;
  wire [7:0]video_red_i;
  wire video_rst_i;
  wire video_vblank_i;
  wire video_vs_i;

  M65_Framework M65_Framework_i
       (.audio_clk_o(audio_clk_o),
        .audio_left_o(audio_left_o),
        .audio_reset_o(audio_reset_o),
        .audio_right_o(audio_right_o),
        .audio_scl_io(audio_scl_io),
        .audio_sda_io(audio_sda_io),
        .clk_i(clk_i),
        .fpga_scl_io(fpga_scl_io),
        .fpga_sda_io(fpga_sda_io),
        .grove_scl_io(grove_scl_io),
        .grove_sda_io(grove_sda_io),
        .hdmi_scl_io(hdmi_scl_io),
        .hdmi_sda_io(hdmi_sda_io),
        .hr_clk_o(hr_clk_o),
        .hr_clk_p_o(hr_clk_p_o),
        .hr_core_address_i(hr_core_address_i),
        .hr_core_burstcount_i(hr_core_burstcount_i),
        .hr_core_byteenable_i(hr_core_byteenable_i),
        .hr_core_read_i(hr_core_read_i),
        .hr_core_readdata_o(hr_core_readdata_o),
        .hr_core_readdatavalid_o(hr_core_readdatavalid_o),
        .hr_core_waitrequest_o(hr_core_waitrequest_o),
        .hr_core_write_i(hr_core_write_i),
        .hr_core_writedata_i(hr_core_writedata_i),
        .hr_cs0_o(hr_cs0_o),
        .hr_d_io(hr_d_io),
        .hr_high_o(hr_high_o),
        .hr_low_o(hr_low_o),
        .hr_reset_o(hr_reset_o),
        .hr_rst_o(hr_rst_o),
        .hr_rwds_io(hr_rwds_io),
        .i2c_scl_io(i2c_scl_io),
        .i2c_sda_io(i2c_sda_io),
        .joy_1_down_n_i(joy_1_down_n_i),
        .joy_1_down_n_o(joy_1_down_n_o),
        .joy_1_fire_n_i(joy_1_fire_n_i),
        .joy_1_fire_n_o(joy_1_fire_n_o),
        .joy_1_left_n_i(joy_1_left_n_i),
        .joy_1_left_n_o(joy_1_left_n_o),
        .joy_1_right_n_i(joy_1_right_n_i),
        .joy_1_right_n_o(joy_1_right_n_o),
        .joy_1_up_n_i(joy_1_up_n_i),
        .joy_1_up_n_o(joy_1_up_n_o),
        .joy_2_down_n_i(joy_2_down_n_i),
        .joy_2_down_n_o(joy_2_down_n_o),
        .joy_2_fire_n_i(joy_2_fire_n_i),
        .joy_2_fire_n_o(joy_2_fire_n_o),
        .joy_2_left_n_i(joy_2_left_n_i),
        .joy_2_left_n_o(joy_2_left_n_o),
        .joy_2_right_n_i(joy_2_right_n_i),
        .joy_2_right_n_o(joy_2_right_n_o),
        .joy_2_up_n_i(joy_2_up_n_i),
        .joy_2_up_n_o(joy_2_up_n_o),
        .kb_io0_o(kb_io0_o),
        .kb_io1_o(kb_io1_o),
        .kb_io2_i(kb_io2_i),
        .main_audio_l_i(main_audio_l_i),
        .main_audio_r_i(main_audio_r_i),
        .main_clk_i(main_clk_i),
        .main_drive_led_col_i(main_drive_led_col_i),
        .main_drive_led_i(main_drive_led_i),
        .main_joy1_down_n_i(main_joy1_down_n_i),
        .main_joy1_down_n_o(main_joy1_down_n_o),
        .main_joy1_fire_n_i(main_joy1_fire_n_i),
        .main_joy1_fire_n_o(main_joy1_fire_n_o),
        .main_joy1_left_n_i(main_joy1_left_n_i),
        .main_joy1_left_n_o(main_joy1_left_n_o),
        .main_joy1_right_n_i(main_joy1_right_n_i),
        .main_joy1_right_n_o(main_joy1_right_n_o),
        .main_joy1_up_n_i(main_joy1_up_n_i),
        .main_joy1_up_n_o(main_joy1_up_n_o),
        .main_joy2_down_n_i(main_joy2_down_n_i),
        .main_joy2_down_n_o(main_joy2_down_n_o),
        .main_joy2_fire_n_i(main_joy2_fire_n_i),
        .main_joy2_fire_n_o(main_joy2_fire_n_o),
        .main_joy2_left_n_i(main_joy2_left_n_i),
        .main_joy2_left_n_o(main_joy2_left_n_o),
        .main_joy2_right_n_i(main_joy2_right_n_i),
        .main_joy2_right_n_o(main_joy2_right_n_o),
        .main_joy2_up_n_i(main_joy2_up_n_i),
        .main_joy2_up_n_o(main_joy2_up_n_o),
        .main_key_num_o(main_key_num_o),
        .main_key_pressed_n_o(main_key_pressed_n_o),
        .main_osm_control_m_o(main_osm_control_m_o),
        .main_pot1_x_o(main_pot1_x_o),
        .main_pot1_y_o(main_pot1_y_o),
        .main_pot2_x_o(main_pot2_x_o),
        .main_pot2_y_o(main_pot2_y_o),
        .main_power_led_col_i(main_power_led_col_i),
        .main_power_led_i(main_power_led_i),
        .main_qnice_gp_reg_o(main_qnice_gp_reg_o),
        .main_qnice_pause_o(main_qnice_pause_o),
        .main_qnice_reset_o(main_qnice_reset_o),
        .main_reset_core_o(main_reset_core_o),
        .main_reset_m2m_o(main_reset_m2m_o),
        .main_rst_i(main_rst_i),
        .main_rtc_o(main_rtc_o),
        .paddle_drain_o(paddle_drain_o),
        .paddle_i(paddle_i),
        .qnice_ascal_mode_i(qnice_ascal_mode_i),
        .qnice_ascal_polyphase_i(qnice_ascal_polyphase_i),
        .qnice_ascal_triplebuf_i(qnice_ascal_triplebuf_i),
        .qnice_audio_filter_i(qnice_audio_filter_i),
        .qnice_audio_mute_i(qnice_audio_mute_i),
        .qnice_clk_o(qnice_clk_o),
        .qnice_csync_i(qnice_csync_i),
        .qnice_dvi_i(qnice_dvi_i),
        .qnice_flip_joyports_i(qnice_flip_joyports_i),
        .qnice_gp_reg_o(qnice_gp_reg_o),
        .qnice_osm_cfg_scaling_i(qnice_osm_cfg_scaling_i),
        .qnice_osm_control_m_o(qnice_osm_control_m_o),
        .qnice_ramrom_addr_o(qnice_ramrom_addr_o),
        .qnice_ramrom_ce_o(qnice_ramrom_ce_o),
        .qnice_ramrom_data_in_i(qnice_ramrom_data_in_i),
        .qnice_ramrom_data_out_o(qnice_ramrom_data_out_o),
        .qnice_ramrom_dev_o(qnice_ramrom_dev_o),
        .qnice_ramrom_wait_i(qnice_ramrom_wait_i),
        .qnice_ramrom_we_o(qnice_ramrom_we_o),
        .qnice_retro15kHz_i(qnice_retro15kHz_i),
        .qnice_rst_o(qnice_rst_o),
        .qnice_scandoubler_i(qnice_scandoubler_i),
        .qnice_video_mode_i(qnice_video_mode_i),
        .qnice_zoom_crop_i(qnice_zoom_crop_i),
        .reset_n_i(reset_n_i),
        .sd2_cd_i(sd2_cd_i),
        .sd2_clk_o(sd2_clk_o),
        .sd2_miso_i(sd2_miso_i),
        .sd2_mosi_o(sd2_mosi_o),
        .sd2_reset_o(sd2_reset_o),
        .sd_cd_i(sd_cd_i),
        .sd_clk_o(sd_clk_o),
        .sd_miso_i(sd_miso_i),
        .sd_mosi_o(sd_mosi_o),
        .sd_reset_o(sd_reset_o),
        .tmds_clk_n_o(tmds_clk_n_o),
        .tmds_clk_p_o(tmds_clk_p_o),
        .tmds_data_n_o(tmds_data_n_o),
        .tmds_data_p_o(tmds_data_p_o),
        .uart_rxd_i(uart_rxd_i),
        .uart_txd_o(uart_txd_o),
        .vdac_blank_n_o(vdac_blank_n_o),
        .vdac_clk_o(vdac_clk_o),
        .vdac_sync_n_o(vdac_sync_n_o),
        .vga_blue_o(vga_blue_o),
        .vga_green_o(vga_green_o),
        .vga_hs_o(vga_hs_o),
        .vga_red_o(vga_red_o),
        .vga_scl_io(vga_scl_io),
        .vga_sda_io(vga_sda_io),
        .vga_vs_o(vga_vs_o),
        .video_blue_i(video_blue_i),
        .video_ce_i(video_ce_i),
        .video_ce_ovl_i(video_ce_ovl_i),
        .video_clk_i(video_clk_i),
        .video_green_i(video_green_i),
        .video_hblank_i(video_hblank_i),
        .video_hs_i(video_hs_i),
        .video_red_i(video_red_i),
        .video_rst_i(video_rst_i),
        .video_vblank_i(video_vblank_i),
        .video_vs_i(video_vs_i));
endmodule
