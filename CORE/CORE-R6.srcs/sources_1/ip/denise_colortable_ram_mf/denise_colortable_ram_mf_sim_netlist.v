// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
// Date        : Sat Mar 15 11:54:21 2025
// Host        : Retro-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Retro/Mega65/FPGA_Projects/Amiga-Core-Test/CORE/CORE-R6.gen/sources_1/ip/denise_colortable_ram_mf/denise_colortable_ram_mf_sim_netlist.v
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
