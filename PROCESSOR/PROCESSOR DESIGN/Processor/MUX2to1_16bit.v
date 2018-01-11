`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:49:06 05/07/2017 
// Design Name: 
// Module Name:    MUX2to1_16bit 
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
module MUX2to1_16bit(
   input [15:0] A,B,
    input sel,
    output reg [15:0] OUT
    );
	
	always @(A or B or sel) begin
		case(sel) 
			1'b0: OUT = A;
			1'b1: OUT = B;
		endcase
	end

endmodule