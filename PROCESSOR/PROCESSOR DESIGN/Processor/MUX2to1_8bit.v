`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:50:43 05/07/2017 
// Design Name: 
// Module Name:    MUX2to1_8bit 
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
module MUX2to1_8bit(
    input [7:0] A,B,
    input sel,
    output reg [7:0] OUT
    );
	
	always @(A or B or sel) begin
		case(sel) 
			1'b0: OUT = A;
			1'b1: OUT = B;
		endcase
	end

endmodule
