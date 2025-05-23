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


// IP VLNV: xilinx.com:module_ref:ddram_ctrl:1.0
// IP Revision: 1

(* X_CORE_INFO = "ddram_ctrl,Vivado 2024.2.1" *)
(* CHECK_LICENSE_TYPE = "Amiga_emu_ddram_ctrl_0_0,ddram_ctrl,{}" *)
(* CORE_GENERATION_INFO = "Amiga_emu_ddram_ctrl_0_0,ddram_ctrl,{x_ipProduct=Vivado 2024.2.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ddram_ctrl,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module Amiga_emu_ddram_ctrl_0_0 (
  sysclk,
  reset_n,
  cache_rst,
  cache_inhibit,
  cpu_cache_ctrl,
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
  cpuAddr,
  cpuCS,
  cpustate,
  cpuL,
  cpuU,
  cpuWR,
  cpuRD,
  ramshared,
  ramready
);

input wire sysclk;
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
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 DDRAM_CLK CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDRAM_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Amiga_emu_ddram_ctrl_0_0_DDRAM_CLK, INSERT_VIP 0" *)
output wire DDRAM_CLK;
input wire DDRAM_BUSY;
output wire [7 : 0] DDRAM_BURSTCNT;
output wire [28 : 0] DDRAM_ADDR;
input wire [63 : 0] DDRAM_DOUT;
input wire DDRAM_DOUT_READY;
output wire DDRAM_RD;
output wire [63 : 0] DDRAM_DIN;
output wire [7 : 0] DDRAM_BE;
output wire DDRAM_WE;
input wire [28 : 1] cpuAddr;
input wire cpuCS;
input wire [1 : 0] cpustate;
input wire cpuL;
input wire cpuU;
input wire [15 : 0] cpuWR;
output wire [15 : 0] cpuRD;
input wire ramshared;
output wire ramready;

  ddram_ctrl inst (
    .sysclk(sysclk),
    .reset_n(reset_n),
    .cache_rst(cache_rst),
    .cache_inhibit(cache_inhibit),
    .cpu_cache_ctrl(cpu_cache_ctrl),
    .DDRAM_CLK(DDRAM_CLK),
    .DDRAM_BUSY(DDRAM_BUSY),
    .DDRAM_BURSTCNT(DDRAM_BURSTCNT),
    .DDRAM_ADDR(DDRAM_ADDR),
    .DDRAM_DOUT(DDRAM_DOUT),
    .DDRAM_DOUT_READY(DDRAM_DOUT_READY),
    .DDRAM_RD(DDRAM_RD),
    .DDRAM_DIN(DDRAM_DIN),
    .DDRAM_BE(DDRAM_BE),
    .DDRAM_WE(DDRAM_WE),
    .cpuAddr(cpuAddr),
    .cpuCS(cpuCS),
    .cpustate(cpustate),
    .cpuL(cpuL),
    .cpuU(cpuU),
    .cpuWR(cpuWR),
    .cpuRD(cpuRD),
    .ramshared(ramshared),
    .ramready(ramready)
  );
endmodule
