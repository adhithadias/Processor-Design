`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:50:33 04/13/2017 
// Design Name: 
// Module Name:    REG24bit 
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
module REG24bit(
    input clk, load,
    input [23:0] IN,
    output reg [23:0] OUT
    );

	always @(posedge clk) begin
		
		if(load) begin
			OUT <= IN;
		end		
		
	end

endmodule
