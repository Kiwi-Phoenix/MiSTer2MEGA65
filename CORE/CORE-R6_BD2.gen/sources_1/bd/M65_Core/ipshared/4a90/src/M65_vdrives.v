//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
//Date        : Sun Mar 16 14:34:11 2025
//Host        : Retro-PC running 64-bit major release  (build 9200)
//Command     : generate_target M65_vdrives.bd
//Design      : M65_vdrives
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "M65_vdrives,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=M65_vdrives,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=0,numReposBlks=0,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "M65_vdrives.hwdef" *) 
module M65_vdrives
   (cache_dirty_o,
    cache_flushing_o,
    clk_core_i,
    clk_qnice_i,
    drive_mounted_o,
    img_mounted_o,
    img_readonly_o,
    img_size_o,
    img_type_o,
    qnice_addr_i,
    qnice_ce_i,
    qnice_data_i,
    qnice_data_o,
    qnice_we_i,
    reset_core_i,
    sd_ack_o,
    sd_blk_cnt_i,
    sd_buff_addr_o,
    sd_buff_din_i,
    sd_buff_dout_o,
    sd_buff_wr_o,
    sd_lba_i,
    sd_rd_i,
    sd_wr_i);
  output [0:0]cache_dirty_o;
  output [1:0]cache_flushing_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_CORE_I CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_CORE_I, CLK_DOMAIN M65_vdrives_clk_core_i, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_core_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_QNICE_I CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_QNICE_I, CLK_DOMAIN M65_vdrives_clk_qnice_i, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_qnice_i;
  output [0:0]drive_mounted_o;
  output [0:0]img_mounted_o;
  output img_readonly_o;
  output [31:0]img_size_o;
  output [1:0]img_type_o;
  input [27:0]qnice_addr_i;
  input qnice_ce_i;
  input [15:0]qnice_data_i;
  output [15:0]qnice_data_o;
  input qnice_we_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_CORE_I RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_CORE_I, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_core_i;
  output [0:0]sd_ack_o;
  input [5:0]sd_blk_cnt_i;
  output [13:0]sd_buff_addr_o;
  input [7:0]sd_buff_din_i;
  output [7:0]sd_buff_dout_o;
  output sd_buff_wr_o;
  input [31:0]sd_lba_i;
  input [0:0]sd_rd_i;
  input [0:0]sd_wr_i;


endmodule
