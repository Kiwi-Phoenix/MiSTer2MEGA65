//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
//Date        : Sat Mar  8 17:04:26 2025
//Host        : Retro-PC running 64-bit major release  (build 9200)
//Command     : generate_target framework.bd
//Design      : framework
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "framework,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=framework,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=0,numReposBlks=0,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=None}" *) (* HW_HANDOFF = "framework.hwdef" *) 
module framework
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AUDIO_CLK_O CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AUDIO_CLK_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output audio_clk_o;
  output [15:0]audio_left_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AUDIO_RESET_O RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AUDIO_RESET_O, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output audio_reset_o;
  output [15:0]audio_right_o;
  inout audio_scl_io;
  inout audio_sda_io;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_I CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_I, CLK_DOMAIN framework_clk_i, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_i;
  inout fpga_scl_io;
  inout fpga_sda_io;
  inout grove_scl_io;
  inout grove_sda_io;
  inout hdmi_scl_io;
  inout hdmi_sda_io;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.HR_CLK_O CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.HR_CLK_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output hr_clk_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.HR_CLK_P_O CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.HR_CLK_P_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output hr_clk_p_o;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.HR_D_IO DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.HR_D_IO, LAYERED_METADATA undef" *) inout [7:0]hr_d_io;
  output hr_high_o;
  output hr_low_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.HR_RESET_O RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.HR_RESET_O, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output hr_reset_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.HR_RST_O RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.HR_RST_O, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output hr_rst_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.HR_RWDS_IO DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.HR_RWDS_IO, LAYERED_METADATA undef" *) inout hr_rwds_io;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.KB_IO0_O CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.KB_IO0_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output kb_io0_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.KB_IO1_O DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.KB_IO1_O, LAYERED_METADATA undef" *) output kb_io1_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.KB_IO2_I DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.KB_IO2_I, LAYERED_METADATA undef" *) input kb_io2_i;
  input [15:0]main_audio_l_i;
  input [15:0]main_audio_r_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.MAIN_CLK_I CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.MAIN_CLK_I, CLK_DOMAIN framework_main_clk_i, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input main_clk_i;
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
  output [79:0]main_key_num_o;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.MAIN_QNICE_RESET_O RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.MAIN_QNICE_RESET_O, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output main_qnice_reset_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.MAIN_RESET_CORE_O RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.MAIN_RESET_CORE_O, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output main_reset_core_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.MAIN_RESET_M2M_O RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.MAIN_RESET_M2M_O, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output main_reset_m2m_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.MAIN_RST_I RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.MAIN_RST_I, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input main_rst_i;
  output [64:0]main_rtc_o;
  output paddle_drain_o;
  input [3:0]paddle_i;
  input [1:0]qnice_ascal_mode_i;
  input qnice_ascal_polyphase_i;
  input qnice_ascal_triplebuf_i;
  input qnice_audio_filter_i;
  input qnice_audio_mute_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.QNICE_CLK_O CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.QNICE_CLK_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output qnice_clk_o;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.QNICE_RST_O RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.QNICE_RST_O, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output qnice_rst_o;
  input qnice_scandoubler_i;
  input qnice_video_mode_i;
  input qnice_zoom_crop_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_N_I RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_N_I, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_n_i;
  input sd2_cd_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SD2_CLK_O CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SD2_CLK_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output sd2_clk_o;
  input sd2_miso_i;
  output sd2_mosi_o;
  output sd2_reset_o;
  input sd_cd_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SD_CLK_O CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SD_CLK_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output sd_clk_o;
  input sd_miso_i;
  output sd_mosi_o;
  output sd_reset_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.TMDS_CLK_N_O CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.TMDS_CLK_N_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output tmds_clk_n_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.TMDS_CLK_P_O CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.TMDS_CLK_P_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output tmds_clk_p_o;
  output [2:0]tmds_data_n_o;
  output [2:0]tmds_data_p_o;
  input uart_rxd_i;
  output uart_txd_o;
  output vdac_blank_n_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.VDAC_CLK_O CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.VDAC_CLK_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output vdac_clk_o;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.VIDEO_CLK_I CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.VIDEO_CLK_I, CLK_DOMAIN framework_video_clk_i, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input video_clk_i;
  input [7:0]video_green_i;
  input video_hblank_i;
  input video_hs_i;
  input [7:0]video_red_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.VIDEO_RST_I RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.VIDEO_RST_I, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input video_rst_i;
  input video_vblank_i;
  input video_vs_i;


endmodule
