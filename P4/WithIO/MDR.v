`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:00:11 04/12/2017 
// Design Name: 
// Module Name:    MDR 
// 
//	MEMORY DATA REGISTER
//	read SIGNAL ENABLES DATA WRITE FROM THE DATA MEMORY
//	load SIGNAL ENABLES DATA WRITE FROM THE C BUS
//
//
//////////////////////////////////////////////////////////////////////////////////
module MDR(
	input clk, load, read,
	input [7:0] C_bus,
	input [7:0] data_in,
	output reg [7:0] data_out
	);

	always@(posedge clk)
		begin
			if(load)	data_out <= C_bus;

			if(read)	data_out <= data_in;

		end
		
endmodule
