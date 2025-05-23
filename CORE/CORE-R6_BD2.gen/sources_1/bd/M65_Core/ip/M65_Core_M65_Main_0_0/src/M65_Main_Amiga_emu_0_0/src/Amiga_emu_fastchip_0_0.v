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


// IP VLNV: xilinx.com:module_ref:fastchip:1.0
// IP Revision: 1

(* X_CORE_INFO = "fastchip,Vivado 2024.2.1" *)
(* CHECK_LICENSE_TYPE = "Amiga_emu_fastchip_0_0,fastchip,{}" *)
(* CORE_GENERATION_INFO = "Amiga_emu_fastchip_0_0,fastchip,{x_ipProduct=Vivado 2024.2.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=fastchip,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module Amiga_emu_fastchip_0_0 (
  clk,
  cyc,
  clk_sys,
  reset,
  sel,
  sel_ack,
  ready,
  addr,
  din,
  dout,
  lds,
  uds,
  rnw,
  longword,
  rtg_ena,
  rtg_hsize,
  rtg_vsize,
  rtg_format,
  rtg_base,
  rtg_stride,
  rtg_pal_clk,
  rtg_pal_dw,
  rtg_pal_dr,
  rtg_pal_a,
  rtg_pal_wr,
  ide_ena,
  ide_irq,
  ide_req,
  ide_address,
  ide_write,
  ide_writedata,
  ide_read,
  ide_readdata,
  ide_led
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
input wire clk;
input wire cyc;
input wire clk_sys;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire reset;
input wire sel;
output wire sel_ack;
output wire ready;
input wire [23 : 0] addr;
input wire [15 : 0] din;
output wire [15 : 0] dout;
input wire lds;
input wire uds;
input wire rnw;
input wire longword;
output wire rtg_ena;
output wire [11 : 0] rtg_hsize;
output wire [11 : 0] rtg_vsize;
output wire [4 : 0] rtg_format;
output wire [31 : 0] rtg_base;
output wire [13 : 0] rtg_stride;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 rtg_pal_clk CLK" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rtg_pal_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN Amiga_emu_fastchip_0_0_rtg_pal_clk, INSERT_VIP 0" *)
output wire rtg_pal_clk;
output wire [23 : 0] rtg_pal_dw;
input wire [23 : 0] rtg_pal_dr;
output wire [7 : 0] rtg_pal_a;
output wire rtg_pal_wr;
input wire ide_ena;
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 ide_irq INTERRUPT" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ide_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
output wire ide_irq;
output wire [5 : 0] ide_req;
input wire [4 : 0] ide_address;
input wire ide_write;
input wire [15 : 0] ide_writedata;
input wire ide_read;
output wire [15 : 0] ide_readdata;
output wire ide_led;

  fastchip inst (
    .clk(clk),
    .cyc(cyc),
    .clk_sys(clk_sys),
    .reset(reset),
    .sel(sel),
    .sel_ack(sel_ack),
    .ready(ready),
    .addr(addr),
    .din(din),
    .dout(dout),
    .lds(lds),
    .uds(uds),
    .rnw(rnw),
    .longword(longword),
    .rtg_ena(rtg_ena),
    .rtg_hsize(rtg_hsize),
    .rtg_vsize(rtg_vsize),
    .rtg_format(rtg_format),
    .rtg_base(rtg_base),
    .rtg_stride(rtg_stride),
    .rtg_pal_clk(rtg_pal_clk),
    .rtg_pal_dw(rtg_pal_dw),
    .rtg_pal_dr(rtg_pal_dr),
    .rtg_pal_a(rtg_pal_a),
    .rtg_pal_wr(rtg_pal_wr),
    .ide_ena(ide_ena),
    .ide_irq(ide_irq),
    .ide_req(ide_req),
    .ide_address(ide_address),
    .ide_write(ide_write),
    .ide_writedata(ide_writedata),
    .ide_read(ide_read),
    .ide_readdata(ide_readdata),
    .ide_led(ide_led)
  );
endmodule
