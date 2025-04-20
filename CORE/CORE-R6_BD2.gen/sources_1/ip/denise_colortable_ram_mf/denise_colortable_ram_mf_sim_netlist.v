// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
// Date        : Sat Mar 15 12:43:29 2025
// Host        : Retro-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Retro/Mega65/FPGA_Projects/Amiga-Core-Test/CORE/CORE-R6_BD2.gen/sources_1/ip/denise_colortable_ram_mf/denise_colortable_ram_mf_sim_netlist.v
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
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
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
