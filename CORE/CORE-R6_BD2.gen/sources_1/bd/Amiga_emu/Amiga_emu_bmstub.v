// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module Amiga_emu (
  CLK_50M,
  RESET,
  HPS_BUS,
  CLK_VIDEO,
  CE_PIXEL,
  VIDEO_ARX,
  VIDEO_ARY,
  VGA_R,
  VGA_G,
  VGA_B,
  VGA_HS,
  VGA_VS,
  VGA_DE,
  VGA_F1,
  VGA_SL,
  VGA_SCALER,
  VGA_DISABLE,
  HDMI_WIDTH,
  HDMI_HEIGHT,
  HDMI_FREEZE,
  FB_EN,
  FB_FORMAT,
  FB_WIDTH,
  FB_HEIGHT,
  FB_BASE,
  FB_STRIDE,
  FB_VBL,
  FB_LL,
  FB_FORCE_BLANK,
  FB_PAL_CLK,
  FB_PAL_ADDR,
  FB_PAL_DOUT,
  FB_PAL_DIN,
  FB_PAL_WR,
  LED_USER,
  LED_POWER,
  LED_DISK,
  BUTTONS,
  CLK_AUDIO,
  AUDIO_L,
  AUDIO_R,
  AUDIO_S,
  AUDIO_MIX,
  ADC_BUS,
  SD_SCK,
  SD_MOSI,
  SD_MISO,
  SD_CS,
  SD_CD,
  DDRAM_CLK,
  DDRAM_BUSY,
  DDRAM_BURSTCNT,
  DDRAM_ADDR,
  DDRAM_DOUT,
  DDRAM_DOUT_READY,
  DDRAM_RD,
  DDRAM_DIN,
  DDRAM_BE,
  DDRAM_WE,
  SDRAM_CLK,
  SDRAM_CKE,
  SDRAM_A,
  SDRAM_BA,
  SDRAM_DQ,
  SDRAM_DQML,
  SDRAM_DQMH,
  SDRAM_nCS,
  SDRAM_nCAS,
  SDRAM_nRAS,
  SDRAM_nWE,
  SDRAM2_EN,
  SDRAM2_CLK,
  SDRAM2_A,
  SDRAM2_BA,
  SDRAM2_DQ,
  SDRAM2_nCS,
  SDRAM2_nCAS,
  SDRAM2_nRAS,
  SDRAM2_nWE,
  UART_CTS,
  UART_RTS,
  UART_RXD,
  UART_TXD,
  UART_DTR,
  UART_DSR,
  USER_IN,
  USER_OUT,
  OSD_STATUS
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_50M CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLK_50M" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_50M, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Amiga_emu_CLK_50M, INSERT_VIP 0" *)
  input CLK_50M;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *)
  (* X_INTERFACE_MODE = "slave RST.RESET" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  input RESET;
  (* X_INTERFACE_IGNORE = "true" *)
  inout [48:0]HPS_BUS;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_VIDEO CLK" *)
  (* X_INTERFACE_MODE = "master CLK.CLK_VIDEO" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_VIDEO, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
  output CLK_VIDEO;
  (* X_INTERFACE_IGNORE = "true" *)
  output CE_PIXEL;
  (* X_INTERFACE_IGNORE = "true" *)
  output [12:0]VIDEO_ARX;
  (* X_INTERFACE_IGNORE = "true" *)
  output [12:0]VIDEO_ARY;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]VGA_R;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]VGA_G;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]VGA_B;
  (* X_INTERFACE_IGNORE = "true" *)
  output VGA_HS;
  (* X_INTERFACE_IGNORE = "true" *)
  output VGA_VS;
  (* X_INTERFACE_IGNORE = "true" *)
  output VGA_DE;
  (* X_INTERFACE_IGNORE = "true" *)
  output VGA_F1;
  (* X_INTERFACE_IGNORE = "true" *)
  output [2:0]VGA_SL;
  (* X_INTERFACE_IGNORE = "true" *)
  output VGA_SCALER;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]VGA_DISABLE;
  (* X_INTERFACE_IGNORE = "true" *)
  input [11:0]HDMI_WIDTH;
  (* X_INTERFACE_IGNORE = "true" *)
  input [11:0]HDMI_HEIGHT;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]HDMI_FREEZE;
  (* X_INTERFACE_IGNORE = "true" *)
  output FB_EN;
  (* X_INTERFACE_IGNORE = "true" *)
  output [4:0]FB_FORMAT;
  (* X_INTERFACE_IGNORE = "true" *)
  output [11:0]FB_WIDTH;
  (* X_INTERFACE_IGNORE = "true" *)
  output [11:0]FB_HEIGHT;
  (* X_INTERFACE_IGNORE = "true" *)
  output [31:0]FB_BASE;
  (* X_INTERFACE_IGNORE = "true" *)
  output [13:0]FB_STRIDE;
  (* X_INTERFACE_IGNORE = "true" *)
  input FB_VBL;
  (* X_INTERFACE_IGNORE = "true" *)
  input FB_LL;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]FB_FORCE_BLANK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.FB_PAL_CLK CLK" *)
  (* X_INTERFACE_MODE = "master CLK.FB_PAL_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.FB_PAL_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Amiga_emu_fastchip_0_0_rtg_pal_clk, INSERT_VIP 0" *)
  output FB_PAL_CLK;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]FB_PAL_ADDR;
  (* X_INTERFACE_IGNORE = "true" *)
  output [23:0]FB_PAL_DOUT;
  (* X_INTERFACE_IGNORE = "true" *)
  input [23:0]FB_PAL_DIN;
  (* X_INTERFACE_IGNORE = "true" *)
  output FB_PAL_WR;
  (* X_INTERFACE_IGNORE = "true" *)
  output LED_USER;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]LED_POWER;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]LED_DISK;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]BUTTONS;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_AUDIO CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLK_AUDIO" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_AUDIO, FREQ_HZ 24576000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Amiga_emu_CLK_AUDIO, INSERT_VIP 0" *)
  input CLK_AUDIO;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]AUDIO_L;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]AUDIO_R;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]AUDIO_S;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]AUDIO_MIX;
  (* X_INTERFACE_IGNORE = "true" *)
  inout [3:0]ADC_BUS;
  (* X_INTERFACE_IGNORE = "true" *)
  output SD_SCK;
  (* X_INTERFACE_IGNORE = "true" *)
  output SD_MOSI;
  (* X_INTERFACE_IGNORE = "true" *)
  input SD_MISO;
  (* X_INTERFACE_IGNORE = "true" *)
  output SD_CS;
  (* X_INTERFACE_IGNORE = "true" *)
  input SD_CD;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.DDRAM_CLK CLK" *)
  (* X_INTERFACE_MODE = "master CLK.DDRAM_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.DDRAM_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Amiga_emu_ddram_ctrl_0_0_DDRAM_CLK, INSERT_VIP 0" *)
  output DDRAM_CLK;
  (* X_INTERFACE_IGNORE = "true" *)
  input DDRAM_BUSY;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]DDRAM_BURSTCNT;
  (* X_INTERFACE_IGNORE = "true" *)
  output [28:0]DDRAM_ADDR;
  (* X_INTERFACE_IGNORE = "true" *)
  input [63:0]DDRAM_DOUT;
  (* X_INTERFACE_IGNORE = "true" *)
  input DDRAM_DOUT_READY;
  (* X_INTERFACE_IGNORE = "true" *)
  output DDRAM_RD;
  (* X_INTERFACE_IGNORE = "true" *)
  output [63:0]DDRAM_DIN;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]DDRAM_BE;
  (* X_INTERFACE_IGNORE = "true" *)
  output DDRAM_WE;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SDRAM_CLK CLK" *)
  (* X_INTERFACE_MODE = "master CLK.SDRAM_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SDRAM_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Amiga_emu_sdram_ctrl_0_0_sd_clk, INSERT_VIP 0" *)
  output SDRAM_CLK;
  (* X_INTERFACE_IGNORE = "true" *)
  output SDRAM_CKE;
  (* X_INTERFACE_IGNORE = "true" *)
  output [12:0]SDRAM_A;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]SDRAM_BA;
  (* X_INTERFACE_IGNORE = "true" *)
  inout [15:0]SDRAM_DQ;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]SDRAM_DQML;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]SDRAM_DQMH;
  (* X_INTERFACE_IGNORE = "true" *)
  output SDRAM_nCS;
  (* X_INTERFACE_IGNORE = "true" *)
  output SDRAM_nCAS;
  (* X_INTERFACE_IGNORE = "true" *)
  output SDRAM_nRAS;
  (* X_INTERFACE_IGNORE = "true" *)
  output SDRAM_nWE;
  (* X_INTERFACE_IGNORE = "true" *)
  input SDRAM2_EN;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SDRAM2_CLK CLK" *)
  (* X_INTERFACE_MODE = "master CLK.SDRAM2_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SDRAM2_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
  output SDRAM2_CLK;
  (* X_INTERFACE_IGNORE = "true" *)
  output [12:0]SDRAM2_A;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]SDRAM2_BA;
  (* X_INTERFACE_IGNORE = "true" *)
  inout [15:0]SDRAM2_DQ;
  (* X_INTERFACE_IGNORE = "true" *)
  output SDRAM2_nCS;
  (* X_INTERFACE_IGNORE = "true" *)
  output SDRAM2_nCAS;
  (* X_INTERFACE_IGNORE = "true" *)
  output SDRAM2_nRAS;
  (* X_INTERFACE_IGNORE = "true" *)
  output SDRAM2_nWE;
  (* X_INTERFACE_IGNORE = "true" *)
  input UART_CTS;
  (* X_INTERFACE_IGNORE = "true" *)
  output UART_RTS;
  (* X_INTERFACE_IGNORE = "true" *)
  input UART_RXD;
  (* X_INTERFACE_IGNORE = "true" *)
  output UART_TXD;
  (* X_INTERFACE_IGNORE = "true" *)
  output UART_DTR;
  (* X_INTERFACE_IGNORE = "true" *)
  input UART_DSR;
  (* X_INTERFACE_IGNORE = "true" *)
  input [6:0]USER_IN;
  (* X_INTERFACE_IGNORE = "true" *)
  output [6:0]USER_OUT;
  (* X_INTERFACE_IGNORE = "true" *)
  input OSD_STATUS;

  // stub module has no contents

endmodule
