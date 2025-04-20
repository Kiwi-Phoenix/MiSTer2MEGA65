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


// IP VLNV: xilinx.com:module_ref:minimig:1.0
// IP Revision: 1

(* X_CORE_INFO = "minimig,Vivado 2024.2.1" *)
(* CHECK_LICENSE_TYPE = "Amiga_emu_minimig_0_0,minimig,{}" *)
(* CORE_GENERATION_INFO = "Amiga_emu_minimig_0_0,minimig,{x_ipProduct=Vivado 2024.2.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=minimig,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module Amiga_emu_minimig_0_0 (
  cpu_address,
  cpu_data,
  cpudata_in,
  _cpu_ipl,
  _cpu_as,
  _cpu_uds,
  _cpu_lds,
  cpu_r_w,
  _cpu_dtack,
  _cpu_reset,
  _cpu_reset_in,
  nmi_addr,
  ovr,
  ram_data,
  ramdata_in,
  ram_address,
  _ram_bhe,
  _ram_ble,
  _ram_we,
  _ram_oe,
  chip48,
  rst_ext,
  rst_out,
  clk,
  clk7_en,
  clk7n_en,
  c1,
  c3,
  cck,
  eclk,
  rxd,
  txd,
  cts,
  rts,
  dtr,
  dsr,
  cd,
  ri,
  _joy1,
  _joy2,
  _joy3,
  _joy4,
  joya1,
  joya2,
  mouse_btn,
  kms_level,
  kbd_mouse_type,
  kbd_mouse_data,
  pwr_led,
  fdd_led,
  hdd_led,
  rtc,
  IO_UIO,
  IO_FPGA,
  IO_STROBE,
  IO_WAIT,
  IO_DIN,
  IO_DOUT,
  _hsync,
  _vsync,
  _csync,
  field1,
  lace,
  hblank,
  vblank,
  red,
  green,
  blue,
  ar,
  scanline,
  ce_pix,
  res,
  ntsc,
  ldata,
  rdata,
  ldata_okk,
  rdata_okk,
  aud_mix,
  toccata_ena,
  toccata_base,
  toccata_aud_left,
  toccata_aud_right,
  cpucfg,
  cachecfg,
  memcfg,
  bootrom,
  ide_ena,
  ide_fast,
  ide_ext_irq,
  ide_req,
  ide_address,
  ide_write,
  ide_writedata,
  ide_read,
  ide_readdata
);

input wire [23 : 1] cpu_address;
output wire [15 : 0] cpu_data;
input wire [15 : 0] cpudata_in;
output wire [2 : 0] _cpu_ipl;
input wire _cpu_as;
input wire _cpu_uds;
input wire _cpu_lds;
input wire cpu_r_w;
output wire _cpu_dtack;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 _cpu_reset RST" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME _cpu_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
output wire _cpu_reset;
input wire _cpu_reset_in;
input wire [31 : 0] nmi_addr;
output wire ovr;
output wire [15 : 0] ram_data;
input wire [15 : 0] ramdata_in;
output wire [23 : 1] ram_address;
output wire _ram_bhe;
output wire _ram_ble;
output wire _ram_we;
output wire _ram_oe;
input wire [47 : 0] chip48;
input wire rst_ext;
output wire rst_out;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
input wire clk;
input wire clk7_en;
input wire clk7n_en;
input wire c1;
input wire c3;
input wire cck;
input wire [9 : 0] eclk;
input wire rxd;
output wire txd;
input wire cts;
output wire rts;
output wire dtr;
input wire dsr;
input wire cd;
input wire ri;
input wire [15 : 0] _joy1;
input wire [15 : 0] _joy2;
input wire [15 : 0] _joy3;
input wire [15 : 0] _joy4;
input wire [15 : 0] joya1;
input wire [15 : 0] joya2;
input wire [2 : 0] mouse_btn;
input wire kms_level;
input wire [1 : 0] kbd_mouse_type;
input wire [7 : 0] kbd_mouse_data;
output wire pwr_led;
output wire fdd_led;
output wire hdd_led;
input wire [64 : 0] rtc;
input wire IO_UIO;
input wire IO_FPGA;
input wire IO_STROBE;
output wire IO_WAIT;
input wire [15 : 0] IO_DIN;
output wire [15 : 0] IO_DOUT;
output wire _hsync;
output wire _vsync;
output wire _csync;
output wire field1;
output wire lace;
output wire hblank;
output wire vblank;
output wire [7 : 0] red;
output wire [7 : 0] green;
output wire [7 : 0] blue;
output wire [1 : 0] ar;
output wire [2 : 0] scanline;
output wire ce_pix;
output wire [1 : 0] res;
output wire ntsc;
output wire [14 : 0] ldata;
output wire [14 : 0] rdata;
output wire [8 : 0] ldata_okk;
output wire [8 : 0] rdata_okk;
output wire [1 : 0] aud_mix;
input wire toccata_ena;
input wire [7 : 0] toccata_base;
output wire [15 : 0] toccata_aud_left;
output wire [15 : 0] toccata_aud_right;
output wire [1 : 0] cpucfg;
output wire [2 : 0] cachecfg;
output wire [6 : 0] memcfg;
output wire bootrom;
output wire ide_ena;
output wire ide_fast;
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 ide_ext_irq INTERRUPT" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ide_ext_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
input wire ide_ext_irq;
output wire [5 : 0] ide_req;
input wire [4 : 0] ide_address;
input wire ide_write;
input wire [15 : 0] ide_writedata;
input wire ide_read;
output wire [15 : 0] ide_readdata;

  minimig inst (
    .cpu_address(cpu_address),
    .cpu_data(cpu_data),
    .cpudata_in(cpudata_in),
    ._cpu_ipl(_cpu_ipl),
    ._cpu_as(_cpu_as),
    ._cpu_uds(_cpu_uds),
    ._cpu_lds(_cpu_lds),
    .cpu_r_w(cpu_r_w),
    ._cpu_dtack(_cpu_dtack),
    ._cpu_reset(_cpu_reset),
    ._cpu_reset_in(_cpu_reset_in),
    .nmi_addr(nmi_addr),
    .ovr(ovr),
    .ram_data(ram_data),
    .ramdata_in(ramdata_in),
    .ram_address(ram_address),
    ._ram_bhe(_ram_bhe),
    ._ram_ble(_ram_ble),
    ._ram_we(_ram_we),
    ._ram_oe(_ram_oe),
    .chip48(chip48),
    .rst_ext(rst_ext),
    .rst_out(rst_out),
    .clk(clk),
    .clk7_en(clk7_en),
    .clk7n_en(clk7n_en),
    .c1(c1),
    .c3(c3),
    .cck(cck),
    .eclk(eclk),
    .rxd(rxd),
    .txd(txd),
    .cts(cts),
    .rts(rts),
    .dtr(dtr),
    .dsr(dsr),
    .cd(cd),
    .ri(ri),
    ._joy1(_joy1),
    ._joy2(_joy2),
    ._joy3(_joy3),
    ._joy4(_joy4),
    .joya1(joya1),
    .joya2(joya2),
    .mouse_btn(mouse_btn),
    .kms_level(kms_level),
    .kbd_mouse_type(kbd_mouse_type),
    .kbd_mouse_data(kbd_mouse_data),
    .pwr_led(pwr_led),
    .fdd_led(fdd_led),
    .hdd_led(hdd_led),
    .rtc(rtc),
    .IO_UIO(IO_UIO),
    .IO_FPGA(IO_FPGA),
    .IO_STROBE(IO_STROBE),
    .IO_WAIT(IO_WAIT),
    .IO_DIN(IO_DIN),
    .IO_DOUT(IO_DOUT),
    ._hsync(_hsync),
    ._vsync(_vsync),
    ._csync(_csync),
    .field1(field1),
    .lace(lace),
    .hblank(hblank),
    .vblank(vblank),
    .red(red),
    .green(green),
    .blue(blue),
    .ar(ar),
    .scanline(scanline),
    .ce_pix(ce_pix),
    .res(res),
    .ntsc(ntsc),
    .ldata(ldata),
    .rdata(rdata),
    .ldata_okk(ldata_okk),
    .rdata_okk(rdata_okk),
    .aud_mix(aud_mix),
    .toccata_ena(toccata_ena),
    .toccata_base(toccata_base),
    .toccata_aud_left(toccata_aud_left),
    .toccata_aud_right(toccata_aud_right),
    .cpucfg(cpucfg),
    .cachecfg(cachecfg),
    .memcfg(memcfg),
    .bootrom(bootrom),
    .ide_ena(ide_ena),
    .ide_fast(ide_fast),
    .ide_ext_irq(ide_ext_irq),
    .ide_req(ide_req),
    .ide_address(ide_address),
    .ide_write(ide_write),
    .ide_writedata(ide_writedata),
    .ide_read(ide_read),
    .ide_readdata(ide_readdata)
  );
endmodule
