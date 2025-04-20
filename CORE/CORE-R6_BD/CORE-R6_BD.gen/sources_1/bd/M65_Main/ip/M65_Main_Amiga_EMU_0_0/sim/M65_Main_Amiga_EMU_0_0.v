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


// IP VLNV: xilinx.com:user:Amiga_EMU:1.0
// IP Revision: 2

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "IPI" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module M65_Main_Amiga_EMU_0_0 (
  ADC_BUS,
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
  VIDEO_R
);

inout wire [3 : 0] ADC_BUS;
output wire [15 : 0] AUDIO_L;
output wire [1 : 0] AUDIO_MIX;
output wire [15 : 0] AUDIO_R;
output wire AUDIO_S;
output wire [1 : 0] BUTTONS;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CE_PIXEL CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CE_PIXEL, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN M65_Main_Amiga_EMU_0_0_CE_PIXEL, INSERT_VIP 0" *)
output wire CE_PIXEL;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_50M CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_50M, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN M65_Main_clk_main_speed_i, INSERT_VIP 0" *)
input wire CLK_50M;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_AUDIO CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_AUDIO, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN M65_Main_clk_main_i, INSERT_VIP 0" *)
input wire CLK_AUDIO;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_VIDEO CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_VIDEO, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN M65_Main_Amiga_EMU_0_0_CLK_VIDEO, INSERT_VIP 0" *)
output wire CLK_VIDEO;
output wire [28 : 0] DDRAM_ADDR;
output wire [7 : 0] DDRAM_BE;
output wire [7 : 0] DDRAM_BURSTCNT;
input wire DDRAM_BUSY;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DDRAM_CLK CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DDRAM_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN M65_Main_Amiga_EMU_0_0_DDRAM_CLK, INSERT_VIP 0" *)
output wire DDRAM_CLK;
output wire [63 : 0] DDRAM_DIN;
output wire [63 : 0] DDRAM_DOUT;
input wire DDRAM_DOUT_READY;
output wire DDRAM_RD;
output wire DDRAM_WE;
output wire [31 : 0] FB_BASE;
output wire FB_EN;
output wire FB_FORCE_BLANK;
output wire [4 : 0] FB_FORMAT;
output wire [11 : 0] FB_HEIGHT;
input wire FB_LL;
output wire [7 : 0] FB_PAL_ADDR;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.FB_PAL_CLK CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.FB_PAL_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN M65_Main_Amiga_EMU_0_0_FB_PAL_CLK, INSERT_VIP 0" *)
output wire FB_PAL_CLK;
input wire [23 : 0] FB_PAL_DIN;
output wire [23 : 0] FB_PAL_DOUT;
output wire FB_PAL_WR;
output wire [13 : 0] FB_STRIDE;
input wire FB_VBL;
output wire [11 : 0] FB_WIDTH;
output wire HDMI_FREEZE;
input wire [11 : 0] HDMI_HEIGHT;
input wire [11 : 0] HDMI_WIDTH;
inout wire [48 : 0] HPS_BUS;
output wire [1 : 0] LED_DISK;
output wire [1 : 0] LED_POWER;
output wire LED_USER;
input wire OSD_STATUS;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
input wire RESET;
output wire [12 : 0] SDRAM2_A;
output wire [1 : 0] SDRAM2_BA;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SDRAM2_CLK CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SDRAM2_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN M65_Main_Amiga_EMU_0_0_SDRAM2_CLK, INSERT_VIP 0" *)
output wire SDRAM2_CLK;
inout wire [15 : 0] SDRAM2_DQ;
input wire SDRAM2_EN;
output wire SDRAM2_nCAS;
output wire SDRAM2_nCS;
output wire SDRAM2_nRAS;
output wire SDRAM2_nWE;
output wire [12 : 0] SDRAM_A;
output wire [1 : 0] SDRAM_BA;
output wire SDRAM_CKE;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SDRAM_CLK CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SDRAM_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN M65_Main_Amiga_EMU_0_0_SDRAM_CLK, INSERT_VIP 0" *)
output wire SDRAM_CLK;
inout wire [15 : 0] SDRAM_DQ;
output wire SDRAM_DQMH;
output wire SDRAM_DQML;
output wire SDRAM_nCAS;
output wire SDRAM_nCS;
output wire SDRAM_nRAS;
output wire SDRAM_nWE;
input wire SD_CD;
output wire SD_CS;
input wire SD_MISO;
output wire SD_MOSI;
output wire SD_SCK;
input wire UART_CTS;
input wire UART_DSR;
output wire UART_DTR;
output wire UART_RTS;
input wire UART_RXD;
output wire UART_TXD;
input wire [6 : 0] USER_IN;
output wire [6 : 0] USER_OUT;
output wire [7 : 0] VGA_B;
output wire VGA_DE;
output wire VGA_DISABLE;
output wire VGA_F1;
output wire [7 : 0] VGA_G;
output wire VGA_HS;
output wire VGA_SCALER;
output wire [1 : 0] VGA_SL;
output wire VGA_VS;
output wire [12 : 0] VIDEO_ARX;
output wire [12 : 0] VIDEO_ARY;
output wire [7 : 0] VIDEO_R;

  Amiga_EMU inst (
    .ADC_BUS(ADC_BUS),
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
    .VGA_SCALER(VGA_SCALER),
    .VGA_SL(VGA_SL),
    .VGA_VS(VGA_VS),
    .VIDEO_ARX(VIDEO_ARX),
    .VIDEO_ARY(VIDEO_ARY),
    .VIDEO_R(VIDEO_R)
  );
endmodule
