`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:50:13 04/16/2017 
// Design Name: 
// Module Name:    microProcessor 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module microProcessor 	#(parameter MIRWIDTH = 31, BYTEWIDTH = 8, JMPZY1 = 9'd50, JMPZN1 = 9'd48)
								(clk, Z_flag, addr_sel, JUMP, addr, MBRU, MIR);
								
	input clk, Z_flag, addr_sel, JUMP;
	input [BYTEWIDTH-1: 0] addr, MBRU;
	output [MIRWIDTH-1:0] MIR;
	
	reg [MIRWIDTH-1:0] MIR;
	reg [BYTEWIDTH-1: 0] next_addr;
	
	reg [MIRWIDTH-1:0] control_store[0:255];
	
	//parameter JMPZY1 = 9'd50, JMPZN1 = 9'd48;
	
	always @(negedge clk)
		if(addr_sel == 1'b1)	next_addr <= MBRU;
		else next_addr <= addr;		
		
	always @(next_addr)
		begin
			if(JUMP == 1'b1)
				begin
					if(Z_flag == 1'b1)	MIR <= control_store[JMPZY1];
					else MIR <= control_store[JMPZN1];
				end
			
			else MIR <= control_store[next_addr];
		end
		
	initial
		begin
		
			//control_store[0] = 29'b;               ;
		
		end

endmodule
