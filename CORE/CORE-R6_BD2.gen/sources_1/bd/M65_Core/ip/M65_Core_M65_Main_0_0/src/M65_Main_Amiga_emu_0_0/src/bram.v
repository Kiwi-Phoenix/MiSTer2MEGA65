//
// Replacement module for MiSTer BRAM.VHD ram.
// Uses Xilinx memory IP so that can be ported to the Mega65
//
//  Using Alrera port name to map to Xilinx ports.
//  As this is a replacement module to work with Xilinx memory IP, but needs to be ccompatibile with existing code.
//
//  March 2025
//  Kiwi (David Raynor)
//

module dpram #(parameter AW=8, DW=8)
(
    input clock,                 // clka
    input [AW-1:0] address_a,    // addra
    input [DW-1:0] data_a,       // dina
    input enable_a,              // ena
    input wren_a,                // wea ?? (tbc)
    input cs_a,                  // ??
    output [DW-1:0] q_a,         // douta   
    
    input [AW-1:0] address_b,    // addrb
    input [DW-1:0] data_b,        // dinb
    input enable_b,              // enb
    input wren_b,                // web
    input cs_b,                  // ??
    output [DW-1:0] q_b          // doutb
);

reg [(DW-1):0] core[0:((2**AW)-1)] /* synthesis ramstyle = "no_rw_check, M10K" */;

// Simulating byte enable functionality with write enable logic 
wire [0:0] byteena_a = 1'b1;
wire [0:0] byteena_b = 1'b1;

// Xilinx dual-port RAM instance
xpm_memory_tdpram #(
//    .MEMORY_SIZE        (8192),        // Memory size in bits / 8 = 1024 words
    .MEMORY_SIZE        (AW*1024),        // Memory size in bits / 8 = 1024 words
    .MEMORY_PRIMITIVE   ("auto"),
    .CLOCKING_MODE      ("independent_clock"),
    .MEMORY_INIT_FILE   ("none"),
    .MEMORY_INIT_PARAM  ("0"),
    .USE_MEM_INIT       (1),
    .WAKEUP_TIME        ("disable_sleep"),
    .MESSAGE_CONTROL    (0),
    .ECC_MODE           ("no_ecc"),
    .AUTO_SLEEP_TIME    (0),
    .WRITE_DATA_WIDTH_A (DW),
    .READ_DATA_WIDTH_A  (DW),
    .BYTE_WRITE_WIDTH_A (DW),
    .ADDR_WIDTH_A       (AW),
    .READ_RESET_VALUE_A ("0"),
    .READ_LATENCY_A     (1),
    .WRITE_MODE_A       ("write_first"),
    .WRITE_DATA_WIDTH_B (DW),
    .READ_DATA_WIDTH_B  (DW),
    .BYTE_WRITE_WIDTH_B (DW),
    .ADDR_WIDTH_B       (AW),
    .READ_RESET_VALUE_B ("0"),
    .READ_LATENCY_B     (1),
    .WRITE_MODE_B       ("write_first")
) core (
    .clka       (clock),
    .rsta       (1'b0),
    .ena        (1'b0),
    .wea        (byteena_a),
    .addra      (address_a),
    .dina       (data_a),
    .douta      (q_a),
    .clkb       (clock),
    .rstb       (1'b0),
    .enb        (1'b1),
    .web        (byteena_b),
    .addrb      (address_b),
    .dinb       (data_b),
    .doutb      (q_b)
);

endmodule

