`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:01:00 04/13/2017 
// Design Name: 
// Module Name:    DMUX1to2 
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
module DMUX1to2(
    input [23:0] IN,
    input sel,
    output reg [23:0] A,B
    );

	always @(IN or sel) begin
		
		case(sel)
			1'b0: A = IN;
			1'b1: B = IN;	
		endcase
		
	end
	
endmodule