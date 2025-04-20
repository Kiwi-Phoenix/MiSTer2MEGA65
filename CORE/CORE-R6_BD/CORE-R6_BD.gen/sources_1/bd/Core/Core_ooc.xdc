################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name qnice_clk_i -period 10 [get_ports qnice_clk_i]
create_clock -name hr_clk_i -period 10 [get_ports hr_clk_i]
create_clock -name clk_i -period 10 [get_ports clk_i]
create_clock -name iec_clk_n_i -period 10 [get_ports iec_clk_n_i]

################################################################################