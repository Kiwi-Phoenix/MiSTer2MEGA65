// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module pll (
  reset,
  refclk,
  daddr,
  drdy,
  dwe,
  din,
  dout,
  den,
  dclk,
  outclk0,
  outclk1,
  locked
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
  (* X_INTERFACE_MODE = "slave reset" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, BOARD.ASSOCIATED_PARAM RESET_BOARD_INTERFACE, INSERT_VIP 0" *)
  input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock_CLK_IN1 CLK_IN1" *)
  (* X_INTERFACE_MODE = "slave clock_CLK_IN1" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock_CLK_IN1, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN , ASSOCIATED_BUSIF , ASSOCIATED_PORT , ASSOCIATED_RESET , INSERT_VIP 0, BOARD.ASSOCIATED_PARAM CLK_IN1_BOARD_INTERFACE" *)
  input refclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 s_drp DADDR" *)
  (* X_INTERFACE_MODE = "slave s_drp" *)
  input [6:0]daddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 s_drp DRDY" *)
  output drdy;
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 s_drp DWE" *)
  input dwe;
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 s_drp DI" *)
  input [15:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 s_drp DO" *)
  output [15:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:drp:1.0 s_drp DEN" *)
  input den;
  (* X_INTERFACE_IGNORE = "true" *)
  input dclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock_CLK_OUT1 CLK_OUT1" *)
  (* X_INTERFACE_MODE = "master clock_CLK_OUT1" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock_CLK_OUT1, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN , ASSOCIATED_BUSIF , ASSOCIATED_PORT , ASSOCIATED_RESET , INSERT_VIP 0" *)
  output outclk0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock_CLK_OUT2 CLK_OUT2" *)
  (* X_INTERFACE_MODE = "master clock_CLK_OUT2" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock_CLK_OUT2, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN , ASSOCIATED_BUSIF , ASSOCIATED_PORT , ASSOCIATED_RESET , INSERT_VIP 0" *)
  output outclk1;
  (* X_INTERFACE_IGNORE = "true" *)
  output locked;

  // stub module has no contents

endmodule
