`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:48:23 05/07/2017 
// Design Name: 
// Module Name:    CLOCK_GEN 
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
module CLOCK_GEN(
	 input clk_in,
    output clk_out
    );
	
	parameter factor = 4;
	
	reg [7:0] counter = 0;
	reg out = 0;
	
	assign clk_out = out;
	
	always @(posedge clk_in) begin
				
		if(counter < factor - 1) begin
			counter <= counter + 1;
		end
		else begin
			out <= ~out;
			counter <= 0;
		end
		
	end

endmodule
