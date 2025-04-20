//---------------------------------------------------------------------
// Replacement for the Reconfigable PLL clock in the Amiga MiSTer Core.
// Uses the Xilinx PLLE2_ADV module. 
//
// March 2025   David Raynor (Kiwi)
//
//---------------------------------------------------------------------


module pll (
    input wire refclk,           // 50 MHz input clock
    input wire reset,            // Reset signal
    input wire [15:0] drp_daddr, // Dynamic reconfig address
    input wire [15:0] drp_di,    // Dynamic reconfig data input
    input wire drp_en,           // Dynamic reconfig enable
    input wire drp_we,           // Dynamic reconfig write enable
    output wire [15:0] drp_do,   // Dynamic reconfig data output
    output wire drp_ready,       // Dynamic reconfig ready
    output wire outclk_0,        // 113.50064 MHz output clock
    output wire outclk_1,        // 28.37516 MHz output clock
    output wire locked           // PLL lock indicator
);

    wire clk_fb;             // Feedback clock
    wire clk_out_mmcm1;
    wire clk_out_mmcm2;

    PLLE2_ADV #(
        .BANDWIDTH("OPTIMIZED"),
        .CLKFBOUT_MULT(59),      // Feedback multiplier (Adjust based on frequencies)
        .CLKFBOUT_PHASE(0.0),
        .CLKIN1_PERIOD(20.0),    // Input clock period in ns (50 MHz => 20 ns)
        .DIVCLK_DIVIDE(2),       // Input clock division
        //.CLKOUT0_DIVIDE(22),     // Output 1 clock division (113.50064 MHz)
        //.CLKOUT1_DIVIDE(88),     // Output 2 clock division (28.37516 MHz)
        .CLKOUT0_DIVIDE(13),     // Output 1 clock division (113.50064 MHz)
        .CLKOUT1_DIVIDE(52),     // Output 2 clock division (28.37516 MHz)
        .CLKOUT0_PHASE(0.0),
        .CLKOUT1_PHASE(0.0),
        .STARTUP_WAIT("FALSE")
    ) pll_inst (
        .CLKFBIN(clk_fb),
        .CLKFBOUT(clk_fb),
        .CLKIN1(clk_in),
        .CLKOUT0(clk_out_mmcm1),    // 113.50064 MHz clock
        .CLKOUT1(clk_out_mmcm2),    // 28.37516 MHz clock
        .DADDR(drp_daddr),          // Dynamic reconfig address
        .DI(drp_di),                // Dynamic reconfig data input
        .DEN(drp_en),               // Dynamic reconfig enable
        .DWE(drp_we),               // Dynamic reconfig write enable
        .DO(drp_do),                // Dynamic reconfig data output
        .DRDY(drp_ready),           // Dynamic reconfig ready
        .LOCKED(locked),
        .RST(reset)
    );

    // Buffer the output clocks
    BUFG buf_out0 (
        .I(clk_out_mmcm1),
        .O(outclk_0)
    );

    BUFG buf_out1 (
        .I(clk_out_mmcm2),
        .O(outclk_1)
    );

endmodule

