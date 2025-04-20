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


// IP VLNV: xilinx.com:user:M65_vdrives:1.0
// IP Revision: 2

(* X_CORE_INFO = "M65_vdrives,Vivado 2024.2.1" *)
(* CHECK_LICENSE_TYPE = "Core_M65_vdrives_0_0,M65_vdrives,{}" *)
(* CORE_GENERATION_INFO = "Core_M65_vdrives_0_0,M65_vdrives,{x_ipProduct=Vivado 2024.2.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=M65_vdrives,x_ipVersion=1.0,x_ipCoreRevision=2,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "IPI" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module Core_M65_vdrives_0_0 (
  cache_dirty_o,
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
  sd_wr_i
);

output wire [0 : 0] cache_dirty_o;
output wire [0 : 0] cache_flushing_o;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_CORE_I CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_CORE_I, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
input wire clk_core_i;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_QNICE_I CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_QNICE_I, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Core_qnice_clk_i, INSERT_VIP 0" *)
input wire clk_qnice_i;
output wire [0 : 0] drive_mounted_o;
output wire [0 : 0] img_mounted_o;
output wire img_readonly_o;
output wire [31 : 0] img_size_o;
output wire [1 : 0] img_type_o;
input wire [27 : 0] qnice_addr_i;
input wire qnice_ce_i;
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.QNICE_DATA_I DATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.QNICE_DATA_I, LAYERED_METADATA undef" *)
input wire [15 : 0] qnice_data_i;
output wire [15 : 0] qnice_data_o;
input wire qnice_we_i;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_CORE_I RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_CORE_I, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
input wire reset_core_i;
output wire [0 : 0] sd_ack_o;
input wire [5 : 0] sd_blk_cnt_i;
output wire [13 : 0] sd_buff_addr_o;
input wire [7 : 0] sd_buff_din_i;
output wire [7 : 0] sd_buff_dout_o;
output wire sd_buff_wr_o;
input wire [31 : 0] sd_lba_i;
input wire [0 : 0] sd_rd_i;
input wire [0 : 0] sd_wr_i;

  M65_vdrives inst (
    .cache_dirty_o(cache_dirty_o),
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
    .sd_wr_i(sd_wr_i)
  );
endmodule
