`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:00:55 04/16/2017 
// Design Name: 
// Module Name:    decoder 
// 
//	MDR 	0
//	PC 	1
//	MBRU	2
//	R1, R2, R3, R4, R		3-7
//
//
//
// 
//
//////////////////////////////////////////////////////////////////////////////////
module decoder #(parameter GPRWIDTH = 24, PCWIDTH = 9, BYTEWIDTH = 8, CONTROLBITS = 4)
					(b_control, MDR, PC, MBRU, R1, R2, R3, R4, R, B_bus);

	input [GPRWIDTH-1:0] R1, R2, R3, R4, R;
	input [PCWIDTH-1:0] PC;
	input [BYTEWIDTH-1:0] MBRU, MDR;
	input [CONTROLBITS-1:0] b_control;
	output [GPRWIDTH-1:0] B_bus;
	
	reg [GPRWIDTH-1:0] B_bus;
	
	always @(b_control)
		case(b_control)
			
			4'd0:		B_bus <= {16'b0, MDR};
			
			4'd1:		B_bus <= {15'b0, PC};
			
			4'd2:		B_bus <= {16'b0, MBRU};
			
			4'd3:		B_bus <= R1;
			
			4'd4:		B_bus <= R2;
			
			4'd5:		B_bus <= R3;
			
			4'd6:		B_bus <= R4;
			
			4'd7:		B_bus <= R;
			
			default: B_bus <= 24'b0;
			
		endcase

endmodule
