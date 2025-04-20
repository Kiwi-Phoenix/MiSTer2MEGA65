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


// IP VLNV: xilinx.com:module_ref:sdram_ctrl:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module Amiga_emu_sdram_ctrl_0_0 (
  sysclk,
  c_7m,
  reset_n,
  cache_rst,
  cache_inhibit,
  cpu_cache_ctrl,
  sd_addr,
  sd_ba,
  sd_cs,
  sd_we,
  sd_ras,
  sd_cas,
  sd_dqm,
  sd_data,
  sd_clk,
  sd_cke,
  chipAddr,
  chipL,
  chipU,
  chipRW,
  chipDMA,
  chipWR,
  chipRD,
  chip48,
  cpuAddr,
  cpuCS,
  cpustate,
  cpuL,
  cpuU,
  cpuWR,
  cpuRD,
  ramready
);

input wire sysclk;
input wire c_7m;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset_n RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
input wire reset_n;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 cache_rst RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME cache_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire cache_rst;
input wire cache_inhibit;
input wire [3 : 0] cpu_cache_ctrl;
output wire [12 : 0] sd_addr;
output wire [1 : 0] sd_ba;
output wire sd_cs;
output wire sd_we;
output wire sd_ras;
output wire sd_cas;
output wire [1 : 0] sd_dqm;
inout wire [15 : 0] sd_data;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sd_clk CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sd_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Amiga_emu_sdram_ctrl_0_0_sd_clk, INSERT_VIP 0" *)
output wire sd_clk;
output wire sd_cke;
input wire [24 : 1] chipAddr;
input wire chipL;
input wire chipU;
input wire chipRW;
input wire chipDMA;
input wire [15 : 0] chipWR;
output wire [15 : 0] chipRD;
output wire [47 : 0] chip48;
input wire [24 : 1] cpuAddr;
input wire cpuCS;
input wire [1 : 0] cpustate;
input wire cpuL;
input wire cpuU;
input wire [15 : 0] cpuWR;
output wire [15 : 0] cpuRD;
output wire ramready;

  sdram_ctrl inst (
    .sysclk(sysclk),
    .c_7m(c_7m),
    .reset_n(reset_n),
    .cache_rst(cache_rst),
    .cache_inhibit(cache_inhibit),
    .cpu_cache_ctrl(cpu_cache_ctrl),
    .sd_addr(sd_addr),
    .sd_ba(sd_ba),
    .sd_cs(sd_cs),
    .sd_we(sd_we),
    .sd_ras(sd_ras),
    .sd_cas(sd_cas),
    .sd_dqm(sd_dqm),
    .sd_data(sd_data),
    .sd_clk(sd_clk),
    .sd_cke(sd_cke),
    .chipAddr(chipAddr),
    .chipL(chipL),
    .chipU(chipU),
    .chipRW(chipRW),
    .chipDMA(chipDMA),
    .chipWR(chipWR),
    .chipRD(chipRD),
    .chip48(chip48),
    .cpuAddr(cpuAddr),
    .cpuCS(cpuCS),
    .cpustate(cpustate),
    .cpuL(cpuL),
    .cpuU(cpuU),
    .cpuWR(cpuWR),
    .cpuRD(cpuRD),
    .ramready(ramready)
  );
endmodule
