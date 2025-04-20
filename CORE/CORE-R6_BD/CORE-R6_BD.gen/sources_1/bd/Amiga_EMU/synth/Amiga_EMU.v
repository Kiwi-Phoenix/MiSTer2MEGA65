//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
//Date        : Sun Mar  9 11:44:51 2025
//Host        : Retro-PC running 64-bit major release  (build 9200)
//Command     : generate_target Amiga_EMU.bd
//Design      : Amiga_EMU
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "Amiga_EMU,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Amiga_EMU,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=0,numReposBlks=0,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "Amiga_EMU.hwdef" *) 
module Amiga_EMU
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
    VGA_SCALER,
    VGA_SL,
    VGA_VS,
    VIDEO_ARX,
    VIDEO_ARY,
    VIDEO_R);
  inout [3:0]ADC_BUS;
  output [15:0]AUDIO_L;
  output [1:0]AUDIO_MIX;
  output [15:0]AUDIO_R;
  output AUDIO_S;
  output [1:0]BUTTONS;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CE_PIXEL CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CE_PIXEL, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output CE_PIXEL;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_50M CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_50M, CLK_DOMAIN Amiga_EMU_CLK_50M, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input CLK_50M;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_AUDIO CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_AUDIO, CLK_DOMAIN Amiga_EMU_CLK_AUDIO, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input CLK_AUDIO;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_VIDEO CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_VIDEO, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output CLK_VIDEO;
  output [28:0]DDRAM_ADDR;
  output [7:0]DDRAM_BE;
  output [7:0]DDRAM_BURSTCNT;
  input DDRAM_BUSY;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DDRAM_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DDRAM_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output DDRAM_CLK;
  output [63:0]DDRAM_DIN;
  output [63:0]DDRAM_DOUT;
  input DDRAM_DOUT_READY;
  output DDRAM_RD;
  output DDRAM_WE;
  output [31:0]FB_BASE;
  output FB_EN;
  output FB_FORCE_BLANK;
  output [4:0]FB_FORMAT;
  output [11:0]FB_HEIGHT;
  input FB_LL;
  output [7:0]FB_PAL_ADDR;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.FB_PAL_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.FB_PAL_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output FB_PAL_CLK;
  input [23:0]FB_PAL_DIN;
  output [23:0]FB_PAL_DOUT;
  output FB_PAL_WR;
  output [13:0]FB_STRIDE;
  input FB_VBL;
  output [11:0]FB_WIDTH;
  output HDMI_FREEZE;
  input [11:0]HDMI_HEIGHT;
  input [11:0]HDMI_WIDTH;
  inout [48:0]HPS_BUS;
  output [1:0]LED_DISK;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SDRAM_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SDRAM_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output SDRAM_CLK;
  inout [15:0]SDRAM_DQ;
  output SDRAM_DQMH;
  output SDRAM_DQML;
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
  output VGA_DISABLE;
  output VGA_F1;
  output [7:0]VGA_G;
  output VGA_HS;
  output VGA_SCALER;
  output [1:0]VGA_SL;
  output VGA_VS;
  output [12:0]VIDEO_ARX;
  output [12:0]VIDEO_ARY;
  output [7:0]VIDEO_R;


endmodule
