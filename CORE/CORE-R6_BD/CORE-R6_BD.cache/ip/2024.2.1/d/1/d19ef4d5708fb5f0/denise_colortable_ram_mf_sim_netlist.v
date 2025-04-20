// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2.1 (win64) Build 5266912 Sun Dec 15 09:03:24 MST 2024
// Date        : Sat Mar 15 12:04:40 2025
// Host        : Retro-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ denise_colortable_ram_mf_sim_netlist.v
// Design      : denise_colortable_ram_mf
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg484-3
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "denise_colortable_ram_mf,blk_mem_gen_v8_4_10,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_10,Vivado 2024.2.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_10 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 20416)
`pragma protect data_block
5iCAGzZQCqhUwNWgV9blXgzS+UW+EHYimDzOwt2hm1zEHfEMBLg3IQrEs6W1vH1E7S95dOr5UZxn
XnNINO1AtyuMYtKkrEj0+TXoEaxd37NqUSDGZ/+S41dSCxzMqvdTrcLAJNFYMy6Rnnu93cKLEdZw
17+cwrO9ZmtTe7Gssae1uoLpPhpOeZvscyy7ObIMKc3f6paGp1yknZElmhAQLcwj5rS/1kLUkFo0
Ghcku51OxMgy4KkRPrplD1UvFhYltaQcEI1GNvj31gaCem5P1nALL12DmoD7/SsCyEKThal8LkL+
rt9TWkrNh+q7tljcNWXgavZGQ9/eYXwRk8lKg64mZrktUb4aF1ufSMx7BeO5bJLfurDPlR/0cHjb
8at8TqFNYCN3/edjrx9lhNQ7XeNeOvxjLmcbaSrnvL3mBzfWzp+yD9xss0GWxtnkvkd4aTWkjk/J
47Mxa2kH5K99/QArUI2i3l3Q6DC9TQhijjl1jQjgKiEZ3QcSqRZ7zRQNYlvdJhslazHwffCWLJw0
HpL6WUjxJRcKDS5fYuEKhOIuf6PzrS9i6K3UxL4vT2BicYZWGip18S3wV6a43Pwln14ltcbSJ1JF
y26ID0CcY1jiRhCZCekvrTSE0kLkXw83z9gEmyauKR4TiN/bIJvNhH/KMat0cUgAJmLxHVk1V0uS
A2oAyOOiWG81uZIGZ3WM++IbvqBJgdnTI/+oGbJDGh9ie8aHqGgXw/68N8fN2LStLKrJu/Rf6I0g
EagXxr1mp3FZ06it8qY4/vzMflzg66HJsMLg8GiH6i3GBN//smjO8OLJ5vh0SZnILGzRTesUDmIT
bMwBdYjYcdf5qfcvE6lQL2iXGoAf3T6g2EX11zS2MKo/kmUBtjbj96p3lqu8sekA9FRNMC0zXzoq
8wxc+jcmSomxiH/IzolWByoayfANiWcfMDAJEOn5FGsuxxODdU78OJlO0sx/d/Ahm+d61zPRpVd8
CaEUChHaItQbzwFp4sYIlM+vjzUpLCltYdciW7/9Y4zRk0cS+fc27YOhMWMAaFWQQ/QkXLlvIYKT
OFVvZCc2GsC+bxl4mNcPui0OZoC/oV5e7JTQkHb05lOsC81AIJHdJsHQQdScWlE4/oP9cOFMglXw
5bPVXzITAJkeSNmFjjUfNXpzsSONtPagc6L+zmKxUC7fM0woDsWfWBpqnT+96utQhFiuOPSwGNcu
PNIrbwVJmoeutin92UXKX0VWcAnV5wzW9ppXBqdJpMfuYEVC4TFesLokTpFHKRnqBfwnsTBojiKz
jOsg9PMqj5hv5/O4LNNaMPQVIUZ7djMN4W3Y5jr0zofFdRws8+RukXF64votv2X/8uhSI5krLIvV
Mjs23ygRv+9Aja2iRkw5uYXyv1Liz9eUDiQ0wr70kFA9oXSIoThsaO0KOZFkVInubyBvan/LPrkq
heoEH0M9df39CKWTZnehsJr/4Aitt6f8uL1hFgBF7rlq7B9/xdRcH2icIOMOcbZPg8lq/xxDW3gy
wRdJIwKtDQwkjOwXjZaafrwUyGv50RRxCD90GfnFZGNa9euT5EbsWoELnmiqLggpItfC19wN/M1s
LDpBtUUW5ChOmwRf6TZs8eK5FvTBbP+lh26QNeXprS14bm7GkeZvVCrCLKXTQjQk42YStRrUutdP
68MrXEPAzHZ/XXyrnXnFEkNIriD2X2cI6GuFCnubq0mgfhHx9JAYBbPzQkgI4PLYYqlKrBizD4gj
dKqB1aE8pm5Qjy8Hd74XqKDBBKFJTjz5UBfhIGd5lX/nC9TXulRIWMRKcAvvpsbZzDl7A2SSNW8q
ED9xoGLwq3A0pESSYK6f4uLfCgDNTsPxo+sjz4ZNgSiXQVCsdnuUkQtBK7lURwk1zOR//Oh9ZAaW
5aRDw15GwyVoTd5Hgqf2xB5Rxkk/h+umvvj/ZjTbvUBooRNyWgTV8mN/85yM76bg9h0fo6tjN/gc
VvsYO6iuYrK5moQob6gbH5BVrLT8lG6XMhfHPx82dlFOxh0dRo7CpUbQSAO5ZkDnXFfdxm/ua3HY
TxhLz0cyy69LArpzXmgiRyx6KY+Q1lTYRIIOpbyFcC+kezaAA0D9d/VC/58ySCtdxiSZpjOCODyi
ai2SR8Vh0UlC+I0c5wzcpZiGK3e4NmSl42CnD4bqT7fIeIJfc9saqpMbUGkUnfcOqzDooKaROTMi
6TndY11pDkToXaCvMGrM75r8Lr9FmuY+fwQUvDK9Oudc9jMoB406ZJIke9ZIspynBepL9zJuwofN
dH+d1dbQIsdYHLSVwPruqJcb20rWHVdZ9Ftd2gejBeZ9nDuQFsxXSy725JNHntm1Ou2emF3tG7Ty
qrqkSGC6S/CPp1nZ/NfRo0acmzoNiE+D4COQGXuSNC82ifvNMGKW7PvvrryptqitSwg8j8QlNpHG
NtdxpTZAY574JvQmNxrRPHa8JIy8WcNKOhd4JqOSpkZ+GDT81Eb2UUT5a8AFPGAkOu8TtT0EaWHK
H/Ub4DOGABn3837U+50juhq3CGOKqWuLekYv7qFokSiod0ekxuu1jdxI7Lwylbh9UkmattWqrCYN
+s8XojdTiLBKHbJ6l/qUwFYPf/dXKowX6boXFpXSvRSc93ns28fOKdBIg+2DkBE6CHipweB5hbHl
54V2B3Yq4Ay3m97aKwIrY0SF4zuzlGHBeYLs5uTwgBoUkDq2Qh9AGnkJO3PM14HoqTm+61/zYVsD
wZBzShcxr5Q4cV3KTRPRIoeLtfFcxIvMjowYkf+CS//GPUQ7Z8LiFsS7vDZmCKHvLKtcIE2ud4dz
/phSQHAkLi33g2+wCCPSNITIKqRvviKb1v2awJZ4tCq5r0qrWwmFc0X6XMfJILCjCDg0y4i/qeTQ
d3RpZ3nH2kei5bihyxsKua3FYguFkOHlF+caFd10H48k6pJCXvs0qFPLSCFk+YSP8/7YObMvLPC+
YBv1VB4r1KVb0py7CF62xnEkdk27JWdpi+sE8biFM2TKenZYxPi5OkQVlZtni+LybQm/h1mTJdwT
vb1W0W+VV7li00KOkE523H9ifIi9+j08W7V8Jqg6mvmbDkWxzU+tcgr3GpAf4RA4um60luxGxnNY
Nf8IS34e352e8XSF7K/Mp24vkGyP2LrQLr5DfwHnrSIPw2ccNpTfd49k7WKPWP2ILI5TFz+07IVx
n2C9OMp1IboUrE2OcFOd8/FXUh3XL7PPEKTA/dLgSaJLVjdW/SSEP09w5iz7Z1+rr4x4UbCEBIgn
0po5mIqFSakZCtuHu3LDRF9OysuG9IFORFXAfITy55B5/aQP0VqiKRiv3AdfsMEEj95ck4U71IOi
QVOf5+CbGY/pd9F07SQW8kr8vIpf591YuyRCp8Hr+AatiWScjHRJpGqOeGITVT0tt6ENyssYWOnp
ZsNlp4wWCN6/yq8QM9rUaK4C13wxHdza9YyiZtBF0lXeTNLLe8W/1EidUiikonVR3BcdBZGqKFZ1
Bx4g2XE9KjyllhxAUFR2JSIFUQY+qQZ5fFgIsUzoTQvg7I2Rpw3WN54w9YCt1G1ViWC/PuQVSD+b
+EBLnH4ro88adi54lfdwZT72XIZXa+A4QXUX4Z/vnY8gxLKr4OEkesNEfIrpGM7Un+q25lG9mfZX
JahUYsT7U3Cfgb+U+eGv5RCPcH39+jJg0xCdnPw1ASyeMSFMu6WKlhWEXO20mfsPy/fyK2lT+nvJ
gbj/LoPyCBoIlW1zSvtudSzsF8aWGFkWFO36BlVXwF6xVU4Jckg0GH5x+G3B6CMshKRVF0b1sE+K
E0on8q3XWtB8HKS3MoyaJ73c0SNFfNO67YBbQDbM42ivy9ZjN9ZmNIPAv32ZXUmwk5Yfjkhzg7xg
GR8LxV+/pVaNpnZiFnoVD2idC+dXYmuE6JRhU2DyHBfa/sv9paaTVe+ag6cYxEOKO6nfaeXFMqhF
j/ff5k2me8fd3eK7mTvFj/9Y6KlYKI3l2AAHm4XkseO3wKD9FmNLfUO7kuMDFXg59Jp9CmiV+iYp
KYHZwvE64lF4OhDEiXZM2JiDnFHN/E1BcE1m3wGOhKJqML7Q+ogNG6nL5JEj7tt6rhQmlqlwr332
neb+YWIZP6QIzbk+vqjT8e1bmN292Q0rt3rXeFeimPXUCpcWmFJ3ybahMAuYQEk+IKI7fhAQGaZR
iDV+4dVyvN+NR/jgGYrtOnLsae/Lh29Xhncb8/pVmdX1oTmHnpA4gm/SGKJc8fH3Qw3FH3eVEel1
ME5b9kgW5URmvTSuS5+QkIvEs8RVAAwBJaSBwzQwc//qQvY645M1by+NWB+jxbUivw+5loWOFCPi
s7NZ2Rwn28lZGGuHhY+0LNByTzwemY2oTdkLVgkUSb+mXr6USPz6gR3M2zmXx9S1Xif7ZF5eokp+
K339C5ysSHLETu5A9od9Qmo4PNsTeHQzI/Ib0/lbrPzC/KXv/4bISHdfdNJudiW695S8YpA9EzL8
Eh7c57KiPB2inc8DEkbUUX70e+7KfMz+weLA6dabSJG4BuIE+o/4wU7PWaGgZ3rH+7L+kshKLY2m
+7NdCBrCDdNlE4+kNukJC19MPF5Sa4klEbkEMG8g2JXv62VWBqDIoDI8niF585cygkQJjgQeNHt0
xH+pNjXWk6/riqUUHaRrgIJr21pa0QAptX/GLS8Ps6YdgO89TgqjKpxgj+539Hm/IN1v/RoIg0Ih
vf11LgmPq6X0A2BtjJJu7MpancIj9iz1ySnG/+UNMJj51MYeilgr2lEutgsDEhWt4dX5BZ+JOyx7
97oiRO7uaDqvrU/sqFbzs3OwfoZ8q+YYPsgHgf0Byu5CTVhuKPatyHquIgs4c9qAp3pA7FQbuxeV
NZP+RrbRsWaHucTc4wCT8I6RI9wYgsZzxFLeJdUy+18XyDYRGEzlw7UBPi1jm+DmRtNVkCX1kX4T
eziU9qTGI46DKKC/LemutnObmQ/s9AAr8vRbUw+urQxVTY4LZPJ3B5YZsG6DngFjZZlkws/UA8J3
owFhq9BLzHx07X0XHVKbgWWtkfC5RLd7gtMAXlegrQD8KOcA3CWiY5kVxWhGPat3XRdtwlp+YEZN
cli4b5RfM/vkKWNiMWQaQdaduqB0XNxa7LmDiMZWYrLG17pqSZQLbDcOCEFcQeRg/F8wVA1RfioG
YqBL8Il8y9ZhSMP59kWxlk8JUkS0afhLI+6gmfJ+w+RVKOzv3WWt+CCBnc/08PClGMHVJWgq9hgI
5x68KoLHZnE2HgR332xW6aGCU9YUIUznxZNSApAB/OhTvy5WrpCQ5KRsNNle6QFLHkd+aSLQdTqj
p6kev7wmjL6NUAwte9dUlk9iz9XnVOi0rZglme+pQ76KMtbyc9W6SPjdq37mim0HO4a3tYgy/Emj
Kh89VqIOowV14TF8Huuu4ykcpdt/2EANWsI4DcdFV7P6mf6L4XVFfbWPEMySEVRYtHyeNt3FJq+C
gbgvA1tDCiSKqadSotrd8UajhpUwa6qXehRNh2a+DoYqR0tZ6CgYYiMd3QQr3+OPQ96EQ3LKM9c+
vjilrRsn3b4D8SPShBApN6DMImBcbHC753WONbfQMKhKR68vsymT49/OfwGmYIFTqLhJOdSblNYG
AdCNgZDbAQP5xCttlvIWcssoE18OT1yko43ApNSEwFlmytqjAHiMJDT0KdhSTUw8f8ftasxkjhbK
Cvfi05b0JTGo6ddhsPX1HEGpLzlqtcIb+QVDsqVmUsC7DHUmyofDAtJH4gxBbUBlbu0qJO/WXhOW
lNDQT5kpt4Q/UEfcKp9IJYi79CWuUpkdJhyqn3Stmd1lP/tfDnh0r+T/4mTaxDHKVp+wNP/yBcis
n0tCHpnQtGrxKH14jH8U8rXbsaLPAOasF45MFJSgTWruTZ4uuHgJPs4sE8iLpw3+ZaeNhMCRISj0
G0hYNSz2Ixl4paHhDzn31Aq3h9NiVaDbtbhbszCxOuMsqxvh0aAo/vyFyeiasbQJpPZW36duKaaO
3ZOIR2bzjDkIUshdWqNmkSytHsKyDOrt1K6ntQa24hBB4PlifZF1K0Wr8xL3gKDawgTx4SfwgZ6u
JjCqEio9VV4rcbPifmsdU40rTN8p4ak0DM3GSAfwvSr4yfjLWjmrqWQ+lyaKsD/1L+fMvmt7mf1y
69g9qRU2pVzgxrZNYZwSOYPfLymYo2A4MzzVqMz8MEKwrnduNeiunOp8TLBD5MVGpmpYcRTNotie
cq9f8HRUw/tae240KuHx+MUk5Cuxg+msxlZR0tPLzZeXzyzR7eSWxjwVAZikOtgon3HFRPzfxJrt
gYlz7pj4K6ZGnf/gyUoq70VKUrMDB48G1+F15QamUo6k6OdiLcLPcBxiqJpobk4zIjKEQQ6agPz7
LgBTjrFPgkxzJe9BAEWP9gkjKTsxJUFZ+uA6j3pRDKUQutP3+zWd0ZGP+hLD2rTstveeTvEALKXk
9m9uZfVrWjcikR399BcgcfF5AuCZO1ctVqPLqHllqOxa6bFRNbHY/l8Uljf4Wo0zyzLKbkcokFO0
mKW1qXFCDNn6K0eJ4cqbO1yT89xT617jxUJgUxfmaZrFGso3p9QBh7OH3TZ/oiHP2uyhWSE4xyG4
COQbcSeEqQ189n82IwykQOyLM7Mev6MaqsPjC0T+BkVHczMQL94hQmckPGgP9tC1RLSWiY0LCoZq
mzcMtS4tvQGvtaFParxPRuRTIrgiSsFlJ6YxIOEzVo2Q33+blR0OrvYwJaqodEnmh74NQj7uV+8f
oT21hv8WMuNDorPh0tlk6BnjLUVE+AsPjNdczYsN/7ORLKKgLKB8LJrC44gEkcJ1Ik/QWBOPMc5N
IJ0dZyY/67Z9DzSPffNL35jdMIlNYYhXGf0/34SsBdkpNwdoe7s0SCQ2hoTspT9EP5LbS9WBGxrs
88ixbnYtHzUiwZVM+Y+pNABOBg7r9iBZ7d1us9WlJatG6R5bmceKvKQPEVqJbpRKbzZ1obMvNgsv
UAQaPuDgXpkEpVfpycDDQJBICyA5mMGuDV9khApFVNxaG6rwezWoN2OvcH6myhTRwE+frjgMJ7EL
oKXq5SCmEWAlDhUKUpox4L5FRM52SPwBCnMDfbE/eYPIoFKCL1QrJeugy6E5esbnwQDenLb3Sdti
9iuKVxh2fBnIScPJ2PKnAWDt4MG7LDeR77p709pHDyzR0HHvWHn/tImMtXxI8KJFkdPkJ5bzwmIw
fpfsNqXus1sgS1OKXr8M9L0vDHz66JEsKXHZz/OfYVlgy/JhrwXz8HWu0zzAzHhSqucsNocGGyVU
GRlICN6eVVjap42UY6y1PJmdTzYC1TyIg4XwdJ8vO/aqOi1yvnKvw3Lz9ylW50EddaPaoDY2AneJ
xFyBFkokWiJwojj2Hf+YLaJnnNtq172VY9UkNkihxuEs/VfWsNk7qZY5+CCoI881eaUzdX2jtoUd
dEoutxZ/QAU774OmckLd7nAvuhjCnIduUTwuw43ecL7Fx73IfckKTY4GbqlxVivXjYwc4RfZoU6o
WQjslQopo/8GqgzqQTgncvD9aAGj3yxcmCjuXs8nlOoZ47AQLUZCfwB1v6NCBjnfYA4Mor0LvIBa
oYG/C+itO07D2DyJbASzPvKVliIyVqGGNkesgpinTOdLFR98OHKiXYg5FVIgNNXDSEhZrfwqrYn4
K1EZJLIocgZGrduqrbiHlmiO7x6AneKy6M6PSpui6McK6tbLpal85Axp9LYfsDb0feFCT0tEP7lV
FJEikDKqJ3Ok/lL/1ntS8w6r2OBtHSIXIHCkw+3YMRSDNWjG+E1461RWL6CeJhFLC1xek5ku5vuy
80C+FU1lkamEXfiGP+MTnw8PxXsnqseUxuMhBfAEB1hEECIcHxWw+DrYIx4mZegZ2dZw7+aR6Nx2
1V7gdCLzoOnxi+SLqJlRPO3LzzM9AarmId6ROi9rnH0Hy4I9KLwiCkg4AvrmiyiNV2lFH8pDRDaf
MTDGbGLdWCgqoBiYoaa8d8RgNWvwe+OyilQ5p9teY6n9jf7zQLfflZeDd6jffrx05BEfVHU1NMlm
QrFMKQXdIwupdDyUziBNPGKUrTCeZXK2Qcsu3BLWCcIhjZuiOtRzO28OqHCj9rvJtcvGdwjEszmG
Wj7+hjJCGz8o4QNGWrOx3o60Z/1GbdrMyaovyjVvLCxpSFqs9wwZmeCMTLMtJYeQc0D7vPLzyoTq
1zUfKAUyu9E65fCqEENQtiGJagSCyHNUtqZyeDwFjjY7SH92Jg7Y+ii0n4Gw2WxyszNEVyH8Px5G
Oz3W8AppINKzb0XldiHN9LWhUfIPETI5aSz7e9g5NM3APvP0UI4JIIaZbiIU043pZ4YxcOErI9zN
SbbDC7Ij+gUQavqo+w17rRUath/sCOHwnONEtbTEw3qWigIu/QoyoZOrn/g7JBikhrY2yH0hgNif
HOwkUbbV3pEU1inI6kVHqy7h+cFNBgp1OkQegaIzHhlVGUrOzcKV6ABzjoRLKu7CDKCZn1yut5Jm
vZVAJRhpbGSHNPjpEb4DNNWqANFjkqYq0YLcKL/+VqjbLrVUYHE85gFkOblhRwdn2JQmyukjchnj
k9LeytEWMiT9hg38+Om0aeFrybfH1uQTaqaSekxBE+P6vLUdyzCrw1WN/CpOe8KohfaOuGkFd0JV
g+32Pb/T1sojSXbHRyp0ixbNQAelxwZqxaNuSZeDFpFLeqTS9Mg78ozq53KTENb6YJDmQ/yRybFA
2un7qDfwLcJIFBQlOXVYUjaUiudgQGjTGKDK6gCi3yS8M97UN5nJZ20YnR9nAb+dlSCogfvJ/83u
sh1zE7ToM4ml95CSbeRfF5WSYUcSwxhclICIO/6A7PwwuN0WwtjMTlQXpDu81yXKQfheU6g3Bep4
u9UetGK4UDXwAtdLaWVG1cWJfBEX4deS/JUTzHvpL0LB9nX3VBwq8CUfInAit6UE/JsUWFUc7tYH
DL8+oyO+hs7/8HsS/1tQE4ze4ejreN2LEYGJnMjoLarQPSWJECmYUOTovEj8dHUF3Q6FLAuwn62P
8tA6KFlpReB7MiLQsDcGO0sYzLU5wMRvc/ZpqPMzeMqtd+UjhDvLQYm6cIliB1MtWysOnCG2fwHi
gpaxGrkknbrqqo6LVVNpfgd+uWh0111Ku2O+WvUMGCEMIGA1mXT+387itYfkz+Rpblceb4OrVtfV
wnXSBOBzEV2W6Hh0fR5PVEBCVAnjiH/NqcBJD5FDFnjMmEAN/yaIUOJdDsnqdotxDYM6T/1t+r1k
phnJV/WTlczNkItEGvFflpXQ01YfmhuoG0sHy0EggIoitccVEHOcmmeHEBTWQnEGVkuKu+7VxYox
q3Dd2Hmcybqxh/sQLvVkVUMWRd/ZY4grTVHVHakk0XuuCvNzrHcdmH9mirB7H7WHvoPvVpDpENsD
0oyS0yX/FYXzNQoeDJNlvD37swge8XE1lIHepvoDWIbfqh5MBeZbcim8fFvSLu5ZK+noNy1zGGPK
l/jNiOVU0g0HbN1IQFDbSHmWxtP6WXkuAGhb4Wb9MyOlM75wY6xJZd8IiY+m/u74ff9P5dD4T+1o
HnsuKrKPBGJM6R9c+mk2AlDHNOWvvuywgYLjCHFPVKa62uQpQvTvJ0CzSU+zllHkOpHzGRhvaZ11
vXDtC+f6+Pfll77QkMhDP7866xtvkZ9qgA8CYuA9XzfJZv7L3wHxDAhgRflP44BoCpb+/2o6hOQv
73Xdnu9Th/Obbh38trCfNROYstIb32Sb3t+qwKYtClPTCfOrf8lR4zljBH0Q8VuOQkt0zCYXNKaZ
qgBzXFw06uxyF1aJbrRZ48TxQ0GIIwnuRYZQfJXtgrJoacHknH96LjUjN6MT1/8DAI9bwPmcoxBY
154qaYM4s88LJ9PBBnXJn9NnEGRW7EWlx1zDHSP9NStlu3dBhRHp48zQeUGUROAMLZ5FsqvxO/ur
53UnjT3l6+JNR65u3jZ50G7U6yi0MDTaUx7/Z6qedyjs7Oc7WMt1LsdDaBWoTZP1drWFFLgJxz51
QjrrEuUK5w+RAV9X0mB9eRlGn1YwFt0tQjCO9mhyMNHsMSoKvi4tS0MocwQg+dyT3OuyVnYQKaC0
wSMngKWawjetq/XmKJ0EfwR1YJLiuT0RsGjiajCdqcQHoscd2+S3+PzzZFzpKh5dowN0E/Q+noAM
vv+D0nUANP1Mpv+Owu2sajXePpiqVVLshD74AOhGVK/xGo60BIyD7/CjdcQr3QnNSdrWU9zrPESh
Iz5Uoz/MDaxq8q5FAPme1XgiaWJWhF2NpMa0DQBQbgoBzj+ILZ9kFtjzJZt+YHvceRFMWYIAbQhH
u31N0yUPMRcjckPfoDVs8eF+CAHRuvc8XTF/sSPSesYkuClVbLDMrBjeJMAr97vYp1JNZVUdKvkQ
aNuOG4SA172zm0/s7cdG/nYijepmh8sgU04hCpUjkTtaYwJoLUbQ9QplMj+2h2ydg4B7JpbWoF0X
wz862jQHBXtL5gjNJrDZlPRDYY6ibqcRX++k3AaKs+k6ZWhHTDwNf/h5XteMEpn7H2EIUR8Gv+mD
5yHeRPp/PvEsVQ24dVd4uo2vgihqD5Kwi11NKdzgr3TtyvxjjKeEWQLdnX5s9RPSh9GDvd2HNQrH
61+xQ15IyCvJHJmZL5fZFlWyXpLGwp0Zl+RWVri0RAK3JgGRPzyDppRQXufwsTbJgDMIAbwcGNFy
KRiqaVWehgs48rJQ1sdJsQ0ja2kr5YNdLP9BAvhCe6Uus8sAMFkqxzxRVCKieAWC9pd/Wqxm+RXP
QBn4jZIMaQrq3F/2f8bex0ZESE0370l16PIHmmCRO4SKeZO0H60h2RIVeqO7jgJaGnEh08dZhNCW
UPybHy4sNLQ8a0Mx0d85c33JJaygwMXJk1bAf4bmPcZGw7YMRBlrOVkzKXDEiEI+p1l+Urazohj/
aa5jpusZWkIGel7QtH8inlgJ3CtCgyH6stgf6erb2/xeJySsTz90RrzF6PGy1XFmMybVxhpvLD39
DnVQG1M1n5Hl+fpsjfueWgJnvKkjv2wnT/GJ7bYswusAjWMNUvmB2c0Im2oyU068MTN0CHrHguIM
EixUi67rqcmWaCrnVqsiX7aaoDffshlhmF1YWwU67tBWotXXV02dcNtMR6KTJePmxD7Un1hi9HyX
cuC9hDiexfbjihzFh9NKVSdSJYGqWDH9G4BBr006ItMl7xdh15JlyQJEtUFVOgSXqEIv3E6Kf7tY
tLdgraBdVwXzWnHt784qOAf2sHoZ+Retc/q3cfSAK2JS/iBce6HThqu+qtbQ5J0CZdjSWANkEmdf
Q2BK5LygvNwTx7s5NBUrnxTcYeq9wZ3W6iGEsW3EnvWoZh/8F8szFqdsAd2z8jJqq4j044C7IE9C
6CMsK8Tw682XJqAyEzWVIipoAqS10xRqrg7JOp/Q5BfHlSAumeSTkGyhPFQAqyfxuuFmFPHHUzXw
IEzKFC5mtgWfaXlEDkTLKgBiIgG+Gj0qPW/959LBZ9Y5nrShZwCovlBpLM21fQF/SExOgv3pj7uK
HS+lBumAvPEWsByM0NdF0kWUcVWXfKz23sW/jv1I8zH5uzq8XvzVHWFqGBOAO65KW2H3YZwk+iTn
WzIumjDf6sfNi5534arKuXrIuanWunr8YAQ+aTiMhMU5tx4xDWIcufmI9sVCOV4ADahrfFoo8f2M
aj3W8AaZ6EV1STPIWm9T/DC7esJgBwIHBFO2fA5DfmpTCEXkeN+2Ve5OoHTbR6VajVsr1rrBg6e9
o850Xu2UzHy6g1+atpDd/KxhaYAfxuITaPcyw/fU2GZPa4upuvroi+NDm8XKYSnWeDBOwR3S1fQX
KtzYkINg4Mlv8iu9GffmlemfQVC4o4KQo0CF03fKxSj5DBiF4bXGLUxV/TDH8AXFfqy7ZuimwRVS
bIyqyTMl2UQl4kDfqOFdug/Vq7mMupSKbEhy/Rq+ZHKilYuw7RdCLRmfgTarb/j2z2b70cop3bDm
1bW9HbjpWDXnCl2UK07cZA7q/k9Pe2huS6u1xGENost4rQApXcbpCUQEMNUprcRxtd1PDBUovML3
Y61pm0jvCWiRjfjOAZ57gL2yWwF52sVuOJK+w6ZD5CLIqr/j7GZIyS5qp2Jw/6P+RV+8x2+nyEaA
K1+EECzeWVujM0o5NdmKEfaAJgd6yhQnwvS8O9lG1BKSHNUFfGCuNE1SIhCo0j/DL/wXT2pfGtle
e4IBz+Q1wFR4V31Xw8oFGRjBlHxCwiy2oUgfWv4iKo8+yR2cVwKFFCMBtT4BB5PmE3pvfP4MB9y+
PN3p/gzZ7V8FBLtN/NOwz2HOQwYxZviYaz1ZrkknbNCXWHAq2+WZwf4KhodNRXTGhHmkj6FFhtys
ZeQ3iPVgIN3m/uyvOJHLNoB8vPCa6R2vOJGGHPNlbs1sT/p9rDbJ3vQilNTC8LP8LGBipmYa4U42
HLrb5kKA2NXQfNTpqMWjSNsS+4le3BqXqpe4MGJUhTevQos/P9DrBHzW/3vgWcHrttECUxs8cyDb
oK8zh+s4lHyA+68wKnqEupfq1rZc80xpJbrJUw9j/oCCOcrt4gYxNcAKJ/8hscwTzEqhLwBvJuMM
7WHE5OmFwty0d2/dZ3A2rNw82Y4WXvnW58XEOYF3SpD/6OXSCtz6i+aY8g4Pb3DBxmSF1IaZItXi
1T6ZqIUwtLQ4dYP5C2sXAhaPwLnWb3Yd720qhNa69Zw15NtbDlOlo8hZY2dQpvxfin15Y4xnNngC
3aUguwGNQNOaZ3YYfWAK/UO8do/BJQ95gsjLY5XKQe63rnNdZWNnL9SAzoa3c0Z6NhB/vqN4R9tT
g/U0ijoZfajE9DFKXr7dlggy6JHepf+rKlW/U5hr8GH8L2E7R3C2XNDYCbQ6UVcPWV03pOvOMy+W
Kq9lihcK//gUyUjAGgXF85/bokYTQ+LBmK+fkaeQZNHjNkcDSyoxg9bzDxwd2J1WSPyamXReGU8p
9XqClhd+FlgUriscy8j0WlI5uKhEwDiYn/VliNkwn28iJHhCh/1ttoWFiK/+roTqUiehWvbqPF+s
2sSRWvHXcRjR8WLw+UL15Rbs5VziDVMHfvW5yWLczHuUHCRBEKLdA9XaqYqdlgOye6E+oJZHXCbo
dHvDrAAxETBPMpL6pYoAEqPqX6YIIDHPuu6Rovi/iBGSP6mu4M/Ik1vms2Yko1zhDnZtUseSW6LO
si3zAj4GzvAgTqnfqMpBEgLamKpj9jCjpwHL1veJHQ5wDzj5z8oWJ/8xyeRCf2OrUrZ+C0+1wpKb
GNxDshwfrgQD6TPzILzYbCsq2xVROUSix/MACQh2JTT4R7DfBGErO1n8GiyoOL9zNstWyJQ1fdrf
yvz+W06Dz/r4AUHt/UeoChCrrBSpmfzEEYrVkNFda6eWbGcNdBIJnBqhPkMJZeaDRT31t0aquhc+
YQZWY9wf4yR0aUiGRLdBBkCCEB1BC8vj0WKksfZ8ZoL7NlV3qzq93/OJziiXoukXYc2gSYnvSocP
jVVkYPRGYuMFk9CMHx9rmFhW4TtFxAETsWR6zkwmuQq3AXXaDwDKsnDQ/OwAhRBF6uunklj/Y87F
BPNHtX2K2jdZq42i5Wro0U/HBYNJvQqHNEFXAJjhiF/bWddsRHyw2rmudvVT5sntOmZAN3GdYyU4
GGrokeI7S5pjytgEURTiRXfbrqn19vlcN2RB+P5jsSMaHchwei4wVapzpF2qIkQkeAD28gRdQh+i
4oUG2tCc880rD0qJnQ3eDN7UBFF3bsMSQm9S2Ch67jvS0q6BW3lvC2Lzg7Q379o8xYa1IAaMk3jv
//xvLrsmNEVn4emPPC6Z4mwUrTKwa4UrAfuuEKpiphkA7YM6J01yze0jotwzkUIbVBc0iaVLvEOB
1qaGje9nlYm9n93NnGPNKPObDQ9PZK0yQV0WHuZeTVd2njRyVwcFFinVY7wRACUVcKZ8lBUmrapO
i6ZErb/NMTTVJvbNJ8/gQ/Z1Zv7XKlGzO+bj1Desw77e6crbPW78pM4DOVqv/2SRr53QjkKnI3+7
XRa/v/oiLUP67JwezFzf5fP48KCnExw5KmpzlMqbbv8Ep/YTaoTacgOPCebs42/Kejk5A73SCG+p
VuGYrmoptL38kZhDIxm/HQH5ga+ftiZRoLvO+8mGa1lYUuc9xJYykhZ4t3CnKM14S+4yVVL0roDb
T1FAzcS0us9tjzFzeyCL372JqvLvjUMUOPJmMCDySdoiL0wrRM/A0vLuyjzaH6c/E3oUxb/LKOZd
BrslXWpWSwey38/pw/JGwOaYa7A6rxE0ef4EcnGRrel7Mwl9DIlHOaALvNuEXJarngJXEeglzsCo
oJV2lyETsMsjfDKh8iqjJsIh9RiHEo3hbvMFJH0rv0pX5+Om20L2iM4HLKxjVQjyw5glakFlq/W1
NDgGN+PT2OEcVPkz1mHghNU+lBvEJzPV0Bs4OKNPYgMBVpg0w4F19dyeVXkYoTc4irxvZPLKS2R7
5hnoavf1zIBIlDjCI1UlfQDyk6l6KdFTWTJuVXk2W2XZefK/B6CQoGz8XaNJ7+zVjv4Mn8qDecgu
GNWJ3SZxdQ4Eb+PTInp+DgsiMHfl9SFXXjOq1JQ7L9EFKp0wzosSWjTvJ6Gj6YSOSNjYsII2yyrA
mfK+VfoDfL7VmFs9Em192ls58eIm+3jci6CbGZKK6nVc/UjE/ml3up0p9cX3ixJKll9M1/yvxZ4K
pxtI0DHO98owQPwCzPBknVk6q2/XEj8HpCKHidvhybsGEmghnAG9swfHAg3ZT1Vm8Z8XGIS6z/+N
MV1bdLp7ILkQLS523HwCsd60Vpai/5vxmWyFla4RtmJbAdagZnEZ9DnqD30eUXTh02Us09tsCbN2
bm9C947OxLMGzv7jqC3WWtUYGaXeNKXZPq1rCtzSfbkcoIfgA3Mmo53jWLKC4rJecMJ27GGL2R8O
KGxcgka0nnFf1jejSlLv8xJEYOd2bMoj1fEfsYrfnYhFYldfOvd/mZDe0OfybhJoOZ/M6YFVdrA0
mcMzIkXWU1Com6qj1KEuLshP3/QQ0QM+e3bTB7tNssgGKyOqlmsgToT/p0R0akQE9i21MMwGlJaq
VJzKKtCex9TwqQIEXyvKrmsnQnC2kiWNIt27Krwj3nj34phHbNCIJCJq6LnKvqowD6nQb4W+W6iI
hUquQfIi78Tumys7FLGo6UPUxScAZSY7muCnF4BY3tFWUHo2mJWp+eDOjKSTo35mDyMF39fGW5R2
CPxcU7n2B6pYJiB7/kkVD/L3syte5vbK6hz3lHS+kkjYvBnEFS+rj0nGrGrMCUdcmSdQevRjOLM0
PuSljWC+A/FxJ2MpYZaGSv+HM9Iv7TT9PrFb86DgMttCfl4/yqw0qGHeaE9fNxLIlFEH1QQQUqYl
Kr0LfnbVKxtRnJKsRZaJA/BN2mEn4CuT2BPS6jY0X8Qm8Djdd5v87j1AM5sRWX40Dv5TxHevrRhH
63/8ytQZ3du8SNBwLyWthmYNBWkulopeUa//bjX1yyEVJKgWtsCMZFpXl3W1zf8zqKvCwL8+43UG
G6Avg2ii8TE/hkzB2uyvapEZlHj086Bapxb7oYmWtrK/RvfHzx4g8zXI9iVuqb9RYalRFp3KxsDY
mmjHayvXsfvwcwa5ac0EKzp4lNzVpqfX+bXRtSL0d/ichNf9WS9jXHvtBdkhVh03RNoJ3ArGwEtx
iGx/3LFHtAyiL+EixCmVHptd4Eb9tB5aVJ5Hh9G2jabpsQGCSZ/Pki78D7cd6gbITcMn8KnL5u57
6wEkGX+bca5ijwGDIQMcYOkcpzD6/oTObRHvJZQYEqnkZdxNhYLkVZSOOb68FmC+kAIC4DmKRab7
9OL0nM6kAziQOXw4lCsUfnQG9LlMvW6/MKTRkyeLFfyKdMhCxCmUMHHD/lhj7jHNNIGCgniqsAZ8
uSY9MN23aaG25SV+tx/mUsQzUpwArb6/wIU9MpAg2TT7QHWhMnn8GhlppUvnKRNR9bG2lHHd5CQe
SX/8T2wY2kvbjLwcIoebrKh6rFKSYm0jgrU9mupX159/Rw5r51EPAiP5lAOwoGu7KsLXUcK/erOi
UkcjlEl7O4lZE2RN4hb0pzfLm5Sd/NUENfzFKn/6uCw7g0J3NHGqxhXwcIqjI1KRscBliRPplBW0
dCJPiYP2anCz9ilWR3JOmH1qj0E3eUZ3/afERGFylGdCE5n7MWyRbJH51QYdpFP3msYK9Yc7wTro
wxPRpvwkQanGy8J2HtBmPGZRFcmjtN/Jks26U1k7yeqRTYYEvb5qZ5WLzPOqvVPE9hSx6hGfxIjp
z59S4XdD6Z3s3VLFjEDRUW/xPl0FwTPiKzxDfifuRZPsJ4gxbEOnPLNwaAp6lfUhUk53LVN9f3WZ
inMBzmIfy1XdVNw/HRaY0nutdtzcbT1XWeRTuwE9f5oAdPjOHzbx80s1GT3you/k9p7Tfd6i+5EM
KaJZruez0rCcDMSojVBBoovlPdzq4B6XQWXuX/qjF8aFnXkun4iEPTlf3o4vmgNKwXSzZ7T/4+U/
bYgz/jIGo7sP3nFs9FiU4iOyYSykRQJG9TOK3gOORtV1eSlu3Wqq+32D/zX8GYcr98G44VNkVM3Y
VAUPCR9oSwh3Qzi1YSsjUyRzIqRHEXAYJrsqQO8CjehHcsj4rAM+U3d1hPdNTbwWfo3kZWKGFqvZ
62oTgYuxUlMIwxioTD+0pyvxTBBSNXaz5cEXm9xL7GQmqk5CA0wp1P7Z+xn3HEYFw6UPFib907yo
CF7y4u2aAz+PGRgz0dcIsmkBQ6YpbqUTOBfBjgo4JOYymR5TkpxZCR34RUS405zHrC58ZqvWDKO+
4B77Q8zJV6/UYQQ6K/IX0PUO8Loy8PVxWcx1iIJBcToNRSG80axLVu36yqw06Gs0Q0P5JNDUzyDK
u0X+jurgTlasNPDJRj3lEJJ9MHcDAr5K/kxPgENOyQSB++Jt9ZEA8k9Lka5gac/4qVJquLY5+SCa
RZXSNsCc4yzGZC5l+KuBE8BZWg6+zMGJ/NmXw5DULutQYoxg7N3SjkCOJQNW0NUhFRQUJGoiOvxn
vUUG1sYGGAV6yrXwe0QkyWERYQO3HAT3itGQmEEZOrZozyOoHXP4OQO/JgxWKcOj6lmXEGJ+5z38
o+pxQtPbQvldFQizk4kIUuvrHhSdm3AJeOeDyI/df026mPBP3e5yOuRSpe+6DEMSmSnU/EzuDU/l
mvYgiiOGoN7iU8UCSgCtmvq3HhWbiynRggkRBxK9bs9tYsIxm0Ngc9H5qQtfZl3OVSuGeASkgmfG
Ls7JTbQ7AO8DP/3tiH4qLXh9GUbp3i4jFKJRiAzcNYNlZsbOK9gMdgKtNmfAFh3ZQzD6Lh9eYF+I
MEVJXmUuivOVSFz2ykEtW+AfyzC65ffE2Xmxw3NTwPrHJYb071y5QFfsiFkWfeWAkDua3J1n1E5F
/Ed5GSgPlTrjyV99oPg86GjD8xXw0J0Rne/22lhUqyfIYxGEAptPy68A8X7MdB4F8E9CxUyYJCQ8
yh5qChGxEuMu0OCFedg9Tz6U3uCvl7hA4hpY3pk27RGiisBVI4WkfD/B53N2Zw90LLpBCsZlnwAf
s0m2uGr5h9aDuc4srW9LxVOrDkU/oQ2cEoR4WwltoBld1HmeqB2M6FtW+eA8cY+i0eJNSHm9hAcR
h40blL3+y4ln4zFKFB5xs5FA6yWigLaUA5PrKgJUUKqpLu3SPwiqY/e8k2GTeAjcmw82S7I/eWqX
ujcKDHM5zsdQEwGzghMDUOmNHCwRsQ7qqFXDiXrTlWRWOpgT9gAiQLAVfpuz70WnwK9mVTCY4eOw
gtC+cZcf0cl197dRfP+QON4TaLiZDb0YKLLz0bcRGKkFbVSK4Ji5x6OAWUq1J7jHimM15H+AsZjK
chKMwPvHOmRqi9tOk4A455gaGx3JTzwvDYCAIOcrmivoU5pfTykCduCixz9PJP4/XFYcokbCKtgr
b8pnpKaRq5I06oMERoYtDK3dC0FiGrf40XMuNcW7SiAbgOMN9WApwJ8QRoAVPGbVikenqiqVoSFC
BBwYGbM5lpi/XfjU0cFWn6iJ4QZ6CZp+MQH2P7vqeesnYd/fZ1RUKPk0S7gHFzmVnd9OEUDOiNbA
jFozi7B7Kj2rTTZCZu3LlcAw42a0CctWkKKdXSk4Yi31+J4zApDoSxtOrC2YdWpUNFNTAaxLjLA7
0llq9gTDu5Kqf0eCo5KSsTGaHnDROO2YqH+9f656rEqR+b2ThcrxFvy1Lw8VB6qk+yJtWRD4uOPE
/yEx+Wy47q9xD0WRQGB2ybF8ENFSDLBIZk5vsnCWOCtHkYTnK32IVMX9pdy5RIELJJTlAZkw8XCE
C1jbF/K7rz0ESYTlhyR3+fNXXRFC+bYQOHfrFmlq/RqIWHUHOkWabYpLupdgAGq1szNNh30rqwKw
qFYOkhr5AF6/gSv8iMCqp7JBUz7fs1PsopqNhGHYh5XdnikpImTjDWOrrqKIjUSl41Py8C4FRI2J
cRi+OEgqJ534jkU8N/i7fItZmln0kK5h/Ya+QwMsjaHc4fjjcVVV4IDfNwqM4AtiYjHb6KBiaKAp
3BcaOn5ZuTuQZsi7PWmj2Mx41gHoX48T7+s1dcDObJEj6Yiv9OVoRwLCdtTj2fVDbW/uny+P3YY/
iTy7kujNnHDuA14fT3+nCxxkvF/q4xG6SqREvHpIF0Own8UdGA1+pcxj9ETdYg83o7ltKG6CtAk5
TTIXl1W4mg7BnkGCdQyYqAa+bZX91QLGXB7AgnOYUHbTh/tTOcJEJq92yVSFTB6jFhY4/KlKYGHY
PJtxi9fyRT+anrC/7tw8Wl6h9nYfvDWDHgKvAnDpqGmJl6Tb1FcSlqFD/wtGKV3kLNd2KYvDnRQt
EzRlT2GNIQQOL7tVnP9ncfgSfP1CRaA/x/WBTy75aLT0c/Q+fMSY/XRXfdhVJ7V++pAx6uHQiPNr
LyZz39eOecZ4T631/CiZui+CvIpzPqf1RBmwQFauIyl5CqfFO0fJU1ulQrYZd8OXI26JYdOrXd0t
9l/8e5SmmZyYTzap3NXPmSUcAFJ3hro9K1rlLhrAbnndDCxCyZ2mCU8EqpphRi5RwSNt3c6qGLAt
CX7W0FelFChcfDE02pAASEAbnZMHfl1oFru56FXQ0/MR+Adbk/IxerJ2pqO9D/IxutZ9F28396hM
uxqagI2/3bdDbLT8G/5PYoech0fgKL9NiBYA25J8yKiMNIc/sREhdsFXPk27A3qbfKs0tuqbK9s3
UEme0h0tz453eVUtkrWr1YCJOXmaLoL/W1zTETDSPa2dxIyR59QSUsjwJnekFLScbb6/TusV5F/H
mGKg5BxMaBlYHSnVq3GFzbzUCt3NuY10Fu/oyyjwa8Rma5WbhJrC2zpDL2zjuWaooVmtkLOF8qDX
xThQVmS+/FrjzVZ9kIQw8WMH6efdZl5GCe4tKEhmvaICmrUzr0e9E+Hcp3e6n/muJwG8A9dEggOw
s9UJEPcnqtyb8g3GukCbM6FMSmMHqiH/8cjIUkRRZKg3NtO/bRBrvvwbGsiCZdhLE8F/Hb1ImeeT
PeOcw8wERebC0jLb2i4AgINXzrNk46lJy9FDBrIDpiuXjJoe+EPrDo0M3BPM4mIq0SxEJ4MMC50q
Zbi9Ik3BzX4fL9iDORU6hc8TK3NmmIUgClwtNwO0Rh/kPyPqP976wDE9IgIAPw/gYRbiAbVGM07D
lsx0/8ke7tkLzGBbhsRG7yNTYgcZFp08bQtzTTxrZAbmiKISbtlTFMarzXv0FeHQtu4EhDTpNVnb
rXKaZ3s9FXeNSXzF9wkM/zRZhAUUlazJFWHeI1eKrqp89NZZmpZApMZJznmnoxECCmmzTSYEmk5Z
dlsi7NZhAoIBD4NZAPIrrwLEtheLscN866+SJAkXoJQ5ySW04wZPA4k/+ehdCI/4UO8TWHO6+KH7
eajJQTwAxEWs/eoSY+956+iTkI+es16Oio97EA1QrnQrEBrRGM1PM9PU+CRkM2G6PDtEm+oMREFv
n2P0l/QaUa02Tpkob1ttooXHsXa4RyNTUSj4w6pZfjYcHsmIeFkFkKi9tjnuTfRsoHt3kNLPR2a5
vbw6V5jM0JdDggOyi1eh54Vbq2iQ4btuoK3xT6aaPWfDOy2rbbcwX9xSsSh4ebgJ/1AxgatCB0vD
6knaSONIT+GjguuElUplFpMnM4fgPNeujNSfNi5kQQdF0MIr5DBjl+dF0ywVtWSoPE9fLXZP25Be
kS9rPuaGcOh5PJQbAf48Dd/OPUXHFyihTdyTr32DGFeCpr86oKnSeRay9x/fEtuC5dFazGBAVtLP
rlCUrtFvXLOTs4CJyZG2Nj8z1hao31OIRRnuXpkayZafalc35Vuv3ARfdKsSqu4cs4ozyhzBicox
8yTuDHZye8dI2XKXAHXJTPt9TCzRZ2yfQDx5TGFf6IOt8Eg0RllxRZ0eHOpT+E72TFS0zGkHMgw4
couJckVsoGEFK6oA/+mcfmFKyxFJdlVaLf3OVyUf14kymBN6N28blLnsacux7ze1UTpDmz19/cVp
ql00VV9ofrGachqnvm+bk6M30OrXwPEbEH5E/FZ4qHt4WWOCpOvBnuBoWtXpRNmRQeEhU1e6D9Lz
tp/W5BRmYz4UkF560Wkg9gAiqV2pkC7nQ9jNMMcyyTDfi9XaL7wQU2bueMfjORKlORJB1oO1XGUq
p3+1IsbtA4wsmZNBqerLZ8nIe0+mSFvtfIHeGXnhHdNuG9zgrKeEvVuVxMR64qdBgiW7+vkVvzVS
0O94a8QvXe3WrT3+PGWa0bWnK1Kv739GhkT+/PHqFCX7fKQUM17nCx4TlxEfX5fB0+bRF45WEHWY
bJwCmHoaaaHlYTGRB40rkMwdnM1u9xyqA9/uliDapPe60Oi1yz5bLXnQl7lYLDFvp4du8AAw1EKI
26jgOzbuIwzW61EFO8NNgnSGT0ehgePmQJr+Ij/7X8GARgMhj0oTIThDeeIkOv54TNqWtBaJJ7xA
Y4zq4MBdcz+XbF62WVRIBhsa8ITaSVA38XCK1eqYym4ANbmIclj66jsc+RkyCXHik9Nv8E4x5iVi
PmT8x0CBhhzrrWtnW4Uya5iW02gaN8U81Vwcxcf+Z1JN6KbmhXbu4huzapl6NQmtRKt/5Kv+HzIO
aTOZb19Yg3+9v9e3AeSoYYQmL6SVbWUo6rtfic77NqWBt2f6FgOES+ACObBGvUFQ+YP8OA8YQ1+d
HhRq/bX+5fxWu8gsvyDD078KKg7ZeWRlxdKo/Ai3odJUlz0nlT1+H85kfTHLpbK0NwPrJkxetj39
VFUNkFxYtiugn1dB0bDQzJFO+p5SRJovg60QusDHB6mBgCX56CgoImG0S9G2gSzu3rPjMI1ZBZqI
MK4/26L1WnBUqpXH7Fr934d51PdSNBKfmaEAC/Qs04Vqkhnp/lyUb/0bONm4yY7d0X6xAITmdT6r
Nw/iSONHoS2mRW6TIp7oGWsClv5YGr7jgD8d5T1gX4ALPMEO6MzeueRlmIFBkdD+IRpY6UyUvt5B
w5jLTyznw7i8t526QNQjPFYBOc7iQQam/PH0sJ65j5+ysBtXx/CmB+1FTF6XcOmsPpRpTG+7Jp1N
ZYebcziVZqGQxAC8cm4YcoElEwNMTiWLnc0jJOU2UhQLNgF8N5UIZQmRzpXGLvdH+N1Ve4zMtuoI
KXOiyrn7fGWI6dCmRxFB3h/CPSV1ElKow4N6pEEcdTqV3r9xI2OKbSXvlVPjhH/J1jfgmDNbilWp
d6wCrmlcSohvZT7tWavmRDc+FjwTWyI4TigRqVvBSuRfL27CaOr/kw6qyKnISLysIcnu79njzlOO
tM4GIxqat93AXfVTb3CNU/8EcFjqjRmRYw8zi8s2nrTbxkbpkjrNCT+7Dt2vLPi3WKxAjZEp7cme
PdkgvMm/UkaSwHIzqfCC2lg1r8IvTsiM2Lr04RQ5KDKAo2iJQKshD6azTVHZvJw84KlXffR/w2CU
4d7sIXqQ+rdYWsZsUBfq8WgAVwUAUHpJ/FFqZLR+S7AXMeoStFoAZ5DX8d5LLnCCbi3iROJZo+yj
GcGGeib2H09KXqrZLSsNlolW5+OhH2rMBQGv5+5Z71i11iBsIw1G6l8S2cxJCorja712a3N+/2Le
/SKqdRKkQnovdtXTX3QLfmY9ZAOUXHVW2atxhX1C7ZeylC93kA780TMjUONignxEhFSivOsYUrOS
w7Xq4IwXWsBBeqWSQ+ryON0pH1gks1FtAH0PCjmVxXgW9rzVw3aNnstX5KtLZbiITqVsJE0Rn4Th
Jv1zXSJNRib0ne9N9iJ3u+EDA8rQk4UwfXrnJNbHkicNWl7rP+3OIfui0bLEAbwJuH97up6DqxHV
42JPEPeArrVts2jykE969kgcot1U9vKqytnTRc8HKfepOs2pBitZTskabbVAzG8bJU5JthtRxbop
MqxchhiYj5CVwfN0SXgmF+f2GCWpWaRh698Kg7Z+b9v/ZSPdHZkVfyu/JzQH5teV+mzJUbwB+fjA
dcK3JJHKOEE8QVLBLG2Zfd0bhfrAppzwPioaQulr5cmOErEHnvbdL+eBFjkt7vQQDKIMHcFfB/kG
T2wSU1pQNUaYehVRmE03cZM+/Zyv7JPN2cd+X+69lRnJf36eqO+TyY62iMwvgZFCgUyeiRpZgVg5
dyZvCR/zrhvwlG0bCZ8SaJ+qiSK4uwKr9JU5mkm1iy8V6qK43CWHD6UK4o7res+Fw2jnKfR4ofIW
OQgCAh4LyCVdAtNIMG/PI5oyCbNS4xZ3Zmg0EQ4sz18USBHEdWRMennyG8iTeOnjObbSzHxuUUx0
j+2qRIV+F0wS0VMLB+8sCjvzQBBjgF9hmoE67IEqeyIfQP/u7sTJeo/D5SxTTPUSiPB5O4uf94hs
T4w9KkpT0jmHic98VEXEKhSeVY2vcP8Cn57LdLMQzStXQ/4oMkEjDfbUCg6qnBN3er4OH06DTCc5
PsbNu7j45X8gzgsXri72rEGo5njsQge5wekEC3EVzcBR+ZyGky3UURArYYrW+88jr9dE1qF6aUEy
CGnVQ3ZN/F+UimXm/XBxhFqcHLcsvhlQF/jiWaYEqK2xfgfyKgYo/anIYSwP+MES2IHkiGfnDxhQ
CwnRn8AsVgNyn7OxorFcIVZZYhsvRTc4mn/73AYKMbSY+/Q8hjn0HTAuBnHJbNdrDtITNNRkziwa
Xcv61x+DGZKXnN4osPbpUQm5c0Bl0gy0UzyyZTihN8Lh3hkWqCWnMCt++f7Wt3kuVq3tHWBvShq0
Cbz66skaZoFCzXvMu6Mv17Sc6DPOG+8GYK4uo4xH3/Pc66SqdLJiwPHVfNikn+8abSHEQ0vRB/nY
HnoG5owD7haRvBnr1SyelzOBPOss2Rm8Ms1EqckqVTVECIvtcRFf74zdZ9MwWpxv8TpUQjAyyJxB
xoKjrJ7IZT97CRkMnDFZeN8tqM6wwcHhyZr+M9dK2rQyYG3D9jIsHBHrY5FuxxpAfy6aQ2n8Ph9f
BGHhWqv7xYzGO8NHX+7/bnnS+gtifb4ZecMdCgdu3bnXtFdgbG7VTt7X+uasImmf83iG5QXfRpxx
9M67gTRK1WNTZP9YzE7n6kdUOivFnrOh/aevRjYwfVtJ/y7MInLL8NvvnZhmtFM+o4a6dpWBJUhK
l+WBALCRLjUBR5fAMRoi8dY1bTQoEY/hKMOQ23WA44DzngEu5QHzNCP4nB/Xq9xS3x98ahi+b5Ff
nkhnHze8E8LMK99GNBrwM7RkNytcxc+XaUu6Hh83KmUyBZR+6VFEb6UvuRcQ4hMQXIJeehF8QCPB
UMlKSmlP7u95/yyiU52GPQZQqDOkFqM6TNz2YmAXwT+lIo58fYIpC/Sx7Nf2lpFmKQEftxbXUx+T
pP/cOSqzpNke3LHebEfTHVuqi4ZG2oqUmz2RctqVki7hNhrCL2z8r9If6Czi7NgEtZ/6eO+/wOQy
ShlVUFs3NmyaYGMaH9VIVnS8DQ4gjwRzlleFRgzUUhzyxvyhiz555pGEqCq+TqSm6Vzi813nE+oN
3z2lSX5yKXYjd6t0D0gOOq5+EzP4qa8e60TKjarNWNT7wPbW47Qzy2f1tg3Jxqy0L/cdIxt8j0+f
+pUYMeVk7ihvg7OKqAufl4zxUOVHruzP68ajz9cn8aU8NlZfZnbzJpJqHrdntiyEb2TRW5PHzSXs
dsE98/7vkHVJEmRldflBc/3sc/oYDBDRLcoMF1g+YrvYgFzZNJQA3pQMbiUi0jLaYAS4FidADiWo
6NutXxzI0nuRZ5gY/I36gwZN7gYLwGYid81hccVnzyCCZSaho8n+0HsBnhGavl5ivCX8trqrB4ui
+zAMP33LDbPpkubYGDkoXu2cmFtpVMpyATTgugvvf8VcRjo90Td9aGGECAE/CThxIueuRKhrCS4+
O6uQEONZxHZf0m8LWgzssfR2pa3pvXcHe9/xyEIvodmCN5zcIbTb1zW1LXAAazFymFF4dZ5h+rCa
+lzAY0MbHQM7T4Bosd9SyCcIGZA5ffbAvRhYGRaOBJlhDe5jc0yAdiWPE1ghX916KvnEHLCPt8ht
bmIPmAQLm8dzYqrIpgCZ5TcIZ2RYDsQTHtmErVt0kqy/u7RR5cfonI2Ajvz7f8gJ3b3TAseKNVj4
Dzmttv1uD0c/BKihQbqL//6uecj8hpJFdZIgMM2z8e8DZb/OeFlFTcgI3YdUOkV1GBaDxppWffcq
PC0flVGQDSm9XGusQpPzFx1U9XXk6BvJxbiYWGsNHB3uB2k2pHlGxSgQu4NJwd6kdOsABf/tPTHR
r5+sIlX6LdATwNz5lKgOIZSZgjYXSncWEfCod0j3St/atPKZsMFOslUQ1gnxqPtbjcww1BxEBSJ3
lrb3ndXWpWfS9lqcyZiG9WSW41Pq38ybTWDOmTN7+4o735d0N2w3Mut9o8jE6RENUPq4pKqlnmyO
GLBFEJJyF1nzAWI/oJg5yDyt74Kb5na/w0eQ1KomVebhv7DG0rJVRJcJm3KAtkfGwcvbepAqZ9EI
NO0/4e7GQ1RqmicP+r/ngT17YP0TojY/CF9DizHAkJlg3du8x4JQofD6xxqI7hhdld6P4LBExSLw
kEB9mOCVeKa1spg8lm7nPnagViXe+z0Vq+1IKmCaMJ3fixqnRMiJashY6hezQ0IH2OTEO+uOpYgI
XJpqSVU0ooLU44zsYja20J/ExzbzuDErS18uby6HZQ7nTxdztpcFn5YUVZsQg05LIiViLAdt+fZ5
DsPzNARkYJjnLENHwZ9AmOpp3oj6xy85NrHQNK1mLKsROs7S7x6/ubFEyQ9oag/tJB2AY0qNpnEX
O9kmBJhXWTeKg+D5+IzbWmhaI45m7tf4edQJk+MrbuG28Gi4lT2SB+oAESxiiWTOGcGwA7o26kIo
YGPgpT5nZ1jm3O6Tu8QpMXhqUNbb7FXlLR+qJMbZcP62vtgq2FP7sVzqDzkF86RzXFDZCVYcgkSP
u7KJcV7r5CV1FHKVwxKOSXHHdzFemqXO1JVeHc5adzSqqUPMVBA3f4QKUh9Fbl39JhRa8RcZbpKj
1gz5vrAOfRyRZ/Cru0J2J7JY5Rnz4f2d0KhiSSndCK1SPsn1HG9ahoxrIqgRx5PbJ2NYFpZ6xMTi
ZS9ijna3/154NvmeLg6tvY3mCs8+zfFjTgOs3uYBMeuRHbvR9jq6nGWLjq48jIrXz2fsCTwdSQxk
SqUvuG1MRcqnU9Y14pmTy8a8rgrhbaA0nCgxaqU9lM6zztSZTNEVZeAGcth4iTrWRmvKskbAPsha
876VsJh0twa1MYdQXsbq3235SedVP18Rc/VBC4NRx2wC7ZASgZC2wHeQvRDhhtCHYWNy0K0r4GvR
vepKJ9250cRDNwQxZulaG0TRe2biOSmoofAV1Jm8GVoouiDxnU02krCV+1kY/6xztKyMHGOGfF6y
id+KIMLOW4dlpf7t6rxzGSIAS6qQvGGgKHzeY9gP8w4LBzDrhgmc429GoYK2t2m5QlFu/vVTi4WJ
sjjC3e/hiVfdjdDfk+RiBjxyRXp2n550hzJEo0RvSBgwKPuzLk0gLzSpKS4JP9d3Fpv9PnFQ7rae
vlvAsPv1BVLH6xcpf7NsUTNhMnKelB35q9vRKtjdztsuFGroUuROqFjUfPJgvHnLp2/l+nOXcOlK
byW1AG5kgUVBmXZbjncRZR+ky6DTDDO9MV0EbhBRJlreecWHuUrCBEY6St1/bc5xrm28F1TyyKpP
i9J5/QiVo+YXRKEP3TTctFut9l1OjxaZ0TatdFrdaoHAf7QLakmP/UMultopz0GS5tNamvH6zi8I
XDo5GNGJM6pL3U/65f5ayMtZktXhH3Ccg/K6XpwxMEBVtBVlJfn2IdKqXJc1r0wIA71rABvlziVR
UAxJM2GNiNSq81ZJM9xNsVCBDxzNkuNs3jdTH/GBLHXZjUKg5T5oE6FB/xAONLdbxOROFi1/p6va
65YiMWYJTlzyHC1o315nt04QiqnnpnXuUPaU+L6ytwruONsBzbYOa7nKW5ErfBWrQhzZzAukWH6P
L/mpUehCeBePqov86SZySbE9mHEcZFDLOFQ3mijbgD0NUGfw1j/LJ9rjG2KcRCLhfKLSh/QndmxL
1DUDN+aDJCI5nPRWQ2dKc7LSKQQ3oJQpNwgK2FKZdmkpF/568nBreBG5tXFUTB5EjeSkw3rtx+MB
LrhCX8zxmPlAbgPvR2BkIncnkTHr8w/45zTqO7YXwgpSTY7ljjgD9AsEQ7yWD5bdojPbNBLd4VSi
sLEIMQyid9P6T4KvmonFnJztcjGIFlchnnq4S9FmfxyqD7AR5WBrUE+l8KPh/BgyOpRVfP2WiKR5
O42ecEQsmBJMpUhd7/nI2dE2iL1AFsDrs0XoGuaE6G/+M1JNo61LtrQ/Re0FP6dTIwwoPgnfAtsE
lMI3N9J/nOaUHF9NIFUxLLGPLOzyjNueQ3oqxhWfd7eFzZXzn8WKLXEz2ihoByfCLgkkUncL617I
VS0bdJjs6NXo5JmAGqpNa038NSWuM7n5T79GOPSy+96rYbUJQCgu0TOxd6oDhUn2f0GAlxOhAYc6
NS+Cl3F4YWGhFnYXMOQwjPKffjr0JZh6ryug+z+0wqlqZv/U8QcJrO+EeKYMayR+3kordORMzaev
WRi9+/Eqqsuf2A==
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
