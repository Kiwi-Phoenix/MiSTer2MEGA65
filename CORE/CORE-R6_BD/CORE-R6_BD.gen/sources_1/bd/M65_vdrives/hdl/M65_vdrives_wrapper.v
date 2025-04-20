//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
//Date        : Sat Mar  8 16:36:53 2025
//Host        : Retro-PC running 64-bit major release  (build 9200)
//Command     : generate_target M65_vdrives_wrapper.bd
//Design      : M65_vdrives_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module M65_vdrives_wrapper
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
  output [0:0]cache_flushing_o;
  input clk_core_i;
  input clk_qnice_i;
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
  input reset_core_i;
  output [0:0]sd_ack_o;
  input [5:0]sd_blk_cnt_i;
  output [13:0]sd_buff_addr_o;
  input [7:0]sd_buff_din_i;
  output [7:0]sd_buff_dout_o;
  output sd_buff_wr_o;
  input [31:0]sd_lba_i;
  input [0:0]sd_rd_i;
  input [0:0]sd_wr_i;

  wire [0:0]cache_dirty_o;
  wire [0:0]cache_flushing_o;
  wire clk_core_i;
  wire clk_qnice_i;
  wire [0:0]drive_mounted_o;
  wire [0:0]img_mounted_o;
  wire img_readonly_o;
  wire [31:0]img_size_o;
  wire [1:0]img_type_o;
  wire [27:0]qnice_addr_i;
  wire qnice_ce_i;
  wire [15:0]qnice_data_i;
  wire [15:0]qnice_data_o;
  wire qnice_we_i;
  wire reset_core_i;
  wire [0:0]sd_ack_o;
  wire [5:0]sd_blk_cnt_i;
  wire [13:0]sd_buff_addr_o;
  wire [7:0]sd_buff_din_i;
  wire [7:0]sd_buff_dout_o;
  wire sd_buff_wr_o;
  wire [31:0]sd_lba_i;
  wire [0:0]sd_rd_i;
  wire [0:0]sd_wr_i;

  M65_vdrives M65_vdrives_i
       (.cache_dirty_o(cache_dirty_o),
        .cache_flushing_o(cache_flushing_o),
        .clk_core_i(clk_core_i),
        .clk_qnice_i(clk_qnice_i),
        .drive_mounted_o(drive_mounted_o),
        .img_mounted_o(img_mounted_o),
        .img_readonly_o(img_readonly_o),
        .img_size_o(img_size_o),
        .img_type_o(img_type_o),
        .qnice_addr_i(qnice_addr_i),
        .qnice_ce_i(qnice_ce_i),
        .qnice_data_i(qnice_data_i),
        .qnice_data_o(qnice_data_o),
        .qnice_we_i(qnice_we_i),
        .reset_core_i(reset_core_i),
        .sd_ack_o(sd_ack_o),
        .sd_blk_cnt_i(sd_blk_cnt_i),
        .sd_buff_addr_o(sd_buff_addr_o),
        .sd_buff_din_i(sd_buff_din_i),
        .sd_buff_dout_o(sd_buff_dout_o),
        .sd_buff_wr_o(sd_buff_wr_o),
        .sd_lba_i(sd_lba_i),
        .sd_rd_i(sd_rd_i),
        .sd_wr_i(sd_wr_i));
endmodule
