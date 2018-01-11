`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:47:12 05/07/2017 
// Design Name: 
// Module Name:    MUX2to1 
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
module MUX2to1(
	input A, B,
	input sel,
	output reg OUT
    );

	always @(A or B or sel) begin
		case(sel) 
			1'b0: OUT = A;
			1'b1: OUT = B;
		endcase
	end

endmodule
