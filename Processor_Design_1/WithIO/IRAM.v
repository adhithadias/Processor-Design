`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:49:34 04/18/2017 
// Design Name: 
// Module Name:    IRAM 
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
module IRAM(clk, ins_addr, ins_out);

	input clk;
	input [8:0] ins_addr;
	
	output reg [7:0] ins_out;
	
	reg [7:0] ins_memory [0:511];
	
	always @(ins_addr)
	begin
		ins_out <= ins_memory[ins_addr];
	end	
	
	initial
	begin
		ins_memory[0] <= 8'd54;
		ins_memory[1] <= 8'd11;
		ins_memory[2] <= 8'd12;
		ins_memory[3] <= 8'd54;
		ins_memory[4] <= 8'd13;
		ins_memory[5] <= 8'd18;
		ins_memory[6] <= 8'd45;
		ins_memory[7] <= 8'd44;
		ins_memory[8] <= 8'd15;
		ins_memory[9] <= 8'd17;
		ins_memory[10] <= 8'd31;
		ins_memory[11] <= 8'd14;
		ins_memory[12] <= 8'd16;
		ins_memory[13] <= 8'd3;
		ins_memory[14] <= 8'd13;
		ins_memory[15] <= 8'd20;
		ins_memory[16] <= 8'd29;
		ins_memory[17] <= 8'd16;
		ins_memory[18] <= 8'd3;
		ins_memory[19] <= 8'd44;
		ins_memory[20] <= 8'd55;
		ins_memory[21] <= 8'd20;
		ins_memory[22] <= 8'd29;
		ins_memory[23] <= 8'd29;
		ins_memory[24] <= 8'd16;
		ins_memory[25] <= 8'd3;
		ins_memory[26] <= 8'd55;
		ins_memory[27] <= 8'd20;
		ins_memory[28] <= 8'd33;
		ins_memory[29] <= 8'd0;
		ins_memory[30] <= 8'd8;
		ins_memory[31] <= 8'd14;
		ins_memory[32] <= 8'd16;
		ins_memory[33] <= 8'd3;
		ins_memory[34] <= 8'd44;
		ins_memory[35] <= 8'd55;
		ins_memory[36] <= 8'd20;
		ins_memory[37] <= 8'd29;
		ins_memory[38] <= 8'd16;
		ins_memory[39] <= 8'd3;
		ins_memory[40] <= 8'd45;
		ins_memory[41] <= 8'd55;
		ins_memory[42] <= 8'd20;
		ins_memory[43] <= 8'd29;
		ins_memory[44] <= 8'd29;
		ins_memory[45] <= 8'd16;
		ins_memory[46] <= 8'd3;
		ins_memory[47] <= 8'd44;
		ins_memory[48] <= 8'd55;
		ins_memory[49] <= 8'd20;
		ins_memory[50] <= 8'd33;
		ins_memory[51] <= 8'd0;
		ins_memory[52] <= 8'd8;
		ins_memory[53] <= 8'd14;
		ins_memory[54] <= 8'd16;
		ins_memory[55] <= 8'd3;
		ins_memory[56] <= 8'd55;
		ins_memory[57] <= 8'd20;
		ins_memory[58] <= 8'd29;
		ins_memory[59] <= 8'd16;
		ins_memory[60] <= 8'd3;
		ins_memory[61] <= 8'd44;
		ins_memory[62] <= 8'd55;
		ins_memory[63] <= 8'd20;
		ins_memory[64] <= 8'd29;
		ins_memory[65] <= 8'd29;
		ins_memory[66] <= 8'd16;
		ins_memory[67] <= 8'd3;
		ins_memory[68] <= 8'd55;
		ins_memory[69] <= 8'd18;
		ins_memory[70] <= 8'd45;
		ins_memory[71] <= 8'd44;
		ins_memory[72] <= 8'd15;
		ins_memory[73] <= 8'd17;
		ins_memory[74] <= 8'd31;
		ins_memory[75] <= 8'd16;
		ins_memory[76] <= 8'd19;
		ins_memory[77] <= 8'd43;
		ins_memory[78] <= 8'd9;
		ins_memory[79] <= 8'd17;
		ins_memory[80] <= 8'd29;
		ins_memory[81] <= 8'd11;
		ins_memory[82] <= 8'd38;
		ins_memory[83] <= 8'd0;
		ins_memory[84] <= 8'd6;
		ins_memory[85] <= 8'd22;
		ins_memory[86] <= 8'd0;
		ins_memory[87] <= 8'd3;
		ins_memory[88] <= 8'd54;
		ins_memory[89] <= 8'd11;
		ins_memory[90] <= 8'd18;
		ins_memory[91] <= 8'd29;
		ins_memory[92] <= 8'd12;
		ins_memory[93] <= 8'd38;
		ins_memory[94] <= 8'd0;
		ins_memory[95] <= 8'd6;
		ins_memory[96] <= 8'd22;
		ins_memory[97] <= 8'd0;
		ins_memory[98] <= 8'd3;
		ins_memory[99] <= 8'd2;
	end

endmodule
