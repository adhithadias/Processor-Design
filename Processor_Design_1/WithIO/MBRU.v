`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:28:24 04/12/2017 
// Design Name: 
// Module Name:    MBRU 
// 
//	MEMORY BUS REGISTER UNSIGNED
//	DATA FROM THE INSTRUCTION MEMORY ARE FETCHED TO THE MBRU REGISTER
//	DATA AVAILABLE IN THE ADDRESS POINTED BY THE PC
// IS STORED IN THE MBRU IN THE POSEDGE CLOCK
//	fetch SIGNAL IS USED TO WRITE ENABLE DATA
//
//////////////////////////////////////////////////////////////////////////////////
module MBRU(
	input clk, fetch,
	input [7:0] ins_in,
	output reg [7:0] ins_out
	);

	always@(posedge clk)
		begin
			if(fetch)
				begin
					ins_out <= ins_in;
				end
		end
	
endmodule
