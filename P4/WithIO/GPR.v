`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:00:53 04/24/2017 
// Design Name: 
// Module Name:    GPR 
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
module GPR(
	input clk, load,
	input [23:0] C_bus,
	output reg [23:0] d_out
	);

	always@(posedge clk)
		begin
			if(load)	d_out <= C_bus;
		end


endmodule
