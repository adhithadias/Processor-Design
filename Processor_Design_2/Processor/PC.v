`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:40:51 04/13/2017 
// Design Name: 
// Module Name:    PC 
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
module PC(
    input clk,
    input reset,inc,load,
    input [23:0] IN,
    output reg [23:0] OUT
    );

	always @(posedge clk)
	begin		
		if(inc) begin
			OUT = OUT + 1;
		end
		
		if(load) begin
			OUT = IN;
		end	
		
		if(reset) begin
			OUT = 0;
		end		
	end	
	
endmodule
