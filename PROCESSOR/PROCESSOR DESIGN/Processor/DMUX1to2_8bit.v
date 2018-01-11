`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:51:26 05/07/2017 
// Design Name: 
// Module Name:    DMUX1to2_8bit 
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
module DMUX1to2_8bit(
    input [7:0] IN,
    input sel,
    output reg [7:0] A,B
    );

	always @(IN or sel) begin
		
		case(sel)
			1'b0: A = IN;
			1'b1: B = IN;	
		endcase
		
	end
	
endmodule