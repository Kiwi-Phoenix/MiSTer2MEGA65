//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
//Date        : Sun Mar 16 14:32:24 2025
//Host        : Retro-PC running 64-bit major release  (build 9200)
//Command     : generate_target Amiga_emu_wrapper.bd
//Design      : Amiga_emu_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module Amiga_emu_wrapper
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
  input CLK_50M;
  input CLK_AUDIO;
  output CLK_VIDEO;
  output [28:0]DDRAM_ADDR;
  output [7:0]DDRAM_BE;
  output [7:0]DDRAM_BURSTCNT;
  input DDRAM_BUSY;
  output DDRAM_CLK;
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
  output FB_PAL_CLK;
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
  input RESET;
  output [12:0]SDRAM2_A;
  output [1:0]SDRAM2_BA;
  output SDRAM2_CLK;
  inout [15:0]SDRAM2_DQ;
  input SDRAM2_EN;
  output SDRAM2_nCAS;
  output SDRAM2_nCS;
  output SDRAM2_nRAS;
  output SDRAM2_nWE;
  output [12:0]SDRAM_A;
  output [1:0]SDRAM_BA;
  output SDRAM_CKE;
  output SDRAM_CLK;
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

  wire [3:0]ADC_BUS;
  wire [15:0]AUDIO_L;
  wire [1:0]AUDIO_MIX;
  wire [15:0]AUDIO_R;
  wire [0:0]AUDIO_S;
  wire [1:0]BUTTONS;
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
  wire FB_LL;
  wire [7:0]FB_PAL_ADDR;
  wire FB_PAL_CLK;
  wire [23:0]FB_PAL_DIN;
  wire [23:0]FB_PAL_DOUT;
  wire FB_PAL_WR;
  wire [13:0]FB_STRIDE;
  wire FB_VBL;
  wire [11:0]FB_WIDTH;
  wire [0:0]HDMI_FREEZE;
  wire [11:0]HDMI_HEIGHT;
  wire [11:0]HDMI_WIDTH;
  wire [48:0]HPS_BUS;
  wire [0:0]LED_DISK;
  wire [1:0]LED_POWER;
  wire LED_USER;
  wire OSD_STATUS;
  wire RESET;
  wire [12:0]SDRAM2_A;
  wire [1:0]SDRAM2_BA;
  wire SDRAM2_CLK;
  wire [15:0]SDRAM2_DQ;
  wire SDRAM2_EN;
  wire SDRAM2_nCAS;
  wire SDRAM2_nCS;
  wire SDRAM2_nRAS;
  wire SDRAM2_nWE;
  wire [12:0]SDRAM_A;
  wire [1:0]SDRAM_BA;
  wire SDRAM_CKE;
  wire SDRAM_CLK;
  wire [15:0]SDRAM_DQ;
  wire [1:0]SDRAM_DQMH;
  wire [1:0]SDRAM_DQML;
  wire SDRAM_nCAS;
  wire SDRAM_nCS;
  wire SDRAM_nRAS;
  wire SDRAM_nWE;
  wire SD_CD;
  wire SD_CS;
  wire SD_MISO;
  wire SD_MOSI;
  wire SD_SCK;
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
  wire VGA_SCALER;
  wire [2:0]VGA_SL;
  wire VGA_VS;
  wire [12:0]VIDEO_ARX;
  wire [12:0]VIDEO_ARY;

  Amiga_emu Amiga_emu_i
       (.ADC_BUS(ADC_BUS),
        .AUDIO_L(AUDIO_L),
        .AUDIO_MIX(AUDIO_MIX),
        .AUDIO_R(AUDIO_R),
        .AUDIO_S(AUDIO_S),
        .BUTTONS(BUTTONS),
        .CE_PIXEL(CE_PIXEL),
        .CLK_50M(CLK_50M),
        .CLK_AUDIO(CLK_AUDIO),
        .CLK_VIDEO(CLK_VIDEO),
        .DDRAM_ADDR(DDRAM_ADDR),
        .DDRAM_BE(DDRAM_BE),
        .DDRAM_BURSTCNT(DDRAM_BURSTCNT),
        .DDRAM_BUSY(DDRAM_BUSY),
        .DDRAM_CLK(DDRAM_CLK),
        .DDRAM_DIN(DDRAM_DIN),
        .DDRAM_DOUT(DDRAM_DOUT),
        .DDRAM_DOUT_READY(DDRAM_DOUT_READY),
        .DDRAM_RD(DDRAM_RD),
        .DDRAM_WE(DDRAM_WE),
        .FB_BASE(FB_BASE),
        .FB_EN(FB_EN),
        .FB_FORCE_BLANK(FB_FORCE_BLANK),
        .FB_FORMAT(FB_FORMAT),
        .FB_HEIGHT(FB_HEIGHT),
        .FB_LL(FB_LL),
        .FB_PAL_ADDR(FB_PAL_ADDR),
        .FB_PAL_CLK(FB_PAL_CLK),
        .FB_PAL_DIN(FB_PAL_DIN),
        .FB_PAL_DOUT(FB_PAL_DOUT),
        .FB_PAL_WR(FB_PAL_WR),
        .FB_STRIDE(FB_STRIDE),
        .FB_VBL(FB_VBL),
        .FB_WIDTH(FB_WIDTH),
        .HDMI_FREEZE(HDMI_FREEZE),
        .HDMI_HEIGHT(HDMI_HEIGHT),
        .HDMI_WIDTH(HDMI_WIDTH),
        .HPS_BUS(HPS_BUS),
        .LED_DISK(LED_DISK),
        .LED_POWER(LED_POWER),
        .LED_USER(LED_USER),
        .OSD_STATUS(OSD_STATUS),
        .RESET(RESET),
        .SDRAM2_A(SDRAM2_A),
        .SDRAM2_BA(SDRAM2_BA),
        .SDRAM2_CLK(SDRAM2_CLK),
        .SDRAM2_DQ(SDRAM2_DQ),
        .SDRAM2_EN(SDRAM2_EN),
        .SDRAM2_nCAS(SDRAM2_nCAS),
        .SDRAM2_nCS(SDRAM2_nCS),
        .SDRAM2_nRAS(SDRAM2_nRAS),
        .SDRAM2_nWE(SDRAM2_nWE),
        .SDRAM_A(SDRAM_A),
        .SDRAM_BA(SDRAM_BA),
        .SDRAM_CKE(SDRAM_CKE),
        .SDRAM_CLK(SDRAM_CLK),
        .SDRAM_DQ(SDRAM_DQ),
        .SDRAM_DQMH(SDRAM_DQMH),
        .SDRAM_DQML(SDRAM_DQML),
        .SDRAM_nCAS(SDRAM_nCAS),
        .SDRAM_nCS(SDRAM_nCS),
        .SDRAM_nRAS(SDRAM_nRAS),
        .SDRAM_nWE(SDRAM_nWE),
        .SD_CD(SD_CD),
        .SD_CS(SD_CS),
        .SD_MISO(SD_MISO),
        .SD_MOSI(SD_MOSI),
        .SD_SCK(SD_SCK),
        .UART_CTS(UART_CTS),
        .UART_DSR(UART_DSR),
        .UART_DTR(UART_DTR),
        .UART_RTS(UART_RTS),
        .UART_RXD(UART_RXD),
        .UART_TXD(UART_TXD),
        .USER_IN(USER_IN),
        .USER_OUT(USER_OUT),
        .VGA_B(VGA_B),
        .VGA_DE(VGA_DE),
        .VGA_DISABLE(VGA_DISABLE),
        .VGA_F1(VGA_F1),
        .VGA_G(VGA_G),
        .VGA_HS(VGA_HS),
        .VGA_R(VGA_R),
        .VGA_SCALER(VGA_SCALER),
        .VGA_SL(VGA_SL),
        .VGA_VS(VGA_VS),
        .VIDEO_ARX(VIDEO_ARX),
        .VIDEO_ARY(VIDEO_ARY));
endmodule
