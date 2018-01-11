`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:17:33 04/15/2017 
// Design Name: 
// Module Name:    ALU 
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
module ALU24bit(
    input [23:0] A,B,
    input [3:0] sel,
    output reg [23:0] OUT,
    output reg Z,N
    );
	 
	parameter NOP	= 4'b0000;
	parameter ADD 	= 4'b0001;
	parameter SUB 	= 4'b0010;
	parameter MUL 	= 4'b0011;
	parameter DIV 	= 4'b0100;
	parameter INC 	= 4'b0101;
	parameter DEC 	= 4'b0110;
	parameter NEG 	= 4'b0111;
	parameter NOT	= 4'b1000;
	parameter AND 	= 4'b1001;
	parameter OR 	= 4'b1010;
	parameter XOR 	= 4'b1011;

	
	always @(A or B or sel) begin
		
		Z = 0;
		N = 0;
		
		case(sel)
			NOP: OUT = A;
			ADD: OUT = A+B;
			SUB: OUT = A-B;
			MUL: OUT = A<<B;
			DIV: OUT = A>>B;
			INC: OUT = A+1;
			DEC: OUT = A-1;
			NEG: OUT = -A;
			NOT: OUT = ~A;
			AND: OUT = A&B;
			OR:  OUT = A|B;
			XOR: OUT = A^B;
		endcase
		
		if(OUT==0) begin
			Z=1;
		end
		else if(OUT[23]==1) begin
			N=1;
		end
			
	end
	

endmodule
