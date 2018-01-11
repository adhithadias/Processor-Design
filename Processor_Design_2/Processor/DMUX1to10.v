`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:21:06 04/13/2017 
// Design Name: 
// Module Name:    DMUX1to10 
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
module DMUX1to10(
    input IN,
    input [3:0] sel,
    output reg A,B,C,D,E,F,G,H,I,J
    );

	always @(IN or sel) begin
		
		A = 0;
		B = 0;
		C = 0;
		D = 0; 
		E = 0;
		F = 0;
		G = 0;
		H = 0;
		I = 0;
		J = 0;
		
		case(sel)
			4'b0000: A = IN;
			4'b0001: B = IN;
			4'b0010: C = IN;
			4'b0011: D = IN;
			4'b0100: E = IN;
			4'b0101: F = IN;
			4'b0110: G = IN;
			4'b0111: H = IN;
			4'b1000: I = IN;
			4'b1001: J = IN;	
		endcase
		
	end
	
endmodule
