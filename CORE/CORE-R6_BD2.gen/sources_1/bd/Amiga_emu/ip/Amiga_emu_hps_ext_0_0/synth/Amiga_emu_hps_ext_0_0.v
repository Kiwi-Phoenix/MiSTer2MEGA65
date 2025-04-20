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


// IP VLNV: xilinx.com:module_ref:hps_ext:1.0
// IP Revision: 1

(* X_CORE_INFO = "hps_ext,Vivado 2024.2.1" *)
(* CHECK_LICENSE_TYPE = "Amiga_emu_hps_ext_0_0,hps_ext,{}" *)
(* CORE_GENERATION_INFO = "Amiga_emu_hps_ext_0_0,hps_ext,{x_ipProduct=Vivado 2024.2.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=hps_ext,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module Amiga_emu_hps_ext_0_0 (
  clk_sys,
  EXT_BUS,
  io_strobe,
  io_fpga,
  io_uio,
  io_din,
  fpga_dout,
  ide_din,
  ide_dout,
  ide_addr,
  ide_rd,
  ide_wr,
  ide_req,
  mouse_buttons,
  kbd_mouse_level,
  kbd_mouse_type,
  kbd_mouse_data,
  scr_hbl_l,
  scr_hbl_r,
  scr_hsize,
  scr_vbl_t,
  scr_vbl_b,
  scr_vsize,
  scr_flg,
  scr_res,
  shbl_l,
  shbl_r,
  svbl_t,
  svbl_b,
  sset,
  cdda_req,
  cdda_wr,
  cdda_dout
);

input wire clk_sys;
inout wire [35 : 0] EXT_BUS;
output wire io_strobe;
output wire io_fpga;
output wire io_uio;
output wire [15 : 0] io_din;
input wire [15 : 0] fpga_dout;
input wire [15 : 0] ide_din;
output wire [15 : 0] ide_dout;
output wire [4 : 0] ide_addr;
output wire ide_rd;
output wire ide_wr;
input wire [5 : 0] ide_req;
output wire [2 : 0] mouse_buttons;
output wire kbd_mouse_level;
output wire [1 : 0] kbd_mouse_type;
output wire [7 : 0] kbd_mouse_data;
input wire [11 : 0] scr_hbl_l;
input wire [11 : 0] scr_hbl_r;
input wire [11 : 0] scr_hsize;
input wire [11 : 0] scr_vbl_t;
input wire [11 : 0] scr_vbl_b;
input wire [11 : 0] scr_vsize;
input wire [6 : 0] scr_flg;
input wire [1 : 0] scr_res;
output wire [11 : 0] shbl_l;
output wire [11 : 0] shbl_r;
output wire [11 : 0] svbl_t;
output wire [11 : 0] svbl_b;
output wire sset;
input wire cdda_req;
output wire cdda_wr;
output wire [15 : 0] cdda_dout;

  hps_ext inst (
    .clk_sys(clk_sys),
    .EXT_BUS(EXT_BUS),
    .io_strobe(io_strobe),
    .io_fpga(io_fpga),
    .io_uio(io_uio),
    .io_din(io_din),
    .fpga_dout(fpga_dout),
    .ide_din(ide_din),
    .ide_dout(ide_dout),
    .ide_addr(ide_addr),
    .ide_rd(ide_rd),
    .ide_wr(ide_wr),
    .ide_req(ide_req),
    .mouse_buttons(mouse_buttons),
    .kbd_mouse_level(kbd_mouse_level),
    .kbd_mouse_type(kbd_mouse_type),
    .kbd_mouse_data(kbd_mouse_data),
    .scr_hbl_l(scr_hbl_l),
    .scr_hbl_r(scr_hbl_r),
    .scr_hsize(scr_hsize),
    .scr_vbl_t(scr_vbl_t),
    .scr_vbl_b(scr_vbl_b),
    .scr_vsize(scr_vsize),
    .scr_flg(scr_flg),
    .scr_res(scr_res),
    .shbl_l(shbl_l),
    .shbl_r(shbl_r),
    .svbl_t(svbl_t),
    .svbl_b(svbl_b),
    .sset(sset),
    .cdda_req(cdda_req),
    .cdda_wr(cdda_wr),
    .cdda_dout(cdda_dout)
  );
endmodule
