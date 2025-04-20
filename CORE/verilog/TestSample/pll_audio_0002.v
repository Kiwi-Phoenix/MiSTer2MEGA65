//--------------------------------------------------------------
//  Replacement for the original Minimig Core pll_Audio clock.
//  Uses the Xilinx PLLE2_BASE module. 
//
//  March 2025
//  David Raynor (Kiwi)
//
//----------------------------------------------------------------


module pll_audio_0002 (
    input  wire refclk,         // 50 MHz input clock
    input  wire rst,            // Reset signal
    output wire outclk_0,       // 24.576 MHz output clock
    output wire locked          // PLL lock indicator
);


    wire clk_in;
    wire pll_clk_out;         // PLL generated clock
    wire pll_fbout;           // Feedback clock
    wire pll_buff_fbclk;
    wire reset_high;
    wire locked_int;
    
// Input Buffering
    IBUF clkin1_buf (
        .I(refclk)
       ,.O(clk_in)
    );    

    PLLE2_BASE #(
         .BANDWIDTH("OPTIMIZED")    // PLL bandwidth
        ,.COMPENSATION("ZHOLD")
        ,.STARTUP_WAIT("FALSE")      // Delay PLL startup
        ,.REF_JITTER1(0.010)
        ,.REF_JITTER2(0.010)
        // Input clock
        ,.CLKIN1_PERIOD(20.0)       // Input clock period in ns (50 MHz => 20 ns)
        ,.CLKIN2_PERIOD(0)                
        ,.CLKFBOUT_MULT(29)         // Multiplier for feedback clock
        ,.DIVCLK_DIVIDE(1)          // Input clock division
        // Output Clocks
        ,.CLKOUT0_DIVIDE(59)        // Divider for output clock (24.576 MHz)                        
        ,.CLKOUT0_PHASE(0.0)        // Output clock phase
        ,.CLKOUT0_DUTY_CYCLE(0.500)
    ) plle2_inst (
         .CLKIN1(clk_in)            // Input clock
        ,.CLKFBIN(pll_buff_fbclk)   // Feedback clock input
        ,.CLKFBOUT(pll_fbout)       // Feedback clock output
        ,.CLKOUT0(pll_clk_out)      // Output clock
        ,.LOCKED(locked_int)        // Lock indicator
        ,.RST(reset_high)           // Reset
    );
    
assign reset_high = rst;
assign locked = locked_int;

    // Buffer the output clock
    BUFG clk_buf (
        .I(pll_fbout)
       ,.O(pll_buff_fbclk)
    );
    
    BUFG clkout0_buf (
        .I(pll_clk_out),
        .O(outclk_0)
    );


endmodule



/*


module pll_audio_0002 (

    // interface 'refclk'
    input wire refclk,   
    // interface 'reset'
    input wire rst,    
    // interface 'outclk0'
    output wire outclk_0,    
    // interface 'locked'
    output wire locked
    );
   
//PLLE2_BASE #(
PLLE2_ADV #(
   .BANDWIDTH("OPTIMIZED"),  // OPTIMIZED, HIGH, LOW
   .CLKFBOUT_MULT(29),        // Multiply value for all CLKOUT, (2-64)
   .CLKFBOUT_PHASE(0.0),     // Phase offset in degrees of CLKFB, (-360.000-360.000).
   .CLKIN1_PERIOD(20.000),      // Input clock period in ns to ps resolution (i.e. 33.333 is 30 MHz).
   .CLKIN2_PERIOD(10.0),
   .COMPENSATION("ZHOLD"),
   // CLKOUT0_DIVIDE - CLKOUT5_DIVIDE: Divide amount for each CLKOUT (1-128)
   .CLKOUT0_DIVIDE(59),
   .CLKOUT1_DIVIDE(1),
   .CLKOUT2_DIVIDE(1),
   .CLKOUT3_DIVIDE(1),
   .CLKOUT4_DIVIDE(1),
   .CLKOUT5_DIVIDE(1),
   // CLKOUT0_DUTY_CYCLE - CLKOUT5_DUTY_CYCLE: Duty cycle for each CLKOUT (0.001-0.999).
   .CLKOUT0_DUTY_CYCLE(0.5),
   .CLKOUT1_DUTY_CYCLE(0.5),
   .CLKOUT2_DUTY_CYCLE(0.5),
   .CLKOUT3_DUTY_CYCLE(0.5),
   .CLKOUT4_DUTY_CYCLE(0.5),
   .CLKOUT5_DUTY_CYCLE(0.5),
   // CLKOUT0_PHASE - CLKOUT5_PHASE: Phase offset for each CLKOUT (-360.000-360.000).
   .CLKOUT0_PHASE(0.0),
   .CLKOUT1_PHASE(0.0),
   .CLKOUT2_PHASE(0.0),
   .CLKOUT3_PHASE(0.0),
   .CLKOUT4_PHASE(0.0),
   .CLKOUT5_PHASE(0.0),
   .DIVCLK_DIVIDE(1),        // Master division value, (1-56)
   .IS_CLKINSEL_INVERTED(1'b0),
   .IS_PWRDWN_INVERTED(1'b0),
   .IS_RST_INVERTED(1'b0),
   .REF_JITTER1(0.01),        // Reference input jitter in UI, (0.000-0.999).
   .REF_JITTER2(0.01),
   .STARTUP_WAIT("FALSE")    // Delay DONE until PLL Locks, ("TRUE"/"FALSE")
)
//PLLE2_BASE_inst (
PLLE2_ADV_inst (
   // Clock Outputs: 1-bit (each) output: User configurable clock outputs
   .CLKOUT0(outclk_0),   // 1-bit output: CLKOUT0     Output should be: 24.57627 MHz
   .LOCKED(locked),     // 1-bit output: LOCK
   .CLKIN1(CLKIN1),     // 1-bit input: Input clock  
   .RST(rst),           // 1-bit input: Reset  
   .CLKFBIN(refclk),    // 1-bit input: Feedback clock
   .CLKIN2(1'b0),
   .CLKINSEL(1'b1),   
   .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
   .DCLK(1'b0),
   .DEN(1'b0),
   .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),      
   .DWE(1'b0),
   .PWRDWN(1'b0)
);


endmodule
  */