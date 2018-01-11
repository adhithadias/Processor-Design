`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:00:55 04/16/2017 
// Design Name: 
// Module Name:    decoder 
// 
// NO BUS SELECTED 0
//	MDR 	1
//	PC 	2
//	MBRU	3
//	R1, R2, R3, R4, R		4-8
//
//////////////////////////////////////////////////////////////////////////////////
module decoder (
	input [23:0] R1, R2, R3, R4, R,
	input [8:0] PC,
	input [7:0] MBRU, MDR,
	input [3:0] b_control,
	output reg [23:0] B_bus
	);

	always @(b_control or R1 or R2 or R3 or R4 or R or PC or MBRU or MDR)
		case(b_control)
			
			4'd1:		B_bus <= {16'b0, MDR};
			
			4'd2:		B_bus <= {15'b0, PC};
			
			4'd3:		B_bus <= {16'b0, MBRU};
			
			4'd4:		B_bus <= R1;
			
			4'd5:		B_bus <= R2;
			
			4'd6:		B_bus <= R3;
			
			4'd7:		B_bus <= R4;
			
			4'd8:		B_bus <= R;
			
			default: B_bus <= 24'b0;
			
		endcase

endmodule
