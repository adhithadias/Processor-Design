`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:55:27 04/12/2017 
// Design Name: 
// Module Name:    GPR 
//
//	GENERAL PURPOSE REGISTER
//	THE GPR CAN BE USED TO INTANTIATE R1, R2, R3, R4, R AND AC REGISTERS
//
///////////////////////////////////////////////////////////////////////////////////
module GPR(clk, load, C_bus, d_out);

input clk, load;
input [23:0] C_bus;
output [23:0] d_out;
reg [23:0] d_out = 24'b0;

always@(posedge clk)
	begin
		if(load) d_out <= C_bus;
	end
	
endmodule
