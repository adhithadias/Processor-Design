`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:40:23 04/12/2017 
// Design Name: 
// Module Name:    PC 
// 
//	PROGRAMME COUNTER
//	increment and load SIGNALS CONTROL THE DATA FLOW
//
//
//////////////////////////////////////////////////////////////////////////////////
module PC #(parameter PCWIDTH = 9) (clk, load, inc, C_bus, ins_addr);

input clk, load, inc;
input [PCWIDTH-1:0] C_bus;
output [PCWIDTH-1:0] ins_addr;
reg [PCWIDTH-1:0] ins_addr = 9'b0;

always@(posedge clk)
	begin
		if(load) ins_addr <= C_bus[8:0];
		else if(inc) ins_addr <= ins_addr + 9'b000000001;
	end
	
endmodule
