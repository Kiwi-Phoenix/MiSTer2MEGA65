//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
//Date        : Sun Mar  9 15:20:25 2025
//Host        : Retro-PC running 64-bit major release  (build 9200)
//Command     : generate_target Core.bd
//Design      : Core
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Core,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Core,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=2,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "Core.hwdef" *) 
module Core
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.CART_RESET_I RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.CART_RESET_I, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input cart_reset_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.CART_RESET_O RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.CART_RESET_O, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output cart_reset_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.CART_RESET_OE_O RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.CART_RESET_OE_O, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output cart_reset_oe_o;
  input cart_romh_i;
  output cart_romh_o;
  output cart_romh_oe_o;
  input cart_roml_i;
  output cart_roml_o;
  output cart_roml_oe_o;
  input cart_rw_i;
  output cart_rw_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_I CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_I, CLK_DOMAIN Core_clk_i, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.HR_CLK_I CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.HR_CLK_I, CLK_DOMAIN Core_hr_clk_i, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input hr_clk_i;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.HR_RST_I RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.HR_RST_I, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input hr_rst_i;
  output iec_atn_n_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.IEC_CLK_EN_O CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.IEC_CLK_EN_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output iec_clk_en_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.IEC_CLK_N_I CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.IEC_CLK_N_I, CLK_DOMAIN Core_iec_clk_n_i, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input iec_clk_n_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.IEC_CLK_N_O CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.IEC_CLK_N_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output iec_clk_n_o;
  output iec_data_en_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IEC_DATA_N_I DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IEC_DATA_N_I, LAYERED_METADATA undef" *) input iec_data_n_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.IEC_DATA_N_O DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.IEC_DATA_N_O, LAYERED_METADATA undef" *) output iec_data_n_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.IEC_RESET_N_O RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.IEC_RESET_N_O, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output iec_reset_n_o;
  output iec_srq_en_o;
  input iec_srq_n_i;
  output iec_srq_n_o;
  output [15:0]main_audio_left_o;
  output [15:0]main_audio_right_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.MAIN_CLK_O CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.MAIN_CLK_O, FREQ_HZ 54000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output main_clk_o;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.MAIN_RESET_CORE_I RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.MAIN_RESET_CORE_I, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input main_reset_core_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.MAIN_RESET_M2M_I RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.MAIN_RESET_M2M_I, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input main_reset_m2m_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.MAIN_RST_O RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.MAIN_RST_O, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output main_rst_o;
  input [64:0]main_rtc_i;
  output [1:0]qnice_ascal_mode_o;
  output qnice_ascal_polyphase_o;
  output qnice_ascal_triplebuf_o;
  output qnice_audio_filter_o;
  output qnice_audio_mute_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.QNICE_CLK_I CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.QNICE_CLK_I, CLK_DOMAIN Core_qnice_clk_i, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input qnice_clk_i;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.QNICE_RST_I RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.QNICE_RST_I, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input qnice_rst_i;
  output qnice_scandoubler_o;
  output qnice_video_mode_o;
  output qnice_zoom_crop_o;
  output [7:0]video_blue_o;
  output video_ce_o;
  output video_ce_ovl_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.VIDEO_CLK_O CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.VIDEO_CLK_O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output video_clk_o;
  output [7:0]video_green_o;
  output video_hblank_o;
  output video_hs_o;
  output [7:0]video_red_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.VIDEO_RST_O RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.VIDEO_RST_O, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output video_rst_o;
  output video_vblank_o;
  output video_vs_o;

  wire clk_0_main_clk_o;
  wire clk_i;
  wire [15:0]main_audio_left_o;
  wire [15:0]main_audio_right_o;
  wire main_joy_1_down_n_i;
  wire main_joy_1_fire_n_i;
  wire main_joy_1_left_n_i;
  wire main_joy_1_right_n_i;
  wire main_joy_1_up_n_i;
  wire main_joy_2_down_n_i;
  wire main_joy_2_fire_n_i;
  wire main_joy_2_left_n_i;
  wire main_joy_2_right_n_i;
  wire main_joy_2_up_n_i;
  wire [79:0]main_kb_key_num_i;
  wire main_kb_key_pressed_n_i;
  wire main_pause_core_i;
  wire [7:0]main_pot1_x_i;
  wire [7:0]main_pot1_y_i;
  wire [7:0]main_pot2_x_i;
  wire [7:0]main_pot2_y_i;
  wire [255:0]main_qnice_gp_reg_i;
  wire main_reset_core_i;
  wire main_reset_m2m_i;
  wire main_rst_o;
  wire qnice_clk_i;
  wire [27:0]qnice_dev_addr_i;
  wire [15:0]qnice_dev_data_i;
  wire [15:0]qnice_dev_data_o;
  wire [7:0]video_blue_o;
  wire video_ce_o;
  wire video_ce_ovl_o;
  wire [7:0]video_green_o;
  wire video_hblank_o;
  wire video_hs_o;
  wire [7:0]video_red_o;
  wire video_vblank_o;
  wire video_vs_o;
  wire [0:0]xlconstant_0_dout;

  Core_M65_Main_0_0 M65_Main_0
       (.audio_left_o(main_audio_left_o),
        .audio_right_o(main_audio_right_o),
        .clk_main_i(clk_0_main_clk_o),
        .clk_main_speed_i(xlconstant_0_dout),
        .joy_1_down_n_i(main_joy_1_down_n_i),
        .joy_1_fire_n_i(main_joy_1_fire_n_i),
        .joy_1_left_n_i(main_joy_1_left_n_i),
        .joy_1_right_n_i(main_joy_1_right_n_i),
        .joy_1_up_n_i(main_joy_1_up_n_i),
        .joy_2_down_n_i(main_joy_2_down_n_i),
        .joy_2_fire_n_i(main_joy_2_fire_n_i),
        .joy_2_left_n_i(main_joy_2_left_n_i),
        .joy_2_right_n_i(main_joy_2_right_n_i),
        .joy_2_up_n_i(main_joy_2_up_n_i),
        .kb_key_num_i(main_kb_key_num_i),
        .kb_key_pressed_n_i(main_kb_key_pressed_n_i),
        .paddle_speed_i(main_qnice_gp_reg_i[3:0]),
        .pause_i(main_pause_core_i),
        .pot1_x_i(main_pot1_x_i),
        .pot1_y_i(main_pot1_y_i),
        .pot2_x_i(main_pot2_x_i),
        .pot2_y_i(main_pot2_y_i),
        .reset_hard_i(main_reset_m2m_i),
        .reset_soft_i(main_reset_core_i),
        .video_blue_o(video_blue_o),
        .video_ce_o(video_ce_o),
        .video_ce_ovl_o(video_ce_ovl_o),
        .video_green_o(video_green_o),
        .video_hblank_o(video_hblank_o),
        .video_hs_o(video_hs_o),
        .video_red_o(video_red_o),
        .video_vblank_o(video_vblank_o),
        .video_vs_o(video_vs_o));
  Core_M65_vdrives_0_0 M65_vdrives_0
       (.clk_core_i(clk_0_main_clk_o),
        .clk_qnice_i(qnice_clk_i),
        .qnice_addr_i(qnice_dev_addr_i),
        .qnice_ce_i(1'b0),
        .qnice_data_i(qnice_dev_data_i),
        .qnice_data_o(qnice_dev_data_o),
        .qnice_we_i(1'b0),
        .reset_core_i(main_reset_core_i),
        .sd_blk_cnt_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .sd_buff_din_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .sd_lba_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .sd_rd_i(1'b0),
        .sd_wr_i(1'b0));
  Core_clk_0_0 clk_0
       (.main_clk_o(clk_0_main_clk_o),
        .main_rst_o(main_rst_o),
        .sys_clk_i(clk_i));
  Core_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
