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
module PC(
	input enable, clk, load, inc,
	input [8:0] C_bus,
	output reg [8:0] ins_addr
	);
	
	reg state = 0;
	
	initial 
	begin	
		ins_addr <= 0;
	end
	
	always @(posedge enable) 
		begin
			state <= 1;
			//ins_addr <= 9'b0;
		end

	always@(posedge clk)
		begin
			if (state)
			begin
				//if(enable) ins_addr <= 9'b0;
				if(load) ins_addr <= C_bus[8:0];
				else if(inc) ins_addr <= ins_addr + 9'b000000001;
			end
		end
	
endmodule
