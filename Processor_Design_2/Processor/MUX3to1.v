`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:00:19 04/14/2017 
// Design Name: 
// Module Name:    MUX3to1 
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
module MUX3to1(
    input [23:0] A,B,C,
    input [1:0] sel,
    output reg [23:0] OUT
    );
	
	always @(A or B or C or sel) begin
		OUT = 0;
		case(sel) 
			2'b00: OUT = A;
			2'b01: OUT = B;
			2'b10: OUT = C;
		endcase
	end
	
endmodule