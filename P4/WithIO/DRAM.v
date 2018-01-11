`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:44:05 04/19/2017 
// Design Name: 
// Module Name:    DRAM 
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
module DRAM(clk, write, data_in, data_addr, data_out);

    input clk, write;
    input [7:0] data_in;
    input [23:0] data_addr;
    output [7:0] data_out;
	 
	 reg [7:0] data_out;
	 
	 reg [7:0] data_memory [0:63];
	 
	 always @(data_addr)
	 begin
		data_out <= data_memory[data_addr[5:0]];
	 end
	 
	 always @(posedge clk)
	 begin
		if(write)
		begin
			data_memory[data_addr[5:0]] <= data_in;
		end		
	 end
	 
	 initial begin 
		data_memory[0] = 8'd123;
		data_memory[1] = 8'd89;
		data_memory[2] = 8'd67;
		data_memory[3] = 8'd94;
		data_memory[4] = 8'd34;
		data_memory[5] = 8'd43;
		data_memory[6] = 8'd120;
		data_memory[7] = 8'd134;
		data_memory[8] = 8'd95;
		data_memory[9] = 8'd56;
		data_memory[10] = 8'd220;
		data_memory[11] = 8'd144;
		data_memory[12] = 8'd96;
		data_memory[13] = 8'd43;
		data_memory[14] = 8'd120;
		data_memory[15] = 8'd134;
		data_memory[16] = 8'd123;
		data_memory[17] = 8'd89;
		data_memory[18] = 8'd67;
		data_memory[19] = 8'd94;
		data_memory[20] = 8'd34;
		data_memory[21] = 8'd43;
		data_memory[22] = 8'd120;
		data_memory[23] = 8'd134;
		data_memory[24] = 8'd123;
		data_memory[25] = 8'd89;
		data_memory[26] = 8'd67;
		data_memory[27] = 8'd94;
		data_memory[28] = 8'd34;
		data_memory[29] = 8'd43;
		data_memory[30] = 8'd120;
		data_memory[31] = 8'd134;
		data_memory[32] = 8'd123;
		data_memory[33] = 8'd89;
		data_memory[34] = 8'd67;
		data_memory[35] = 8'd94;
		data_memory[36] = 8'd34;
		data_memory[37] = 8'd43;
		data_memory[38] = 8'd120;
		data_memory[39] = 8'd134;
		data_memory[40] = 8'd123;
		data_memory[41] = 8'd89;
		data_memory[42] = 8'd67;
		data_memory[43] = 8'd94;
		data_memory[44] = 8'd34;
		data_memory[45] = 8'd43;
		data_memory[46] = 8'd120;
		data_memory[47] = 8'd134;
		data_memory[48] = 8'd123;
		data_memory[49] = 8'd89;
		data_memory[50] = 8'd67;
		data_memory[51] = 8'd94;
		data_memory[52] = 8'd34;
		data_memory[53] = 8'd43;
		data_memory[54] = 8'd120;
		data_memory[55] = 8'd134;
		data_memory[56] = 8'd123;
		data_memory[57] = 8'd89;
		data_memory[58] = 8'd67;
		data_memory[59] = 8'd94;
		data_memory[60] = 8'd34;
		data_memory[61] = 8'd43;
		data_memory[62] = 8'd120;
		data_memory[63] = 8'd134;
	end

endmodule
