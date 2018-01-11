`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//
//		ADD 1
//		SUB 2
//		LSHFT1 3
//		LSHFT2 4
//		LSHFT8 5
//		RSHFT4 6
//		PASSATOC 7
//		PASSBTOC 8
//		INAC 9
//		DEAC 10
//
//////////////////////////////////////////////////////////////////////////////////
module ALU(A_bus, B_bus, oper, C_bus, Z_flag);

   input [23:0] A_bus;
	input [23:0] B_bus;
	input [3:0] oper;
	output [23:0] C_bus;		reg [23:0] C_bus;
	output Z_flag;				reg Z_flag = 1'b0;
	
	parameter 	ADD = 4'b0001,	SUB = 4'b0010, PASSATOC = 4'b0111, PASSBTOC = 4'b1000,
					INCAC = 4'b1001,	DECAC = 4'b1010,	LSHFT1 = 4'b0011, LSHFT2 = 4'b0100,
					LSHFT8 = 4'b0101,	RSHFT4 = 4'b0110;
	
	always@(A_bus or B_bus or oper)
		case(oper)
			ADD:			C_bus = A_bus + B_bus;								//1

			SUB:			begin
								C_bus = A_bus - B_bus;
								Z_flag = (C_bus == 16'b0)? 1'b1 : 1'b0;	//2
							end
			
			LSHFT1:		C_bus = A_bus << 1;			//3
			
			LSHFT2:		C_bus = A_bus << 2;			//4
			
			LSHFT8:		C_bus = A_bus << 8;			//5
			
			RSHFT4:		C_bus = A_bus >> 4;			//6
			
			PASSATOC:	C_bus = A_bus;					//7

			PASSBTOC:	C_bus = B_bus;					//8
								
			INCAC:		C_bus = A_bus + 24'b1;		//9

			DECAC:		C_bus = A_bus - 24'b1;		//10

			default:		begin
								C_bus = 24'b0;
								Z_flag = 1'b0;
							end
		
		endcase

endmodule
