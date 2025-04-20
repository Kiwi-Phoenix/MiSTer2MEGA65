//
//

module denise_colortable_ram_mf (
	input	[3:0]  byteena_a,
	input          clock,
	input	[31:0] data,
	input          enable,
	input	[7:0]  rdaddress,
	input	[7:0]  wraddress,
	input          wren,
	output	[31:0] q
	);

xpm_memory_sdpram #(
    .ADDR_WIDTH_A(8)            
   ,.ADDR_WIDTH_B(8)            
   ,.AUTO_SLEEP_TIME(0)          
   ,.BYTE_WRITE_WIDTH_A(32)     
   ,.CASCADE_HEIGHT(0)           
   ,.CLOCKING_MODE("common_clock")
   ,.ECC_BIT_RANGE("7:0")         
   ,.ECC_MODE("no_ecc")            
   ,.ECC_TYPE("none")              
   ,.IGNORE_INIT_SYNTH(0)          
   ,.MEMORY_INIT_FILE("none")      
   ,.MEMORY_INIT_PARAM("0")        
   ,.MEMORY_OPTIMIZATION("true")   
   ,.MEMORY_PRIMITIVE("auto")      
   ,.MEMORY_SIZE(8192)   
   ,.MESSAGE_CONTROL(0)            
   ,.RAM_DECOMP("auto")            
   ,.READ_DATA_WIDTH_B(32)        
   ,.READ_LATENCY_B(2)             
   ,.READ_RESET_VALUE_B("0")       
   ,.RST_MODE_A("SYNC")            
   ,.RST_MODE_B("SYNC")            
   ,.SIM_ASSERT_CHK(0)              // DECIMAL; 0=disable simulation messages, 1=enable simulation messages
   ,.USE_EMBEDDED_CONSTRAINT(0)    
   ,.USE_MEM_INIT(1)               
   ,.USE_MEM_INIT_MMI(0)           
   ,.WAKEUP_TIME("disable_sleep")  
   ,.WRITE_DATA_WIDTH_A(32)       
   ,.WRITE_MODE_B("no_change")     
   ,.WRITE_PROTECT(1)               
)
xpm_memory_sdpram_inst (
    .doutb(q)           
   ,.addra(wraddress)  
   ,.addrb(rdaddress)
   ,.clka(clock)        
   ,.dina(data)   
   ,.ena(enable)   
   ,.wea(byteena_a)     
);


endmodule