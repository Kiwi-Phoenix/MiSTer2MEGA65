// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
// Date        : Sat Mar 15 12:04:41 2025
// Host        : Retro-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Retro/Mega65/FPGA_Projects/Amiga-Core-Test/CORE/CORE-R6_BD/CORE-R6_BD.gen/sources_1/ip/denise_colortable_ram_mf/denise_colortable_ram_mf_sim_netlist.v
// Design      : denise_colortable_ram_mf
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "denise_colortable_ram_mf,blk_mem_gen_v8_4_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_10,Vivado 2024.2.1" *) 
(* NotValidForBitStream *)
module denise_colortable_ram_mf
   (clka,
    ena,
    wea,
    addra,
    dina,
    clkb,
    enb,
    addrb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [7:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_douta_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     3.68295 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "denise_colortable_ram_mf.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "NO_CHANGE" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  denise_colortable_ram_mf_blk_mem_gen_v8_4_10 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[31:0]),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.2.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
udNP8Uje7hpcvCYAXvDW9r2oHQyRipDN507b+1w27rP7xb4Nz9QLRyKQf6hKRcDEOVPPDU4KvXyQ
S7Bed2F6O4Ldaml88+U6QsrNFaZ4fNsTrKjEE3lLix8fjqIyUXKSNeepsabnRAwnPTjGP0ckeQ0z
/6vK6vS6Oh2J5EcQEag=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AJCFEJ1YmO8l6c55nmqjPHpq03iIwIWhcq4gzpGTG9q8+B6G84WceO3Y0MOwVkIC+rza8yWW4W96
aueSQ6zP9DeJpaQAa5CXah55dY7AxCSywtOyZ62CZYm1RxvTaNigNnppCye+yAHN5Qei2IV4ZMwt
hFhXp7bbKeSQsqyTcPao+XMOfUQgs6uHRQoMvRFgoHByuZ20V72oOw3MoBmzaFgyRicvku2AVEWd
uJDCqcRlHIZZ1c+O+dCjOvRg+9aaQ1DE8gyCtne0FhQEvVnAPjcTzeUg2I0bZrpUQbbS8p5716Jl
/R7teOvv2VpnKxyFvW5lTVImrqIsvdk38CH5aw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
d1PZzLTrVgGa7lAGrEOnBHSkyRph92ENzEYYfBv5ShW44EZ/4/Dy5IpHq0athhXF90+7+EiPDjze
BIUrzaCZjSn3hPfQYuPqbUjXLseT1xBYmtHZtyzpQYUr38hRTWh6IjNX2anC6vrScheJp7oDyY1/
IpdhxPVK/6z5GGw/+fk=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iXAE+ZmeGhifmLMp5oEFkhP/d/cDFVKwwxydC1lMN6LBRLFXElE5VcBvIEPtGNusskpxv/GPCPge
Az6W1/YbULAD2vlMA71EljrnHet4zg4sh561cjLPQN2DUNHr/8qxlo4ONww5HrNW+aj3zt0V9iXd
LMCR8NG58iQqMP1t5ybi/4urLnu1EF4AFJP8eDrIn+UhiFljJ04qUkg6UteUS1Qbzshw6awFUiey
WBeovfV6FXCJKwHugmJ9lX0v8OpeazDBCdnLiduAGRdSYyvX8gZsv3vJDGtRy/jgipU3YvWtjuVV
YtKThRWW0HDHoUbtraCor3GB7nSBYetgLBhI2w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CCwrvinvzJ/ig55I5/d/Amnn8e78wAQQ3CZeQChsQV8lNb/2YZzJQqDeIZnIw2PW9XMMQWu1BZ8c
iNYcwzM1UFZoOaZeVnYUYwb2RIF29CtoBJrR/IdRvyNiLiX6yB25jHmLHr0ZI2+HcOU/DUGMCHdj
rXeeb/zWm2+BlGVXo8nZQsBLb7Ax2MZrkpa0MTARS71LcKF7w1t4GoY7bVE/6IqiapBrM+ZEG0G0
A/Ha5M7b0iGDPUjoi9W9dI+/QCxu2Jzm/2Lv/GivvO91GfWy+GtP+BOuITXoh1RMI1r+C0BVFEmZ
cJTPz6NO//KkkLFG9/hmPYFN1LfA2Ba990gqjw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UtpgxYdpPKuSNM+KxM6Sv3Iy4ZOFYPNHS2XNuKmMlCw2QC5U4+i3rdVze9p+UBDrx6Er9G9pm8c7
cuUkBFDSwAo1nmCsTUQkSQOtPXr5uH5HznaUeoa9jW2AL4fdOIyDGx9ybjy86RZqbLwFXSFl5h+u
N7pnU5jSiJzRe2r8HEgZz2gz/hfTN/jzQXetqGKueHxsQ3aoufearKsdAddLj5L+S7JaV0vI1A+I
C0NrqJNr80rSabETlIhyDi8M+O31ACijPvd5lxs/aM4t0hkDuJEjD/4zSMAR4kX6rFuoAaGj+gkL
JNO4LonSwyx9V/aLCUGZvakCGOoTfa8HsXALSg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bYpkb72jOpiSeCQ5PRip31Y2zumke9hnzyF2MW+IVzPW0m3jVUMoEwgSxAqE+vlQuzZiaESSLPa4
hEofuBzsD/1HhUexhJNB4Y+/VPBvwWtiuiJJBrLU2aBqlxKZznTLdxMXRPgndyi9c3Bm+BaDdRxt
QobwAkJhk6Cy+jZEy/kc8piXqUSO6chEDW5OWt1z8Yp5BR7KL5Wbm2MilK8JLKlm/z19oTOcUu4h
Zc/O6xJcNdqjekuqJ6hg7HEz9U1UKFQudRtsv7J0+tBPchAGiv5TypyI+/t+vNPdEWYYqMpLIvZN
cCSJD0PTRiRj5gWzhCtfKhiGSqaSGSjo2ySroQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
sHfsIbA/GTiYiIhFVT+ta4MYPEvZVn5bzP0L9SmLFYXxtXCWmeDpCp9ZZwtGS9IH6xlOR9TtFG5W
pgKkFb5r5QCZfajiTmrZfPjhvh247eO53zGpnNOd0OD8ieVYpE+zrABiidJQZIJKyypvLU+yKMcK
ieY1rJH9psSNTXb3F5RJBwS7BAIUABNBZQnGq7oy4LEOxgBNofWAIW356JOU+bZ9yTI94wEStpim
5BFs8fstAwWnwM6ZBxHDgmukn8PzlJVxzDFileHS+GIb5lPZJAMfhj/nCnvFAKrsVpYMjDZiwUXS
inHd4rP1QfU6bBAS5qhsBh1LbedSjDIbguzLNaMGqf3V74evgzM0Ps8jg9qHcPLyqUD36zjCw262
gOC0ofer0rkLqaM6oyYN9vLgtccUgx1yvJlD41DPYJxSSgHkRG/5QSwS1sPS1s3Akwg0CFWU6kDJ
IgTusnQGjwO0kd7isRhV5vbprQccIjmYDSkUVuuQ1QKIJdSZNgqBKujv

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
ni0skYr41xEhGcERgtNsJJ63OdYzP9ki5X7c3IbnsFCvWxeRQKlubX6N8A/0jpNXOv7aZEKafLZ1
qwbSeUvbN5EGxOtmP500LKoc6ooFVOT30GABYPyplJZQKkOV1gCLsFgwAOvKXk0nzR3DidZfgNmV
WzVuzpauwrR4E5VbDQ5MRanHIv9fUJyWGO5b0vBraafqmyDaWmLnOjDZvy2FLKT8h/g+leYjmoOW
ZJ6PXCZ0Q4ga21Xt6erSGIYPOkEEG6WbpWPjflxT9mjFpLmFZ9GiIu/sAP35ujidUd4QOQ1OhsD2
xotuK4Bk3godsqXIIt4XQ32YzMS3QWkODMZ9tQ==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Vr9cGi332/lxwY+1s1c/q/QC1iXTtfGX0cX5Ee8iMu9RcXLuTLEJUJMfxD3nNqpTzZPP2uje9SLL
ag4NXGXSpax2KTl6n0ZR19GRYIQeoyuIEObQQuuUjIKIJWfhtOUJl3OTHWIfOKbakya+nCm5WfDr
xgAKiWZOPd4QTtzIfurdl1JtQQHX8Df2qJz7sQ85KbEnr9f0x0Z/P+vOiNCy0ZYtVnvaUhSssVFw
l2tWmTqvL+Cqw0ceq0VyZ+3vpLw66QGWxVHdhMsrsyfNGyr3ihgnG3a7Y1MCMfOZq/SVFUt69F0M
XHyhnqbPQtcHQDzO9skrKwKEzN4uFs0H5KYx8A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VzSc8XP1P8vnrcckgvVZGDZrGVT26w6xIjvo6a/h45CvlV+9LQYT27zdvXxkL5tmT5FePC9paUrR
foCdInU0kmlUZ759cK2VrUmeyxKT8HXWg6xlTw+mzpcVQ2L5RccoD+x7DUGD5oYrTIKMHhEjKj2t
V5hsm6x8SS58U2hgBj9Mrc9VsyQ5ckv5iHJPaptGNowNckVd/hBogWZomkIxlcUdE/M9DVvqxhVz
Tt6fy92B4AgzzJMfxezRMyx9/CEBICI15TibBxghqNpC23LHFun7+S3oDsoVwo9MdfJEo7qaiix2
uWtEvbP+An3VxhS+5G3uf+JyDLZlNZjjujiAuQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20512)
`pragma protect data_block
+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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
