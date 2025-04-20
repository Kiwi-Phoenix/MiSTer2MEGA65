// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module M65_vdrives (
  clk_qnice_i,
  clk_core_i,
  reset_core_i,
  img_mounted_o,
  img_readonly_o,
  img_size_o,
  img_type_o,
  drive_mounted_o,
  cache_dirty_o,
  cache_flushing_o,
  sd_lba_i,
  sd_blk_cnt_i,
  sd_rd_i,
  sd_wr_i,
  sd_ack_o,
  sd_buff_addr_o,
  sd_buff_dout_o,
  sd_buff_din_i,
  sd_buff_wr_o,
  qnice_addr_i,
  qnice_data_i,
  qnice_data_o,
  qnice_ce_i,
  qnice_we_i
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_QNICE_I CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLK_QNICE_I" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_QNICE_I, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN M65_vdrives_clk_qnice_i, INSERT_VIP 0" *)
  input clk_qnice_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_CORE_I CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.CLK_CORE_I" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_CORE_I, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN M65_vdrives_clk_core_i, INSERT_VIP 0" *)
  input clk_core_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_CORE_I RST" *)
  (* X_INTERFACE_MODE = "slave RST.RESET_CORE_I" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_CORE_I, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
  input reset_core_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]img_mounted_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output img_readonly_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [31:0]img_size_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [1:0]img_type_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]drive_mounted_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]cache_dirty_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]cache_flushing_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input [31:0]sd_lba_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [5:0]sd_blk_cnt_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]sd_rd_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input [0:0]sd_wr_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output [0:0]sd_ack_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [13:0]sd_buff_addr_o;
  (* X_INTERFACE_IGNORE = "true" *)
  output [7:0]sd_buff_dout_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input [7:0]sd_buff_din_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output sd_buff_wr_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input [27:0]qnice_addr_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.QNICE_DATA_I DATA" *)
  (* X_INTERFACE_MODE = "slave DATA.QNICE_DATA_I" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.QNICE_DATA_I, LAYERED_METADATA undef" *)
  input [15:0]qnice_data_i;
  (* X_INTERFACE_IGNORE = "true" *)
  output [15:0]qnice_data_o;
  (* X_INTERFACE_IGNORE = "true" *)
  input qnice_ce_i;
  (* X_INTERFACE_IGNORE = "true" *)
  input qnice_we_i;

  // stub module has no contents

endmodule
