`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2025 20:17:29
// Design Name: 
// Module Name: pll_audio_0002
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// Mar 2025         Kiwi (David Raynor)
// Re-implementation of the Orig MiSTer file for the Mega65 FPGA.
// 
//////////////////////////////////////////////////////////////////////////////////


module pll_audio_0002(

    // interface 'refclk'
    input wire refclk,
    
    // interface 'reset'
    input wire rst,
    
    // interface 'outclk0'
    output wire outclk_0,
    
    // interface 'locked'
    output wire locked
    );
    
    pll_audio pll_audio
   (
    // Clock out ports
    .outclk_0(outclk_0),    
    // Status and control signals
    .reset(rst),            
    .locked(locked),       
   // Clock in ports
    .refclk(refclk)      
);
    
    
    
endmodule
