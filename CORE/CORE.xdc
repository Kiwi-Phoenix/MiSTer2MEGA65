## NAME-OF-YOUR-PROJECT for MEGA65 (NAME-OF-THE-GITHUB-REPO)
##
## Core specific constraints
##
## This machine is based on EXACT GITHUB REPO NAME OF THE MiSTer REPO
## Powered by MiSTer2MEGA65
## MEGA65 port done by YOURNAME in YEAR and licensed under GPL v3


## Name Autogenerated Clocks
## Important: Using them in subsequent statements, e.g. clock dividers requires that they
## have been named/defined here before
## otherwise Vivado does not find the pins)
create_generated_clock -name main_clk      [get_pins CORE/clk_gen/i_clk_main/CLKOUT0]
# Add more clocks here, if needed
#create_generated_clock -name pllaudio_outclk_o [get_pins CORE/i_main/pll_audio/pll_audio_0002/plle2_inst/CLKOUT0]
#create_generated_clock -name clk_114           [get_pins CORE/i_main/Amiga/pll/pll_config/pll_inst/CLKOUT0]
#create_generated_clock -name clk_sys           [get_pins CORE/i_main/Amiga/pll/pll_config/pll_inst/CLKOUT1]
create_generated_clock -name pllaudio_outclk_o [get_pins CORE/i_main/pll_audio/plle2_inst/CLKOUT0]
create_generated_clock -name clk_114           [get_pins CORE/i_main/Amiga/pll/pll_inst/CLKOUT0]
create_generated_clock -name clk_sys           [get_pins CORE/i_main/Amiga/pll/pll_inst/CLKOUT1]

#set_property KEEP TRUE [get_nets byte_cnt[4]_i_1]
#set_property DONT_TOUCH TRUE [get_cells CORE/i_main/Amiga/hps_ext/byte_cnt[4]_i_1]
#set_property KEEP TRUE [get_nets byte_cnt[4]]
#set_property DONT_TOUCH TRUE [get_cells CORE/i_main/Amiga/hps_ext/byte_cnt[4]]
#set_property KEEP TRUE [get_nets byte_cnt]
#set_property DONT_TOUCH TRUE [get_cells {CORE/i_main/Amiga/hps_ext/byte_cnt[*]]}

set_property KEEP_HIERARCHY TRUE [get_cells *]
