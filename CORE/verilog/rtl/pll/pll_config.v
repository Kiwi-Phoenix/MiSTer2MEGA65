//  PLL Reconfigurationo clock.
//  Replacement for the PLL clock as part othe MiSTer Minimig Core
//  Changed to use Xilinix Clock IPs
//
//  Input Clock     : 50 MHz
//  Output Clocks   : 113.50064  MHz
//                  : 28.37516   MHz
//  These are clock frequencies for PAL Amiga.
//  Reconfiguraiton to change frequences for NTSC Amiga.
//  Outut Clocks    : TBC
//                  : TBC
// 
//  April 2025 - David Raynor (Kiwi)
//  

`timescale 1ps/1ps
module pll_config (
        input  wire refclk
       ,input  wire rst
       ,output wire outclk_0
       ,output wire outclk_1
       ,output wire locked
       // Dynamic Reconfiguration ports
       ,input  wire drp_clk                 // DRP Clock
       ,input  wire drp_enable              // DRP enable signal
       ,input  wire drp_write               // DRP write enable
       ,input  wire [6:0]  drp_addr         // DRP addreess
       ,input  wire [15:0] drp_data         // DRP data input
       ,output wire drp_ready               // DRP ready signal                            
);

    wire drp_do;        // DRP data output
    wire drp_rdy;       // DRP Ready Signal

    wire reset_high;
    wire locked_int;
    wire pll_clk_in;
    wire pll_clk_out;
    wire pll_outclk_0;
    wire pll_outclk_1;
    wire pll_fbout;
    wire pll_buff_fbclk;

// Input Buffering
// This iBUF is not needed
/*
    IBUF clkin1_buf (
        .I(refclk)
       ,.O(pll_clk_out)
    );
*/
    BUFG clkin_buf (
//        .I(pll_clk_out)
        .I(refclk)
       ,.O(pll_clk_in)
    );


// Instantiate PLLE2_ADV

        PLLE2_ADV #(
                .BANDWIDTH("OPTIMIZED")
               ,.COMPENSATION("ZHOLD")
               ,.STARTUP_WAIT("FALSE")
               ,.REF_JITTER1(0.010)
               ,.REF_JITTER2(0.010)
               // Input Clock
               ,.CLKIN1_PERIOD(20)          // ns - 50 MHz clock input
               ,.CLKIN2_PERIOD(0)
               ,.CLKFBOUT_MULT(59)
               ,.DIVCLK_DIVIDE(2)
               // Output clocks
               ,.CLKOUT0_DIVIDE(13)         // 113.46154 MHz clock output
               ,.CLKOUT0_PHASE(0)
               ,.CLKOUT0_DUTY_CYCLE(0.500)
               ,.CLKOUT1_DIVIDE(52)         //  28.36538 MHz clock output
               ,.CLKOUT1_PHASE(0)
               ,.CLKOUT1_DUTY_CYCLE(0.500)              
        ) pll_inst (
                .CLKIN1(pll_clk_in)               
               ,.CLKFBIN(pll_buff_fbclk)
               ,.CLKFBOUT(pll_fbout)
               ,.CLKOUT0(pll_outclk_0)
               ,.CLKOUT1(pll_outclk_1)               
               ,.RST(reset_high)
               ,.LOCKED(locked_int)
               // Dynamic Reconfiguration port map
               ,.DCLK(drp_clk)
               ,.DEN(drp_enable)
               ,.DWE(drp_write)
               ,.DADDR(drp_addr)
               ,.DI(drp_data)
               ,.DO(drp_do)
               ,.DRDY(drp_rdy)               
//               ,.DCLK(1'h0)
//               ,.DEN(1'h0)
//               ,.DWE(1'h0)
//               ,.DADDR(1'h0)
//               ,.DI(16'h0)               
                                        
        );
assign reset_high = rst;
assign locked = locked_int;

// Output Buffering
    BUFG clk_buf (
        .O(pll_buff_fbclk)
       ,.I(pll_fbout)
    );

    BUFG clkout0_buf (
        .O(outclk_0)
       ,.I(pll_outclk_0)
    );

    BUFG clkout1_buf (
        .O(outclk_1)
       ,.I(pll_outclk_1)
    );


endmodule