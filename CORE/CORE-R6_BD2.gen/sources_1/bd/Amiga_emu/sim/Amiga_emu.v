//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
//Date        : Sun Mar 16 14:32:24 2025
//Host        : Retro-PC running 64-bit major release  (build 9200)
//Command     : generate_target Amiga_emu.bd
//Design      : Amiga_emu
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

/* To Be Completed */
(* CORE_GENERATION_INFO = "Amiga_emu,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Amiga_emu,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=66,numReposBlks=54,numNonXlnxBlks=0,numHierBlks=12,maxHierDepth=2,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=10,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "Amiga_emu.hwdef" *) 
module Amiga_emu
   (ADC_BUS,
    AUDIO_L,
    AUDIO_MIX,
    AUDIO_R,
    AUDIO_S,
    BUTTONS,
    CE_PIXEL,
    CLK_50M,
    CLK_AUDIO,
    CLK_VIDEO,
    DDRAM_ADDR,
    DDRAM_BE,
    DDRAM_BURSTCNT,
    DDRAM_BUSY,
    DDRAM_CLK,
    DDRAM_DIN,
    DDRAM_DOUT,
    DDRAM_DOUT_READY,
    DDRAM_RD,
    DDRAM_WE,
    FB_BASE,
    FB_EN,
    FB_FORCE_BLANK,
    FB_FORMAT,
    FB_HEIGHT,
    FB_LL,
    FB_PAL_ADDR,
    FB_PAL_CLK,
    FB_PAL_DIN,
    FB_PAL_DOUT,
    FB_PAL_WR,
    FB_STRIDE,
    FB_VBL,
    FB_WIDTH,
    HDMI_FREEZE,
    HDMI_HEIGHT,
    HDMI_WIDTH,
    HPS_BUS,
    LED_DISK,
    LED_POWER,
    LED_USER,
    OSD_STATUS,
    RESET,
    SDRAM2_A,
    SDRAM2_BA,
    SDRAM2_CLK,
    SDRAM2_DQ,
    SDRAM2_EN,
    SDRAM2_nCAS,
    SDRAM2_nCS,
    SDRAM2_nRAS,
    SDRAM2_nWE,
    SDRAM_A,
    SDRAM_BA,
    SDRAM_CKE,
    SDRAM_CLK,
    SDRAM_DQ,
    SDRAM_DQMH,
    SDRAM_DQML,
    SDRAM_nCAS,
    SDRAM_nCS,
    SDRAM_nRAS,
    SDRAM_nWE,
    SD_CD,
    SD_CS,
    SD_MISO,
    SD_MOSI,
    SD_SCK,
    UART_CTS,
    UART_DSR,
    UART_DTR,
    UART_RTS,
    UART_RXD,
    UART_TXD,
    USER_IN,
    USER_OUT,
    VGA_B,
    VGA_DE,
    VGA_DISABLE,
    VGA_F1,
    VGA_G,
    VGA_HS,
    VGA_R,
    VGA_SCALER,
    VGA_SL,
    VGA_VS,
    VIDEO_ARX,
    VIDEO_ARY);
  inout [3:0]ADC_BUS;
  output [15:0]AUDIO_L;
  output [1:0]AUDIO_MIX;
  output [15:0]AUDIO_R;
  output [0:0]AUDIO_S;
  output [1:0]BUTTONS;
  output CE_PIXEL;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_50M CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_50M, CLK_DOMAIN Amiga_emu_CLK_50M, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input CLK_50M;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_AUDIO CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_AUDIO, CLK_DOMAIN Amiga_emu_CLK_AUDIO, FREQ_HZ 24576000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input CLK_AUDIO;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_VIDEO CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_VIDEO, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output CLK_VIDEO;
  output [28:0]DDRAM_ADDR;
  output [7:0]DDRAM_BE;
  output [7:0]DDRAM_BURSTCNT;
  input DDRAM_BUSY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DDRAM_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DDRAM_CLK, CLK_DOMAIN Amiga_emu_ddram_ctrl_0_0_DDRAM_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output DDRAM_CLK;
  output [63:0]DDRAM_DIN;
  input [63:0]DDRAM_DOUT;
  input DDRAM_DOUT_READY;
  output DDRAM_RD;
  output DDRAM_WE;
  output [31:0]FB_BASE;
  output FB_EN;
  output [0:0]FB_FORCE_BLANK;
  output [4:0]FB_FORMAT;
  output [11:0]FB_HEIGHT;
  input FB_LL;
  output [7:0]FB_PAL_ADDR;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.FB_PAL_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.FB_PAL_CLK, CLK_DOMAIN Amiga_emu_fastchip_0_0_rtg_pal_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output FB_PAL_CLK;
  input [23:0]FB_PAL_DIN;
  output [23:0]FB_PAL_DOUT;
  output FB_PAL_WR;
  output [13:0]FB_STRIDE;
  input FB_VBL;
  output [11:0]FB_WIDTH;
  output [0:0]HDMI_FREEZE;
  input [11:0]HDMI_HEIGHT;
  input [11:0]HDMI_WIDTH;
  inout [48:0]HPS_BUS;
  output [0:0]LED_DISK;
  output [1:0]LED_POWER;
  output LED_USER;
  input OSD_STATUS;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input RESET;
  output [12:0]SDRAM2_A;
  output [1:0]SDRAM2_BA;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SDRAM2_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SDRAM2_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output SDRAM2_CLK;
  inout [15:0]SDRAM2_DQ;
  input SDRAM2_EN;
  output SDRAM2_nCAS;
  output SDRAM2_nCS;
  output SDRAM2_nRAS;
  output SDRAM2_nWE;
  output [12:0]SDRAM_A;
  output [1:0]SDRAM_BA;
  output SDRAM_CKE;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SDRAM_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SDRAM_CLK, CLK_DOMAIN Amiga_emu_sdram_ctrl_0_0_sd_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output SDRAM_CLK;
  inout [15:0]SDRAM_DQ;
  output [1:0]SDRAM_DQMH;
  output [1:0]SDRAM_DQML;
  output SDRAM_nCAS;
  output SDRAM_nCS;
  output SDRAM_nRAS;
  output SDRAM_nWE;
  input SD_CD;
  output SD_CS;
  input SD_MISO;
  output SD_MOSI;
  output SD_SCK;
  input UART_CTS;
  input UART_DSR;
  output UART_DTR;
  output UART_RTS;
  input UART_RXD;
  output UART_TXD;
  input [6:0]USER_IN;
  output [6:0]USER_OUT;
  output [7:0]VGA_B;
  output VGA_DE;
  output [0:0]VGA_DISABLE;
  output VGA_F1;
  output [7:0]VGA_G;
  output VGA_HS;
  output [7:0]VGA_R;
  output VGA_SCALER;
  output [2:0]VGA_SL;
  output VGA_VS;
  output [12:0]VIDEO_ARX;
  output [12:0]VIDEO_ARY;

  wire [1:0]ARX_1;
  wire [15:0]AUDIO_L;
  wire [1:0]AUDIO_MIX;
  wire [15:0]AUDIO_R;
  wire [0:0]AUDIO_S;
  wire [1:0]BUTTONS;
  wire [7:0]B_1;
  wire CE_PIXEL;
  wire CLK_50M;
  wire CLK_AUDIO;
  wire CLK_VIDEO;
  wire [28:0]DDRAM_ADDR;
  wire [7:0]DDRAM_BE;
  wire [7:0]DDRAM_BURSTCNT;
  wire DDRAM_BUSY;
  wire DDRAM_CLK;
  wire [63:0]DDRAM_DIN;
  wire [63:0]DDRAM_DOUT;
  wire DDRAM_DOUT_READY;
  wire DDRAM_RD;
  wire DDRAM_WE;
  wire [31:0]FB_BASE;
  wire FB_EN;
  wire [0:0]FB_FORCE_BLANK;
  wire [4:0]FB_FORMAT;
  wire [11:0]FB_HEIGHT;
  wire [7:0]FB_PAL_ADDR;
  wire FB_PAL_CLK;
  wire [23:0]FB_PAL_DIN;
  wire [23:0]FB_PAL_DOUT;
  wire FB_PAL_WR;
  wire [13:0]FB_STRIDE;
  wire [11:0]FB_WIDTH;
  wire [7:0]G_1;
  wire HBlank_1;
  wire [0:0]HDMI_FREEZE;
  wire [11:0]HDMI_HEIGHT;
  wire [11:0]HDMI_WIDTH;
  wire [48:0]HPS_BUS;
  wire HSync_1;
  wire [0:0]LED_DISK;
  wire \^LED_POWER ;
  wire LED_USER;
  wire RESET;
  wire [7:0]R_1;
  wire SDRAM2_nCAS;
  wire [12:0]SDRAM_A;
  wire [1:0]SDRAM_BA;
  wire SDRAM_CKE;
  wire SDRAM_CLK;
  wire [15:0]SDRAM_DQ;
  wire [1:0]SDRAM_DQML;
  wire SDRAM_nCS;
  wire SDRAM_nRAS;
  wire SDRAM_nWE;
  wire UART_CTS;
  wire UART_DSR;
  wire UART_DTR;
  wire UART_RTS;
  wire UART_RXD;
  wire UART_TXD;
  wire [6:0]USER_IN;
  wire [6:0]USER_OUT;
  wire [7:0]VGA_B;
  wire VGA_DE;
  wire [0:0]VGA_DISABLE;
  wire VGA_F1;
  wire [7:0]VGA_G;
  wire VGA_HS;
  wire [7:0]VGA_R;
  wire [2:0]VGA_SL;
  wire VGA_VS;
  wire [12:0]VIDEO_ARX;
  wire [12:0]VIDEO_ARY;
  wire VSync_1;
  wire amiga_clk_0_c1;
  wire amiga_clk_0_c3;
  wire amiga_clk_0_cck;
  wire amiga_clk_0_clk7_en;
  wire amiga_clk_0_clk7n_en;
  wire [9:0]amiga_clk_0_eclk;
  wire [15:0]audio_l_comb_0_Res;
  wire [15:0]audio_r_comb_0_Res;
  wire cdda_0_WRITE_REQ;
  wire [0:0]ce_comb_Res;
  wire [15:0]cpu_wrap_0_Res;
  wire [15:0]cpu_wrap_1_Res;
  wire [0:0]cpu_wrap_2_Res;
  wire [3:0]cpu_wrapper_0_cacr;
  wire [23:1]cpu_wrapper_0_chip_addr;
  wire cpu_wrapper_0_chip_as;
  wire [15:0]cpu_wrapper_0_chip_din;
  wire cpu_wrapper_0_chip_lds;
  wire cpu_wrapper_0_chip_rw;
  wire cpu_wrapper_0_chip_uds;
  wire [1:0]cpu_wrapper_0_cpustate;
  wire cpu_wrapper_0_fastchip_lds;
  wire cpu_wrapper_0_fastchip_lw;
  wire cpu_wrapper_0_fastchip_rnw;
  wire cpu_wrapper_0_fastchip_sel;
  wire cpu_wrapper_0_fastchip_uds;
  wire [31:0]cpu_wrapper_0_nmi_addr;
  wire [28:1]cpu_wrapper_0_ramaddr;
  wire [15:0]cpu_wrapper_0_ramdin;
  wire cpu_wrapper_0_ramlds;
  wire cpu_wrapper_0_ramshared;
  wire cpu_wrapper_0_ramuds;
  wire cpu_wrapper_0_reset_out;
  wire [7:0]cpu_wrapper_0_toccata_base;
  wire cpu_wrapper_0_toccata_ena;
  wire [15:0]ddram_ctrl_0_ram2_cpuRD;
  wire ddram_ctrl_0_ram2_ramready;
  wire [15:0]fastchip_0_dout;
  wire fastchip_0_ide_irq;
  wire fastchip_0_ide_led;
  wire [15:0]fastchip_0_ide_readdata;
  wire [5:0]fastchip_0_ide_req;
  wire fastchip_0_ready;
  wire fastchip_0_sel_ack;
  wire [15:0]hps_ext_0_cdda_dout;
  wire hps_ext_0_cdda_wr;
  wire [4:0]hps_ext_0_ide_addr;
  wire [15:0]hps_ext_0_ide_dout;
  wire hps_ext_0_ide_rd;
  wire hps_ext_0_ide_wr;
  wire [15:0]hps_ext_0_io_din;
  wire hps_ext_0_io_fpga;
  wire hps_ext_0_io_strobe;
  wire hps_ext_0_io_uio;
  wire [7:0]hps_ext_0_kbd_mouse_data;
  wire hps_ext_0_kbd_mouse_level;
  wire [1:0]hps_ext_0_kbd_mouse_type;
  wire [2:0]hps_ext_0_mouse_buttons;
  wire [15:0]hps_ext_ide_1_Res;
  wire [15:0]hps_ext_ide_2_Res;
  wire [15:0]hps_ext_ide_Res;
  wire [64:0]hps_io_hier_RTC;
  wire [1:0]hps_io_hier_buttons;
  wire hps_io_hier_forced_scandoubler;
  wire [31:0]hps_io_hier_joystick_0;
  wire [31:0]hps_io_hier_joystick_1;
  wire [31:0]hps_io_hier_joystick_2;
  wire [31:0]hps_io_hier_joystick_3;
  wire [15:0]hps_io_hier_joystick_l_analog_0;
  wire [15:0]hps_io_hier_joystick_l_analog_1;
  wire [127:0]hps_io_hier_status;
  wire [7:0]hps_io_hier_uart_mode;
  wire [15:0]hps_status_0_Res;
  wire [15:0]hps_status_1_Res;
  wire [7:0]ilconstant_0_dout;
  wire [0:0]ilconstant_1_dout;
  wire [23:0]ilconstant_2_dout;
  wire [7:0]info_1;
  wire info_req_1;
  wire [15:0]input_l_comb_Res;
  wire [15:0]input_r_comb_Res;
  wire ioctl_wait_1;
  wire [1:0]led_disk_0_Res;
  wire [15:0]lpf3275_IIR_filter_0_output_l;
  wire [15:0]lpf3275_IIR_filter_0_output_r;
  wire [15:0]lpf4400_IIR_filter_0_output_l;
  wire [15:0]lpf4400_IIR_filter_0_output_r;
  wire mgmt_address_1;
  wire [15:0]minimig_0_IO_DOUT;
  wire minimig_0__cpu_dtack;
  wire [2:0]minimig_0__cpu_ipl;
  wire minimig_0__cpu_reset;
  wire minimig_0__ram_bhe;
  wire minimig_0__ram_ble;
  wire minimig_0__ram_oe;
  wire minimig_0__ram_we;
  wire minimig_0_bootrom;
  wire [2:0]minimig_0_cachecfg;
  wire [15:0]minimig_0_cpu_data;
  wire [1:0]minimig_0_cpucfg;
  wire minimig_0_hdd_led;
  wire minimig_0_ide_ena;
  wire minimig_0_ide_fast;
  wire [15:0]minimig_0_ide_readdata;
  wire [5:0]minimig_0_ide_req;
  wire minimig_0_lace;
  wire [14:0]minimig_0_ldata;
  wire [8:0]minimig_0_ldata_okk;
  wire [6:0]minimig_0_memcfg;
  wire [23:1]minimig_0_ram_address;
  wire [15:0]minimig_0_ram_data;
  wire [14:0]minimig_0_rdata;
  wire [8:0]minimig_0_rdata_okk;
  wire [1:0]minimig_0_res;
  wire minimig_0_rst_out;
  wire [15:0]minimig_0_toccata_aud_left;
  wire [15:0]minimig_0_toccata_aud_right;
  wire minimig_0_vblank;
  wire mt32pi_midi_rx;
  wire mt32pi_mt32_available;
  wire [15:0]mt32pi_mt32_i2s_l;
  wire [15:0]mt32pi_mt32_i2s_r;
  wire mt32pi_mt32_lcd_en;
  wire mt32pi_mt32_lcd_pix;
  wire mt32pi_mt32_lcd_update;
  wire [7:0]mt32pi_mt32_rom;
  wire [7:0]mt32pi_mt32_sf;
  wire [15:0]output2_l_comb_Res;
  wire [15:0]output2_r_comb_Res;
  wire [15:0]output_comb_Res;
  wire [15:0]output_l_comb_Res;
  wire [15:0]output_r_comb_Res;
  wire [63:0]pll_cfg_hier_reconfig_to_pll;
  wire pll_hier_locked;
  wire pll_hier_outclk1;
  wire [63:0]pll_hier_reconfig_from_pll;
  wire [0:0]pll_reset_reg_2_Res;
  wire [0:0]pll_reset_reg_Res;
  wire [0:0]rxd_0_Res;
  wire [0:0]rxd_1_Res;
  wire [47:0]sdram_ctrl_0_ram1_chip48;
  wire [15:0]sdram_ctrl_0_ram1_chipRD;
  wire [15:0]sdram_ctrl_0_ram1_cpuRD;
  wire sdram_ctrl_0_ram1_ramready;
  wire [7:0]vga_comb_1_Res;
  wire [7:0]vga_comb_2_Res;
  wire [7:0]video_mixer_VGA_B;
  wire [7:0]video_mixer_VGA_G;
  wire [7:0]video_mixer_VGA_R;
  wire [0:0]vm_vblank2_Res;
  wire [0:0]vm_vblank_Res;
  wire [39:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [0:0]xlconstant_2_dout;

  assign LED_POWER[0] = \^LED_POWER ;
  assign SDRAM_DQMH[1:0] = SDRAM_DQML;
  HPS_BUS_imp_9UGJ8 HPS_BUS_RnM
       (.HPS_BUS(HPS_BUS),
        .HPS_BUS_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .res(minimig_0_res));
  Amiga_emu_amiga_clk_0_0 amiga_clk_0
       (.c1(amiga_clk_0_c1),
        .c3(amiga_clk_0_c3),
        .cck(amiga_clk_0_cck),
        .clk7_en(amiga_clk_0_clk7_en),
        .clk7n_en(amiga_clk_0_clk7n_en),
        .clk_28(pll_hier_outclk1),
        .eclk(amiga_clk_0_eclk),
        .reset_n(pll_reset_reg_Res));
  Amiga_emu_util_vector_logic_0_17 audio_l_comb_0
       (.Op1(minimig_0_toccata_aud_left),
        .Op2(output2_l_comb_Res),
        .Res(audio_l_comb_0_Res));
  Amiga_emu_util_vector_logic_0_25 audio_l_comb_1
       (.Op1(mt32pi_mt32_i2s_l),
        .Op2(audio_l_comb_0_Res),
        .Res(AUDIO_L));
  Amiga_emu_util_vector_logic_0_18 audio_r_comb_0
       (.Op1(minimig_0_toccata_aud_right),
        .Op2(output2_r_comb_Res),
        .Res(audio_r_comb_0_Res));
  Amiga_emu_util_vector_logic_0_24 audio_r_comb_1
       (.Op1(mt32pi_mt32_i2s_r),
        .Op2(audio_r_comb_0_Res),
        .Res(AUDIO_R));
  Amiga_emu_cdda_0_0 cdda_0
       (.CLK(pll_hier_outclk1),
        .DIN(hps_ext_0_cdda_dout),
        .WRITE(hps_ext_0_cdda_wr),
        .WRITE_REQ(cdda_0_WRITE_REQ),
        .nRESET(pll_reset_reg_Res));
  Amiga_emu_util_vector_logic_0_2 ce_comb
       (.Op1(amiga_clk_0_clk7_en),
        .Op2(amiga_clk_0_clk7n_en),
        .Res(ce_comb_Res));
  Amiga_emu_util_vector_logic_0_19 cpu_wrap_0
       (.Op1(cpu_wrap_1_Res),
        .Op2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,cpu_wrap_2_Res}),
        .Res(cpu_wrap_0_Res));
  Amiga_emu_util_vector_logic_0_20 cpu_wrap_1
       (.Op1(sdram_ctrl_0_ram1_cpuRD),
        .Op2(ddram_ctrl_0_ram2_cpuRD),
        .Res(cpu_wrap_1_Res));
  Amiga_emu_util_vector_logic_0_21 cpu_wrap_2
       (.Op1(sdram_ctrl_0_ram1_ramready),
        .Op2(ddram_ctrl_0_ram2_ramready),
        .Res(cpu_wrap_2_Res));
  Amiga_emu_cpu_wrapper_0_0 cpu_wrapper_0
       (.bootrom(minimig_0_bootrom),
        .cachecfg(minimig_0_cachecfg),
        .cacr(cpu_wrapper_0_cacr),
        .chip_addr(cpu_wrapper_0_chip_addr),
        .chip_as(cpu_wrapper_0_chip_as),
        .chip_din(cpu_wrapper_0_chip_din),
        .chip_dout(minimig_0_cpu_data),
        .chip_dtack(minimig_0__cpu_dtack),
        .chip_ipl(minimig_0__cpu_ipl),
        .chip_lds(cpu_wrapper_0_chip_lds),
        .chip_rw(cpu_wrapper_0_chip_rw),
        .chip_uds(cpu_wrapper_0_chip_uds),
        .clk(pll_hier_outclk1),
        .cpucfg(minimig_0_cpucfg),
        .cpustate(cpu_wrapper_0_cpustate),
        .fastchip_dout(fastchip_0_dout),
        .fastchip_lds(cpu_wrapper_0_fastchip_lds),
        .fastchip_lw(cpu_wrapper_0_fastchip_lw),
        .fastchip_ready(fastchip_0_ready),
        .fastchip_rnw(cpu_wrapper_0_fastchip_rnw),
        .fastchip_sel(cpu_wrapper_0_fastchip_sel),
        .fastchip_selack(fastchip_0_sel_ack),
        .fastchip_uds(cpu_wrapper_0_fastchip_uds),
        .fastramcfg(minimig_0_memcfg[2:0]),
        .nmi_addr(cpu_wrapper_0_nmi_addr),
        .ph1(1'b0),
        .ph2(1'b0),
        .ramaddr(cpu_wrapper_0_ramaddr),
        .ramdin(cpu_wrapper_0_ramdin),
        .ramdout(cpu_wrap_0_Res),
        .ramlds(cpu_wrapper_0_ramlds),
        .ramready(cpu_wrap_0_Res[0]),
        .ramshared(cpu_wrapper_0_ramshared),
        .ramuds(cpu_wrapper_0_ramuds),
        .reset(minimig_0__cpu_reset),
        .reset_out(cpu_wrapper_0_reset_out),
        .toccata_base(cpu_wrapper_0_toccata_base),
        .toccata_ena(cpu_wrapper_0_toccata_ena));
  Amiga_emu_ddram_ctrl_0_0 ddram_ctrl_0_ram2
       (.DDRAM_ADDR(DDRAM_ADDR),
        .DDRAM_BE(DDRAM_BE),
        .DDRAM_BURSTCNT(DDRAM_BURSTCNT),
        .DDRAM_BUSY(DDRAM_BUSY),
        .DDRAM_CLK(DDRAM_CLK),
        .DDRAM_DIN(DDRAM_DIN),
        .DDRAM_DOUT(DDRAM_DOUT),
        .DDRAM_DOUT_READY(DDRAM_DOUT_READY),
        .DDRAM_RD(DDRAM_RD),
        .DDRAM_WE(DDRAM_WE),
        .cache_inhibit(1'b0),
        .cache_rst(minimig_0__cpu_reset),
        .cpuAddr(cpu_wrapper_0_ramaddr),
        .cpuCS(cpu_wrapper_0_ramaddr[1]),
        .cpuL(cpu_wrapper_0_ramlds),
        .cpuRD(ddram_ctrl_0_ram2_cpuRD),
        .cpuU(cpu_wrapper_0_ramuds),
        .cpuWR(cpu_wrapper_0_ramdin),
        .cpu_cache_ctrl(cpu_wrapper_0_cacr),
        .cpustate(cpu_wrapper_0_cpustate),
        .ramready(ddram_ctrl_0_ram2_ramready),
        .ramshared(cpu_wrapper_0_ramshared),
        .reset_n(pll_reset_reg_Res),
        .sysclk(CLK_VIDEO));
  Amiga_emu_fastchip_0_0 fastchip_0
       (.addr({1'b0,cpu_wrapper_0_chip_addr}),
        .clk(CLK_VIDEO),
        .clk_sys(pll_hier_outclk1),
        .cyc(1'b0),
        .din(cpu_wrapper_0_chip_din),
        .dout(fastchip_0_dout),
        .ide_address(hps_ext_0_ide_addr),
        .ide_ena(minimig_0_ide_ena),
        .ide_irq(fastchip_0_ide_irq),
        .ide_led(fastchip_0_ide_led),
        .ide_read(hps_ext_0_ide_rd),
        .ide_readdata(fastchip_0_ide_readdata),
        .ide_req(fastchip_0_ide_req),
        .ide_write(hps_ext_0_ide_wr),
        .ide_writedata(hps_ext_0_ide_dout),
        .lds(cpu_wrapper_0_fastchip_lds),
        .longword(cpu_wrapper_0_fastchip_lw),
        .ready(fastchip_0_ready),
        .reset(minimig_0_rst_out),
        .rnw(cpu_wrapper_0_fastchip_rnw),
        .rtg_base(FB_BASE),
        .rtg_ena(FB_EN),
        .rtg_format(FB_FORMAT),
        .rtg_hsize(FB_WIDTH),
        .rtg_pal_a(FB_PAL_ADDR),
        .rtg_pal_clk(FB_PAL_CLK),
        .rtg_pal_dr(FB_PAL_DIN),
        .rtg_pal_dw(FB_PAL_DOUT),
        .rtg_pal_wr(FB_PAL_WR),
        .rtg_stride(FB_STRIDE),
        .rtg_vsize(FB_HEIGHT),
        .sel(cpu_wrapper_0_fastchip_sel),
        .sel_ack(fastchip_0_sel_ack),
        .uds(cpu_wrapper_0_fastchip_uds));
  Amiga_emu_hps_ext_0_0 hps_ext_0
       (.cdda_dout(hps_ext_0_cdda_dout),
        .cdda_req(cdda_0_WRITE_REQ),
        .cdda_wr(hps_ext_0_cdda_wr),
        .clk_sys(pll_hier_outclk1),
        .fpga_dout(minimig_0_IO_DOUT),
        .ide_addr(hps_ext_0_ide_addr),
        .ide_din(hps_ext_ide_Res),
        .ide_dout(hps_ext_0_ide_dout),
        .ide_rd(hps_ext_0_ide_rd),
        .ide_req(hps_ext_ide_Res[5:0]),
        .ide_wr(hps_ext_0_ide_wr),
        .io_din(hps_ext_0_io_din),
        .io_fpga(hps_ext_0_io_fpga),
        .io_strobe(hps_ext_0_io_strobe),
        .io_uio(hps_ext_0_io_uio),
        .kbd_mouse_data(hps_ext_0_kbd_mouse_data),
        .kbd_mouse_level(hps_ext_0_kbd_mouse_level),
        .kbd_mouse_type(hps_ext_0_kbd_mouse_type),
        .mouse_buttons(hps_ext_0_mouse_buttons),
        .scr_flg({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .scr_hbl_l({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .scr_hbl_r({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .scr_hsize({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .scr_res({1'b0,1'b0}),
        .scr_vbl_b({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .scr_vbl_t({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .scr_vsize({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  Amiga_emu_util_vector_logic_0_14 hps_ext_ide_0
       (.Op1(hps_ext_ide_1_Res),
        .Op2(hps_ext_ide_2_Res),
        .Res(hps_ext_ide_Res));
  Amiga_emu_util_vector_logic_0_15 hps_ext_ide_1
       (.Op1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,fastchip_0_ide_req}),
        .Op2(fastchip_0_ide_readdata),
        .Res(hps_ext_ide_1_Res));
  Amiga_emu_util_vector_logic_0_16 hps_ext_ide_2
       (.Op1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,minimig_0_ide_req}),
        .Op2(minimig_0_ide_readdata),
        .Res(hps_ext_ide_2_Res));
  hps_io_hier_imp_LQ99ZE hps_io_hier
       (.RTC(hps_io_hier_RTC),
        .buttons(hps_io_hier_buttons),
        .clk_sys(pll_hier_outclk1),
        .forced_scandoubler(hps_io_hier_forced_scandoubler),
        .info(info_1),
        .info_req(info_req_1),
        .ioctl_din(1'b0),
        .ioctl_upload_index({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ioctl_upload_req(1'b0),
        .ioctl_wait(ioctl_wait_1),
        .joystick_0(hps_io_hier_joystick_0),
        .joystick_0_rumble({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .joystick_1(hps_io_hier_joystick_1),
        .joystick_1_rumble({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .joystick_2(hps_io_hier_joystick_2),
        .joystick_2_rumble({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .joystick_3(hps_io_hier_joystick_3),
        .joystick_3_rumble({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .joystick_4_rumble({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .joystick_5_rumble({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .joystick_l_analog_0(hps_io_hier_joystick_l_analog_0),
        .joystick_l_analog_1(hps_io_hier_joystick_l_analog_1),
        .new_vmode(1'b0),
        .ps2_kbd_clk_in(1'b0),
        .ps2_kbd_data_in(1'b0),
        .ps2_kbd_led_status({1'b0,1'b0,1'b0}),
        .ps2_kbd_led_use({1'b0,1'b0,1'b0}),
        .ps2_mouse_clk_in(1'b0),
        .ps2_mouse_data_in(1'b0),
        .sd_blk_cnt({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .sd_buff_din(1'b0),
        .sd_lba({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .sd_rd(1'b0),
        .sd_wr(1'b0),
        .status(hps_io_hier_status),
        .status_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .status_menumask(hps_status_0_Res),
        .status_set(1'b0),
        .uart_mode(hps_io_hier_uart_mode),
        .video_rotated(1'b0));
  Amiga_emu_util_vector_logic_0_26 hps_status_0
       (.Op1({mt32pi_mt32_available,mt32pi_mt32_available,mt32pi_mt32_available,mt32pi_mt32_available,mt32pi_mt32_available,mt32pi_mt32_available,mt32pi_mt32_available,mt32pi_mt32_available,mt32pi_mt32_available,mt32pi_mt32_available,mt32pi_mt32_available,mt32pi_mt32_available,mt32pi_mt32_available,mt32pi_mt32_available,mt32pi_mt32_available,mt32pi_mt32_available}),
        .Op2(hps_status_1_Res),
        .Res(hps_status_0_Res));
  Amiga_emu_util_vector_logic_0_27 hps_status_1
       (.Op1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mt32pi_mt32_rom}),
        .Op2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mt32pi_mt32_sf}),
        .Res(hps_status_1_Res));
  assign ilconstant_0_dout = 8'h08;
  assign ilconstant_1_dout = 1'h1;
  assign ilconstant_2_dout = 24'h000018;
  assign AUDIO_S = 1'h1;
  assign BUTTONS = 2'h2;
  assign FB_FORCE_BLANK = 1'h1;
  assign HDMI_FREEZE = 1'h1;
  assign VGA_DISABLE = 1'h1;
  Amiga_emu_util_vector_logic_0_3 input_l_comb
       (.Op1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,minimig_0_ldata_okk}),
        .Op2({1'b0,minimig_0_ldata}),
        .Res(input_l_comb_Res));
  Amiga_emu_util_vector_logic_0_4 input_r_comb
       (.Op1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,minimig_0_rdata_okk}),
        .Op2({1'b0,minimig_0_rdata}),
        .Res(input_r_comb_Res));
  Amiga_emu_util_vector_logic_0_12 led_disk_0
       (.Op1({minimig_0_hdd_led,minimig_0_hdd_led}),
        .Op2({fastchip_0_ide_led,fastchip_0_ide_led}),
        .Res(led_disk_0_Res));
  Amiga_emu_util_vector_logic_0_13 led_disk_1
       (.Op1(led_disk_0_Res[0]),
        .Op2(minimig_0_ide_fast),
        .Res(LED_DISK));
  Amiga_emu_IIR_filter_0_2 lpf3275_IIR_filter_0
       (.ce(1'b0),
        .clk(pll_hier_outclk1),
        .cx({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .cx0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .cx1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .cx2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .cy0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .cy1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .cy2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .input_l(output_comb_Res),
        .input_r(output_comb_Res),
        .output_l(lpf3275_IIR_filter_0_output_l),
        .output_r(lpf3275_IIR_filter_0_output_r),
        .reset(1'b0),
        .sample_ce(1'b0));
  Amiga_emu_IIR_filter_0_1 lpf4400_IIR_filter_0
       (.ce(ce_comb_Res),
        .clk(pll_hier_outclk1),
        .cx(xlconstant_0_dout),
        .cx0(ilconstant_0_dout),
        .cx1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .cx2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .cy0(ilconstant_2_dout),
        .cy1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .cy2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .input_l(input_l_comb_Res),
        .input_r(input_r_comb_Res),
        .output_l(lpf4400_IIR_filter_0_output_l),
        .output_r(lpf4400_IIR_filter_0_output_r),
        .reset(1'b0),
        .sample_ce(ilconstant_1_dout));
  Amiga_emu_minimig_0_0 minimig_0
       (.IO_DIN(hps_ext_0_io_din),
        .IO_DOUT(minimig_0_IO_DOUT),
        .IO_FPGA(hps_ext_0_io_fpga),
        .IO_STROBE(hps_ext_0_io_strobe),
        .IO_UIO(hps_ext_0_io_uio),
        .IO_WAIT(ioctl_wait_1),
        ._cpu_as(cpu_wrapper_0_chip_as),
        ._cpu_dtack(minimig_0__cpu_dtack),
        ._cpu_ipl(minimig_0__cpu_ipl),
        ._cpu_lds(cpu_wrapper_0_chip_lds),
        ._cpu_reset(minimig_0__cpu_reset),
        ._cpu_reset_in(cpu_wrapper_0_reset_out),
        ._cpu_uds(cpu_wrapper_0_chip_uds),
        ._hsync(HSync_1),
        ._joy1(hps_io_hier_joystick_0[15:0]),
        ._joy2(hps_io_hier_joystick_1[15:0]),
        ._joy3(hps_io_hier_joystick_2[15:0]),
        ._joy4(hps_io_hier_joystick_3[15:0]),
        ._ram_bhe(minimig_0__ram_bhe),
        ._ram_ble(minimig_0__ram_ble),
        ._ram_oe(minimig_0__ram_oe),
        ._ram_we(minimig_0__ram_we),
        ._vsync(VSync_1),
        .ar(ARX_1),
        .aud_mix(AUDIO_MIX),
        .blue(B_1),
        .bootrom(minimig_0_bootrom),
        .c1(amiga_clk_0_c1),
        .c3(amiga_clk_0_c3),
        .cachecfg(minimig_0_cachecfg),
        .cck(amiga_clk_0_cck),
        .cd(UART_DSR),
        .chip48(sdram_ctrl_0_ram1_chip48),
        .clk(pll_hier_outclk1),
        .clk7_en(amiga_clk_0_clk7_en),
        .clk7n_en(amiga_clk_0_clk7n_en),
        .cpu_address(cpu_wrapper_0_chip_addr),
        .cpu_data(minimig_0_cpu_data),
        .cpu_r_w(cpu_wrapper_0_chip_rw),
        .cpucfg(minimig_0_cpucfg),
        .cpudata_in(cpu_wrapper_0_chip_din),
        .cts(UART_CTS),
        .dsr(UART_DSR),
        .dtr(UART_DTR),
        .eclk(amiga_clk_0_eclk),
        .fdd_led(LED_USER),
        .field1(VGA_F1),
        .green(G_1),
        .hblank(HBlank_1),
        .hdd_led(minimig_0_hdd_led),
        .ide_address(hps_ext_0_ide_addr),
        .ide_ena(minimig_0_ide_ena),
        .ide_ext_irq(fastchip_0_ide_irq),
        .ide_fast(minimig_0_ide_fast),
        .ide_read(hps_ext_0_ide_rd),
        .ide_readdata(minimig_0_ide_readdata),
        .ide_req(minimig_0_ide_req),
        .ide_write(hps_ext_0_ide_wr),
        .ide_writedata(hps_ext_0_ide_dout),
        .joya1(hps_io_hier_joystick_l_analog_0),
        .joya2(hps_io_hier_joystick_l_analog_1),
        .kbd_mouse_data(hps_ext_0_kbd_mouse_data),
        .kbd_mouse_type(hps_ext_0_kbd_mouse_type),
        .kms_level(hps_ext_0_kbd_mouse_level),
        .lace(minimig_0_lace),
        .ldata(minimig_0_ldata),
        .ldata_okk(minimig_0_ldata_okk),
        .memcfg(minimig_0_memcfg),
        .mouse_btn(hps_ext_0_mouse_buttons),
        .nmi_addr(cpu_wrapper_0_nmi_addr),
        .ntsc(mgmt_address_1),
        .pwr_led(\^LED_POWER ),
        .ram_address(minimig_0_ram_address),
        .ram_data(minimig_0_ram_data),
        .ramdata_in(sdram_ctrl_0_ram1_chipRD),
        .rdata(minimig_0_rdata),
        .rdata_okk(minimig_0_rdata_okk),
        .red(R_1),
        .res(minimig_0_res),
        .ri(xlconstant_1_dout),
        .rst_ext(pll_reset_reg_Res),
        .rst_out(minimig_0_rst_out),
        .rtc(hps_io_hier_RTC),
        .rts(UART_RTS),
        .rxd(rxd_0_Res),
        .scanline(VGA_SL),
        .toccata_aud_left(minimig_0_toccata_aud_left),
        .toccata_aud_right(minimig_0_toccata_aud_right),
        .toccata_base(cpu_wrapper_0_toccata_base),
        .toccata_ena(cpu_wrapper_0_toccata_ena),
        .txd(UART_TXD),
        .vblank(minimig_0_vblank));
  mt32pi_imp_1AXNY0H mt32pi
       (.CE_PIXEL(1'b0),
        .CLK_AUDIO(CLK_AUDIO),
        .CLK_VIDEO(CLK_VIDEO),
        .USER_IN(USER_IN),
        .USER_OUT(USER_OUT),
        .VGA_DE(VGA_DE),
        .VGA_VS(VGA_VS),
        .midi_rx(mt32pi_midi_rx),
        .midi_tx(hps_io_hier_status[0]),
        .mt32_available(mt32pi_mt32_available),
        .mt32_i2s_l(mt32pi_mt32_i2s_l),
        .mt32_i2s_r(mt32pi_mt32_i2s_r),
        .mt32_lcd_en(mt32pi_mt32_lcd_en),
        .mt32_lcd_pix(mt32pi_mt32_lcd_pix),
        .mt32_lcd_update(mt32pi_mt32_lcd_update),
        .mt32_mode(info_1),
        .mt32_mode_req(hps_io_hier_status[0]),
        .mt32_newmode(info_req_1),
        .mt32_rom(mt32pi_mt32_rom),
        .mt32_rom_req(hps_io_hier_status[1:0]),
        .mt32_sf(mt32pi_mt32_sf),
        .mt32_sf_req(hps_io_hier_status[7:0]),
        .reset(pll_reset_reg_Res));
  Amiga_emu_util_vector_logic_0_8 output2_l_comb
       (.Op1(output_comb_Res),
        .Op2(lpf3275_IIR_filter_0_output_l),
        .Res(output2_l_comb_Res));
  Amiga_emu_util_vector_logic_0_9 output2_r_comb
       (.Op1(output_comb_Res),
        .Op2(lpf3275_IIR_filter_0_output_r),
        .Res(output2_r_comb_Res));
  Amiga_emu_util_vector_logic_0_7 output_comb
       (.Op1(output_l_comb_Res),
        .Op2(output_r_comb_Res),
        .Res(output_comb_Res));
  Amiga_emu_util_vector_logic_0_5 output_l_comb
       (.Op1(lpf4400_IIR_filter_0_output_l),
        .Op2(input_l_comb_Res),
        .Res(output_l_comb_Res));
  Amiga_emu_util_vector_logic_0_6 output_r_comb
       (.Op1(lpf4400_IIR_filter_0_output_r),
        .Op2(input_r_comb_Res),
        .Res(output_r_comb_Res));
  pll_cfg_hier_imp_4S00OK pll_cfg_hier
       (.mgmt_address({mgmt_address_1,mgmt_address_1,mgmt_address_1,mgmt_address_1,mgmt_address_1,mgmt_address_1}),
        .mgmt_byteenable({1'b0,1'b0,1'b0,1'b0}),
        .mgmt_clk(CLK_50M),
        .mgmt_read(1'b0),
        .mgmt_reset(1'b0),
        .mgmt_write(1'b0),
        .mgmt_writedata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .reconfig_from_pll(pll_hier_reconfig_from_pll),
        .reconfig_to_pll(pll_cfg_hier_reconfig_to_pll));
  pll_hier_imp_VPWFO1 pll_hier
       (.locked(pll_hier_locked),
        .outclk0(CLK_VIDEO),
        .outclk1(pll_hier_outclk1),
        .reconfig_from_pll(pll_hier_reconfig_from_pll),
        .reconfig_to_pll(pll_cfg_hier_reconfig_to_pll),
        .refclk(CLK_50M),
        .reset(1'b0));
  Amiga_emu_util_vector_logic_0_0 pll_reset_reg
       (.Op1(pll_reset_reg_2_Res),
        .Op2(pll_hier_locked),
        .Res(pll_reset_reg_Res));
  Amiga_emu_util_vector_logic_0_1 pll_reset_reg_2
       (.Op1(RESET),
        .Op2(hps_io_hier_buttons[0]),
        .Res(pll_reset_reg_2_Res));
  Amiga_emu_util_vector_logic_0_22 rxd_0
       (.Op1(mt32pi_midi_rx),
        .Op2(rxd_1_Res),
        .Res(rxd_0_Res));
  Amiga_emu_util_vector_logic_0_23 rxd_1
       (.Op1(hps_io_hier_uart_mode[0]),
        .Op2(UART_RXD),
        .Res(rxd_1_Res));
  Amiga_emu_sdram_ctrl_0_0 sdram_ctrl_0_ram1
       (.c_7m(amiga_clk_0_c1),
        .cache_inhibit(1'b0),
        .cache_rst(minimig_0__cpu_reset),
        .chip48(sdram_ctrl_0_ram1_chip48),
        .chipAddr({1'b0,minimig_0_ram_address}),
        .chipDMA(minimig_0__ram_oe),
        .chipL(minimig_0__ram_ble),
        .chipRD(sdram_ctrl_0_ram1_chipRD),
        .chipRW(minimig_0__ram_we),
        .chipU(minimig_0__ram_bhe),
        .chipWR(minimig_0_ram_data),
        .cpuAddr(cpu_wrapper_0_ramaddr[24:1]),
        .cpuCS(cpu_wrapper_0_ramaddr[1]),
        .cpuL(cpu_wrapper_0_ramlds),
        .cpuRD(sdram_ctrl_0_ram1_cpuRD),
        .cpuU(cpu_wrapper_0_ramuds),
        .cpuWR(cpu_wrapper_0_ramdin),
        .cpu_cache_ctrl(cpu_wrapper_0_cacr),
        .cpustate(cpu_wrapper_0_cpustate),
        .ramready(sdram_ctrl_0_ram1_ramready),
        .reset_n(pll_reset_reg_Res),
        .sd_addr(SDRAM_A),
        .sd_ba(SDRAM_BA),
        .sd_cas(SDRAM2_nCAS),
        .sd_cke(SDRAM_CKE),
        .sd_clk(SDRAM_CLK),
        .sd_cs(SDRAM_nCS),
        .sd_data(SDRAM_DQ),
        .sd_dqm(SDRAM_DQML),
        .sd_ras(SDRAM_nRAS),
        .sd_we(SDRAM_nWE),
        .sysclk(CLK_VIDEO));
  Amiga_emu_util_vector_logic_0_28 vga_b_comb_0
       (.Op1(video_mixer_VGA_B),
        .Op2(vga_comb_2_Res),
        .Res(VGA_B));
  Amiga_emu_util_vector_logic_0_31 vga_comb_1
       (.Op1({mt32pi_mt32_lcd_en,mt32pi_mt32_lcd_en,mt32pi_mt32_lcd_en,mt32pi_mt32_lcd_en,mt32pi_mt32_lcd_en,mt32pi_mt32_lcd_en,mt32pi_mt32_lcd_en,mt32pi_mt32_lcd_en}),
        .Op2({mt32pi_mt32_lcd_pix,mt32pi_mt32_lcd_pix,mt32pi_mt32_lcd_pix,mt32pi_mt32_lcd_pix,mt32pi_mt32_lcd_pix,mt32pi_mt32_lcd_pix,mt32pi_mt32_lcd_pix,mt32pi_mt32_lcd_pix}),
        .Res(vga_comb_1_Res));
  Amiga_emu_util_vector_logic_0_32 vga_comb_2
       (.Op1(vga_comb_1_Res),
        .Op2({mt32pi_mt32_lcd_update,mt32pi_mt32_lcd_update,mt32pi_mt32_lcd_update,mt32pi_mt32_lcd_update,mt32pi_mt32_lcd_update,mt32pi_mt32_lcd_update,mt32pi_mt32_lcd_update,mt32pi_mt32_lcd_update}),
        .Res(vga_comb_2_Res));
  Amiga_emu_util_vector_logic_0_29 vga_g_omb_0
       (.Op1(video_mixer_VGA_G),
        .Op2(vga_comb_2_Res),
        .Res(VGA_G));
  Amiga_emu_util_vector_logic_0_30 vga_r_comb_0
       (.Op1(video_mixer_VGA_R),
        .Op2(vga_comb_2_Res),
        .Res(VGA_R));
  video_freak_imp_1IL1XB5 video_freak
       (.ARX(ARX_1),
        .ARY(ARX_1),
        .CE_PIXEL(CE_PIXEL),
        .CLK_VIDEO(CLK_VIDEO),
        .CROP_OFF({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CROP_SIZE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .HDMI_HEIGHT(HDMI_HEIGHT),
        .HDMI_WIDTH(HDMI_WIDTH),
        .SCALE(hps_io_hier_status[2:0]),
        .VGA_DE_IN(VGA_DE),
        .VGA_VS(VGA_VS),
        .VIDEO_ARX(VIDEO_ARX),
        .VIDEO_ARY(VIDEO_ARY));
  video_mixer_imp_9BLUIV video_mixer
       (.B(B_1),
        .CE_PIXEL(CE_PIXEL),
        .CLK_VIDEO(CLK_VIDEO),
        .G(G_1),
        .HBlank(HBlank_1),
        .HDMI_FREEZE(xlconstant_2_dout),
        .HSync(HSync_1),
        .R(R_1),
        .VBlank(vm_vblank2_Res),
        .VGA_B(video_mixer_VGA_B),
        .VGA_DE(VGA_DE),
        .VGA_G(video_mixer_VGA_G),
        .VGA_HS(VGA_HS),
        .VGA_R(video_mixer_VGA_R),
        .VGA_VS(VGA_VS),
        .VSync(VSync_1),
        .ce_pix(1'b0),
        .hq2x(1'b0),
        .scandoubler(hps_io_hier_forced_scandoubler));
  Amiga_emu_util_vector_logic_0_10 vm_vblank
       (.Op1(VGA_F1),
        .Op2(minimig_0_lace),
        .Res(vm_vblank_Res));
  Amiga_emu_util_vector_logic_0_11 vm_vblank2
       (.Op1(minimig_0_vblank),
        .Op2(vm_vblank_Res),
        .Res(vm_vblank2_Res));
  Amiga_emu_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  Amiga_emu_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  Amiga_emu_xlconstant_2_0 xlconstant_2
       (.dout(xlconstant_2_dout));
endmodule

module video_freak_imp_1IL1XB5
   (ARX,
    ARY,
    CE_PIXEL,
    CLK_VIDEO,
    CROP_OFF,
    CROP_SIZE,
    HDMI_HEIGHT,
    HDMI_WIDTH,
    SCALE,
    VGA_DE,
    VGA_DE_IN,
    VGA_VS,
    VIDEO_ARX,
    VIDEO_ARY);
  input [1:0]ARX;
  input [1:0]ARY;
  input CE_PIXEL;
  input CLK_VIDEO;
  input [4:0]CROP_OFF;
  input [11:0]CROP_SIZE;
  input [11:0]HDMI_HEIGHT;
  input [11:0]HDMI_WIDTH;
  input [2:0]SCALE;
  output VGA_DE;
  input VGA_DE_IN;
  input VGA_VS;
  output [12:0]VIDEO_ARX;
  output [12:0]VIDEO_ARY;

  wire [1:0]ARX;
  wire [1:0]ARY;
  wire CLK_VIDEO;
  wire [11:0]HDMI_HEIGHT;
  wire [11:0]HDMI_WIDTH;
  wire [2:0]SCALE;
  wire [12:0]VIDEO_ARX;
  wire [12:0]VIDEO_ARY;

  video_scale_imp_1ETXQCK video_scale
       (.CLK_VIDEO(CLK_VIDEO),
        .HDMI_HEIGHT(HDMI_HEIGHT),
        .HDMI_WIDTH(HDMI_WIDTH),
        .SCALE(SCALE),
        .arx_i(ARX),
        .arx_o(VIDEO_ARX),
        .ary_i(ARY),
        .ary_o(VIDEO_ARY),
        .hsize({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .vsize({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module video_mixer_imp_9BLUIV
   (B,
    CE_PIXEL,
    CLK_VIDEO,
    G,
    HBlank,
    HDMI_FREEZE,
    HSync,
    R,
    VBlank,
    VGA_B,
    VGA_DE,
    VGA_G,
    VGA_HS,
    VGA_R,
    VGA_VS,
    VSync,
    ce_pix,
    freeze_sync,
    gamma_bus,
    hq2x,
    scandoubler);
  input [7:0]B;
  output CE_PIXEL;
  input CLK_VIDEO;
  input [7:0]G;
  input HBlank;
  input HDMI_FREEZE;
  input HSync;
  input [7:0]R;
  input VBlank;
  output [7:0]VGA_B;
  output VGA_DE;
  output [7:0]VGA_G;
  output VGA_HS;
  output [7:0]VGA_R;
  output VGA_VS;
  input VSync;
  input ce_pix;
  output freeze_sync;
  inout [21:0]gamma_bus;
  input hq2x;
  input scandoubler;

  wire CLK_VIDEO;
  wire HBlank;
  wire HDMI_FREEZE;
  wire HSync;
  wire VBlank;
  wire VSync;
  wire ce_pix;
  wire freeze_sync;
  wire [21:0]gamma_bus;
  wire gamma_corr_HBlank_out;
  wire gamma_corr_HSync_out;
  wire [23:0]gamma_corr_RGB_out;
  wire gamma_corr_VBlank_out;
  wire gamma_corr_VSync_out;
  wire hq2x;
  wire video_freezer_hbl_out;
  wire video_freezer_hs_out;
  wire video_freezer_vbl_out;
  wire video_freezer_vs_out;

  gamma_bus_imp_QSHGF3 gamma_bus_RnM
       (.gamma_bus(gamma_bus));
  gamma_corr_imp_7KOONB gamma_corr
       (.HBlank(video_freezer_hbl_out),
        .HBlank_out(gamma_corr_HBlank_out),
        .HSync(video_freezer_hs_out),
        .HSync_out(gamma_corr_HSync_out),
        .RGB_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RGB_out(gamma_corr_RGB_out),
        .VBlank(video_freezer_vbl_out),
        .VBlank_out(gamma_corr_VBlank_out),
        .VSync(video_freezer_vs_out),
        .VSync_out(gamma_corr_VSync_out),
        .ce_pix(ce_pix),
        .clk_vid(CLK_VIDEO));
  scadoubler_imp_VYRPRC scadoubler
       (.b_in(gamma_corr_RGB_out[7:0]),
        .ce_pix(ce_pix),
        .clk_vid(CLK_VIDEO),
        .g_in(gamma_corr_RGB_out[7:0]),
        .hb_in(gamma_corr_HBlank_out),
        .hq2x(hq2x),
        .hs_in(gamma_corr_HSync_out),
        .r_in(gamma_corr_RGB_out[7:0]),
        .vb_in(gamma_corr_VBlank_out),
        .vs_in(gamma_corr_VSync_out));
  video_freezer_imp_SQFY7O video_freezer
       (.clk(CLK_VIDEO),
        .freeze(HDMI_FREEZE),
        .hbl_in(HBlank),
        .hbl_out(video_freezer_hbl_out),
        .hs_in(HSync),
        .hs_out(video_freezer_hs_out),
        .sync(freeze_sync),
        .vbl_in(VBlank),
        .vbl_out(video_freezer_vbl_out),
        .vs_in(VSync),
        .vs_out(video_freezer_vs_out));
endmodule
