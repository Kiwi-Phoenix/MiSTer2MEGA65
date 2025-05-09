## MiSTer2MEGA framework pin mapping
##
## Done by MJoergen and sy2002 in 2023 and licensed under GPL v3

################################
## Pin to signal mapping
################################

# Onboard crystal oscillator = 100 MHz
set_property -dict {PACKAGE_PIN V13  IOSTANDARD LVCMOS33} [get_ports {clk_i}];                  # CLOCK_FPGA_MRCC

# MAX10 FPGA (delivers reset)
set_property -dict {PACKAGE_PIN L16  IOSTANDARD LVCMOS33} [get_ports {max10_clkandsync_o}];     # FPGA_TX
set_property -dict {PACKAGE_PIN K16  IOSTANDARD LVCMOS33} [get_ports {max10_rx_o}];             # FPGA_RX
set_property -dict {PACKAGE_PIN M13  IOSTANDARD LVCMOS33} [get_ports {max10_tx_i}];             # FPGA_RESET_N

# USB-RS232 Interface
set_property -dict {PACKAGE_PIN L14  IOSTANDARD LVCMOS33} [get_ports {uart_rxd_i}];             # DBG_UART_RX
set_property -dict {PACKAGE_PIN L13  IOSTANDARD LVCMOS33} [get_ports {uart_txd_o}];             # DBG_UART_TX

# VGA via VDAC. U3 = ADV7125BCPZ170
set_property -dict {PACKAGE_PIN W11  IOSTANDARD LVCMOS33} [get_ports {vdac_blank_n_o}];         # VDAC_BLANK_N
set_property -dict {PACKAGE_PIN AA9  IOSTANDARD LVCMOS33} [get_ports {vdac_clk_o}];             # VDAC_CLK
set_property -dict {PACKAGE_PIN V10  IOSTANDARD LVCMOS33} [get_ports {vdac_sync_n_o}];          # VDAC_SYNC_N
set_property -dict {PACKAGE_PIN W10  IOSTANDARD LVCMOS33} [get_ports {vga_blue_o[0]}];          # B0
set_property -dict {PACKAGE_PIN Y12  IOSTANDARD LVCMOS33} [get_ports {vga_blue_o[1]}];          # B1
set_property -dict {PACKAGE_PIN AB12 IOSTANDARD LVCMOS33} [get_ports {vga_blue_o[2]}];          # B2
set_property -dict {PACKAGE_PIN AA11 IOSTANDARD LVCMOS33} [get_ports {vga_blue_o[3]}];          # B3
set_property -dict {PACKAGE_PIN AB11 IOSTANDARD LVCMOS33} [get_ports {vga_blue_o[4]}];          # B4
set_property -dict {PACKAGE_PIN Y11  IOSTANDARD LVCMOS33} [get_ports {vga_blue_o[5]}];          # B5
set_property -dict {PACKAGE_PIN AB10 IOSTANDARD LVCMOS33} [get_ports {vga_blue_o[6]}];          # B6
set_property -dict {PACKAGE_PIN AA10 IOSTANDARD LVCMOS33} [get_ports {vga_blue_o[7]}];          # B7
set_property -dict {PACKAGE_PIN Y14  IOSTANDARD LVCMOS33} [get_ports {vga_green_o[0]}];         # G0
set_property -dict {PACKAGE_PIN W14  IOSTANDARD LVCMOS33} [get_ports {vga_green_o[1]}];         # G1
set_property -dict {PACKAGE_PIN AA15 IOSTANDARD LVCMOS33} [get_ports {vga_green_o[2]}];         # G2
set_property -dict {PACKAGE_PIN AB15 IOSTANDARD LVCMOS33} [get_ports {vga_green_o[3]}];         # G3
set_property -dict {PACKAGE_PIN Y13  IOSTANDARD LVCMOS33} [get_ports {vga_green_o[4]}];         # G4
set_property -dict {PACKAGE_PIN AA14 IOSTANDARD LVCMOS33} [get_ports {vga_green_o[5]}];         # G5
set_property -dict {PACKAGE_PIN AA13 IOSTANDARD LVCMOS33} [get_ports {vga_green_o[6]}];         # G6
set_property -dict {PACKAGE_PIN AB13 IOSTANDARD LVCMOS33} [get_ports {vga_green_o[7]}];         # G7
set_property -dict {PACKAGE_PIN W12  IOSTANDARD LVCMOS33} [get_ports {vga_hs_o}];               # HSYNC
set_property -dict {PACKAGE_PIN U15  IOSTANDARD LVCMOS33} [get_ports {vga_red_o[0]}];           # R0
set_property -dict {PACKAGE_PIN V15  IOSTANDARD LVCMOS33} [get_ports {vga_red_o[1]}];           # R1
set_property -dict {PACKAGE_PIN T14  IOSTANDARD LVCMOS33} [get_ports {vga_red_o[2]}];           # R2
set_property -dict {PACKAGE_PIN Y17  IOSTANDARD LVCMOS33} [get_ports {vga_red_o[3]}];           # R3
set_property -dict {PACKAGE_PIN Y16  IOSTANDARD LVCMOS33} [get_ports {vga_red_o[4]}];           # R4
set_property -dict {PACKAGE_PIN AB17 IOSTANDARD LVCMOS33} [get_ports {vga_red_o[5]}];           # R5
set_property -dict {PACKAGE_PIN AA16 IOSTANDARD LVCMOS33} [get_ports {vga_red_o[6]}];           # R6
set_property -dict {PACKAGE_PIN AB16 IOSTANDARD LVCMOS33} [get_ports {vga_red_o[7]}];           # R7
set_property -dict {PACKAGE_PIN W15  IOSTANDARD LVCMOS33} [get_ports {vga_scl_io}];             # VGA_SCL
set_property -dict {PACKAGE_PIN T15  IOSTANDARD LVCMOS33} [get_ports {vga_sda_io}];             # VGA_SDA
set_property -dict {PACKAGE_PIN V14  IOSTANDARD LVCMOS33} [get_ports {vga_vs_o}];               # VSYNC

# HDMI output. U10 = TPD12S016PWR
set_property -dict {PACKAGE_PIN Y1   IOSTANDARD TMDS_33}  [get_ports {tmds_clk_n_o}];           # HDMI_TXC_N
set_property -dict {PACKAGE_PIN W1   IOSTANDARD TMDS_33}  [get_ports {tmds_clk_p_o}];           # HDMI_TXC_P
set_property -dict {PACKAGE_PIN AB1  IOSTANDARD TMDS_33}  [get_ports {tmds_data_n_o[0]}];       # HDMI_TX0_N
set_property -dict {PACKAGE_PIN AB2  IOSTANDARD TMDS_33}  [get_ports {tmds_data_n_o[1]}];       # HDMI_TX1_N
set_property -dict {PACKAGE_PIN AB5  IOSTANDARD TMDS_33}  [get_ports {tmds_data_n_o[2]}];       # HDMI_TX2_N
set_property -dict {PACKAGE_PIN AA1  IOSTANDARD TMDS_33}  [get_ports {tmds_data_p_o[0]}];       # HDMI_TX0_P
set_property -dict {PACKAGE_PIN AB3  IOSTANDARD TMDS_33}  [get_ports {tmds_data_p_o[1]}];       # HDMI_TX1_P
set_property -dict {PACKAGE_PIN AA5  IOSTANDARD TMDS_33}  [get_ports {tmds_data_p_o[2]}];       # HDMI_TX2_P
set_property -dict {PACKAGE_PIN M15  IOSTANDARD LVCMOS33} [get_ports {hdmi_ct_hpd_o}];          # CT_HPD
set_property -dict {PACKAGE_PIN Y8   IOSTANDARD LVCMOS33} [get_ports {hdmi_hpd_i}];             # HPD_A
set_property -dict {PACKAGE_PIN AB7  IOSTANDARD LVCMOS33} [get_ports {hdmi_scl_io}];            # SCL_A
set_property -dict {PACKAGE_PIN V9   IOSTANDARD LVCMOS33} [get_ports {hdmi_sda_io}];            # SDA_A
set_property -dict {PACKAGE_PIN AB8  IOSTANDARD LVCMOS33} [get_ports {hdmi_ls_oe_o}];           # LS_OE
set_property -dict {PACKAGE_PIN W9   IOSTANDARD LVCMOS33} [get_ports {hdmi_cec_io}];            # CEC_A

# MEGA65 Keyboard
set_property -dict {PACKAGE_PIN A14  IOSTANDARD LVCMOS33} [get_ports {kb_io0_o}];               # KB_IO1
set_property -dict {PACKAGE_PIN A13  IOSTANDARD LVCMOS33} [get_ports {kb_io1_o}];               # KB_IO2
set_property -dict {PACKAGE_PIN C13  IOSTANDARD LVCMOS33} [get_ports {kb_io2_i}];               # KB_IO3
set_property -dict {PACKAGE_PIN E13  IOSTANDARD LVCMOS33} [get_ports {kb_tck_o}];               # KB_TCK
set_property -dict {PACKAGE_PIN E14  IOSTANDARD LVCMOS33} [get_ports {kb_tdo_i}];               # KB_TDO
set_property -dict {PACKAGE_PIN D14  IOSTANDARD LVCMOS33} [get_ports {kb_tms_o}];               # KB_TMS
set_property -dict {PACKAGE_PIN D15  IOSTANDARD LVCMOS33} [get_ports {kb_tdi_o}];               # KB_TDI
set_property -dict {PACKAGE_PIN B13  IOSTANDARD LVCMOS33} [get_ports {kb_jtagen_o}];            # KB_JTAGEN

# Micro SD Connector (external slot at back of the cover)
set_property -dict {PACKAGE_PIN K1   IOSTANDARD LVCMOS33} [get_ports {sd_cd_i}];                # SD_CD
set_property -dict {PACKAGE_PIN G2   IOSTANDARD LVCMOS33} [get_ports {sd_clk_o}];               # SD_CLK
set_property -dict {PACKAGE_PIN H2   IOSTANDARD LVCMOS33} [get_ports {sd_miso_i}];              # SD_D0
set_property -dict {PACKAGE_PIN J2   IOSTANDARD LVCMOS33} [get_ports {sd_mosi_o}];              # SD_CMD
set_property -dict {PACKAGE_PIN K2   IOSTANDARD LVCMOS33} [get_ports {sd_reset_o}];             # SD_D3
set_property -dict {PACKAGE_PIN H3   IOSTANDARD LVCMOS33} [get_ports {sd_d1_i}];                # SD_D1
set_property -dict {PACKAGE_PIN J1   IOSTANDARD LVCMOS33} [get_ports {sd_d2_i}];                # SD_D2

# SD Connector (this is the slot at the bottom side of the case under the cover)
set_property -dict {PACKAGE_PIN D17  IOSTANDARD LVCMOS33} [get_ports {sd2_cd_i}];               # SD2_CD
set_property -dict {PACKAGE_PIN B17  IOSTANDARD LVCMOS33} [get_ports {sd2_clk_o}];              # SD2_CLK
set_property -dict {PACKAGE_PIN B18  IOSTANDARD LVCMOS33} [get_ports {sd2_miso_i}];             # SD2_D0
set_property -dict {PACKAGE_PIN B16  IOSTANDARD LVCMOS33} [get_ports {sd2_mosi_o}];             # SD2_CMD
set_property -dict {PACKAGE_PIN B15  IOSTANDARD LVCMOS33} [get_ports {sd2_reset_o}];            # SD2_D3
set_property -dict {PACKAGE_PIN C17  IOSTANDARD LVCMOS33} [get_ports {sd2_wp_i}];               # SD2_WP
set_property -dict {PACKAGE_PIN C18  IOSTANDARD LVCMOS33} [get_ports {sd2_d1_i}];               # SD2_D1
set_property -dict {PACKAGE_PIN C19  IOSTANDARD LVCMOS33} [get_ports {sd2_d2_i}];               # SD2_D2

# PWM audio
set_property -dict {PACKAGE_PIN L6   IOSTANDARD LVCMOS33} [get_ports {pwm_l_o}];                # PWM_L
set_property -dict {PACKAGE_PIN F4   IOSTANDARD LVCMOS33} [get_ports {pwm_r_o}];                # PWM_R

# Audio DAC. U37 = SSM2518CPZ-R7
set_property -dict {PACKAGE_PIN D16  IOSTANDARD LVCMOS33} [get_ports {audio_mclk_o}];           # AUDIO_MCLK
set_property -dict {PACKAGE_PIN E19  IOSTANDARD LVCMOS33} [get_ports {audio_bick_o}];           # AUDIO_BCLK
set_property -dict {PACKAGE_PIN E16  IOSTANDARD LVCMOS33} [get_ports {audio_sdti_o}];           # AUDIO_SDATA
set_property -dict {PACKAGE_PIN F19  IOSTANDARD LVCMOS33} [get_ports {audio_lrclk_o}];          # AUDIO_LRCLK
set_property -dict {PACKAGE_PIN F18  IOSTANDARD LVCMOS33} [get_ports {audio_pdn_n_o}];          # nSD_AUDIO

# Joystick
set_property -dict {PACKAGE_PIN F16  IOSTANDARD LVCMOS33} [get_ports {fa_down_n_i}];            # FA_DOWN
set_property -dict {PACKAGE_PIN E17  IOSTANDARD LVCMOS33} [get_ports {fa_fire_n_i}];            # FA_FIRE
set_property -dict {PACKAGE_PIN F14  IOSTANDARD LVCMOS33} [get_ports {fa_left_n_i}];            # FA_LEFT
set_property -dict {PACKAGE_PIN F13  IOSTANDARD LVCMOS33} [get_ports {fa_right_n_i}];           # FA_RIGHT
set_property -dict {PACKAGE_PIN C14  IOSTANDARD LVCMOS33} [get_ports {fa_up_n_i}];              # FA_UP
set_property -dict {PACKAGE_PIN P17  IOSTANDARD LVCMOS33} [get_ports {fb_down_n_i}];            # FB_DOWN
set_property -dict {PACKAGE_PIN F15  IOSTANDARD LVCMOS33} [get_ports {fb_fire_n_i}];            # FB_FIRE
set_property -dict {PACKAGE_PIN F21  IOSTANDARD LVCMOS33} [get_ports {fb_left_n_i}];            # FB_LEFT
set_property -dict {PACKAGE_PIN C15  IOSTANDARD LVCMOS33} [get_ports {fb_right_n_i}];           # FB_RIGHT
set_property -dict {PACKAGE_PIN W19  IOSTANDARD LVCMOS33} [get_ports {fb_up_n_i}];              # FB_UP

# Paddles
set_property -dict {PACKAGE_PIN H22  IOSTANDARD LVCMOS33} [get_ports {paddle_drain_o}];         # Pulse-discharge
set_property -dict {PACKAGE_PIN H13  IOSTANDARD LVCMOS33} [get_ports {paddle_i[0]}];            # CP0
set_property -dict {PACKAGE_PIN G15  IOSTANDARD LVCMOS33} [get_ports {paddle_i[1]}];            # CP1
set_property -dict {PACKAGE_PIN J14  IOSTANDARD LVCMOS33} [get_ports {paddle_i[2]}];            # CP2
set_property -dict {PACKAGE_PIN J22  IOSTANDARD LVCMOS33} [get_ports {paddle_i[3]}];            # CP3

# HyperRAM. U29 = IS66WVH8M8BLL-100B1LI
set_property -dict {PACKAGE_PIN D22  IOSTANDARD LVCMOS33} [get_ports {hr_clk_p_o}];             # H_CLK
set_property -dict {PACKAGE_PIN C22  IOSTANDARD LVCMOS33} [get_ports {hr_cs0_o}];               # CS0
set_property -dict {PACKAGE_PIN A21  IOSTANDARD LVCMOS33} [get_ports {hr_d_io[0]}];             # DQ0
set_property -dict {PACKAGE_PIN D21  IOSTANDARD LVCMOS33} [get_ports {hr_d_io[1]}];             # DQ1
set_property -dict {PACKAGE_PIN C20  IOSTANDARD LVCMOS33} [get_ports {hr_d_io[2]}];             # DQ2
set_property -dict {PACKAGE_PIN A20  IOSTANDARD LVCMOS33} [get_ports {hr_d_io[3]}];             # DQ3
set_property -dict {PACKAGE_PIN B20  IOSTANDARD LVCMOS33} [get_ports {hr_d_io[4]}];             # DQ4
set_property -dict {PACKAGE_PIN A19  IOSTANDARD LVCMOS33} [get_ports {hr_d_io[5]}];             # DQ5
set_property -dict {PACKAGE_PIN E21  IOSTANDARD LVCMOS33} [get_ports {hr_d_io[6]}];             # DQ6
set_property -dict {PACKAGE_PIN E22  IOSTANDARD LVCMOS33} [get_ports {hr_d_io[7]}];             # DQ7
set_property -dict {PACKAGE_PIN B22  IOSTANDARD LVCMOS33} [get_ports {hr_reset_o}];             # H_RES
set_property -dict {PACKAGE_PIN B21  IOSTANDARD LVCMOS33} [get_ports {hr_rwds_io}];             # RWDS
set_property -dict {PULLTYPE {}        SLEW FAST  DRIVE 16} [get_ports {hr_reset_o}];
set_property -dict {PULLTYPE {}        SLEW FAST  DRIVE 16} [get_ports {hr_cs0_o}];
set_property -dict {PULLTYPE {}        SLEW FAST  DRIVE 16} [get_ports {hr_clk_p_o}];
set_property -dict {PULLTYPE {}        SLEW FAST  DRIVE 16} [get_ports {hr_d_io[*]}];
set_property -dict {PULLTYPE PULLDOWN  SLEW FAST  DRIVE 16} [get_ports {hr_rwds_io}];

# CBM-488/IEC serial port
set_property -dict {PACKAGE_PIN N17  IOSTANDARD LVCMOS33} [get_ports {iec_atn_n_o}];            # F_SER_ATN
set_property -dict {PACKAGE_PIN AA21 IOSTANDARD LVCMOS33} [get_ports {iec_clk_en_o}];           # F_SER_CLK_EN. Active high
set_property -dict {PACKAGE_PIN Y18  IOSTANDARD LVCMOS33} [get_ports {iec_clk_n_i}];            # F_SER_CLK_I
set_property -dict {PACKAGE_PIN Y19  IOSTANDARD LVCMOS33} [get_ports {iec_clk_n_o}];            # F_SER_CLK_O
set_property -dict {PACKAGE_PIN Y21  IOSTANDARD LVCMOS33} [get_ports {iec_data_en_o}];          # F_SER_DATA_EN. Active high
set_property -dict {PACKAGE_PIN AB22 IOSTANDARD LVCMOS33} [get_ports {iec_data_n_i}];           # F_SER_DATA_I
set_property -dict {PACKAGE_PIN Y22  IOSTANDARD LVCMOS33} [get_ports {iec_data_n_o}];           # F_SER_DATA_O
set_property -dict {PACKAGE_PIN AB21 IOSTANDARD LVCMOS33} [get_ports {iec_reset_n_o}];          # F_SER_RESET
set_property -dict {PACKAGE_PIN AB20 IOSTANDARD LVCMOS33} [get_ports {iec_srq_en_o}];           # F_SER_SRQ_EN. Active high
set_property -dict {PACKAGE_PIN AA18 IOSTANDARD LVCMOS33} [get_ports {iec_srq_n_i}];            # F_SER_SRQ_I
set_property -dict {PACKAGE_PIN U20  IOSTANDARD LVCMOS33} [get_ports {iec_srq_n_o}];            # F_SER_SRQ_O
set_property -dict {PULLUP TRUE}                          [get_ports {iec_clk_n_i}];
set_property -dict {PULLUP TRUE}                          [get_ports {iec_data_n_i}];

# C64 Expansion Port (aka Cartridge Port)
set_property -dict {PACKAGE_PIN V17  IOSTANDARD LVCMOS33} [get_ports {cart_phi2_o}];            # F_C64_O2
set_property -dict {PACKAGE_PIN AA19 IOSTANDARD LVCMOS33} [get_ports {cart_dotclock_o}];        # F_C64_CLOCK
set_property -dict {PACKAGE_PIN P15  IOSTANDARD LVCMOS33} [get_ports {cart_dma_i}];             # F_C64_DMA
set_property -dict {PACKAGE_PIN N14  IOSTANDARD LVCMOS33} [get_ports {cart_reset_o}];           # F_C64_RESET
set_property -dict {PACKAGE_PIN W22  IOSTANDARD LVCMOS33} [get_ports {cart_game_i}];            # F_C64_GAME
set_property -dict {PACKAGE_PIN R19  IOSTANDARD LVCMOS33} [get_ports {cart_exrom_i}];           # F_C64_EXROM
set_property -dict {PACKAGE_PIN W17  IOSTANDARD LVCMOS33} [get_ports {cart_nmi_i}];             # F_C64_NMI
set_property -dict {PACKAGE_PIN P14  IOSTANDARD LVCMOS33} [get_ports {cart_irq_i}];             # F_C64_IRQ
set_property -dict {PACKAGE_PIN G18  IOSTANDARD LVCMOS33} [get_ports {cart_ctrl_en_o}];         # F_CTRL_EN
set_property -dict {PACKAGE_PIN U17  IOSTANDARD LVCMOS33} [get_ports {cart_ctrl_dir_o}];        # F_CTRL_DIR
set_property -dict {PACKAGE_PIN N13  IOSTANDARD LVCMOS33} [get_ports {cart_ba_io}];             # F_C64_BA
set_property -dict {PACKAGE_PIN R18  IOSTANDARD LVCMOS33} [get_ports {cart_rw_io}];             # F_C64_RW
set_property -dict {PACKAGE_PIN N15  IOSTANDARD LVCMOS33} [get_ports {cart_io1_io}];            # F_C64_IO1
set_property -dict {PACKAGE_PIN AA20 IOSTANDARD LVCMOS33} [get_ports {cart_io2_io}];            # F_C64_IO2
set_property -dict {PACKAGE_PIN T18  IOSTANDARD LVCMOS33} [get_ports {cart_romh_io}];           # F_C64_ROMH
set_property -dict {PACKAGE_PIN AB18 IOSTANDARD LVCMOS33} [get_ports {cart_roml_io}];           # F_C64_ROML
set_property -dict {PACKAGE_PIN L19  IOSTANDARD LVCMOS33} [get_ports {cart_addr_en_o}];         # F_ADDR_EN
set_property -dict {PACKAGE_PIN L18  IOSTANDARD LVCMOS33} [get_ports {cart_haddr_dir_o}];       # F_HADDR_DIR
set_property -dict {PACKAGE_PIN L21  IOSTANDARD LVCMOS33} [get_ports {cart_laddr_dir_o}];       # F_LADDR_DIR
set_property -dict {PACKAGE_PIN K19  IOSTANDARD LVCMOS33} [get_ports {cart_a_io[0]}];           # F_C64_A0
set_property -dict {PACKAGE_PIN K18  IOSTANDARD LVCMOS33} [get_ports {cart_a_io[1]}];           # F_C64_A1
set_property -dict {PACKAGE_PIN K21  IOSTANDARD LVCMOS33} [get_ports {cart_a_io[2]}];           # F_C64_A2
set_property -dict {PACKAGE_PIN M22  IOSTANDARD LVCMOS33} [get_ports {cart_a_io[3]}];           # F_C64_A3
set_property -dict {PACKAGE_PIN L20  IOSTANDARD LVCMOS33} [get_ports {cart_a_io[4]}];           # F_C64_A4
set_property -dict {PACKAGE_PIN J20  IOSTANDARD LVCMOS33} [get_ports {cart_a_io[5]}];           # F_C64_A5
set_property -dict {PACKAGE_PIN J21  IOSTANDARD LVCMOS33} [get_ports {cart_a_io[6]}];           # F_C64_A6
set_property -dict {PACKAGE_PIN K22  IOSTANDARD LVCMOS33} [get_ports {cart_a_io[7]}];           # F_C64_A7
set_property -dict {PACKAGE_PIN H17  IOSTANDARD LVCMOS33} [get_ports {cart_a_io[8]}];           # F_C64_A8
set_property -dict {PACKAGE_PIN H20  IOSTANDARD LVCMOS33} [get_ports {cart_a_io[9]}];           # F_C64_A9
set_property -dict {PACKAGE_PIN G20  IOSTANDARD LVCMOS33} [get_ports {cart_a_io[10]}];          # F_C64_A10
set_property -dict {PACKAGE_PIN J15  IOSTANDARD LVCMOS33} [get_ports {cart_a_io[11]}];          # F_C64_A11
set_property -dict {PACKAGE_PIN H19  IOSTANDARD LVCMOS33} [get_ports {cart_a_io[12]}];          # F_C64_A12
set_property -dict {PACKAGE_PIN M20  IOSTANDARD LVCMOS33} [get_ports {cart_a_io[13]}];          # F_C64_A13
set_property -dict {PACKAGE_PIN N22  IOSTANDARD LVCMOS33} [get_ports {cart_a_io[14]}];          # F_C64_A14
set_property -dict {PACKAGE_PIN H18  IOSTANDARD LVCMOS33} [get_ports {cart_a_io[15]}];          # F_C64_A15
set_property -dict {PACKAGE_PIN U21  IOSTANDARD LVCMOS33} [get_ports {cart_data_en_o}];         # F_DATA_EN
set_property -dict {PACKAGE_PIN V22  IOSTANDARD LVCMOS33} [get_ports {cart_data_dir_o}];        # F_DATA_DIR
set_property -dict {PACKAGE_PIN P16  IOSTANDARD LVCMOS33} [get_ports {cart_d_io[0]}];           # F_C64_D0
set_property -dict {PACKAGE_PIN R17  IOSTANDARD LVCMOS33} [get_ports {cart_d_io[1]}];           # F_C64_D1
set_property -dict {PACKAGE_PIN P20  IOSTANDARD LVCMOS33} [get_ports {cart_d_io[2]}];           # F_C64_D2
set_property -dict {PACKAGE_PIN R16  IOSTANDARD LVCMOS33} [get_ports {cart_d_io[3]}];           # F_C64_D3
set_property -dict {PACKAGE_PIN U18  IOSTANDARD LVCMOS33} [get_ports {cart_d_io[4]}];           # F_C64_D4
set_property -dict {PACKAGE_PIN V18  IOSTANDARD LVCMOS33} [get_ports {cart_d_io[5]}];           # F_C64_D5
set_property -dict {PACKAGE_PIN W20  IOSTANDARD LVCMOS33} [get_ports {cart_d_io[6]}];           # F_C64_D6
set_property -dict {PACKAGE_PIN W21  IOSTANDARD LVCMOS33} [get_ports {cart_d_io[7]}];           # F_C64_D7

# SMSC Ethernet PHY. U4 = KSZ8081RNDCA
set_property -dict {PACKAGE_PIN L4   IOSTANDARD LVCMOS33} [get_ports {eth_clock_o}];            # ETH_CLK
set_property -dict {PACKAGE_PIN R14  IOSTANDARD LVCMOS33} [get_ports {eth_led2_o}];             # ETH_LED2
set_property -dict {PACKAGE_PIN J6   IOSTANDARD LVCMOS33} [get_ports {eth_mdc_o}];              # ETH_MDC
set_property -dict {PACKAGE_PIN L5   IOSTANDARD LVCMOS33} [get_ports {eth_mdio_io}];            # ETH_MDIO
set_property -dict {PACKAGE_PIN K6   IOSTANDARD LVCMOS33} [get_ports {eth_reset_o}];            # ETH-RST
set_property -dict {PACKAGE_PIN P4   IOSTANDARD LVCMOS33} [get_ports {eth_rxd_i[0]}];           # ETH_RX_D0
set_property -dict {PACKAGE_PIN L1   IOSTANDARD LVCMOS33} [get_ports {eth_rxd_i[1]}];           # ETH_RX_D1
set_property -dict {PACKAGE_PIN K4   IOSTANDARD LVCMOS33} [get_ports {eth_rxdv_i}];             # ETH_CRS_DV
set_property -dict {PACKAGE_PIN M6   IOSTANDARD LVCMOS33} [get_ports {eth_rxer_i}];             # ETH_RXER
set_property -dict {PACKAGE_PIN L3   IOSTANDARD LVCMOS33} [get_ports {eth_txd_o[0]}];           # ETH_TX_D0
set_property -dict {PACKAGE_PIN K3   IOSTANDARD LVCMOS33} [get_ports {eth_txd_o[1]}];           # ETH_TX_D1
set_property -dict {PACKAGE_PIN J4   IOSTANDARD LVCMOS33} [get_ports {eth_txen_o}];             # ETH_TX_EN
set_property -dict {SLEW SLOW  DRIVE 4}                   [get_ports {eth_txd_o[*]}];
set_property -dict {SLEW SLOW  DRIVE 4}                   [get_ports {eth_txen_o}];
set_property -dict {SLEW FAST}                            [get_ports {eth_clock_o}];

# FDC interface
set_property -dict {PACKAGE_PIN P6   IOSTANDARD LVCMOS33} [get_ports {f_density_o}];            # F_REDWC
set_property -dict {PACKAGE_PIN R1   IOSTANDARD LVCMOS33} [get_ports {f_diskchanged_i}];        # F_DSCKCHG
set_property -dict {PACKAGE_PIN M2   IOSTANDARD LVCMOS33} [get_ports {f_index_i}];              # F_INDEX
set_property -dict {PACKAGE_PIN M5   IOSTANDARD LVCMOS33} [get_ports {f_motora_o}];             # F_MOTEA
set_property -dict {PACKAGE_PIN H15  IOSTANDARD LVCMOS33} [get_ports {f_motorb_o}];             # F_MOTEB
set_property -dict {PACKAGE_PIN P1   IOSTANDARD LVCMOS33} [get_ports {f_rdata_i}];              # F_RDATA1
set_property -dict {PACKAGE_PIN N5   IOSTANDARD LVCMOS33} [get_ports {f_selecta_o}];            # F_DRVSA
set_property -dict {PACKAGE_PIN G17  IOSTANDARD LVCMOS33} [get_ports {f_selectb_o}];            # F_DRVSB
set_property -dict {PACKAGE_PIN M1   IOSTANDARD LVCMOS33} [get_ports {f_side1_o}];              # F_SIDE1
set_property -dict {PACKAGE_PIN P5   IOSTANDARD LVCMOS33} [get_ports {f_stepdir_o}];            # F_DIR
set_property -dict {PACKAGE_PIN M3   IOSTANDARD LVCMOS33} [get_ports {f_step_o}];               # F_STEP
set_property -dict {PACKAGE_PIN N2   IOSTANDARD LVCMOS33} [get_ports {f_track0_i}];             # F_TRCK0
set_property -dict {PACKAGE_PIN N4   IOSTANDARD LVCMOS33} [get_ports {f_wdata_o}];              # F_WDATE
set_property -dict {PACKAGE_PIN N3   IOSTANDARD LVCMOS33} [get_ports {f_wgate_o}];              # F_WGATE
set_property -dict {PACKAGE_PIN P2   IOSTANDARD LVCMOS33} [get_ports {f_writeprotect_i}];       # F_WPT

# I2C bus for on-board peripherals
# U36. 24AA025E48T.   Address 0x50. 2K Serial EEPROM.
# U37. SSM2518CPZ-R7. Address 0x34. Audio DAC
# U38. ISL12020MIRZ.  Address 0x6F. Real-Time Clock Module.
# U38. ISL12020MIRZ.  Address 0x57. SRAM.
# U39. 24LC128.       Address 0x54. 128K CMOS Serial EEPROM.
set_property -dict {PACKAGE_PIN A15  IOSTANDARD LVCMOS33} [get_ports {fpga_scl_io}];            # FPGA_SCL
set_property -dict {PACKAGE_PIN A16  IOSTANDARD LVCMOS33} [get_ports {fpga_sda_io}];            # FPGA_SDA
set_property -dict {PACKAGE_PIN G21  IOSTANDARD LVCMOS33} [get_ports {grove_scl_io}];           # Grove_SCL0
set_property -dict {PACKAGE_PIN G22  IOSTANDARD LVCMOS33} [get_ports {grove_sda_io}];           # Grove_SDA0

# On board LEDs
set_property -dict {PACKAGE_PIN U22  IOSTANDARD LVCMOS33} [get_ports {led_o}];                  # ULED

# Pmod Header
set_property -dict {PACKAGE_PIN G1   IOSTANDARD LVCMOS33} [get_ports {p1hi_io[0]}];             # B35_L5_P
set_property -dict {PACKAGE_PIN E1   IOSTANDARD LVCMOS33} [get_ports {p1hi_io[1]}];             # B35_L3_P
set_property -dict {PACKAGE_PIN C2   IOSTANDARD LVCMOS33} [get_ports {p1hi_io[2]}];             # B35_L2_P
set_property -dict {PACKAGE_PIN B1   IOSTANDARD LVCMOS33} [get_ports {p1hi_io[3]}];             # B35_L1_P
set_property -dict {PACKAGE_PIN F1   IOSTANDARD LVCMOS33} [get_ports {p1lo_io[0]}];             # B35_L5_N
set_property -dict {PACKAGE_PIN D1   IOSTANDARD LVCMOS33} [get_ports {p1lo_io[1]}];             # B35_L3_N
set_property -dict {PACKAGE_PIN B2   IOSTANDARD LVCMOS33} [get_ports {p1lo_io[2]}];             # B35_L2_N
set_property -dict {PACKAGE_PIN A1   IOSTANDARD LVCMOS33} [get_ports {p1lo_io[3]}];             # B35_L1_N
set_property -dict {PACKAGE_PIN E2   IOSTANDARD LVCMOS33} [get_ports {p2hi_io[0]}];             # B35_L4_P
set_property -dict {PACKAGE_PIN D2   IOSTANDARD LVCMOS33} [get_ports {p2hi_io[1]}];             # B35_L4_N
set_property -dict {PACKAGE_PIN G4   IOSTANDARD LVCMOS33} [get_ports {p2hi_io[2]}];             # B35_L12_N
set_property -dict {PACKAGE_PIN J5   IOSTANDARD LVCMOS33} [get_ports {p2hi_io[3]}];             # B35_L10_P
set_property -dict {PACKAGE_PIN F3   IOSTANDARD LVCMOS33} [get_ports {p2lo_io[0]}];             # B35_L6_P
set_property -dict {PACKAGE_PIN E3   IOSTANDARD LVCMOS33} [get_ports {p2lo_io[1]}];             # B35_L6_N
set_property -dict {PACKAGE_PIN H4   IOSTANDARD LVCMOS33} [get_ports {p2lo_io[2]}];             # B35_L12_P
set_property -dict {PACKAGE_PIN H5   IOSTANDARD LVCMOS33} [get_ports {p2lo_io[3]}];             # B35_L10_N

# Quad SPI Flash. U5 = S25FL512SAGBHIS10
set_property -dict {PACKAGE_PIN T19  IOSTANDARD LVCMOS33} [get_ports {qspicsn_o}];              # SPI-CS
set_property -dict {PACKAGE_PIN P22  IOSTANDARD LVCMOS33} [get_ports {qspidb_io[0]}];           # SPI-DQ0
set_property -dict {PACKAGE_PIN R22  IOSTANDARD LVCMOS33} [get_ports {qspidb_io[1]}];           # SPI-DQ1
set_property -dict {PACKAGE_PIN P21  IOSTANDARD LVCMOS33} [get_ports {qspidb_io[2]}];           # SPI-DQ2
set_property -dict {PACKAGE_PIN R21  IOSTANDARD LVCMOS33} [get_ports {qspidb_io[3]}];           # SPI-DQ3
set_property -dict {PULLUP TRUE}                          [get_ports {qspidb_io[*]}];

################################
## PLACEMENT CONSTRAINTS
################################

# Place MAX10 close to I/O pins
create_pblock pblock_MAX10
add_cells_to_pblock pblock_MAX10 [get_cells [list MAX10]]
resize_pblock pblock_MAX10 -add {SLICE_X0Y150:SLICE_X7Y174}

# Place Keyboard close to I/O pins
create_pblock pblock_m65driver
add_cells_to_pblock pblock_m65driver [get_cells [list i_framework/i_m2m_keyb/m65driver]]
resize_pblock pblock_m65driver -add {SLICE_X0Y225:SLICE_X7Y243}

# Place SD card controller in the middle between the left and right FPGA boundary because the output ports are at the opposide edges
create_pblock pblock_sdcard
add_cells_to_pblock pblock_sdcard [get_cells [list i_framework/i_qnice_wrapper/QNICE_SOC/sd_card]]
resize_pblock pblock_sdcard -add {SLICE_X66Y178:SLICE_X99Y193}

# Place phase-shifted VGA output registers near the actual output buffers
create_pblock pblock_vga
add_cells_to_pblock pblock_vga [get_cells [list i_framework/i_av_pipeline/i_analog_pipeline/VGA_OUT_PHASE_SHIFTED.*]]
resize_pblock pblock_vga -add SLICE_X0Y75:SLICE_X5Y99

