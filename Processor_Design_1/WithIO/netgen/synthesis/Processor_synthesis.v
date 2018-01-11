////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: Processor_synthesis.v
// /___/   /\     Timestamp: Wed Apr 19 14:44:08 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim Processor.ngc Processor_synthesis.v 
// Device	: xc6slx45-3-csg324
// Input file	: Processor.ngc
// Output file	: C:\Users\adhit\Desktop\Processor Design\Projects\Start\netgen\synthesis\Processor_synthesis.v
// # of Modules	: 1
// Design Name	: Processor
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module Processor (
  clk, write, data_in, IROM_ins_fetch, DRAM_addr, DRAM_data_write, IROM_addr
);
  input clk;
  output write;
  input [7 : 0] data_in;
  input [7 : 0] IROM_ins_fetch;
  output [23 : 0] DRAM_addr;
  output [7 : 0] DRAM_data_write;
  output [8 : 0] IROM_addr;
  wire data_in_7_IBUF_0;
  wire data_in_6_IBUF_1;
  wire data_in_5_IBUF_2;
  wire data_in_4_IBUF_3;
  wire data_in_3_IBUF_4;
  wire data_in_2_IBUF_5;
  wire data_in_1_IBUF_6;
  wire data_in_0_IBUF_7;
  wire IROM_ins_fetch_7_IBUF_8;
  wire IROM_ins_fetch_6_IBUF_9;
  wire IROM_ins_fetch_5_IBUF_10;
  wire IROM_ins_fetch_4_IBUF_11;
  wire IROM_ins_fetch_3_IBUF_12;
  wire IROM_ins_fetch_2_IBUF_13;
  wire IROM_ins_fetch_1_IBUF_14;
  wire IROM_ins_fetch_0_IBUF_15;
  wire clk_BUFGP_16;
  wire write_OBUF_210;
  wire \MIR[16] ;
  wire \MIR[7] ;
  wire \MIR[13] ;
  wire \MIR[12] ;
  wire \MIR[11] ;
  wire \MIR[10] ;
  wire \MIR[9] ;
  wire \MIR[8] ;
  wire \MIR[3] ;
  wire \MIR[2] ;
  wire \MIR[1] ;
  wire \MIR[0] ;
  wire \MIR[20] ;
  wire \MIR[19] ;
  wire \MIR[18] ;
  wire \MIR[17] ;
  wire \ALU_24bit/Z_flag_275 ;
  wire N0;
  wire N1;
  wire \ALU_24bit/oper[3]_GND_9_o_Mux_7_o ;
  wire \ALU_24bit/oper[3]_PWR_11_o_Mux_8_o ;
  wire \ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<0> ;
  wire \ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<1> ;
  wire \ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<2> ;
  wire \ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<3> ;
  wire \ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<4> ;
  wire \ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<5> ;
  wire \ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<6> ;
  wire \ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<7> ;
  wire \ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<8> ;
  wire \ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<9> ;
  wire \ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<10> ;
  wire \ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<11> ;
  wire \ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<12> ;
  wire \ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<13> ;
  wire \ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<14> ;
  wire \ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<15> ;
  wire \ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<16> ;
  wire \ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<17> ;
  wire \ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<18> ;
  wire \ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<19> ;
  wire \ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<20> ;
  wire \ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<21> ;
  wire \ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<22> ;
  wire \ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<23> ;
  wire \PC_reg/_n0013_inv ;
  wire \MIR<14>_inv ;
  wire \PC_reg/Mcount_ins_addr ;
  wire \PC_reg/Mcount_ins_addr1 ;
  wire \PC_reg/Mcount_ins_addr2 ;
  wire \PC_reg/Mcount_ins_addr3 ;
  wire \PC_reg/Mcount_ins_addr4 ;
  wire \PC_reg/Mcount_ins_addr5 ;
  wire \PC_reg/Mcount_ins_addr6 ;
  wire \PC_reg/Mcount_ins_addr7 ;
  wire \PC_reg/Mcount_ins_addr8 ;
  wire \decoder_4to16/Mmux__n0040_47_356 ;
  wire \decoder_4to16/Mmux__n0040_37_357 ;
  wire \decoder_4to16/Mmux__n0040_46_358 ;
  wire \decoder_4to16/Mmux__n0040_36_359 ;
  wire \decoder_4to16/Mmux__n0040_45_360 ;
  wire \decoder_4to16/Mmux__n0040_35_361 ;
  wire \decoder_4to16/Mmux__n0040_44_362 ;
  wire \decoder_4to16/Mmux__n0040_34_363 ;
  wire \decoder_4to16/Mmux__n0040_43_364 ;
  wire \decoder_4to16/Mmux__n0040_33_365 ;
  wire \decoder_4to16/Mmux__n0040_42_366 ;
  wire \decoder_4to16/Mmux__n0040_32_367 ;
  wire \decoder_4to16/Mmux__n0040_41_368 ;
  wire \decoder_4to16/Mmux__n0040_31_369 ;
  wire \decoder_4to16/Mmux__n0040_4_370 ;
  wire \decoder_4to16/Mmux__n0040_3_371 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<0>_372 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<0>_373 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<1>_374 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<1>_375 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<2>_376 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<2>_377 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<3>_378 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<3>_379 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<4>_380 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<4>_381 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<5>_382 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<5>_383 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<6>_384 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<6>_385 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<7>_386 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<7>_387 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<8>_388 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<8>_389 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<9>_390 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<9>_391 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<10>_392 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<10>_393 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<11>_394 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<11>_395 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<12>_396 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<12>_397 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<13>_398 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<13>_399 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<14>_400 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<14>_401 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<15>_402 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<15>_403 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<16>_404 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<16>_405 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<17>_406 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<17>_407 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<18>_408 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<18>_409 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<19>_410 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<19>_411 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<20>_412 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<20>_413 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<21>_414 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<21>_415 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<22>_416 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<22>_417 ;
  wire \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<23>_418 ;
  wire \ALU_24bit/Mmux_C_bus12_rs_AS_inv ;
  wire \ALU_24bit/Mmux_C_bus12_A251_467 ;
  wire \ALU_24bit/Mmux_C_bus12_A1111 ;
  wire \ALU_24bit/Mmux_C_bus12_A332_469 ;
  wire \ALU_24bit/Mmux_C_bus12_A25111 ;
  wire \MDR_reg/_n0010_inv ;
  wire \MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<0> ;
  wire \MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<1> ;
  wire \MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<2> ;
  wire \MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<3> ;
  wire \MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<4> ;
  wire \MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<5> ;
  wire \MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<6> ;
  wire \MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<7> ;
  wire \controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ;
  wire \controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ;
  wire \controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<2> ;
  wire \controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<3> ;
  wire \controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<4> ;
  wire \controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<5> ;
  wire \controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<6> ;
  wire \controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<7> ;
  wire \controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<8> ;
  wire \controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<9> ;
  wire \controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<10> ;
  wire \controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<11> ;
  wire \controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<12> ;
  wire \controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<13> ;
  wire \controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<14> ;
  wire \controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<15> ;
  wire \controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<16> ;
  wire \controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ;
  wire \controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ;
  wire \controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ;
  wire \controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ;
  wire \controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<21> ;
  wire \controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<23> ;
  wire \controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<24> ;
  wire \controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<25> ;
  wire \controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<26> ;
  wire \controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<27> ;
  wire \controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<28> ;
  wire \controlStore/next_addr[7]_GND_8_o_equal_7_o ;
  wire \controlStore/addr[7]_MBRU[7]_mux_1_OUT<0> ;
  wire \controlStore/addr[7]_MBRU[7]_mux_1_OUT<1> ;
  wire \controlStore/addr[7]_MBRU[7]_mux_1_OUT<2> ;
  wire \controlStore/addr[7]_MBRU[7]_mux_1_OUT<3> ;
  wire \controlStore/addr[7]_MBRU[7]_mux_1_OUT<4> ;
  wire \controlStore/addr[7]_MBRU[7]_mux_1_OUT<5> ;
  wire \controlStore/addr[7]_MBRU[7]_mux_1_OUT<6> ;
  wire \controlStore/addr[7]_MBRU[7]_mux_1_OUT<7> ;
  wire \ALU_24bit/Mmux_oper[3]_GND_9_o_Mux_7_o1 ;
  wire \ALU_24bit/Mmux_oper[3]_GND_9_o_Mux_7_o11_526 ;
  wire \ALU_24bit/Mmux_oper[3]_GND_9_o_Mux_7_o12_527 ;
  wire \ALU_24bit/Mmux_oper[3]_GND_9_o_Mux_7_o13_528 ;
  wire \decoder_4to16/Mmux_B_bus23 ;
  wire \decoder_4to16/Mmux_B_bus231_530 ;
  wire \ALU_24bit/Mmux_C_bus12_A1 ;
  wire \ALU_24bit/Mmux_C_bus12_A11 ;
  wire \decoder_4to16/Mmux_B_bus10 ;
  wire \decoder_4to16/Mmux_B_bus11 ;
  wire \decoder_4to16/Mmux_B_bus13 ;
  wire \decoder_4to16/Mmux_B_bus14 ;
  wire \decoder_4to16/Mmux_B_bus15 ;
  wire \decoder_4to16/Mmux_B_bus16 ;
  wire \decoder_4to16/Mmux_B_bus2 ;
  wire \decoder_4to16/Mmux_B_bus24 ;
  wire \decoder_4to16/Mmux_B_bus3 ;
  wire \decoder_4to16/Mmux_B_bus4 ;
  wire \decoder_4to16/Mmux_B_bus5 ;
  wire \decoder_4to16/Mmux_B_bus6 ;
  wire \decoder_4to16/Mmux_B_bus7 ;
  wire \decoder_4to16/Mmux_B_bus8 ;
  wire \decoder_4to16/Mmux_B_bus9 ;
  wire \ALU_24bit/Mmux_C_bus12_A111_548 ;
  wire \ALU_24bit/Mmux_C_bus12_A112_549 ;
  wire \ALU_24bit/Mmux_C_bus12_A113_550 ;
  wire \ALU_24bit/Mmux_C_bus12_A13 ;
  wire \ALU_24bit/Mmux_C_bus12_A131_552 ;
  wire \ALU_24bit/Mmux_C_bus12_A132_553 ;
  wire \ALU_24bit/Mmux_C_bus12_A15 ;
  wire \ALU_24bit/Mmux_C_bus12_A151_555 ;
  wire \ALU_24bit/Mmux_C_bus12_A152_556 ;
  wire \ALU_24bit/Mmux_C_bus12_A17 ;
  wire \ALU_24bit/Mmux_C_bus12_A171_558 ;
  wire \ALU_24bit/Mmux_C_bus12_A172_559 ;
  wire \ALU_24bit/Mmux_C_bus12_A19 ;
  wire \ALU_24bit/Mmux_C_bus12_A191_561 ;
  wire \ALU_24bit/Mmux_C_bus12_A192_562 ;
  wire \ALU_24bit/Mmux_C_bus12_A21 ;
  wire \ALU_24bit/Mmux_C_bus12_A211_564 ;
  wire \ALU_24bit/Mmux_C_bus12_A212_565 ;
  wire \ALU_24bit/Mmux_C_bus12_A45 ;
  wire \ALU_24bit/Mmux_C_bus12_A451_567 ;
  wire \ALU_24bit/Mmux_C_bus12_A452_568 ;
  wire \ALU_24bit/Mmux_C_bus12_A47 ;
  wire \ALU_24bit/Mmux_C_bus12_A471_570 ;
  wire \ALU_24bit/Mmux_C_bus12_A472_571 ;
  wire \ALU_24bit/Mmux_C_bus12_A3 ;
  wire \ALU_24bit/Mmux_C_bus12_A31 ;
  wire \ALU_24bit/Mmux_C_bus12_A32_574 ;
  wire \ALU_24bit/Mmux_C_bus12_A5 ;
  wire \ALU_24bit/Mmux_C_bus12_A51_576 ;
  wire \ALU_24bit/Mmux_C_bus12_A52_577 ;
  wire \ALU_24bit/Mmux_C_bus12_A7 ;
  wire \ALU_24bit/Mmux_C_bus12_A71_579 ;
  wire \ALU_24bit/Mmux_C_bus12_A72_580 ;
  wire \ALU_24bit/Mmux_C_bus12_A9 ;
  wire \ALU_24bit/Mmux_C_bus12_A91_582 ;
  wire \ALU_24bit/Mmux_C_bus12_A92_583 ;
  wire \ALU_24bit/Mmux_C_bus12_A25 ;
  wire \ALU_24bit/Mmux_C_bus12_A252_585 ;
  wire \ALU_24bit/Mmux_C_bus12_A311_586 ;
  wire \ALU_24bit/Mmux_C_bus12_A312_587 ;
  wire \ALU_24bit/Mmux_C_bus12_A29 ;
  wire \ALU_24bit/Mmux_C_bus12_A291_589 ;
  wire \ALU_24bit/Mmux_C_bus12_A27 ;
  wire \ALU_24bit/Mmux_C_bus12_A271_591 ;
  wire \ALU_24bit/Mmux_C_bus12_A39 ;
  wire \ALU_24bit/Mmux_C_bus12_A391_593 ;
  wire \ALU_24bit/Mmux_C_bus12_A41 ;
  wire \ALU_24bit/Mmux_C_bus12_A411_595 ;
  wire \ALU_24bit/Mmux_C_bus12_A43 ;
  wire \ALU_24bit/Mmux_C_bus12_A431_597 ;
  wire \ALU_24bit/Mmux_C_bus12_A37 ;
  wire \ALU_24bit/Mmux_C_bus12_A371_599 ;
  wire \ALU_24bit/Mmux_C_bus12_A35 ;
  wire \ALU_24bit/Mmux_C_bus12_A351_601 ;
  wire \ALU_24bit/Mmux_C_bus12_A33 ;
  wire \ALU_24bit/Mmux_C_bus12_A331_603 ;
  wire N4;
  wire N6;
  wire N8;
  wire N10;
  wire N12;
  wire N14;
  wire N15;
  wire N17;
  wire N19;
  wire N21;
  wire N23;
  wire N25;
  wire N27;
  wire N29;
  wire N31;
  wire N33;
  wire N35;
  wire N37;
  wire N39;
  wire N41;
  wire N43;
  wire N45;
  wire N47;
  wire N49;
  wire N51;
  wire N53;
  wire N55;
  wire N57;
  wire N59;
  wire N61;
  wire N63;
  wire N65;
  wire N67;
  wire N68;
  wire N70;
  wire N71;
  wire N73;
  wire N74;
  wire N76;
  wire N77;
  wire N79;
  wire N81;
  wire N83;
  wire N85;
  wire N87;
  wire N89;
  wire N91;
  wire N93;
  wire N95;
  wire N97;
  wire N99;
  wire N101;
  wire N103;
  wire N105;
  wire N107;
  wire N109;
  wire N111;
  wire N113;
  wire N115;
  wire N117;
  wire N119;
  wire N121;
  wire N123;
  wire N125;
  wire N127;
  wire N129;
  wire N131;
  wire N133;
  wire N134;
  wire N136;
  wire N137;
  wire N139;
  wire N140;
  wire N142;
  wire N143;
  wire N145;
  wire N146;
  wire N148;
  wire N149;
  wire N151;
  wire N152;
  wire N154;
  wire N155;
  wire N157;
  wire N158;
  wire N160;
  wire N161;
  wire N163;
  wire N164;
  wire N166;
  wire N167;
  wire N169;
  wire N170;
  wire N172;
  wire N173;
  wire N175;
  wire N179;
  wire N181;
  wire N183;
  wire N185;
  wire N187;
  wire N189;
  wire N190;
  wire N192;
  wire N193;
  wire N195;
  wire N196;
  wire N198;
  wire N199;
  wire N201;
  wire N202;
  wire N204;
  wire N206;
  wire N208;
  wire N210;
  wire N214;
  wire N216;
  wire N219;
  wire N221;
  wire N222;
  wire N224;
  wire N225;
  wire N236;
  wire N238;
  wire \controlStore/next_addr[7]_GND_8_o_equal_7_o<7>_787 ;
  wire \controlStore/Mmux_MIR121_788 ;
  wire [7 : 0] \MDR_reg/data_out ;
  wire [7 : 0] \MBRU_reg/ins_out ;
  wire [23 : 0] \MAR_reg/data_addr ;
  wire [8 : 0] \PC_reg/ins_addr ;
  wire [23 : 0] \R1_reg/d_out ;
  wire [23 : 0] \R2_reg/d_out ;
  wire [23 : 0] \R3_reg/d_out ;
  wire [23 : 0] \R4_reg/d_out ;
  wire [23 : 0] \R_reg/d_out ;
  wire [23 : 0] \AC_reg/d_out ;
  wire [23 : 0] B_bus;
  wire [23 : 0] C_bus;
  wire [0 : 0] \ALU_24bit/Mmux_C_bus12_rs_B ;
  wire [22 : 0] \ALU_24bit/Mmux_C_bus12_rs_A ;
  wire [8 : 0] \PC_reg/Mcount_ins_addr_lut ;
  wire [7 : 0] \PC_reg/Mcount_ins_addr_cy ;
  wire [23 : 0] \ALU_24bit/Mmux_C_bus12_rs_lut ;
  wire [22 : 0] \ALU_24bit/Mmux_C_bus12_rs_cy ;
  wire [7 : 0] \controlStore/next_addr ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  LD #(
    .INIT ( 1'b0 ))
  \ALU_24bit/Z_flag  (
    .D(\ALU_24bit/oper[3]_GND_9_o_Mux_7_o ),
    .G(\ALU_24bit/oper[3]_PWR_11_o_Mux_8_o ),
    .Q(\ALU_24bit/Z_flag_275 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R_reg/d_out_0  (
    .C(clk_BUFGP_16),
    .CE(\MIR[9] ),
    .D(C_bus[0]),
    .Q(\R_reg/d_out [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R_reg/d_out_1  (
    .C(clk_BUFGP_16),
    .CE(\MIR[9] ),
    .D(C_bus[1]),
    .Q(\R_reg/d_out [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R_reg/d_out_2  (
    .C(clk_BUFGP_16),
    .CE(\MIR[9] ),
    .D(C_bus[2]),
    .Q(\R_reg/d_out [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R_reg/d_out_3  (
    .C(clk_BUFGP_16),
    .CE(\MIR[9] ),
    .D(C_bus[3]),
    .Q(\R_reg/d_out [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R_reg/d_out_4  (
    .C(clk_BUFGP_16),
    .CE(\MIR[9] ),
    .D(C_bus[4]),
    .Q(\R_reg/d_out [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R_reg/d_out_5  (
    .C(clk_BUFGP_16),
    .CE(\MIR[9] ),
    .D(C_bus[5]),
    .Q(\R_reg/d_out [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R_reg/d_out_6  (
    .C(clk_BUFGP_16),
    .CE(\MIR[9] ),
    .D(C_bus[6]),
    .Q(\R_reg/d_out [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R_reg/d_out_7  (
    .C(clk_BUFGP_16),
    .CE(\MIR[9] ),
    .D(C_bus[7]),
    .Q(\R_reg/d_out [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R_reg/d_out_8  (
    .C(clk_BUFGP_16),
    .CE(\MIR[9] ),
    .D(C_bus[8]),
    .Q(\R_reg/d_out [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R_reg/d_out_9  (
    .C(clk_BUFGP_16),
    .CE(\MIR[9] ),
    .D(C_bus[9]),
    .Q(\R_reg/d_out [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R_reg/d_out_10  (
    .C(clk_BUFGP_16),
    .CE(\MIR[9] ),
    .D(C_bus[10]),
    .Q(\R_reg/d_out [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R_reg/d_out_11  (
    .C(clk_BUFGP_16),
    .CE(\MIR[9] ),
    .D(C_bus[11]),
    .Q(\R_reg/d_out [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R_reg/d_out_12  (
    .C(clk_BUFGP_16),
    .CE(\MIR[9] ),
    .D(C_bus[12]),
    .Q(\R_reg/d_out [12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R_reg/d_out_13  (
    .C(clk_BUFGP_16),
    .CE(\MIR[9] ),
    .D(C_bus[13]),
    .Q(\R_reg/d_out [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R_reg/d_out_14  (
    .C(clk_BUFGP_16),
    .CE(\MIR[9] ),
    .D(C_bus[14]),
    .Q(\R_reg/d_out [14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R_reg/d_out_15  (
    .C(clk_BUFGP_16),
    .CE(\MIR[9] ),
    .D(C_bus[15]),
    .Q(\R_reg/d_out [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R_reg/d_out_16  (
    .C(clk_BUFGP_16),
    .CE(\MIR[9] ),
    .D(C_bus[16]),
    .Q(\R_reg/d_out [16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R_reg/d_out_17  (
    .C(clk_BUFGP_16),
    .CE(\MIR[9] ),
    .D(C_bus[17]),
    .Q(\R_reg/d_out [17])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R_reg/d_out_18  (
    .C(clk_BUFGP_16),
    .CE(\MIR[9] ),
    .D(C_bus[18]),
    .Q(\R_reg/d_out [18])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R_reg/d_out_19  (
    .C(clk_BUFGP_16),
    .CE(\MIR[9] ),
    .D(C_bus[19]),
    .Q(\R_reg/d_out [19])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R_reg/d_out_20  (
    .C(clk_BUFGP_16),
    .CE(\MIR[9] ),
    .D(C_bus[20]),
    .Q(\R_reg/d_out [20])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R_reg/d_out_21  (
    .C(clk_BUFGP_16),
    .CE(\MIR[9] ),
    .D(C_bus[21]),
    .Q(\R_reg/d_out [21])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R_reg/d_out_22  (
    .C(clk_BUFGP_16),
    .CE(\MIR[9] ),
    .D(C_bus[22]),
    .Q(\R_reg/d_out [22])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R_reg/d_out_23  (
    .C(clk_BUFGP_16),
    .CE(\MIR[9] ),
    .D(C_bus[23]),
    .Q(\R_reg/d_out [23])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \AC_reg/d_out_0  (
    .C(clk_BUFGP_16),
    .CE(\MIR[8] ),
    .D(C_bus[0]),
    .Q(\AC_reg/d_out [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \AC_reg/d_out_1  (
    .C(clk_BUFGP_16),
    .CE(\MIR[8] ),
    .D(C_bus[1]),
    .Q(\AC_reg/d_out [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \AC_reg/d_out_2  (
    .C(clk_BUFGP_16),
    .CE(\MIR[8] ),
    .D(C_bus[2]),
    .Q(\AC_reg/d_out [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \AC_reg/d_out_3  (
    .C(clk_BUFGP_16),
    .CE(\MIR[8] ),
    .D(C_bus[3]),
    .Q(\AC_reg/d_out [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \AC_reg/d_out_4  (
    .C(clk_BUFGP_16),
    .CE(\MIR[8] ),
    .D(C_bus[4]),
    .Q(\AC_reg/d_out [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \AC_reg/d_out_5  (
    .C(clk_BUFGP_16),
    .CE(\MIR[8] ),
    .D(C_bus[5]),
    .Q(\AC_reg/d_out [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \AC_reg/d_out_6  (
    .C(clk_BUFGP_16),
    .CE(\MIR[8] ),
    .D(C_bus[6]),
    .Q(\AC_reg/d_out [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \AC_reg/d_out_7  (
    .C(clk_BUFGP_16),
    .CE(\MIR[8] ),
    .D(C_bus[7]),
    .Q(\AC_reg/d_out [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \AC_reg/d_out_8  (
    .C(clk_BUFGP_16),
    .CE(\MIR[8] ),
    .D(C_bus[8]),
    .Q(\AC_reg/d_out [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \AC_reg/d_out_9  (
    .C(clk_BUFGP_16),
    .CE(\MIR[8] ),
    .D(C_bus[9]),
    .Q(\AC_reg/d_out [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \AC_reg/d_out_10  (
    .C(clk_BUFGP_16),
    .CE(\MIR[8] ),
    .D(C_bus[10]),
    .Q(\AC_reg/d_out [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \AC_reg/d_out_11  (
    .C(clk_BUFGP_16),
    .CE(\MIR[8] ),
    .D(C_bus[11]),
    .Q(\AC_reg/d_out [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \AC_reg/d_out_12  (
    .C(clk_BUFGP_16),
    .CE(\MIR[8] ),
    .D(C_bus[12]),
    .Q(\AC_reg/d_out [12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \AC_reg/d_out_13  (
    .C(clk_BUFGP_16),
    .CE(\MIR[8] ),
    .D(C_bus[13]),
    .Q(\AC_reg/d_out [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \AC_reg/d_out_14  (
    .C(clk_BUFGP_16),
    .CE(\MIR[8] ),
    .D(C_bus[14]),
    .Q(\AC_reg/d_out [14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \AC_reg/d_out_15  (
    .C(clk_BUFGP_16),
    .CE(\MIR[8] ),
    .D(C_bus[15]),
    .Q(\AC_reg/d_out [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \AC_reg/d_out_16  (
    .C(clk_BUFGP_16),
    .CE(\MIR[8] ),
    .D(C_bus[16]),
    .Q(\AC_reg/d_out [16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \AC_reg/d_out_17  (
    .C(clk_BUFGP_16),
    .CE(\MIR[8] ),
    .D(C_bus[17]),
    .Q(\AC_reg/d_out [17])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \AC_reg/d_out_18  (
    .C(clk_BUFGP_16),
    .CE(\MIR[8] ),
    .D(C_bus[18]),
    .Q(\AC_reg/d_out [18])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \AC_reg/d_out_19  (
    .C(clk_BUFGP_16),
    .CE(\MIR[8] ),
    .D(C_bus[19]),
    .Q(\AC_reg/d_out [19])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \AC_reg/d_out_20  (
    .C(clk_BUFGP_16),
    .CE(\MIR[8] ),
    .D(C_bus[20]),
    .Q(\AC_reg/d_out [20])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \AC_reg/d_out_21  (
    .C(clk_BUFGP_16),
    .CE(\MIR[8] ),
    .D(C_bus[21]),
    .Q(\AC_reg/d_out [21])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \AC_reg/d_out_22  (
    .C(clk_BUFGP_16),
    .CE(\MIR[8] ),
    .D(C_bus[22]),
    .Q(\AC_reg/d_out [22])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \AC_reg/d_out_23  (
    .C(clk_BUFGP_16),
    .CE(\MIR[8] ),
    .D(C_bus[23]),
    .Q(\AC_reg/d_out [23])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R4_reg/d_out_0  (
    .C(clk_BUFGP_16),
    .CE(\MIR[10] ),
    .D(C_bus[0]),
    .Q(\R4_reg/d_out [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R4_reg/d_out_1  (
    .C(clk_BUFGP_16),
    .CE(\MIR[10] ),
    .D(C_bus[1]),
    .Q(\R4_reg/d_out [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R4_reg/d_out_2  (
    .C(clk_BUFGP_16),
    .CE(\MIR[10] ),
    .D(C_bus[2]),
    .Q(\R4_reg/d_out [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R4_reg/d_out_3  (
    .C(clk_BUFGP_16),
    .CE(\MIR[10] ),
    .D(C_bus[3]),
    .Q(\R4_reg/d_out [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R4_reg/d_out_4  (
    .C(clk_BUFGP_16),
    .CE(\MIR[10] ),
    .D(C_bus[4]),
    .Q(\R4_reg/d_out [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R4_reg/d_out_5  (
    .C(clk_BUFGP_16),
    .CE(\MIR[10] ),
    .D(C_bus[5]),
    .Q(\R4_reg/d_out [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R4_reg/d_out_6  (
    .C(clk_BUFGP_16),
    .CE(\MIR[10] ),
    .D(C_bus[6]),
    .Q(\R4_reg/d_out [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R4_reg/d_out_7  (
    .C(clk_BUFGP_16),
    .CE(\MIR[10] ),
    .D(C_bus[7]),
    .Q(\R4_reg/d_out [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R4_reg/d_out_8  (
    .C(clk_BUFGP_16),
    .CE(\MIR[10] ),
    .D(C_bus[8]),
    .Q(\R4_reg/d_out [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R4_reg/d_out_9  (
    .C(clk_BUFGP_16),
    .CE(\MIR[10] ),
    .D(C_bus[9]),
    .Q(\R4_reg/d_out [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R4_reg/d_out_10  (
    .C(clk_BUFGP_16),
    .CE(\MIR[10] ),
    .D(C_bus[10]),
    .Q(\R4_reg/d_out [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R4_reg/d_out_11  (
    .C(clk_BUFGP_16),
    .CE(\MIR[10] ),
    .D(C_bus[11]),
    .Q(\R4_reg/d_out [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R4_reg/d_out_12  (
    .C(clk_BUFGP_16),
    .CE(\MIR[10] ),
    .D(C_bus[12]),
    .Q(\R4_reg/d_out [12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R4_reg/d_out_13  (
    .C(clk_BUFGP_16),
    .CE(\MIR[10] ),
    .D(C_bus[13]),
    .Q(\R4_reg/d_out [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R4_reg/d_out_14  (
    .C(clk_BUFGP_16),
    .CE(\MIR[10] ),
    .D(C_bus[14]),
    .Q(\R4_reg/d_out [14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R4_reg/d_out_15  (
    .C(clk_BUFGP_16),
    .CE(\MIR[10] ),
    .D(C_bus[15]),
    .Q(\R4_reg/d_out [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R4_reg/d_out_16  (
    .C(clk_BUFGP_16),
    .CE(\MIR[10] ),
    .D(C_bus[16]),
    .Q(\R4_reg/d_out [16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R4_reg/d_out_17  (
    .C(clk_BUFGP_16),
    .CE(\MIR[10] ),
    .D(C_bus[17]),
    .Q(\R4_reg/d_out [17])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R4_reg/d_out_18  (
    .C(clk_BUFGP_16),
    .CE(\MIR[10] ),
    .D(C_bus[18]),
    .Q(\R4_reg/d_out [18])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R4_reg/d_out_19  (
    .C(clk_BUFGP_16),
    .CE(\MIR[10] ),
    .D(C_bus[19]),
    .Q(\R4_reg/d_out [19])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R4_reg/d_out_20  (
    .C(clk_BUFGP_16),
    .CE(\MIR[10] ),
    .D(C_bus[20]),
    .Q(\R4_reg/d_out [20])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R4_reg/d_out_21  (
    .C(clk_BUFGP_16),
    .CE(\MIR[10] ),
    .D(C_bus[21]),
    .Q(\R4_reg/d_out [21])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R4_reg/d_out_22  (
    .C(clk_BUFGP_16),
    .CE(\MIR[10] ),
    .D(C_bus[22]),
    .Q(\R4_reg/d_out [22])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R4_reg/d_out_23  (
    .C(clk_BUFGP_16),
    .CE(\MIR[10] ),
    .D(C_bus[23]),
    .Q(\R4_reg/d_out [23])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R3_reg/d_out_0  (
    .C(clk_BUFGP_16),
    .CE(\MIR[11] ),
    .D(C_bus[0]),
    .Q(\R3_reg/d_out [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R3_reg/d_out_1  (
    .C(clk_BUFGP_16),
    .CE(\MIR[11] ),
    .D(C_bus[1]),
    .Q(\R3_reg/d_out [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R3_reg/d_out_2  (
    .C(clk_BUFGP_16),
    .CE(\MIR[11] ),
    .D(C_bus[2]),
    .Q(\R3_reg/d_out [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R3_reg/d_out_3  (
    .C(clk_BUFGP_16),
    .CE(\MIR[11] ),
    .D(C_bus[3]),
    .Q(\R3_reg/d_out [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R3_reg/d_out_4  (
    .C(clk_BUFGP_16),
    .CE(\MIR[11] ),
    .D(C_bus[4]),
    .Q(\R3_reg/d_out [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R3_reg/d_out_5  (
    .C(clk_BUFGP_16),
    .CE(\MIR[11] ),
    .D(C_bus[5]),
    .Q(\R3_reg/d_out [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R3_reg/d_out_6  (
    .C(clk_BUFGP_16),
    .CE(\MIR[11] ),
    .D(C_bus[6]),
    .Q(\R3_reg/d_out [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R3_reg/d_out_7  (
    .C(clk_BUFGP_16),
    .CE(\MIR[11] ),
    .D(C_bus[7]),
    .Q(\R3_reg/d_out [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R3_reg/d_out_8  (
    .C(clk_BUFGP_16),
    .CE(\MIR[11] ),
    .D(C_bus[8]),
    .Q(\R3_reg/d_out [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R3_reg/d_out_9  (
    .C(clk_BUFGP_16),
    .CE(\MIR[11] ),
    .D(C_bus[9]),
    .Q(\R3_reg/d_out [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R3_reg/d_out_10  (
    .C(clk_BUFGP_16),
    .CE(\MIR[11] ),
    .D(C_bus[10]),
    .Q(\R3_reg/d_out [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R3_reg/d_out_11  (
    .C(clk_BUFGP_16),
    .CE(\MIR[11] ),
    .D(C_bus[11]),
    .Q(\R3_reg/d_out [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R3_reg/d_out_12  (
    .C(clk_BUFGP_16),
    .CE(\MIR[11] ),
    .D(C_bus[12]),
    .Q(\R3_reg/d_out [12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R3_reg/d_out_13  (
    .C(clk_BUFGP_16),
    .CE(\MIR[11] ),
    .D(C_bus[13]),
    .Q(\R3_reg/d_out [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R3_reg/d_out_14  (
    .C(clk_BUFGP_16),
    .CE(\MIR[11] ),
    .D(C_bus[14]),
    .Q(\R3_reg/d_out [14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R3_reg/d_out_15  (
    .C(clk_BUFGP_16),
    .CE(\MIR[11] ),
    .D(C_bus[15]),
    .Q(\R3_reg/d_out [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R3_reg/d_out_16  (
    .C(clk_BUFGP_16),
    .CE(\MIR[11] ),
    .D(C_bus[16]),
    .Q(\R3_reg/d_out [16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R3_reg/d_out_17  (
    .C(clk_BUFGP_16),
    .CE(\MIR[11] ),
    .D(C_bus[17]),
    .Q(\R3_reg/d_out [17])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R3_reg/d_out_18  (
    .C(clk_BUFGP_16),
    .CE(\MIR[11] ),
    .D(C_bus[18]),
    .Q(\R3_reg/d_out [18])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R3_reg/d_out_19  (
    .C(clk_BUFGP_16),
    .CE(\MIR[11] ),
    .D(C_bus[19]),
    .Q(\R3_reg/d_out [19])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R3_reg/d_out_20  (
    .C(clk_BUFGP_16),
    .CE(\MIR[11] ),
    .D(C_bus[20]),
    .Q(\R3_reg/d_out [20])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R3_reg/d_out_21  (
    .C(clk_BUFGP_16),
    .CE(\MIR[11] ),
    .D(C_bus[21]),
    .Q(\R3_reg/d_out [21])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R3_reg/d_out_22  (
    .C(clk_BUFGP_16),
    .CE(\MIR[11] ),
    .D(C_bus[22]),
    .Q(\R3_reg/d_out [22])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R3_reg/d_out_23  (
    .C(clk_BUFGP_16),
    .CE(\MIR[11] ),
    .D(C_bus[23]),
    .Q(\R3_reg/d_out [23])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R2_reg/d_out_0  (
    .C(clk_BUFGP_16),
    .CE(\MIR[12] ),
    .D(C_bus[0]),
    .Q(\R2_reg/d_out [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R2_reg/d_out_1  (
    .C(clk_BUFGP_16),
    .CE(\MIR[12] ),
    .D(C_bus[1]),
    .Q(\R2_reg/d_out [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R2_reg/d_out_2  (
    .C(clk_BUFGP_16),
    .CE(\MIR[12] ),
    .D(C_bus[2]),
    .Q(\R2_reg/d_out [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R2_reg/d_out_3  (
    .C(clk_BUFGP_16),
    .CE(\MIR[12] ),
    .D(C_bus[3]),
    .Q(\R2_reg/d_out [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R2_reg/d_out_4  (
    .C(clk_BUFGP_16),
    .CE(\MIR[12] ),
    .D(C_bus[4]),
    .Q(\R2_reg/d_out [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R2_reg/d_out_5  (
    .C(clk_BUFGP_16),
    .CE(\MIR[12] ),
    .D(C_bus[5]),
    .Q(\R2_reg/d_out [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R2_reg/d_out_6  (
    .C(clk_BUFGP_16),
    .CE(\MIR[12] ),
    .D(C_bus[6]),
    .Q(\R2_reg/d_out [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R2_reg/d_out_7  (
    .C(clk_BUFGP_16),
    .CE(\MIR[12] ),
    .D(C_bus[7]),
    .Q(\R2_reg/d_out [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R2_reg/d_out_8  (
    .C(clk_BUFGP_16),
    .CE(\MIR[12] ),
    .D(C_bus[8]),
    .Q(\R2_reg/d_out [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R2_reg/d_out_9  (
    .C(clk_BUFGP_16),
    .CE(\MIR[12] ),
    .D(C_bus[9]),
    .Q(\R2_reg/d_out [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R2_reg/d_out_10  (
    .C(clk_BUFGP_16),
    .CE(\MIR[12] ),
    .D(C_bus[10]),
    .Q(\R2_reg/d_out [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R2_reg/d_out_11  (
    .C(clk_BUFGP_16),
    .CE(\MIR[12] ),
    .D(C_bus[11]),
    .Q(\R2_reg/d_out [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R2_reg/d_out_12  (
    .C(clk_BUFGP_16),
    .CE(\MIR[12] ),
    .D(C_bus[12]),
    .Q(\R2_reg/d_out [12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R2_reg/d_out_13  (
    .C(clk_BUFGP_16),
    .CE(\MIR[12] ),
    .D(C_bus[13]),
    .Q(\R2_reg/d_out [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R2_reg/d_out_14  (
    .C(clk_BUFGP_16),
    .CE(\MIR[12] ),
    .D(C_bus[14]),
    .Q(\R2_reg/d_out [14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R2_reg/d_out_15  (
    .C(clk_BUFGP_16),
    .CE(\MIR[12] ),
    .D(C_bus[15]),
    .Q(\R2_reg/d_out [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R2_reg/d_out_16  (
    .C(clk_BUFGP_16),
    .CE(\MIR[12] ),
    .D(C_bus[16]),
    .Q(\R2_reg/d_out [16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R2_reg/d_out_17  (
    .C(clk_BUFGP_16),
    .CE(\MIR[12] ),
    .D(C_bus[17]),
    .Q(\R2_reg/d_out [17])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R2_reg/d_out_18  (
    .C(clk_BUFGP_16),
    .CE(\MIR[12] ),
    .D(C_bus[18]),
    .Q(\R2_reg/d_out [18])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R2_reg/d_out_19  (
    .C(clk_BUFGP_16),
    .CE(\MIR[12] ),
    .D(C_bus[19]),
    .Q(\R2_reg/d_out [19])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R2_reg/d_out_20  (
    .C(clk_BUFGP_16),
    .CE(\MIR[12] ),
    .D(C_bus[20]),
    .Q(\R2_reg/d_out [20])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R2_reg/d_out_21  (
    .C(clk_BUFGP_16),
    .CE(\MIR[12] ),
    .D(C_bus[21]),
    .Q(\R2_reg/d_out [21])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R2_reg/d_out_22  (
    .C(clk_BUFGP_16),
    .CE(\MIR[12] ),
    .D(C_bus[22]),
    .Q(\R2_reg/d_out [22])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R2_reg/d_out_23  (
    .C(clk_BUFGP_16),
    .CE(\MIR[12] ),
    .D(C_bus[23]),
    .Q(\R2_reg/d_out [23])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R1_reg/d_out_0  (
    .C(clk_BUFGP_16),
    .CE(\MIR[13] ),
    .D(C_bus[0]),
    .Q(\R1_reg/d_out [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R1_reg/d_out_1  (
    .C(clk_BUFGP_16),
    .CE(\MIR[13] ),
    .D(C_bus[1]),
    .Q(\R1_reg/d_out [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R1_reg/d_out_2  (
    .C(clk_BUFGP_16),
    .CE(\MIR[13] ),
    .D(C_bus[2]),
    .Q(\R1_reg/d_out [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R1_reg/d_out_3  (
    .C(clk_BUFGP_16),
    .CE(\MIR[13] ),
    .D(C_bus[3]),
    .Q(\R1_reg/d_out [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R1_reg/d_out_4  (
    .C(clk_BUFGP_16),
    .CE(\MIR[13] ),
    .D(C_bus[4]),
    .Q(\R1_reg/d_out [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R1_reg/d_out_5  (
    .C(clk_BUFGP_16),
    .CE(\MIR[13] ),
    .D(C_bus[5]),
    .Q(\R1_reg/d_out [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R1_reg/d_out_6  (
    .C(clk_BUFGP_16),
    .CE(\MIR[13] ),
    .D(C_bus[6]),
    .Q(\R1_reg/d_out [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R1_reg/d_out_7  (
    .C(clk_BUFGP_16),
    .CE(\MIR[13] ),
    .D(C_bus[7]),
    .Q(\R1_reg/d_out [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R1_reg/d_out_8  (
    .C(clk_BUFGP_16),
    .CE(\MIR[13] ),
    .D(C_bus[8]),
    .Q(\R1_reg/d_out [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R1_reg/d_out_9  (
    .C(clk_BUFGP_16),
    .CE(\MIR[13] ),
    .D(C_bus[9]),
    .Q(\R1_reg/d_out [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R1_reg/d_out_10  (
    .C(clk_BUFGP_16),
    .CE(\MIR[13] ),
    .D(C_bus[10]),
    .Q(\R1_reg/d_out [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R1_reg/d_out_11  (
    .C(clk_BUFGP_16),
    .CE(\MIR[13] ),
    .D(C_bus[11]),
    .Q(\R1_reg/d_out [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R1_reg/d_out_12  (
    .C(clk_BUFGP_16),
    .CE(\MIR[13] ),
    .D(C_bus[12]),
    .Q(\R1_reg/d_out [12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R1_reg/d_out_13  (
    .C(clk_BUFGP_16),
    .CE(\MIR[13] ),
    .D(C_bus[13]),
    .Q(\R1_reg/d_out [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R1_reg/d_out_14  (
    .C(clk_BUFGP_16),
    .CE(\MIR[13] ),
    .D(C_bus[14]),
    .Q(\R1_reg/d_out [14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R1_reg/d_out_15  (
    .C(clk_BUFGP_16),
    .CE(\MIR[13] ),
    .D(C_bus[15]),
    .Q(\R1_reg/d_out [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R1_reg/d_out_16  (
    .C(clk_BUFGP_16),
    .CE(\MIR[13] ),
    .D(C_bus[16]),
    .Q(\R1_reg/d_out [16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R1_reg/d_out_17  (
    .C(clk_BUFGP_16),
    .CE(\MIR[13] ),
    .D(C_bus[17]),
    .Q(\R1_reg/d_out [17])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R1_reg/d_out_18  (
    .C(clk_BUFGP_16),
    .CE(\MIR[13] ),
    .D(C_bus[18]),
    .Q(\R1_reg/d_out [18])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R1_reg/d_out_19  (
    .C(clk_BUFGP_16),
    .CE(\MIR[13] ),
    .D(C_bus[19]),
    .Q(\R1_reg/d_out [19])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R1_reg/d_out_20  (
    .C(clk_BUFGP_16),
    .CE(\MIR[13] ),
    .D(C_bus[20]),
    .Q(\R1_reg/d_out [20])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R1_reg/d_out_21  (
    .C(clk_BUFGP_16),
    .CE(\MIR[13] ),
    .D(C_bus[21]),
    .Q(\R1_reg/d_out [21])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R1_reg/d_out_22  (
    .C(clk_BUFGP_16),
    .CE(\MIR[13] ),
    .D(C_bus[22]),
    .Q(\R1_reg/d_out [22])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \R1_reg/d_out_23  (
    .C(clk_BUFGP_16),
    .CE(\MIR[13] ),
    .D(C_bus[23]),
    .Q(\R1_reg/d_out [23])
  );
  MUXCY   \PC_reg/Mcount_ins_addr_cy<0>  (
    .CI(\MIR<14>_inv ),
    .DI(N0),
    .S(\PC_reg/Mcount_ins_addr_lut [0]),
    .O(\PC_reg/Mcount_ins_addr_cy [0])
  );
  XORCY   \PC_reg/Mcount_ins_addr_xor<0>  (
    .CI(\MIR<14>_inv ),
    .LI(\PC_reg/Mcount_ins_addr_lut [0]),
    .O(\PC_reg/Mcount_ins_addr )
  );
  MUXCY   \PC_reg/Mcount_ins_addr_cy<1>  (
    .CI(\PC_reg/Mcount_ins_addr_cy [0]),
    .DI(N0),
    .S(\PC_reg/Mcount_ins_addr_lut [1]),
    .O(\PC_reg/Mcount_ins_addr_cy [1])
  );
  XORCY   \PC_reg/Mcount_ins_addr_xor<1>  (
    .CI(\PC_reg/Mcount_ins_addr_cy [0]),
    .LI(\PC_reg/Mcount_ins_addr_lut [1]),
    .O(\PC_reg/Mcount_ins_addr1 )
  );
  MUXCY   \PC_reg/Mcount_ins_addr_cy<2>  (
    .CI(\PC_reg/Mcount_ins_addr_cy [1]),
    .DI(N0),
    .S(\PC_reg/Mcount_ins_addr_lut [2]),
    .O(\PC_reg/Mcount_ins_addr_cy [2])
  );
  XORCY   \PC_reg/Mcount_ins_addr_xor<2>  (
    .CI(\PC_reg/Mcount_ins_addr_cy [1]),
    .LI(\PC_reg/Mcount_ins_addr_lut [2]),
    .O(\PC_reg/Mcount_ins_addr2 )
  );
  MUXCY   \PC_reg/Mcount_ins_addr_cy<3>  (
    .CI(\PC_reg/Mcount_ins_addr_cy [2]),
    .DI(N0),
    .S(\PC_reg/Mcount_ins_addr_lut [3]),
    .O(\PC_reg/Mcount_ins_addr_cy [3])
  );
  XORCY   \PC_reg/Mcount_ins_addr_xor<3>  (
    .CI(\PC_reg/Mcount_ins_addr_cy [2]),
    .LI(\PC_reg/Mcount_ins_addr_lut [3]),
    .O(\PC_reg/Mcount_ins_addr3 )
  );
  MUXCY   \PC_reg/Mcount_ins_addr_cy<4>  (
    .CI(\PC_reg/Mcount_ins_addr_cy [3]),
    .DI(N0),
    .S(\PC_reg/Mcount_ins_addr_lut [4]),
    .O(\PC_reg/Mcount_ins_addr_cy [4])
  );
  XORCY   \PC_reg/Mcount_ins_addr_xor<4>  (
    .CI(\PC_reg/Mcount_ins_addr_cy [3]),
    .LI(\PC_reg/Mcount_ins_addr_lut [4]),
    .O(\PC_reg/Mcount_ins_addr4 )
  );
  MUXCY   \PC_reg/Mcount_ins_addr_cy<5>  (
    .CI(\PC_reg/Mcount_ins_addr_cy [4]),
    .DI(N0),
    .S(\PC_reg/Mcount_ins_addr_lut [5]),
    .O(\PC_reg/Mcount_ins_addr_cy [5])
  );
  XORCY   \PC_reg/Mcount_ins_addr_xor<5>  (
    .CI(\PC_reg/Mcount_ins_addr_cy [4]),
    .LI(\PC_reg/Mcount_ins_addr_lut [5]),
    .O(\PC_reg/Mcount_ins_addr5 )
  );
  MUXCY   \PC_reg/Mcount_ins_addr_cy<6>  (
    .CI(\PC_reg/Mcount_ins_addr_cy [5]),
    .DI(N0),
    .S(\PC_reg/Mcount_ins_addr_lut [6]),
    .O(\PC_reg/Mcount_ins_addr_cy [6])
  );
  XORCY   \PC_reg/Mcount_ins_addr_xor<6>  (
    .CI(\PC_reg/Mcount_ins_addr_cy [5]),
    .LI(\PC_reg/Mcount_ins_addr_lut [6]),
    .O(\PC_reg/Mcount_ins_addr6 )
  );
  MUXCY   \PC_reg/Mcount_ins_addr_cy<7>  (
    .CI(\PC_reg/Mcount_ins_addr_cy [6]),
    .DI(N0),
    .S(\PC_reg/Mcount_ins_addr_lut [7]),
    .O(\PC_reg/Mcount_ins_addr_cy [7])
  );
  XORCY   \PC_reg/Mcount_ins_addr_xor<7>  (
    .CI(\PC_reg/Mcount_ins_addr_cy [6]),
    .LI(\PC_reg/Mcount_ins_addr_lut [7]),
    .O(\PC_reg/Mcount_ins_addr7 )
  );
  XORCY   \PC_reg/Mcount_ins_addr_xor<8>  (
    .CI(\PC_reg/Mcount_ins_addr_cy [7]),
    .LI(\PC_reg/Mcount_ins_addr_lut [8]),
    .O(\PC_reg/Mcount_ins_addr8 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \PC_reg/ins_addr_0  (
    .C(clk_BUFGP_16),
    .CE(\PC_reg/_n0013_inv ),
    .D(\PC_reg/Mcount_ins_addr ),
    .Q(\PC_reg/ins_addr [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \PC_reg/ins_addr_1  (
    .C(clk_BUFGP_16),
    .CE(\PC_reg/_n0013_inv ),
    .D(\PC_reg/Mcount_ins_addr1 ),
    .Q(\PC_reg/ins_addr [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \PC_reg/ins_addr_2  (
    .C(clk_BUFGP_16),
    .CE(\PC_reg/_n0013_inv ),
    .D(\PC_reg/Mcount_ins_addr2 ),
    .Q(\PC_reg/ins_addr [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \PC_reg/ins_addr_3  (
    .C(clk_BUFGP_16),
    .CE(\PC_reg/_n0013_inv ),
    .D(\PC_reg/Mcount_ins_addr3 ),
    .Q(\PC_reg/ins_addr [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \PC_reg/ins_addr_4  (
    .C(clk_BUFGP_16),
    .CE(\PC_reg/_n0013_inv ),
    .D(\PC_reg/Mcount_ins_addr4 ),
    .Q(\PC_reg/ins_addr [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \PC_reg/ins_addr_5  (
    .C(clk_BUFGP_16),
    .CE(\PC_reg/_n0013_inv ),
    .D(\PC_reg/Mcount_ins_addr5 ),
    .Q(\PC_reg/ins_addr [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \PC_reg/ins_addr_6  (
    .C(clk_BUFGP_16),
    .CE(\PC_reg/_n0013_inv ),
    .D(\PC_reg/Mcount_ins_addr6 ),
    .Q(\PC_reg/ins_addr [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \PC_reg/ins_addr_7  (
    .C(clk_BUFGP_16),
    .CE(\PC_reg/_n0013_inv ),
    .D(\PC_reg/Mcount_ins_addr7 ),
    .Q(\PC_reg/ins_addr [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \PC_reg/ins_addr_8  (
    .C(clk_BUFGP_16),
    .CE(\PC_reg/_n0013_inv ),
    .D(\PC_reg/Mcount_ins_addr8 ),
    .Q(\PC_reg/ins_addr [8])
  );
  MUXCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<0>  (
    .CI(N1),
    .DI(\AC_reg/d_out [0]),
    .S(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<0>_372 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<0>_373 )
  );
  XORCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<0>  (
    .CI(N1),
    .LI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<0>_372 ),
    .O(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<0> )
  );
  MUXCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<1>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<0>_373 ),
    .DI(\AC_reg/d_out [1]),
    .S(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<1>_374 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<1>_375 )
  );
  XORCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<1>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<0>_373 ),
    .LI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<1>_374 ),
    .O(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<1> )
  );
  MUXCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<2>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<1>_375 ),
    .DI(\AC_reg/d_out [2]),
    .S(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<2>_376 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<2>_377 )
  );
  XORCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<2>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<1>_375 ),
    .LI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<2>_376 ),
    .O(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<2> )
  );
  MUXCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<3>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<2>_377 ),
    .DI(\AC_reg/d_out [3]),
    .S(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<3>_378 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<3>_379 )
  );
  XORCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<3>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<2>_377 ),
    .LI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<3>_378 ),
    .O(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<3> )
  );
  MUXCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<4>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<3>_379 ),
    .DI(\AC_reg/d_out [4]),
    .S(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<4>_380 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<4>_381 )
  );
  XORCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<4>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<3>_379 ),
    .LI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<4>_380 ),
    .O(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<4> )
  );
  MUXCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<5>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<4>_381 ),
    .DI(\AC_reg/d_out [5]),
    .S(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<5>_382 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<5>_383 )
  );
  XORCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<5>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<4>_381 ),
    .LI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<5>_382 ),
    .O(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<5> )
  );
  MUXCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<6>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<5>_383 ),
    .DI(\AC_reg/d_out [6]),
    .S(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<6>_384 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<6>_385 )
  );
  XORCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<6>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<5>_383 ),
    .LI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<6>_384 ),
    .O(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<6> )
  );
  MUXCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<7>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<6>_385 ),
    .DI(\AC_reg/d_out [7]),
    .S(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<7>_386 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<7>_387 )
  );
  XORCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<7>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<6>_385 ),
    .LI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<7>_386 ),
    .O(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<7> )
  );
  MUXCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<8>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<7>_387 ),
    .DI(\AC_reg/d_out [8]),
    .S(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<8>_388 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<8>_389 )
  );
  XORCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<8>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<7>_387 ),
    .LI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<8>_388 ),
    .O(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<8> )
  );
  MUXCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<9>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<8>_389 ),
    .DI(\AC_reg/d_out [9]),
    .S(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<9>_390 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<9>_391 )
  );
  XORCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<9>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<8>_389 ),
    .LI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<9>_390 ),
    .O(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<9> )
  );
  MUXCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<10>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<9>_391 ),
    .DI(\AC_reg/d_out [10]),
    .S(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<10>_392 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<10>_393 )
  );
  XORCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<10>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<9>_391 ),
    .LI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<10>_392 ),
    .O(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<10> )
  );
  MUXCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<11>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<10>_393 ),
    .DI(\AC_reg/d_out [11]),
    .S(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<11>_394 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<11>_395 )
  );
  XORCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<11>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<10>_393 ),
    .LI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<11>_394 ),
    .O(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<11> )
  );
  MUXCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<12>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<11>_395 ),
    .DI(\AC_reg/d_out [12]),
    .S(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<12>_396 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<12>_397 )
  );
  XORCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<12>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<11>_395 ),
    .LI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<12>_396 ),
    .O(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<12> )
  );
  MUXCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<13>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<12>_397 ),
    .DI(\AC_reg/d_out [13]),
    .S(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<13>_398 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<13>_399 )
  );
  XORCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<13>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<12>_397 ),
    .LI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<13>_398 ),
    .O(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<13> )
  );
  MUXCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<14>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<13>_399 ),
    .DI(\AC_reg/d_out [14]),
    .S(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<14>_400 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<14>_401 )
  );
  XORCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<14>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<13>_399 ),
    .LI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<14>_400 ),
    .O(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<14> )
  );
  MUXCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<15>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<14>_401 ),
    .DI(\AC_reg/d_out [15]),
    .S(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<15>_402 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<15>_403 )
  );
  XORCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<15>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<14>_401 ),
    .LI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<15>_402 ),
    .O(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<15> )
  );
  MUXCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<16>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<15>_403 ),
    .DI(\AC_reg/d_out [16]),
    .S(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<16>_404 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<16>_405 )
  );
  XORCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<16>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<15>_403 ),
    .LI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<16>_404 ),
    .O(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<16> )
  );
  MUXCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<17>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<16>_405 ),
    .DI(\AC_reg/d_out [17]),
    .S(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<17>_406 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<17>_407 )
  );
  XORCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<17>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<16>_405 ),
    .LI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<17>_406 ),
    .O(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<17> )
  );
  MUXCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<18>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<17>_407 ),
    .DI(\AC_reg/d_out [18]),
    .S(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<18>_408 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<18>_409 )
  );
  XORCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<18>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<17>_407 ),
    .LI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<18>_408 ),
    .O(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<18> )
  );
  MUXCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<19>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<18>_409 ),
    .DI(\AC_reg/d_out [19]),
    .S(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<19>_410 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<19>_411 )
  );
  XORCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<19>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<18>_409 ),
    .LI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<19>_410 ),
    .O(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<19> )
  );
  MUXCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<20>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<19>_411 ),
    .DI(\AC_reg/d_out [20]),
    .S(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<20>_412 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<20>_413 )
  );
  XORCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<20>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<19>_411 ),
    .LI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<20>_412 ),
    .O(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<20> )
  );
  MUXCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<21>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<20>_413 ),
    .DI(\AC_reg/d_out [21]),
    .S(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<21>_414 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<21>_415 )
  );
  XORCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<21>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<20>_413 ),
    .LI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<21>_414 ),
    .O(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<21> )
  );
  MUXCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<22>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<21>_415 ),
    .DI(\AC_reg/d_out [22]),
    .S(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<22>_416 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<22>_417 )
  );
  XORCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<22>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<21>_415 ),
    .LI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<22>_416 ),
    .O(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<22> )
  );
  XORCY   \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_xor<23>  (
    .CI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_cy<22>_417 ),
    .LI(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<23>_418 ),
    .O(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<23> )
  );
  MUXCY   \ALU_24bit/Mmux_C_bus12_rs_cy<0>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_AS_inv ),
    .DI(\ALU_24bit/Mmux_C_bus12_rs_A [0]),
    .S(\ALU_24bit/Mmux_C_bus12_rs_lut [0]),
    .O(\ALU_24bit/Mmux_C_bus12_rs_cy [0])
  );
  XORCY   \ALU_24bit/Mmux_C_bus12_rs_xor<0>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_AS_inv ),
    .LI(\ALU_24bit/Mmux_C_bus12_rs_lut [0]),
    .O(C_bus[0])
  );
  MUXCY   \ALU_24bit/Mmux_C_bus12_rs_cy<1>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [0]),
    .DI(\ALU_24bit/Mmux_C_bus12_rs_A [1]),
    .S(\ALU_24bit/Mmux_C_bus12_rs_lut [1]),
    .O(\ALU_24bit/Mmux_C_bus12_rs_cy [1])
  );
  XORCY   \ALU_24bit/Mmux_C_bus12_rs_xor<1>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [0]),
    .LI(\ALU_24bit/Mmux_C_bus12_rs_lut [1]),
    .O(C_bus[1])
  );
  MUXCY   \ALU_24bit/Mmux_C_bus12_rs_cy<2>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [1]),
    .DI(\ALU_24bit/Mmux_C_bus12_rs_A [2]),
    .S(\ALU_24bit/Mmux_C_bus12_rs_lut [2]),
    .O(\ALU_24bit/Mmux_C_bus12_rs_cy [2])
  );
  XORCY   \ALU_24bit/Mmux_C_bus12_rs_xor<2>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [1]),
    .LI(\ALU_24bit/Mmux_C_bus12_rs_lut [2]),
    .O(C_bus[2])
  );
  MUXCY   \ALU_24bit/Mmux_C_bus12_rs_cy<3>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [2]),
    .DI(\ALU_24bit/Mmux_C_bus12_rs_A [3]),
    .S(\ALU_24bit/Mmux_C_bus12_rs_lut [3]),
    .O(\ALU_24bit/Mmux_C_bus12_rs_cy [3])
  );
  XORCY   \ALU_24bit/Mmux_C_bus12_rs_xor<3>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [2]),
    .LI(\ALU_24bit/Mmux_C_bus12_rs_lut [3]),
    .O(C_bus[3])
  );
  MUXCY   \ALU_24bit/Mmux_C_bus12_rs_cy<4>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [3]),
    .DI(\ALU_24bit/Mmux_C_bus12_rs_A [4]),
    .S(\ALU_24bit/Mmux_C_bus12_rs_lut [4]),
    .O(\ALU_24bit/Mmux_C_bus12_rs_cy [4])
  );
  XORCY   \ALU_24bit/Mmux_C_bus12_rs_xor<4>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [3]),
    .LI(\ALU_24bit/Mmux_C_bus12_rs_lut [4]),
    .O(C_bus[4])
  );
  MUXCY   \ALU_24bit/Mmux_C_bus12_rs_cy<5>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [4]),
    .DI(\ALU_24bit/Mmux_C_bus12_rs_A [5]),
    .S(\ALU_24bit/Mmux_C_bus12_rs_lut [5]),
    .O(\ALU_24bit/Mmux_C_bus12_rs_cy [5])
  );
  XORCY   \ALU_24bit/Mmux_C_bus12_rs_xor<5>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [4]),
    .LI(\ALU_24bit/Mmux_C_bus12_rs_lut [5]),
    .O(C_bus[5])
  );
  MUXCY   \ALU_24bit/Mmux_C_bus12_rs_cy<6>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [5]),
    .DI(\ALU_24bit/Mmux_C_bus12_rs_A [6]),
    .S(\ALU_24bit/Mmux_C_bus12_rs_lut [6]),
    .O(\ALU_24bit/Mmux_C_bus12_rs_cy [6])
  );
  XORCY   \ALU_24bit/Mmux_C_bus12_rs_xor<6>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [5]),
    .LI(\ALU_24bit/Mmux_C_bus12_rs_lut [6]),
    .O(C_bus[6])
  );
  MUXCY   \ALU_24bit/Mmux_C_bus12_rs_cy<7>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [6]),
    .DI(\ALU_24bit/Mmux_C_bus12_rs_A [7]),
    .S(\ALU_24bit/Mmux_C_bus12_rs_lut [7]),
    .O(\ALU_24bit/Mmux_C_bus12_rs_cy [7])
  );
  XORCY   \ALU_24bit/Mmux_C_bus12_rs_xor<7>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [6]),
    .LI(\ALU_24bit/Mmux_C_bus12_rs_lut [7]),
    .O(C_bus[7])
  );
  MUXCY   \ALU_24bit/Mmux_C_bus12_rs_cy<8>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [7]),
    .DI(\ALU_24bit/Mmux_C_bus12_rs_A [8]),
    .S(\ALU_24bit/Mmux_C_bus12_rs_lut [8]),
    .O(\ALU_24bit/Mmux_C_bus12_rs_cy [8])
  );
  XORCY   \ALU_24bit/Mmux_C_bus12_rs_xor<8>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [7]),
    .LI(\ALU_24bit/Mmux_C_bus12_rs_lut [8]),
    .O(C_bus[8])
  );
  MUXCY   \ALU_24bit/Mmux_C_bus12_rs_cy<9>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [8]),
    .DI(\ALU_24bit/Mmux_C_bus12_rs_A [9]),
    .S(\ALU_24bit/Mmux_C_bus12_rs_lut [9]),
    .O(\ALU_24bit/Mmux_C_bus12_rs_cy [9])
  );
  XORCY   \ALU_24bit/Mmux_C_bus12_rs_xor<9>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [8]),
    .LI(\ALU_24bit/Mmux_C_bus12_rs_lut [9]),
    .O(C_bus[9])
  );
  MUXCY   \ALU_24bit/Mmux_C_bus12_rs_cy<10>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [9]),
    .DI(\ALU_24bit/Mmux_C_bus12_rs_A [10]),
    .S(\ALU_24bit/Mmux_C_bus12_rs_lut [10]),
    .O(\ALU_24bit/Mmux_C_bus12_rs_cy [10])
  );
  XORCY   \ALU_24bit/Mmux_C_bus12_rs_xor<10>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [9]),
    .LI(\ALU_24bit/Mmux_C_bus12_rs_lut [10]),
    .O(C_bus[10])
  );
  MUXCY   \ALU_24bit/Mmux_C_bus12_rs_cy<11>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [10]),
    .DI(\ALU_24bit/Mmux_C_bus12_rs_A [11]),
    .S(\ALU_24bit/Mmux_C_bus12_rs_lut [11]),
    .O(\ALU_24bit/Mmux_C_bus12_rs_cy [11])
  );
  XORCY   \ALU_24bit/Mmux_C_bus12_rs_xor<11>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [10]),
    .LI(\ALU_24bit/Mmux_C_bus12_rs_lut [11]),
    .O(C_bus[11])
  );
  MUXCY   \ALU_24bit/Mmux_C_bus12_rs_cy<12>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [11]),
    .DI(\ALU_24bit/Mmux_C_bus12_rs_A [12]),
    .S(\ALU_24bit/Mmux_C_bus12_rs_lut [12]),
    .O(\ALU_24bit/Mmux_C_bus12_rs_cy [12])
  );
  XORCY   \ALU_24bit/Mmux_C_bus12_rs_xor<12>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [11]),
    .LI(\ALU_24bit/Mmux_C_bus12_rs_lut [12]),
    .O(C_bus[12])
  );
  MUXCY   \ALU_24bit/Mmux_C_bus12_rs_cy<13>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [12]),
    .DI(\ALU_24bit/Mmux_C_bus12_rs_A [13]),
    .S(\ALU_24bit/Mmux_C_bus12_rs_lut [13]),
    .O(\ALU_24bit/Mmux_C_bus12_rs_cy [13])
  );
  XORCY   \ALU_24bit/Mmux_C_bus12_rs_xor<13>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [12]),
    .LI(\ALU_24bit/Mmux_C_bus12_rs_lut [13]),
    .O(C_bus[13])
  );
  MUXCY   \ALU_24bit/Mmux_C_bus12_rs_cy<14>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [13]),
    .DI(\ALU_24bit/Mmux_C_bus12_rs_A [14]),
    .S(\ALU_24bit/Mmux_C_bus12_rs_lut [14]),
    .O(\ALU_24bit/Mmux_C_bus12_rs_cy [14])
  );
  XORCY   \ALU_24bit/Mmux_C_bus12_rs_xor<14>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [13]),
    .LI(\ALU_24bit/Mmux_C_bus12_rs_lut [14]),
    .O(C_bus[14])
  );
  MUXCY   \ALU_24bit/Mmux_C_bus12_rs_cy<15>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [14]),
    .DI(\ALU_24bit/Mmux_C_bus12_rs_A [15]),
    .S(\ALU_24bit/Mmux_C_bus12_rs_lut [15]),
    .O(\ALU_24bit/Mmux_C_bus12_rs_cy [15])
  );
  XORCY   \ALU_24bit/Mmux_C_bus12_rs_xor<15>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [14]),
    .LI(\ALU_24bit/Mmux_C_bus12_rs_lut [15]),
    .O(C_bus[15])
  );
  MUXCY   \ALU_24bit/Mmux_C_bus12_rs_cy<16>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [15]),
    .DI(\ALU_24bit/Mmux_C_bus12_rs_A [16]),
    .S(\ALU_24bit/Mmux_C_bus12_rs_lut [16]),
    .O(\ALU_24bit/Mmux_C_bus12_rs_cy [16])
  );
  XORCY   \ALU_24bit/Mmux_C_bus12_rs_xor<16>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [15]),
    .LI(\ALU_24bit/Mmux_C_bus12_rs_lut [16]),
    .O(C_bus[16])
  );
  MUXCY   \ALU_24bit/Mmux_C_bus12_rs_cy<17>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [16]),
    .DI(\ALU_24bit/Mmux_C_bus12_rs_A [17]),
    .S(\ALU_24bit/Mmux_C_bus12_rs_lut [17]),
    .O(\ALU_24bit/Mmux_C_bus12_rs_cy [17])
  );
  XORCY   \ALU_24bit/Mmux_C_bus12_rs_xor<17>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [16]),
    .LI(\ALU_24bit/Mmux_C_bus12_rs_lut [17]),
    .O(C_bus[17])
  );
  MUXCY   \ALU_24bit/Mmux_C_bus12_rs_cy<18>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [17]),
    .DI(\ALU_24bit/Mmux_C_bus12_rs_A [18]),
    .S(\ALU_24bit/Mmux_C_bus12_rs_lut [18]),
    .O(\ALU_24bit/Mmux_C_bus12_rs_cy [18])
  );
  XORCY   \ALU_24bit/Mmux_C_bus12_rs_xor<18>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [17]),
    .LI(\ALU_24bit/Mmux_C_bus12_rs_lut [18]),
    .O(C_bus[18])
  );
  MUXCY   \ALU_24bit/Mmux_C_bus12_rs_cy<19>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [18]),
    .DI(\ALU_24bit/Mmux_C_bus12_rs_A [19]),
    .S(\ALU_24bit/Mmux_C_bus12_rs_lut [19]),
    .O(\ALU_24bit/Mmux_C_bus12_rs_cy [19])
  );
  XORCY   \ALU_24bit/Mmux_C_bus12_rs_xor<19>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [18]),
    .LI(\ALU_24bit/Mmux_C_bus12_rs_lut [19]),
    .O(C_bus[19])
  );
  MUXCY   \ALU_24bit/Mmux_C_bus12_rs_cy<20>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [19]),
    .DI(\ALU_24bit/Mmux_C_bus12_rs_A [20]),
    .S(\ALU_24bit/Mmux_C_bus12_rs_lut [20]),
    .O(\ALU_24bit/Mmux_C_bus12_rs_cy [20])
  );
  XORCY   \ALU_24bit/Mmux_C_bus12_rs_xor<20>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [19]),
    .LI(\ALU_24bit/Mmux_C_bus12_rs_lut [20]),
    .O(C_bus[20])
  );
  MUXCY   \ALU_24bit/Mmux_C_bus12_rs_cy<21>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [20]),
    .DI(\ALU_24bit/Mmux_C_bus12_rs_A [21]),
    .S(\ALU_24bit/Mmux_C_bus12_rs_lut [21]),
    .O(\ALU_24bit/Mmux_C_bus12_rs_cy [21])
  );
  XORCY   \ALU_24bit/Mmux_C_bus12_rs_xor<21>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [20]),
    .LI(\ALU_24bit/Mmux_C_bus12_rs_lut [21]),
    .O(C_bus[21])
  );
  MUXCY   \ALU_24bit/Mmux_C_bus12_rs_cy<22>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [21]),
    .DI(\ALU_24bit/Mmux_C_bus12_rs_A [22]),
    .S(\ALU_24bit/Mmux_C_bus12_rs_lut [22]),
    .O(\ALU_24bit/Mmux_C_bus12_rs_cy [22])
  );
  XORCY   \ALU_24bit/Mmux_C_bus12_rs_xor<22>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [21]),
    .LI(\ALU_24bit/Mmux_C_bus12_rs_lut [22]),
    .O(C_bus[22])
  );
  XORCY   \ALU_24bit/Mmux_C_bus12_rs_xor<23>  (
    .CI(\ALU_24bit/Mmux_C_bus12_rs_cy [22]),
    .LI(\ALU_24bit/Mmux_C_bus12_rs_lut [23]),
    .O(C_bus[23])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MDR_reg/data_out_7  (
    .C(clk_BUFGP_16),
    .CE(\MDR_reg/_n0010_inv ),
    .D(\MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<7> ),
    .Q(\MDR_reg/data_out [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MDR_reg/data_out_6  (
    .C(clk_BUFGP_16),
    .CE(\MDR_reg/_n0010_inv ),
    .D(\MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<6> ),
    .Q(\MDR_reg/data_out [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MDR_reg/data_out_5  (
    .C(clk_BUFGP_16),
    .CE(\MDR_reg/_n0010_inv ),
    .D(\MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<5> ),
    .Q(\MDR_reg/data_out [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MDR_reg/data_out_4  (
    .C(clk_BUFGP_16),
    .CE(\MDR_reg/_n0010_inv ),
    .D(\MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<4> ),
    .Q(\MDR_reg/data_out [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MDR_reg/data_out_3  (
    .C(clk_BUFGP_16),
    .CE(\MDR_reg/_n0010_inv ),
    .D(\MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<3> ),
    .Q(\MDR_reg/data_out [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MDR_reg/data_out_2  (
    .C(clk_BUFGP_16),
    .CE(\MDR_reg/_n0010_inv ),
    .D(\MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<2> ),
    .Q(\MDR_reg/data_out [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MDR_reg/data_out_1  (
    .C(clk_BUFGP_16),
    .CE(\MDR_reg/_n0010_inv ),
    .D(\MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<1> ),
    .Q(\MDR_reg/data_out [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MDR_reg/data_out_0  (
    .C(clk_BUFGP_16),
    .CE(\MDR_reg/_n0010_inv ),
    .D(\MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<0> ),
    .Q(\MDR_reg/data_out [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MBRU_reg/ins_out_7  (
    .C(clk_BUFGP_16),
    .CE(\MIR[7] ),
    .D(IROM_ins_fetch_7_IBUF_8),
    .Q(\MBRU_reg/ins_out [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MBRU_reg/ins_out_6  (
    .C(clk_BUFGP_16),
    .CE(\MIR[7] ),
    .D(IROM_ins_fetch_6_IBUF_9),
    .Q(\MBRU_reg/ins_out [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MBRU_reg/ins_out_5  (
    .C(clk_BUFGP_16),
    .CE(\MIR[7] ),
    .D(IROM_ins_fetch_5_IBUF_10),
    .Q(\MBRU_reg/ins_out [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MBRU_reg/ins_out_4  (
    .C(clk_BUFGP_16),
    .CE(\MIR[7] ),
    .D(IROM_ins_fetch_4_IBUF_11),
    .Q(\MBRU_reg/ins_out [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MBRU_reg/ins_out_3  (
    .C(clk_BUFGP_16),
    .CE(\MIR[7] ),
    .D(IROM_ins_fetch_3_IBUF_12),
    .Q(\MBRU_reg/ins_out [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MBRU_reg/ins_out_2  (
    .C(clk_BUFGP_16),
    .CE(\MIR[7] ),
    .D(IROM_ins_fetch_2_IBUF_13),
    .Q(\MBRU_reg/ins_out [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MBRU_reg/ins_out_1  (
    .C(clk_BUFGP_16),
    .CE(\MIR[7] ),
    .D(IROM_ins_fetch_1_IBUF_14),
    .Q(\MBRU_reg/ins_out [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MBRU_reg/ins_out_0  (
    .C(clk_BUFGP_16),
    .CE(\MIR[7] ),
    .D(IROM_ins_fetch_0_IBUF_15),
    .Q(\MBRU_reg/ins_out [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MAR_reg/data_addr_23  (
    .C(clk_BUFGP_16),
    .CE(\MIR[16] ),
    .D(C_bus[23]),
    .Q(\MAR_reg/data_addr [23])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MAR_reg/data_addr_22  (
    .C(clk_BUFGP_16),
    .CE(\MIR[16] ),
    .D(C_bus[22]),
    .Q(\MAR_reg/data_addr [22])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MAR_reg/data_addr_21  (
    .C(clk_BUFGP_16),
    .CE(\MIR[16] ),
    .D(C_bus[21]),
    .Q(\MAR_reg/data_addr [21])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MAR_reg/data_addr_20  (
    .C(clk_BUFGP_16),
    .CE(\MIR[16] ),
    .D(C_bus[20]),
    .Q(\MAR_reg/data_addr [20])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MAR_reg/data_addr_19  (
    .C(clk_BUFGP_16),
    .CE(\MIR[16] ),
    .D(C_bus[19]),
    .Q(\MAR_reg/data_addr [19])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MAR_reg/data_addr_18  (
    .C(clk_BUFGP_16),
    .CE(\MIR[16] ),
    .D(C_bus[18]),
    .Q(\MAR_reg/data_addr [18])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MAR_reg/data_addr_17  (
    .C(clk_BUFGP_16),
    .CE(\MIR[16] ),
    .D(C_bus[17]),
    .Q(\MAR_reg/data_addr [17])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MAR_reg/data_addr_16  (
    .C(clk_BUFGP_16),
    .CE(\MIR[16] ),
    .D(C_bus[16]),
    .Q(\MAR_reg/data_addr [16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MAR_reg/data_addr_15  (
    .C(clk_BUFGP_16),
    .CE(\MIR[16] ),
    .D(C_bus[15]),
    .Q(\MAR_reg/data_addr [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MAR_reg/data_addr_14  (
    .C(clk_BUFGP_16),
    .CE(\MIR[16] ),
    .D(C_bus[14]),
    .Q(\MAR_reg/data_addr [14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MAR_reg/data_addr_13  (
    .C(clk_BUFGP_16),
    .CE(\MIR[16] ),
    .D(C_bus[13]),
    .Q(\MAR_reg/data_addr [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MAR_reg/data_addr_12  (
    .C(clk_BUFGP_16),
    .CE(\MIR[16] ),
    .D(C_bus[12]),
    .Q(\MAR_reg/data_addr [12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MAR_reg/data_addr_11  (
    .C(clk_BUFGP_16),
    .CE(\MIR[16] ),
    .D(C_bus[11]),
    .Q(\MAR_reg/data_addr [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MAR_reg/data_addr_10  (
    .C(clk_BUFGP_16),
    .CE(\MIR[16] ),
    .D(C_bus[10]),
    .Q(\MAR_reg/data_addr [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MAR_reg/data_addr_9  (
    .C(clk_BUFGP_16),
    .CE(\MIR[16] ),
    .D(C_bus[9]),
    .Q(\MAR_reg/data_addr [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MAR_reg/data_addr_8  (
    .C(clk_BUFGP_16),
    .CE(\MIR[16] ),
    .D(C_bus[8]),
    .Q(\MAR_reg/data_addr [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MAR_reg/data_addr_7  (
    .C(clk_BUFGP_16),
    .CE(\MIR[16] ),
    .D(C_bus[7]),
    .Q(\MAR_reg/data_addr [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MAR_reg/data_addr_6  (
    .C(clk_BUFGP_16),
    .CE(\MIR[16] ),
    .D(C_bus[6]),
    .Q(\MAR_reg/data_addr [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MAR_reg/data_addr_5  (
    .C(clk_BUFGP_16),
    .CE(\MIR[16] ),
    .D(C_bus[5]),
    .Q(\MAR_reg/data_addr [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MAR_reg/data_addr_4  (
    .C(clk_BUFGP_16),
    .CE(\MIR[16] ),
    .D(C_bus[4]),
    .Q(\MAR_reg/data_addr [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MAR_reg/data_addr_3  (
    .C(clk_BUFGP_16),
    .CE(\MIR[16] ),
    .D(C_bus[3]),
    .Q(\MAR_reg/data_addr [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MAR_reg/data_addr_2  (
    .C(clk_BUFGP_16),
    .CE(\MIR[16] ),
    .D(C_bus[2]),
    .Q(\MAR_reg/data_addr [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MAR_reg/data_addr_1  (
    .C(clk_BUFGP_16),
    .CE(\MIR[16] ),
    .D(C_bus[1]),
    .Q(\MAR_reg/data_addr [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \MAR_reg/data_addr_0  (
    .C(clk_BUFGP_16),
    .CE(\MIR[16] ),
    .D(C_bus[0]),
    .Q(\MAR_reg/data_addr [0])
  );
  FD_1   \controlStore/next_addr_7  (
    .C(clk_BUFGP_16),
    .D(\controlStore/addr[7]_MBRU[7]_mux_1_OUT<7> ),
    .Q(\controlStore/next_addr [7])
  );
  FD_1   \controlStore/next_addr_6  (
    .C(clk_BUFGP_16),
    .D(\controlStore/addr[7]_MBRU[7]_mux_1_OUT<6> ),
    .Q(\controlStore/next_addr [6])
  );
  FD_1   \controlStore/next_addr_5  (
    .C(clk_BUFGP_16),
    .D(\controlStore/addr[7]_MBRU[7]_mux_1_OUT<5> ),
    .Q(\controlStore/next_addr [5])
  );
  FD_1   \controlStore/next_addr_4  (
    .C(clk_BUFGP_16),
    .D(\controlStore/addr[7]_MBRU[7]_mux_1_OUT<4> ),
    .Q(\controlStore/next_addr [4])
  );
  FD_1   \controlStore/next_addr_3  (
    .C(clk_BUFGP_16),
    .D(\controlStore/addr[7]_MBRU[7]_mux_1_OUT<3> ),
    .Q(\controlStore/next_addr [3])
  );
  FD_1   \controlStore/next_addr_2  (
    .C(clk_BUFGP_16),
    .D(\controlStore/addr[7]_MBRU[7]_mux_1_OUT<2> ),
    .Q(\controlStore/next_addr [2])
  );
  FD_1   \controlStore/next_addr_1  (
    .C(clk_BUFGP_16),
    .D(\controlStore/addr[7]_MBRU[7]_mux_1_OUT<1> ),
    .Q(\controlStore/next_addr [1])
  );
  FD_1   \controlStore/next_addr_0  (
    .C(clk_BUFGP_16),
    .D(\controlStore/addr[7]_MBRU[7]_mux_1_OUT<0> ),
    .Q(\controlStore/next_addr [0])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controlStore/Mmux_MIR15  (
    .I0(\controlStore/next_addr[7]_GND_8_o_equal_7_o<7>_787 ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(\MIR[0] )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controlStore/Mmux_MIR21  (
    .I0(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<10> ),
    .O(\MIR[10] )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controlStore/Mmux_MIR32  (
    .I0(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<11> ),
    .O(\MIR[11] )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controlStore/Mmux_MIR41  (
    .I0(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<12> ),
    .O(\MIR[12] )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controlStore/Mmux_MIR51  (
    .I0(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<13> ),
    .O(\MIR[13] )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controlStore/Mmux_MIR81  (
    .I0(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<16> ),
    .O(\MIR[16] )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \controlStore/Mmux_MIR91  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\MIR[17] )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controlStore/Mmux_MIR101  (
    .I0(\controlStore/next_addr[7]_GND_8_o_equal_7_o<7>_787 ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .O(\MIR[18] )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \controlStore/Mmux_MIR111  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\MIR[19] )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \controlStore/Mmux_MIR121  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\MIR[1] )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controlStore/Mmux_MIR131  (
    .I0(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .O(\MIR[20] )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controlStore/Mmux_MIR271  (
    .I0(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<5> ),
    .O(write_OBUF_210)
  );
  LUT3 #(
    .INIT ( 8'h4E ))
  \controlStore/Mmux_MIR291  (
    .I0(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<7> ),
    .I2(\ALU_24bit/Z_flag_275 ),
    .O(\MIR[7] )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controlStore/Mmux_MIR301  (
    .I0(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<8> ),
    .O(\MIR[8] )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \controlStore/Mmux_MIR311  (
    .I0(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<9> ),
    .O(\MIR[9] )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \ALU_24bit/Mmux_oper[3]_GND_9_o_Mux_7_o11  (
    .I0(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<1> ),
    .I1(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<0> ),
    .I2(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<2> ),
    .I3(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<3> ),
    .I4(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<4> ),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<5> ),
    .O(\ALU_24bit/Mmux_oper[3]_GND_9_o_Mux_7_o1 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \ALU_24bit/Mmux_oper[3]_GND_9_o_Mux_7_o12  (
    .I0(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<6> ),
    .I1(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<7> ),
    .I2(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<8> ),
    .I3(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<9> ),
    .I4(\ALU_24bit/Mmux_oper[3]_GND_9_o_Mux_7_o1 ),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<10> ),
    .O(\ALU_24bit/Mmux_oper[3]_GND_9_o_Mux_7_o11_526 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \ALU_24bit/Mmux_oper[3]_GND_9_o_Mux_7_o13  (
    .I0(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<11> ),
    .I1(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<12> ),
    .I2(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<13> ),
    .I3(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<14> ),
    .I4(\ALU_24bit/Mmux_oper[3]_GND_9_o_Mux_7_o11_526 ),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<15> ),
    .O(\ALU_24bit/Mmux_oper[3]_GND_9_o_Mux_7_o12_527 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \ALU_24bit/Mmux_oper[3]_GND_9_o_Mux_7_o14  (
    .I0(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<16> ),
    .I1(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<17> ),
    .I2(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<18> ),
    .I3(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<19> ),
    .I4(\ALU_24bit/Mmux_oper[3]_GND_9_o_Mux_7_o12_527 ),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<20> ),
    .O(\ALU_24bit/Mmux_oper[3]_GND_9_o_Mux_7_o13_528 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000400 ))
  \ALU_24bit/Mmux_oper[3]_GND_9_o_Mux_7_o15  (
    .I0(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<21> ),
    .I1(\MIR[18] ),
    .I2(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<22> ),
    .I3(\ALU_24bit/Mmux_oper[3]_GND_9_o_Mux_7_o13_528 ),
    .I4(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<23> ),
    .I5(\MIR[20] ),
    .O(\ALU_24bit/oper[3]_GND_9_o_Mux_7_o )
  );
  LUT6 #(
    .INIT ( 64'hECECFFECECECECEC ))
  \ALU_24bit/Mmux_C_bus12_A14  (
    .I0(\AC_reg/d_out [0]),
    .I1(\ALU_24bit/Mmux_C_bus12_A1 ),
    .I2(\ALU_24bit/Mmux_C_bus12_A251_467 ),
    .I3(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I4(\MIR[18] ),
    .I5(B_bus[0]),
    .O(\ALU_24bit/Mmux_C_bus12_A11 )
  );
  LUT6 #(
    .INIT ( 64'h0E020C000C000C00 ))
  \decoder_4to16/Mmux_B_bus102  (
    .I0(\R1_reg/d_out [18]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(\decoder_4to16/Mmux_B_bus10 ),
    .I4(\MIR[0] ),
    .I5(\MIR[1] ),
    .O(B_bus[18])
  );
  LUT6 #(
    .INIT ( 64'h0E020C000C000C00 ))
  \decoder_4to16/Mmux_B_bus112  (
    .I0(\R1_reg/d_out [19]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(\decoder_4to16/Mmux_B_bus11 ),
    .I4(\MIR[0] ),
    .I5(\MIR[1] ),
    .O(B_bus[19])
  );
  LUT6 #(
    .INIT ( 64'h0E020C000C000C00 ))
  \decoder_4to16/Mmux_B_bus132  (
    .I0(\R1_reg/d_out [20]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(\decoder_4to16/Mmux_B_bus13 ),
    .I4(\MIR[0] ),
    .I5(\MIR[1] ),
    .O(B_bus[20])
  );
  LUT6 #(
    .INIT ( 64'h0E020C000C000C00 ))
  \decoder_4to16/Mmux_B_bus142  (
    .I0(\R1_reg/d_out [21]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(\decoder_4to16/Mmux_B_bus14 ),
    .I4(\MIR[0] ),
    .I5(\MIR[1] ),
    .O(B_bus[21])
  );
  LUT6 #(
    .INIT ( 64'h0E020C000C000C00 ))
  \decoder_4to16/Mmux_B_bus152  (
    .I0(\R1_reg/d_out [22]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(\decoder_4to16/Mmux_B_bus15 ),
    .I4(\MIR[0] ),
    .I5(\MIR[1] ),
    .O(B_bus[22])
  );
  LUT6 #(
    .INIT ( 64'h0E020C000C000C00 ))
  \decoder_4to16/Mmux_B_bus162  (
    .I0(\R1_reg/d_out [23]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(\decoder_4to16/Mmux_B_bus16 ),
    .I4(\MIR[0] ),
    .I5(\MIR[1] ),
    .O(B_bus[23])
  );
  LUT6 #(
    .INIT ( 64'h0E020C000C000C00 ))
  \decoder_4to16/Mmux_B_bus22  (
    .I0(\R1_reg/d_out [10]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(\decoder_4to16/Mmux_B_bus2 ),
    .I4(\MIR[0] ),
    .I5(\controlStore/Mmux_MIR121_788 ),
    .O(B_bus[10])
  );
  LUT6 #(
    .INIT ( 64'h0E020C000C000C00 ))
  \decoder_4to16/Mmux_B_bus242  (
    .I0(\R1_reg/d_out [9]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(\decoder_4to16/Mmux_B_bus24 ),
    .I4(\MIR[0] ),
    .I5(\controlStore/Mmux_MIR121_788 ),
    .O(B_bus[9])
  );
  LUT6 #(
    .INIT ( 64'h0E020C000C000C00 ))
  \decoder_4to16/Mmux_B_bus32  (
    .I0(\R1_reg/d_out [11]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(\decoder_4to16/Mmux_B_bus3 ),
    .I4(\MIR[0] ),
    .I5(\controlStore/Mmux_MIR121_788 ),
    .O(B_bus[11])
  );
  LUT6 #(
    .INIT ( 64'h0E020C000C000C00 ))
  \decoder_4to16/Mmux_B_bus42  (
    .I0(\R1_reg/d_out [12]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(\decoder_4to16/Mmux_B_bus4 ),
    .I4(\MIR[0] ),
    .I5(\controlStore/Mmux_MIR121_788 ),
    .O(B_bus[12])
  );
  LUT6 #(
    .INIT ( 64'h0E020C000C000C00 ))
  \decoder_4to16/Mmux_B_bus52  (
    .I0(\R1_reg/d_out [13]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(\decoder_4to16/Mmux_B_bus5 ),
    .I4(\MIR[0] ),
    .I5(\MIR[1] ),
    .O(B_bus[13])
  );
  LUT6 #(
    .INIT ( 64'h0E020C000C000C00 ))
  \decoder_4to16/Mmux_B_bus62  (
    .I0(\R1_reg/d_out [14]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(\decoder_4to16/Mmux_B_bus6 ),
    .I4(\MIR[0] ),
    .I5(\MIR[1] ),
    .O(B_bus[14])
  );
  LUT6 #(
    .INIT ( 64'h0E020C000C000C00 ))
  \decoder_4to16/Mmux_B_bus72  (
    .I0(\R1_reg/d_out [15]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(\decoder_4to16/Mmux_B_bus7 ),
    .I4(\MIR[0] ),
    .I5(\MIR[1] ),
    .O(B_bus[15])
  );
  LUT6 #(
    .INIT ( 64'h0E020C000C000C00 ))
  \decoder_4to16/Mmux_B_bus82  (
    .I0(\R1_reg/d_out [16]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(\decoder_4to16/Mmux_B_bus8 ),
    .I4(\MIR[0] ),
    .I5(\MIR[1] ),
    .O(B_bus[16])
  );
  LUT6 #(
    .INIT ( 64'h0E020C000C000C00 ))
  \decoder_4to16/Mmux_B_bus92  (
    .I0(\R1_reg/d_out [17]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(\decoder_4to16/Mmux_B_bus9 ),
    .I4(\MIR[0] ),
    .I5(\MIR[1] ),
    .O(B_bus[17])
  );
  LUT6 #(
    .INIT ( 64'h00AF00C000A000C0 ))
  \ALU_24bit/Mmux_C_bus12_A113  (
    .I0(\AC_reg/d_out [18]),
    .I1(\AC_reg/d_out [12]),
    .I2(\MIR[19] ),
    .I3(\MIR[17] ),
    .I4(\MIR[18] ),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<14> ),
    .O(\ALU_24bit/Mmux_C_bus12_A113_550 )
  );
  LUT6 #(
    .INIT ( 64'h00AF00C000A000C0 ))
  \ALU_24bit/Mmux_C_bus12_A133  (
    .I0(\AC_reg/d_out [19]),
    .I1(\AC_reg/d_out [13]),
    .I2(\MIR[19] ),
    .I3(\MIR[17] ),
    .I4(\MIR[18] ),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<15> ),
    .O(\ALU_24bit/Mmux_C_bus12_A132_553 )
  );
  LUT6 #(
    .INIT ( 64'h00AF00C000A000C0 ))
  \ALU_24bit/Mmux_C_bus12_A153  (
    .I0(\AC_reg/d_out [20]),
    .I1(\AC_reg/d_out [14]),
    .I2(\MIR[19] ),
    .I3(\MIR[17] ),
    .I4(\MIR[18] ),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<16> ),
    .O(\ALU_24bit/Mmux_C_bus12_A152_556 )
  );
  LUT6 #(
    .INIT ( 64'h00AF00C000A000C0 ))
  \ALU_24bit/Mmux_C_bus12_A173  (
    .I0(\AC_reg/d_out [21]),
    .I1(\AC_reg/d_out [15]),
    .I2(\MIR[19] ),
    .I3(\MIR[17] ),
    .I4(\MIR[18] ),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<17> ),
    .O(\ALU_24bit/Mmux_C_bus12_A172_559 )
  );
  LUT6 #(
    .INIT ( 64'h00AF00C000A000C0 ))
  \ALU_24bit/Mmux_C_bus12_A193  (
    .I0(\AC_reg/d_out [22]),
    .I1(\AC_reg/d_out [16]),
    .I2(\MIR[19] ),
    .I3(\MIR[17] ),
    .I4(\MIR[18] ),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<18> ),
    .O(\ALU_24bit/Mmux_C_bus12_A192_562 )
  );
  LUT6 #(
    .INIT ( 64'h00AF00C000A000C0 ))
  \ALU_24bit/Mmux_C_bus12_A213  (
    .I0(\AC_reg/d_out [23]),
    .I1(\AC_reg/d_out [17]),
    .I2(\MIR[19] ),
    .I3(\MIR[17] ),
    .I4(\MIR[18] ),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<19> ),
    .O(\ALU_24bit/Mmux_C_bus12_A212_565 )
  );
  LUT6 #(
    .INIT ( 64'h00CF00A000C000A0 ))
  \ALU_24bit/Mmux_C_bus12_A453  (
    .I0(\AC_reg/d_out [6]),
    .I1(\AC_reg/d_out [12]),
    .I2(\MIR[19] ),
    .I3(\MIR[17] ),
    .I4(\MIR[18] ),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<8> ),
    .O(\ALU_24bit/Mmux_C_bus12_A452_568 )
  );
  LUT6 #(
    .INIT ( 64'h00CF00A000C000A0 ))
  \ALU_24bit/Mmux_C_bus12_A473  (
    .I0(\AC_reg/d_out [7]),
    .I1(\AC_reg/d_out [13]),
    .I2(\MIR[19] ),
    .I3(\MIR[17] ),
    .I4(\MIR[18] ),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<9> ),
    .O(\ALU_24bit/Mmux_C_bus12_A472_571 )
  );
  LUT6 #(
    .INIT ( 64'h00CF00A000C000A0 ))
  \ALU_24bit/Mmux_C_bus12_A36  (
    .I0(\AC_reg/d_out [8]),
    .I1(\AC_reg/d_out [14]),
    .I2(\MIR[19] ),
    .I3(\MIR[17] ),
    .I4(\MIR[18] ),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<10> ),
    .O(\ALU_24bit/Mmux_C_bus12_A32_574 )
  );
  LUT6 #(
    .INIT ( 64'h00CF00A000C000A0 ))
  \ALU_24bit/Mmux_C_bus12_A53  (
    .I0(\AC_reg/d_out [9]),
    .I1(\AC_reg/d_out [15]),
    .I2(\MIR[19] ),
    .I3(\MIR[17] ),
    .I4(\MIR[18] ),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<11> ),
    .O(\ALU_24bit/Mmux_C_bus12_A52_577 )
  );
  LUT6 #(
    .INIT ( 64'h00CF00A000C000A0 ))
  \ALU_24bit/Mmux_C_bus12_A73  (
    .I0(\AC_reg/d_out [10]),
    .I1(\AC_reg/d_out [16]),
    .I2(\MIR[19] ),
    .I3(\MIR[17] ),
    .I4(\MIR[18] ),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<12> ),
    .O(\ALU_24bit/Mmux_C_bus12_A72_580 )
  );
  LUT6 #(
    .INIT ( 64'h00CF00A000C000A0 ))
  \ALU_24bit/Mmux_C_bus12_A93  (
    .I0(\AC_reg/d_out [11]),
    .I1(\AC_reg/d_out [17]),
    .I2(\MIR[19] ),
    .I3(\MIR[17] ),
    .I4(\MIR[18] ),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<13> ),
    .O(\ALU_24bit/Mmux_C_bus12_A92_583 )
  );
  LUT6 #(
    .INIT ( 64'h00F000CCAA000000 ))
  \ALU_24bit/Mmux_C_bus12_A251  (
    .I0(\AC_reg/d_out [19]),
    .I1(\AC_reg/d_out [18]),
    .I2(\AC_reg/d_out [12]),
    .I3(\MIR[18] ),
    .I4(\MIR[17] ),
    .I5(\MIR[19] ),
    .O(\ALU_24bit/Mmux_C_bus12_A25 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAEAA0C00 ))
  \ALU_24bit/Mmux_C_bus12_A253  (
    .I0(\ALU_24bit/Mmux_C_bus12_A332_469 ),
    .I1(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I2(\MIR[18] ),
    .I3(B_bus[20]),
    .I4(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<20> ),
    .I5(\ALU_24bit/Mmux_C_bus12_A252_585 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_A [20])
  );
  LUT6 #(
    .INIT ( 64'h00F000CCAA000000 ))
  \ALU_24bit/Mmux_C_bus12_A311  (
    .I0(\AC_reg/d_out [22]),
    .I1(\AC_reg/d_out [21]),
    .I2(\AC_reg/d_out [15]),
    .I3(\MIR[18] ),
    .I4(\MIR[17] ),
    .I5(\MIR[19] ),
    .O(\ALU_24bit/Mmux_C_bus12_A311_586 )
  );
  LUT6 #(
    .INIT ( 64'h00F000CCAA000000 ))
  \ALU_24bit/Mmux_C_bus12_A291  (
    .I0(\AC_reg/d_out [21]),
    .I1(\AC_reg/d_out [20]),
    .I2(\AC_reg/d_out [14]),
    .I3(\MIR[18] ),
    .I4(\MIR[17] ),
    .I5(\MIR[19] ),
    .O(\ALU_24bit/Mmux_C_bus12_A29 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAEAA0C00 ))
  \ALU_24bit/Mmux_C_bus12_A293  (
    .I0(\ALU_24bit/Mmux_C_bus12_A332_469 ),
    .I1(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I2(\MIR[18] ),
    .I3(B_bus[22]),
    .I4(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<22> ),
    .I5(\ALU_24bit/Mmux_C_bus12_A291_589 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_A [22])
  );
  LUT6 #(
    .INIT ( 64'h00F000CCAA000000 ))
  \ALU_24bit/Mmux_C_bus12_A271  (
    .I0(\AC_reg/d_out [20]),
    .I1(\AC_reg/d_out [19]),
    .I2(\AC_reg/d_out [13]),
    .I3(\MIR[18] ),
    .I4(\MIR[17] ),
    .I5(\MIR[19] ),
    .O(\ALU_24bit/Mmux_C_bus12_A27 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAEAA0C00 ))
  \ALU_24bit/Mmux_C_bus12_A273  (
    .I0(\ALU_24bit/Mmux_C_bus12_A332_469 ),
    .I1(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I2(\MIR[18] ),
    .I3(B_bus[21]),
    .I4(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<21> ),
    .I5(\ALU_24bit/Mmux_C_bus12_A271_591 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_A [21])
  );
  LUT6 #(
    .INIT ( 64'hFFFFAEAAFFFF0C00 ))
  \ALU_24bit/Mmux_C_bus12_A393  (
    .I0(\ALU_24bit/Mmux_C_bus12_A332_469 ),
    .I1(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I2(\MIR[18] ),
    .I3(B_bus[5]),
    .I4(\ALU_24bit/Mmux_C_bus12_A391_593 ),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<5> ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_A [5])
  );
  LUT6 #(
    .INIT ( 64'hFFFFAEAAFFFF0C00 ))
  \ALU_24bit/Mmux_C_bus12_A413  (
    .I0(\ALU_24bit/Mmux_C_bus12_A332_469 ),
    .I1(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I2(\MIR[18] ),
    .I3(B_bus[6]),
    .I4(\ALU_24bit/Mmux_C_bus12_A411_595 ),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<6> ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_A [6])
  );
  LUT6 #(
    .INIT ( 64'hFFFFAEAAFFFF0C00 ))
  \ALU_24bit/Mmux_C_bus12_A433  (
    .I0(\ALU_24bit/Mmux_C_bus12_A332_469 ),
    .I1(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I2(\MIR[18] ),
    .I3(B_bus[7]),
    .I4(\ALU_24bit/Mmux_C_bus12_A431_597 ),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<7> ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_A [7])
  );
  LUT6 #(
    .INIT ( 64'hFFFFAEAAFFFF0C00 ))
  \ALU_24bit/Mmux_C_bus12_A373  (
    .I0(\ALU_24bit/Mmux_C_bus12_A332_469 ),
    .I1(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I2(\MIR[18] ),
    .I3(B_bus[4]),
    .I4(\ALU_24bit/Mmux_C_bus12_A371_599 ),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<4> ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_A [4])
  );
  LUT6 #(
    .INIT ( 64'hFFFFAEAAFFFF0C00 ))
  \ALU_24bit/Mmux_C_bus12_A353  (
    .I0(\ALU_24bit/Mmux_C_bus12_A332_469 ),
    .I1(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I2(\MIR[18] ),
    .I3(B_bus[3]),
    .I4(\ALU_24bit/Mmux_C_bus12_A351_601 ),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<3> ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_A [3])
  );
  LUT6 #(
    .INIT ( 64'hFFFFAEAAFFFF0C00 ))
  \ALU_24bit/Mmux_C_bus12_A333  (
    .I0(\ALU_24bit/Mmux_C_bus12_A332_469 ),
    .I1(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I2(\MIR[18] ),
    .I3(B_bus[2]),
    .I4(\ALU_24bit/Mmux_C_bus12_A331_603 ),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<2> ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_A [2])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \controlStore/next_addr[7]_GND_8_o_equal_7_o<7>_SW0  (
    .I0(\controlStore/next_addr [7]),
    .I1(\controlStore/next_addr [6]),
    .I2(\controlStore/next_addr [5]),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'h0000000000004000 ))
  \controlStore/next_addr[7]_GND_8_o_equal_7_o<7>  (
    .I0(\controlStore/next_addr [0]),
    .I1(\controlStore/next_addr [1]),
    .I2(\controlStore/next_addr [4]),
    .I3(\controlStore/next_addr [2]),
    .I4(\controlStore/next_addr [3]),
    .I5(N4),
    .O(\controlStore/next_addr[7]_GND_8_o_equal_7_o )
  );
  IBUF   data_in_7_IBUF (
    .I(data_in[7]),
    .O(data_in_7_IBUF_0)
  );
  IBUF   data_in_6_IBUF (
    .I(data_in[6]),
    .O(data_in_6_IBUF_1)
  );
  IBUF   data_in_5_IBUF (
    .I(data_in[5]),
    .O(data_in_5_IBUF_2)
  );
  IBUF   data_in_4_IBUF (
    .I(data_in[4]),
    .O(data_in_4_IBUF_3)
  );
  IBUF   data_in_3_IBUF (
    .I(data_in[3]),
    .O(data_in_3_IBUF_4)
  );
  IBUF   data_in_2_IBUF (
    .I(data_in[2]),
    .O(data_in_2_IBUF_5)
  );
  IBUF   data_in_1_IBUF (
    .I(data_in[1]),
    .O(data_in_1_IBUF_6)
  );
  IBUF   data_in_0_IBUF (
    .I(data_in[0]),
    .O(data_in_0_IBUF_7)
  );
  IBUF   IROM_ins_fetch_7_IBUF (
    .I(IROM_ins_fetch[7]),
    .O(IROM_ins_fetch_7_IBUF_8)
  );
  IBUF   IROM_ins_fetch_6_IBUF (
    .I(IROM_ins_fetch[6]),
    .O(IROM_ins_fetch_6_IBUF_9)
  );
  IBUF   IROM_ins_fetch_5_IBUF (
    .I(IROM_ins_fetch[5]),
    .O(IROM_ins_fetch_5_IBUF_10)
  );
  IBUF   IROM_ins_fetch_4_IBUF (
    .I(IROM_ins_fetch[4]),
    .O(IROM_ins_fetch_4_IBUF_11)
  );
  IBUF   IROM_ins_fetch_3_IBUF (
    .I(IROM_ins_fetch[3]),
    .O(IROM_ins_fetch_3_IBUF_12)
  );
  IBUF   IROM_ins_fetch_2_IBUF (
    .I(IROM_ins_fetch[2]),
    .O(IROM_ins_fetch_2_IBUF_13)
  );
  IBUF   IROM_ins_fetch_1_IBUF (
    .I(IROM_ins_fetch[1]),
    .O(IROM_ins_fetch_1_IBUF_14)
  );
  IBUF   IROM_ins_fetch_0_IBUF (
    .I(IROM_ins_fetch[0]),
    .O(IROM_ins_fetch_0_IBUF_15)
  );
  OBUF   DRAM_addr_23_OBUF (
    .I(\MAR_reg/data_addr [23]),
    .O(DRAM_addr[23])
  );
  OBUF   DRAM_addr_22_OBUF (
    .I(\MAR_reg/data_addr [22]),
    .O(DRAM_addr[22])
  );
  OBUF   DRAM_addr_21_OBUF (
    .I(\MAR_reg/data_addr [21]),
    .O(DRAM_addr[21])
  );
  OBUF   DRAM_addr_20_OBUF (
    .I(\MAR_reg/data_addr [20]),
    .O(DRAM_addr[20])
  );
  OBUF   DRAM_addr_19_OBUF (
    .I(\MAR_reg/data_addr [19]),
    .O(DRAM_addr[19])
  );
  OBUF   DRAM_addr_18_OBUF (
    .I(\MAR_reg/data_addr [18]),
    .O(DRAM_addr[18])
  );
  OBUF   DRAM_addr_17_OBUF (
    .I(\MAR_reg/data_addr [17]),
    .O(DRAM_addr[17])
  );
  OBUF   DRAM_addr_16_OBUF (
    .I(\MAR_reg/data_addr [16]),
    .O(DRAM_addr[16])
  );
  OBUF   DRAM_addr_15_OBUF (
    .I(\MAR_reg/data_addr [15]),
    .O(DRAM_addr[15])
  );
  OBUF   DRAM_addr_14_OBUF (
    .I(\MAR_reg/data_addr [14]),
    .O(DRAM_addr[14])
  );
  OBUF   DRAM_addr_13_OBUF (
    .I(\MAR_reg/data_addr [13]),
    .O(DRAM_addr[13])
  );
  OBUF   DRAM_addr_12_OBUF (
    .I(\MAR_reg/data_addr [12]),
    .O(DRAM_addr[12])
  );
  OBUF   DRAM_addr_11_OBUF (
    .I(\MAR_reg/data_addr [11]),
    .O(DRAM_addr[11])
  );
  OBUF   DRAM_addr_10_OBUF (
    .I(\MAR_reg/data_addr [10]),
    .O(DRAM_addr[10])
  );
  OBUF   DRAM_addr_9_OBUF (
    .I(\MAR_reg/data_addr [9]),
    .O(DRAM_addr[9])
  );
  OBUF   DRAM_addr_8_OBUF (
    .I(\MAR_reg/data_addr [8]),
    .O(DRAM_addr[8])
  );
  OBUF   DRAM_addr_7_OBUF (
    .I(\MAR_reg/data_addr [7]),
    .O(DRAM_addr[7])
  );
  OBUF   DRAM_addr_6_OBUF (
    .I(\MAR_reg/data_addr [6]),
    .O(DRAM_addr[6])
  );
  OBUF   DRAM_addr_5_OBUF (
    .I(\MAR_reg/data_addr [5]),
    .O(DRAM_addr[5])
  );
  OBUF   DRAM_addr_4_OBUF (
    .I(\MAR_reg/data_addr [4]),
    .O(DRAM_addr[4])
  );
  OBUF   DRAM_addr_3_OBUF (
    .I(\MAR_reg/data_addr [3]),
    .O(DRAM_addr[3])
  );
  OBUF   DRAM_addr_2_OBUF (
    .I(\MAR_reg/data_addr [2]),
    .O(DRAM_addr[2])
  );
  OBUF   DRAM_addr_1_OBUF (
    .I(\MAR_reg/data_addr [1]),
    .O(DRAM_addr[1])
  );
  OBUF   DRAM_addr_0_OBUF (
    .I(\MAR_reg/data_addr [0]),
    .O(DRAM_addr[0])
  );
  OBUF   DRAM_data_write_7_OBUF (
    .I(\MDR_reg/data_out [7]),
    .O(DRAM_data_write[7])
  );
  OBUF   DRAM_data_write_6_OBUF (
    .I(\MDR_reg/data_out [6]),
    .O(DRAM_data_write[6])
  );
  OBUF   DRAM_data_write_5_OBUF (
    .I(\MDR_reg/data_out [5]),
    .O(DRAM_data_write[5])
  );
  OBUF   DRAM_data_write_4_OBUF (
    .I(\MDR_reg/data_out [4]),
    .O(DRAM_data_write[4])
  );
  OBUF   DRAM_data_write_3_OBUF (
    .I(\MDR_reg/data_out [3]),
    .O(DRAM_data_write[3])
  );
  OBUF   DRAM_data_write_2_OBUF (
    .I(\MDR_reg/data_out [2]),
    .O(DRAM_data_write[2])
  );
  OBUF   DRAM_data_write_1_OBUF (
    .I(\MDR_reg/data_out [1]),
    .O(DRAM_data_write[1])
  );
  OBUF   DRAM_data_write_0_OBUF (
    .I(\MDR_reg/data_out [0]),
    .O(DRAM_data_write[0])
  );
  OBUF   IROM_addr_8_OBUF (
    .I(\PC_reg/ins_addr [8]),
    .O(IROM_addr[8])
  );
  OBUF   IROM_addr_7_OBUF (
    .I(\PC_reg/ins_addr [7]),
    .O(IROM_addr[7])
  );
  OBUF   IROM_addr_6_OBUF (
    .I(\PC_reg/ins_addr [6]),
    .O(IROM_addr[6])
  );
  OBUF   IROM_addr_5_OBUF (
    .I(\PC_reg/ins_addr [5]),
    .O(IROM_addr[5])
  );
  OBUF   IROM_addr_4_OBUF (
    .I(\PC_reg/ins_addr [4]),
    .O(IROM_addr[4])
  );
  OBUF   IROM_addr_3_OBUF (
    .I(\PC_reg/ins_addr [3]),
    .O(IROM_addr[3])
  );
  OBUF   IROM_addr_2_OBUF (
    .I(\PC_reg/ins_addr [2]),
    .O(IROM_addr[2])
  );
  OBUF   IROM_addr_1_OBUF (
    .I(\PC_reg/ins_addr [1]),
    .O(IROM_addr[1])
  );
  OBUF   IROM_addr_0_OBUF (
    .I(\PC_reg/ins_addr [0]),
    .O(IROM_addr[0])
  );
  OBUF   write_OBUF (
    .I(write_OBUF_210),
    .O(write)
  );
  LUT4 #(
    .INIT ( 16'h5140 ))
  \decoder_4to16/Mmux_B_bus121  (
    .I0(\MIR[3] ),
    .I1(\MIR[2] ),
    .I2(\decoder_4to16/Mmux__n0040_36_359 ),
    .I3(\decoder_4to16/Mmux__n0040_46_358 ),
    .O(B_bus[1])
  );
  LUT4 #(
    .INIT ( 16'h5140 ))
  \decoder_4to16/Mmux_B_bus181  (
    .I0(\MIR[3] ),
    .I1(\MIR[2] ),
    .I2(\decoder_4to16/Mmux__n0040_34_363 ),
    .I3(\decoder_4to16/Mmux__n0040_44_362 ),
    .O(B_bus[3])
  );
  LUT4 #(
    .INIT ( 16'h5140 ))
  \decoder_4to16/Mmux_B_bus191  (
    .I0(\MIR[3] ),
    .I1(\MIR[2] ),
    .I2(\decoder_4to16/Mmux__n0040_33_365 ),
    .I3(\decoder_4to16/Mmux__n0040_43_364 ),
    .O(B_bus[4])
  );
  LUT4 #(
    .INIT ( 16'h5140 ))
  \decoder_4to16/Mmux_B_bus201  (
    .I0(\MIR[3] ),
    .I1(\MIR[2] ),
    .I2(\decoder_4to16/Mmux__n0040_32_367 ),
    .I3(\decoder_4to16/Mmux__n0040_42_366 ),
    .O(B_bus[5])
  );
  LUT4 #(
    .INIT ( 16'h5140 ))
  \decoder_4to16/Mmux_B_bus211  (
    .I0(\MIR[3] ),
    .I1(\MIR[2] ),
    .I2(\decoder_4to16/Mmux__n0040_31_369 ),
    .I3(\decoder_4to16/Mmux__n0040_41_368 ),
    .O(B_bus[6])
  );
  LUT4 #(
    .INIT ( 16'h5140 ))
  \decoder_4to16/Mmux_B_bus221  (
    .I0(\MIR[3] ),
    .I1(\MIR[2] ),
    .I2(\decoder_4to16/Mmux__n0040_3_371 ),
    .I3(\decoder_4to16/Mmux__n0040_4_370 ),
    .O(B_bus[7])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux__n0040_37_SW0  (
    .I0(\R_reg/d_out [0]),
    .I1(\R4_reg/d_out [0]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N6)
  );
  LUT6 #(
    .INIT ( 64'hAAFCAAFAAA0CAA0A ))
  \decoder_4to16/Mmux__n0040_37  (
    .I0(\R2_reg/d_out [0]),
    .I1(\R3_reg/d_out [0]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[7]_GND_8_o_equal_7_o<7>_787 ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I5(N6),
    .O(\decoder_4to16/Mmux__n0040_37_357 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux__n0040_47_SW0  (
    .I0(\R1_reg/d_out [0]),
    .I1(\MBRU_reg/ins_out [0]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N8)
  );
  LUT6 #(
    .INIT ( 64'hAAFCAAFAAA0CAA0A ))
  \decoder_4to16/Mmux__n0040_47  (
    .I0(\MDR_reg/data_out [0]),
    .I1(\PC_reg/ins_addr [0]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[7]_GND_8_o_equal_7_o<7>_787 ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I5(N8),
    .O(\decoder_4to16/Mmux__n0040_47_356 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux__n0040_36_SW0  (
    .I0(\R_reg/d_out [1]),
    .I1(\R4_reg/d_out [1]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N10)
  );
  LUT6 #(
    .INIT ( 64'hAAFCAAFAAA0CAA0A ))
  \decoder_4to16/Mmux__n0040_36  (
    .I0(\R2_reg/d_out [1]),
    .I1(\R3_reg/d_out [1]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[7]_GND_8_o_equal_7_o<7>_787 ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I5(N10),
    .O(\decoder_4to16/Mmux__n0040_36_359 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux__n0040_46_SW0  (
    .I0(\R1_reg/d_out [1]),
    .I1(\MBRU_reg/ins_out [1]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N12)
  );
  LUT6 #(
    .INIT ( 64'hAAFCAAFAAA0CAA0A ))
  \decoder_4to16/Mmux__n0040_46  (
    .I0(\MDR_reg/data_out [1]),
    .I1(\PC_reg/ins_addr [1]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[7]_GND_8_o_equal_7_o<7>_787 ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I5(N12),
    .O(\decoder_4to16/Mmux__n0040_46_358 )
  );
  LUT6 #(
    .INIT ( 64'hFFFF2020FF20FF20 ))
  \ALU_24bit/Mmux_C_bus12_A233  (
    .I0(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I1(\MIR[18] ),
    .I2(B_bus[1]),
    .I3(N14),
    .I4(N15),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<1> ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_A [1])
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  \PC_reg/Mcount_ins_addr_lut<8>  (
    .I0(\PC_reg/ins_addr [8]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<14> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(C_bus[8]),
    .O(\PC_reg/Mcount_ins_addr_lut [8])
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  \PC_reg/Mcount_ins_addr_lut<7>  (
    .I0(\PC_reg/ins_addr [7]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<14> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(C_bus[7]),
    .O(\PC_reg/Mcount_ins_addr_lut [7])
  );
  LUT4 #(
    .INIT ( 16'hFB08 ))
  \MDR_reg/Mmux_data_out[7]_data_in[7]_mux_2_OUT81  (
    .I0(data_in_7_IBUF_0),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<6> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(C_bus[7]),
    .O(\MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<7> )
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  \PC_reg/Mcount_ins_addr_lut<6>  (
    .I0(\PC_reg/ins_addr [6]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<14> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(C_bus[6]),
    .O(\PC_reg/Mcount_ins_addr_lut [6])
  );
  LUT4 #(
    .INIT ( 16'hFB08 ))
  \MDR_reg/Mmux_data_out[7]_data_in[7]_mux_2_OUT71  (
    .I0(data_in_6_IBUF_1),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<6> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(C_bus[6]),
    .O(\MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<6> )
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  \PC_reg/Mcount_ins_addr_lut<5>  (
    .I0(\PC_reg/ins_addr [5]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<14> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(C_bus[5]),
    .O(\PC_reg/Mcount_ins_addr_lut [5])
  );
  LUT4 #(
    .INIT ( 16'hFB08 ))
  \MDR_reg/Mmux_data_out[7]_data_in[7]_mux_2_OUT61  (
    .I0(data_in_5_IBUF_2),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<6> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(C_bus[5]),
    .O(\MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<5> )
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  \PC_reg/Mcount_ins_addr_lut<4>  (
    .I0(\PC_reg/ins_addr [4]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<14> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(C_bus[4]),
    .O(\PC_reg/Mcount_ins_addr_lut [4])
  );
  LUT4 #(
    .INIT ( 16'hFB08 ))
  \MDR_reg/Mmux_data_out[7]_data_in[7]_mux_2_OUT51  (
    .I0(data_in_4_IBUF_3),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<6> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(C_bus[4]),
    .O(\MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<4> )
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  \PC_reg/Mcount_ins_addr_lut<3>  (
    .I0(\PC_reg/ins_addr [3]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<14> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(C_bus[3]),
    .O(\PC_reg/Mcount_ins_addr_lut [3])
  );
  LUT4 #(
    .INIT ( 16'hFB08 ))
  \MDR_reg/Mmux_data_out[7]_data_in[7]_mux_2_OUT41  (
    .I0(data_in_3_IBUF_4),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<6> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(C_bus[3]),
    .O(\MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<3> )
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  \PC_reg/Mcount_ins_addr_lut<2>  (
    .I0(\PC_reg/ins_addr [2]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<14> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(C_bus[2]),
    .O(\PC_reg/Mcount_ins_addr_lut [2])
  );
  LUT4 #(
    .INIT ( 16'hFB08 ))
  \MDR_reg/Mmux_data_out[7]_data_in[7]_mux_2_OUT31  (
    .I0(data_in_2_IBUF_5),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<6> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(C_bus[2]),
    .O(\MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<2> )
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  \PC_reg/Mcount_ins_addr_lut<1>  (
    .I0(\PC_reg/ins_addr [1]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<14> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(C_bus[1]),
    .O(\PC_reg/Mcount_ins_addr_lut [1])
  );
  LUT4 #(
    .INIT ( 16'hFB08 ))
  \MDR_reg/Mmux_data_out[7]_data_in[7]_mux_2_OUT21  (
    .I0(data_in_1_IBUF_6),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<6> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(C_bus[1]),
    .O(\MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hFFDDFFD0 ))
  \ALU_24bit/Mmux_C_bus12_A454  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I2(\ALU_24bit/Mmux_C_bus12_A451_567 ),
    .I3(\ALU_24bit/Mmux_C_bus12_A45 ),
    .I4(\ALU_24bit/Mmux_C_bus12_A452_568 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_A [8])
  );
  LUT6 #(
    .INIT ( 64'h55AA559555555595 ))
  \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<8>  (
    .I0(\AC_reg/d_out [8]),
    .I1(\MIR[2] ),
    .I2(\decoder_4to16/Mmux_B_bus231_530 ),
    .I3(\MIR[3] ),
    .I4(\MIR[0] ),
    .I5(\decoder_4to16/Mmux_B_bus23 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<8>_388 )
  );
  LUT4 #(
    .INIT ( 16'hCCAC ))
  \decoder_4to16/Mmux_B_bus232  (
    .I0(\R4_reg/d_out [8]),
    .I1(\R2_reg/d_out [8]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[7]_GND_8_o_equal_7_o<7>_787 ),
    .O(\decoder_4to16/Mmux_B_bus231_530 )
  );
  LUT6 #(
    .INIT ( 64'h00FF22DD00FF2FD0 ))
  \ALU_24bit/Mmux_C_bus12_rs_lut<19>  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I2(\ALU_24bit/Mmux_C_bus12_A211_564 ),
    .I3(N17),
    .I4(\ALU_24bit/Mmux_C_bus12_A21 ),
    .I5(\ALU_24bit/Mmux_C_bus12_A212_565 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_lut [19])
  );
  LUT6 #(
    .INIT ( 64'h00FF22DD00FF2FD0 ))
  \ALU_24bit/Mmux_C_bus12_rs_lut<18>  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I2(\ALU_24bit/Mmux_C_bus12_A191_561 ),
    .I3(N19),
    .I4(\ALU_24bit/Mmux_C_bus12_A19 ),
    .I5(\ALU_24bit/Mmux_C_bus12_A192_562 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_lut [18])
  );
  LUT6 #(
    .INIT ( 64'h00FF22DD00FF2FD0 ))
  \ALU_24bit/Mmux_C_bus12_rs_lut<17>  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I2(\ALU_24bit/Mmux_C_bus12_A171_558 ),
    .I3(N21),
    .I4(\ALU_24bit/Mmux_C_bus12_A17 ),
    .I5(\ALU_24bit/Mmux_C_bus12_A172_559 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_lut [17])
  );
  LUT6 #(
    .INIT ( 64'h00FF22DD00FF2FD0 ))
  \ALU_24bit/Mmux_C_bus12_rs_lut<16>  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I2(\ALU_24bit/Mmux_C_bus12_A151_555 ),
    .I3(N23),
    .I4(\ALU_24bit/Mmux_C_bus12_A15 ),
    .I5(\ALU_24bit/Mmux_C_bus12_A152_556 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_lut [16])
  );
  LUT6 #(
    .INIT ( 64'h00FF22DD00FF2FD0 ))
  \ALU_24bit/Mmux_C_bus12_rs_lut<15>  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I2(\ALU_24bit/Mmux_C_bus12_A131_552 ),
    .I3(N25),
    .I4(\ALU_24bit/Mmux_C_bus12_A13 ),
    .I5(\ALU_24bit/Mmux_C_bus12_A132_553 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_lut [15])
  );
  LUT6 #(
    .INIT ( 64'h00FF22DD00FF2FD0 ))
  \ALU_24bit/Mmux_C_bus12_rs_lut<14>  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I2(\ALU_24bit/Mmux_C_bus12_A112_549 ),
    .I3(N27),
    .I4(\ALU_24bit/Mmux_C_bus12_A111_548 ),
    .I5(\ALU_24bit/Mmux_C_bus12_A113_550 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_lut [14])
  );
  LUT6 #(
    .INIT ( 64'h00FF22DD00FF2FD0 ))
  \ALU_24bit/Mmux_C_bus12_rs_lut<13>  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I2(\ALU_24bit/Mmux_C_bus12_A91_582 ),
    .I3(N29),
    .I4(\ALU_24bit/Mmux_C_bus12_A9 ),
    .I5(\ALU_24bit/Mmux_C_bus12_A92_583 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_lut [13])
  );
  LUT6 #(
    .INIT ( 64'h00FF22DD00FF2FD0 ))
  \ALU_24bit/Mmux_C_bus12_rs_lut<12>  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I2(\ALU_24bit/Mmux_C_bus12_A71_579 ),
    .I3(N31),
    .I4(\ALU_24bit/Mmux_C_bus12_A7 ),
    .I5(\ALU_24bit/Mmux_C_bus12_A72_580 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_lut [12])
  );
  LUT6 #(
    .INIT ( 64'h00FF22DD00FF2FD0 ))
  \ALU_24bit/Mmux_C_bus12_rs_lut<11>  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I2(\ALU_24bit/Mmux_C_bus12_A51_576 ),
    .I3(N33),
    .I4(\ALU_24bit/Mmux_C_bus12_A5 ),
    .I5(\ALU_24bit/Mmux_C_bus12_A52_577 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_lut [11])
  );
  LUT6 #(
    .INIT ( 64'h00FF22DD00FF2FD0 ))
  \ALU_24bit/Mmux_C_bus12_rs_lut<10>  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I2(\ALU_24bit/Mmux_C_bus12_A31 ),
    .I3(N35),
    .I4(\ALU_24bit/Mmux_C_bus12_A3 ),
    .I5(\ALU_24bit/Mmux_C_bus12_A32_574 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_lut [10])
  );
  LUT6 #(
    .INIT ( 64'h00FF22DD00FF2FD0 ))
  \ALU_24bit/Mmux_C_bus12_rs_lut<9>  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I2(\ALU_24bit/Mmux_C_bus12_A471_570 ),
    .I3(N37),
    .I4(\ALU_24bit/Mmux_C_bus12_A47 ),
    .I5(\ALU_24bit/Mmux_C_bus12_A472_571 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_lut [9])
  );
  LUT6 #(
    .INIT ( 64'h00FF22DD00FF2FD0 ))
  \ALU_24bit/Mmux_C_bus12_rs_lut<8>  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I2(\ALU_24bit/Mmux_C_bus12_A451_567 ),
    .I3(N39),
    .I4(\ALU_24bit/Mmux_C_bus12_A45 ),
    .I5(\ALU_24bit/Mmux_C_bus12_A452_568 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_lut [8])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux__n0040_45_SW0  (
    .I0(\R1_reg/d_out [2]),
    .I1(\MBRU_reg/ins_out [2]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N41)
  );
  LUT6 #(
    .INIT ( 64'hAAFCAAFAAA0CAA0A ))
  \decoder_4to16/Mmux__n0040_45  (
    .I0(\MDR_reg/data_out [2]),
    .I1(\PC_reg/ins_addr [2]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[7]_GND_8_o_equal_7_o<7>_787 ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I5(N41),
    .O(\decoder_4to16/Mmux__n0040_45_360 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux__n0040_35_SW0  (
    .I0(\R_reg/d_out [2]),
    .I1(\R4_reg/d_out [2]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N43)
  );
  LUT6 #(
    .INIT ( 64'hAAFCAAFAAA0CAA0A ))
  \decoder_4to16/Mmux__n0040_35  (
    .I0(\R2_reg/d_out [2]),
    .I1(\R3_reg/d_out [2]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[7]_GND_8_o_equal_7_o<7>_787 ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I5(N43),
    .O(\decoder_4to16/Mmux__n0040_35_361 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux__n0040_44_SW0  (
    .I0(\R1_reg/d_out [3]),
    .I1(\MBRU_reg/ins_out [3]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N45)
  );
  LUT6 #(
    .INIT ( 64'hAAFCAAFAAA0CAA0A ))
  \decoder_4to16/Mmux__n0040_44  (
    .I0(\MDR_reg/data_out [3]),
    .I1(\PC_reg/ins_addr [3]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[7]_GND_8_o_equal_7_o<7>_787 ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I5(N45),
    .O(\decoder_4to16/Mmux__n0040_44_362 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux__n0040_34_SW0  (
    .I0(\R_reg/d_out [3]),
    .I1(\R4_reg/d_out [3]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N47)
  );
  LUT6 #(
    .INIT ( 64'hAAFCAAFAAA0CAA0A ))
  \decoder_4to16/Mmux__n0040_34  (
    .I0(\R2_reg/d_out [3]),
    .I1(\R3_reg/d_out [3]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[7]_GND_8_o_equal_7_o<7>_787 ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I5(N47),
    .O(\decoder_4to16/Mmux__n0040_34_363 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux__n0040_43_SW0  (
    .I0(\R1_reg/d_out [4]),
    .I1(\MBRU_reg/ins_out [4]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N49)
  );
  LUT6 #(
    .INIT ( 64'hAAFCAAFAAA0CAA0A ))
  \decoder_4to16/Mmux__n0040_43  (
    .I0(\MDR_reg/data_out [4]),
    .I1(\PC_reg/ins_addr [4]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[7]_GND_8_o_equal_7_o<7>_787 ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I5(N49),
    .O(\decoder_4to16/Mmux__n0040_43_364 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux__n0040_33_SW0  (
    .I0(\R_reg/d_out [4]),
    .I1(\R4_reg/d_out [4]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N51)
  );
  LUT6 #(
    .INIT ( 64'hAAFCAAFAAA0CAA0A ))
  \decoder_4to16/Mmux__n0040_33  (
    .I0(\R2_reg/d_out [4]),
    .I1(\R3_reg/d_out [4]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[7]_GND_8_o_equal_7_o<7>_787 ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I5(N51),
    .O(\decoder_4to16/Mmux__n0040_33_365 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux__n0040_42_SW0  (
    .I0(\R1_reg/d_out [5]),
    .I1(\MBRU_reg/ins_out [5]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N53)
  );
  LUT6 #(
    .INIT ( 64'hAAFCAAFAAA0CAA0A ))
  \decoder_4to16/Mmux__n0040_42  (
    .I0(\MDR_reg/data_out [5]),
    .I1(\PC_reg/ins_addr [5]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[7]_GND_8_o_equal_7_o<7>_787 ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I5(N53),
    .O(\decoder_4to16/Mmux__n0040_42_366 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux__n0040_32_SW0  (
    .I0(\R_reg/d_out [5]),
    .I1(\R4_reg/d_out [5]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N55)
  );
  LUT6 #(
    .INIT ( 64'hAAFCAAFAAA0CAA0A ))
  \decoder_4to16/Mmux__n0040_32  (
    .I0(\R2_reg/d_out [5]),
    .I1(\R3_reg/d_out [5]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[7]_GND_8_o_equal_7_o<7>_787 ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I5(N55),
    .O(\decoder_4to16/Mmux__n0040_32_367 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux__n0040_41_SW0  (
    .I0(\R1_reg/d_out [6]),
    .I1(\MBRU_reg/ins_out [6]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N57)
  );
  LUT6 #(
    .INIT ( 64'hAAFCAAFAAA0CAA0A ))
  \decoder_4to16/Mmux__n0040_41  (
    .I0(\MDR_reg/data_out [6]),
    .I1(\PC_reg/ins_addr [6]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[7]_GND_8_o_equal_7_o<7>_787 ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I5(N57),
    .O(\decoder_4to16/Mmux__n0040_41_368 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux__n0040_31_SW0  (
    .I0(\R_reg/d_out [6]),
    .I1(\R4_reg/d_out [6]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N59)
  );
  LUT6 #(
    .INIT ( 64'hAAFCAAFAAA0CAA0A ))
  \decoder_4to16/Mmux__n0040_31  (
    .I0(\R2_reg/d_out [6]),
    .I1(\R3_reg/d_out [6]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[7]_GND_8_o_equal_7_o<7>_787 ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I5(N59),
    .O(\decoder_4to16/Mmux__n0040_31_369 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux__n0040_4_SW0  (
    .I0(\R1_reg/d_out [7]),
    .I1(\MBRU_reg/ins_out [7]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N61)
  );
  LUT6 #(
    .INIT ( 64'hAAFCAAFAAA0CAA0A ))
  \decoder_4to16/Mmux__n0040_4  (
    .I0(\MDR_reg/data_out [7]),
    .I1(\PC_reg/ins_addr [7]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[7]_GND_8_o_equal_7_o<7>_787 ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I5(N61),
    .O(\decoder_4to16/Mmux__n0040_4_370 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux__n0040_3_SW0  (
    .I0(\R_reg/d_out [7]),
    .I1(\R4_reg/d_out [7]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N63)
  );
  LUT6 #(
    .INIT ( 64'hAAFCAAFAAA0CAA0A ))
  \decoder_4to16/Mmux__n0040_3  (
    .I0(\R2_reg/d_out [7]),
    .I1(\R3_reg/d_out [7]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[7]_GND_8_o_equal_7_o<7>_787 ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I5(N63),
    .O(\decoder_4to16/Mmux__n0040_3_371 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux_B_bus231_SW0  (
    .I0(\R_reg/d_out [8]),
    .I1(\R3_reg/d_out [8]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .O(N65)
  );
  LUT6 #(
    .INIT ( 64'hCCCCCCCCFAFC0A0C ))
  \decoder_4to16/Mmux_B_bus231  (
    .I0(\R1_reg/d_out [8]),
    .I1(\PC_reg/ins_addr [8]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<2> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I4(N65),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\decoder_4to16/Mmux_B_bus23 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0A1E5F0F003CF ))
  \ALU_24bit/Mmux_C_bus12_rs_lut<6>  (
    .I0(\ALU_24bit/Mmux_C_bus12_A332_469 ),
    .I1(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I2(N67),
    .I3(N68),
    .I4(\ALU_24bit/Mmux_C_bus12_A411_595 ),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<6> ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_lut [6])
  );
  LUT6 #(
    .INIT ( 64'hF0F0A1E5F0F003CF ))
  \ALU_24bit/Mmux_C_bus12_rs_lut<5>  (
    .I0(\ALU_24bit/Mmux_C_bus12_A332_469 ),
    .I1(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I2(N70),
    .I3(N71),
    .I4(\ALU_24bit/Mmux_C_bus12_A391_593 ),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<5> ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_lut [5])
  );
  LUT6 #(
    .INIT ( 64'hF0F0A1E5F0F003CF ))
  \ALU_24bit/Mmux_C_bus12_rs_lut<4>  (
    .I0(\ALU_24bit/Mmux_C_bus12_A332_469 ),
    .I1(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I2(N73),
    .I3(N74),
    .I4(\ALU_24bit/Mmux_C_bus12_A371_599 ),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<4> ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_lut [4])
  );
  LUT6 #(
    .INIT ( 64'hFF00AE15FF000C3F ))
  \ALU_24bit/Mmux_C_bus12_rs_lut<3>  (
    .I0(\ALU_24bit/Mmux_C_bus12_A332_469 ),
    .I1(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I2(N77),
    .I3(N76),
    .I4(\ALU_24bit/Mmux_C_bus12_A351_601 ),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<3> ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_lut [3])
  );
  LUT5 #(
    .INIT ( 32'hA5A5965A ))
  \ALU_24bit/Mmux_C_bus12_rs_lut<0>  (
    .I0(\ALU_24bit/Mmux_C_bus12_rs_AS_inv ),
    .I1(\ALU_24bit/Mmux_C_bus12_A332_469 ),
    .I2(\ALU_24bit/Mmux_C_bus12_rs_B [0]),
    .I3(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<0> ),
    .I4(\ALU_24bit/Mmux_C_bus12_A11 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_lut [0])
  );
  LUT5 #(
    .INIT ( 32'h01080202 ))
  \ALU_24bit/Mmux_C_bus12_A2511  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o<7>_787 ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .O(\ALU_24bit/Mmux_C_bus12_A251_467 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000002000 ))
  \ALU_24bit/Mmux_C_bus12_A12  (
    .I0(\AC_reg/d_out [4]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\ALU_24bit/Mmux_C_bus12_A1 )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \ALU_24bit/Mmux_C_bus12_A251111  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o<7>_787 ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .O(\ALU_24bit/Mmux_C_bus12_A25111 )
  );
  LUT6 #(
    .INIT ( 64'h595A555659595555 ))
  \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<9>  (
    .I0(\AC_reg/d_out [9]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(N79),
    .I4(\decoder_4to16/Mmux_B_bus24 ),
    .I5(\controlStore/Mmux_MIR121_788 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<9>_390 )
  );
  LUT6 #(
    .INIT ( 64'h595A555659595555 ))
  \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<10>  (
    .I0(\AC_reg/d_out [10]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(N81),
    .I4(\decoder_4to16/Mmux_B_bus2 ),
    .I5(\controlStore/Mmux_MIR121_788 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<10>_392 )
  );
  LUT6 #(
    .INIT ( 64'h595A555659595555 ))
  \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<11>  (
    .I0(\AC_reg/d_out [11]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(N83),
    .I4(\decoder_4to16/Mmux_B_bus3 ),
    .I5(\controlStore/Mmux_MIR121_788 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<11>_394 )
  );
  LUT6 #(
    .INIT ( 64'h595A555659595555 ))
  \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<12>  (
    .I0(\AC_reg/d_out [12]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(N85),
    .I4(\decoder_4to16/Mmux_B_bus4 ),
    .I5(\controlStore/Mmux_MIR121_788 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<12>_396 )
  );
  LUT6 #(
    .INIT ( 64'h595A555659595555 ))
  \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<13>  (
    .I0(\AC_reg/d_out [13]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(N87),
    .I4(\decoder_4to16/Mmux_B_bus5 ),
    .I5(\controlStore/Mmux_MIR121_788 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<13>_398 )
  );
  LUT6 #(
    .INIT ( 64'h595A555659595555 ))
  \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<14>  (
    .I0(\AC_reg/d_out [14]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(N89),
    .I4(\decoder_4to16/Mmux_B_bus6 ),
    .I5(\controlStore/Mmux_MIR121_788 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<14>_400 )
  );
  LUT6 #(
    .INIT ( 64'h595A555659595555 ))
  \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<15>  (
    .I0(\AC_reg/d_out [15]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(N91),
    .I4(\decoder_4to16/Mmux_B_bus7 ),
    .I5(\controlStore/Mmux_MIR121_788 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<15>_402 )
  );
  LUT6 #(
    .INIT ( 64'h595A555659595555 ))
  \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<16>  (
    .I0(\AC_reg/d_out [16]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(N93),
    .I4(\decoder_4to16/Mmux_B_bus8 ),
    .I5(\controlStore/Mmux_MIR121_788 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<16>_404 )
  );
  LUT6 #(
    .INIT ( 64'h595A555659595555 ))
  \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<17>  (
    .I0(\AC_reg/d_out [17]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(N95),
    .I4(\decoder_4to16/Mmux_B_bus9 ),
    .I5(\controlStore/Mmux_MIR121_788 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<17>_406 )
  );
  LUT6 #(
    .INIT ( 64'h595A555659595555 ))
  \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<18>  (
    .I0(\AC_reg/d_out [18]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(N97),
    .I4(\decoder_4to16/Mmux_B_bus10 ),
    .I5(\controlStore/Mmux_MIR121_788 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<18>_408 )
  );
  LUT6 #(
    .INIT ( 64'h595A555659595555 ))
  \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<19>  (
    .I0(\AC_reg/d_out [19]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(N99),
    .I4(\decoder_4to16/Mmux_B_bus11 ),
    .I5(\MIR[1] ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<19>_410 )
  );
  LUT6 #(
    .INIT ( 64'h595A555659595555 ))
  \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<20>  (
    .I0(\AC_reg/d_out [20]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(N101),
    .I4(\decoder_4to16/Mmux_B_bus13 ),
    .I5(\MIR[1] ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<20>_412 )
  );
  LUT6 #(
    .INIT ( 64'h595A555659595555 ))
  \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<21>  (
    .I0(\AC_reg/d_out [21]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(N103),
    .I4(\decoder_4to16/Mmux_B_bus14 ),
    .I5(\MIR[1] ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<21>_414 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux_B_bus241_SW0  (
    .I0(\R_reg/d_out [9]),
    .I1(\R4_reg/d_out [9]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N105)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAFCFA0C0A ))
  \decoder_4to16/Mmux_B_bus241  (
    .I0(\R2_reg/d_out [9]),
    .I1(\R3_reg/d_out [9]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I4(N105),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\decoder_4to16/Mmux_B_bus24 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux_B_bus21_SW0  (
    .I0(\R_reg/d_out [10]),
    .I1(\R4_reg/d_out [10]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N107)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAFCFA0C0A ))
  \decoder_4to16/Mmux_B_bus21  (
    .I0(\R2_reg/d_out [10]),
    .I1(\R3_reg/d_out [10]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I4(N107),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\decoder_4to16/Mmux_B_bus2 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux_B_bus31_SW0  (
    .I0(\R_reg/d_out [11]),
    .I1(\R4_reg/d_out [11]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N109)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAFCFA0C0A ))
  \decoder_4to16/Mmux_B_bus31  (
    .I0(\R2_reg/d_out [11]),
    .I1(\R3_reg/d_out [11]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I4(N109),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\decoder_4to16/Mmux_B_bus3 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux_B_bus41_SW0  (
    .I0(\R_reg/d_out [12]),
    .I1(\R4_reg/d_out [12]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N111)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAFCFA0C0A ))
  \decoder_4to16/Mmux_B_bus41  (
    .I0(\R2_reg/d_out [12]),
    .I1(\R3_reg/d_out [12]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I4(N111),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\decoder_4to16/Mmux_B_bus4 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux_B_bus51_SW0  (
    .I0(\R_reg/d_out [13]),
    .I1(\R4_reg/d_out [13]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N113)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAFCFA0C0A ))
  \decoder_4to16/Mmux_B_bus51  (
    .I0(\R2_reg/d_out [13]),
    .I1(\R3_reg/d_out [13]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I4(N113),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\decoder_4to16/Mmux_B_bus5 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux_B_bus61_SW0  (
    .I0(\R_reg/d_out [14]),
    .I1(\R4_reg/d_out [14]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N115)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAFCFA0C0A ))
  \decoder_4to16/Mmux_B_bus61  (
    .I0(\R2_reg/d_out [14]),
    .I1(\R3_reg/d_out [14]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I4(N115),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\decoder_4to16/Mmux_B_bus6 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux_B_bus71_SW0  (
    .I0(\R_reg/d_out [15]),
    .I1(\R4_reg/d_out [15]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N117)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAFCFA0C0A ))
  \decoder_4to16/Mmux_B_bus71  (
    .I0(\R2_reg/d_out [15]),
    .I1(\R3_reg/d_out [15]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I4(N117),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\decoder_4to16/Mmux_B_bus7 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux_B_bus81_SW0  (
    .I0(\R_reg/d_out [16]),
    .I1(\R4_reg/d_out [16]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N119)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAFCFA0C0A ))
  \decoder_4to16/Mmux_B_bus81  (
    .I0(\R2_reg/d_out [16]),
    .I1(\R3_reg/d_out [16]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I4(N119),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\decoder_4to16/Mmux_B_bus8 )
  );
  LUT3 #(
    .INIT ( 8'h53 ))
  \ALU_24bit/Mmux_C_bus12_A331_SW0  (
    .I0(\AC_reg/d_out [6]),
    .I1(\AC_reg/d_out [0]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .O(N121)
  );
  LUT6 #(
    .INIT ( 64'h0000000008003830 ))
  \ALU_24bit/Mmux_C_bus12_A331  (
    .I0(\AC_reg/d_out [1]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I4(N121),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\ALU_24bit/Mmux_C_bus12_A33 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux_B_bus91_SW0  (
    .I0(\R_reg/d_out [17]),
    .I1(\R4_reg/d_out [17]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N123)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAFCFA0C0A ))
  \decoder_4to16/Mmux_B_bus91  (
    .I0(\R2_reg/d_out [17]),
    .I1(\R3_reg/d_out [17]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I4(N123),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\decoder_4to16/Mmux_B_bus9 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux_B_bus101_SW0  (
    .I0(\R_reg/d_out [18]),
    .I1(\R4_reg/d_out [18]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N125)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAFCFA0C0A ))
  \decoder_4to16/Mmux_B_bus101  (
    .I0(\R2_reg/d_out [18]),
    .I1(\R3_reg/d_out [18]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I4(N125),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\decoder_4to16/Mmux_B_bus10 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux_B_bus111_SW0  (
    .I0(\R_reg/d_out [19]),
    .I1(\R4_reg/d_out [19]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N127)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAFCFA0C0A ))
  \decoder_4to16/Mmux_B_bus111  (
    .I0(\R2_reg/d_out [19]),
    .I1(\R3_reg/d_out [19]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I4(N127),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\decoder_4to16/Mmux_B_bus11 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux_B_bus131_SW0  (
    .I0(\R_reg/d_out [20]),
    .I1(\R4_reg/d_out [20]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N129)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAFCFA0C0A ))
  \decoder_4to16/Mmux_B_bus131  (
    .I0(\R2_reg/d_out [20]),
    .I1(\R3_reg/d_out [20]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I4(N129),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\decoder_4to16/Mmux_B_bus13 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux_B_bus141_SW0  (
    .I0(\R_reg/d_out [21]),
    .I1(\R4_reg/d_out [21]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N131)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAFCFA0C0A ))
  \decoder_4to16/Mmux_B_bus141  (
    .I0(\R2_reg/d_out [21]),
    .I1(\R3_reg/d_out [21]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I4(N131),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\decoder_4to16/Mmux_B_bus14 )
  );
  LUT6 #(
    .INIT ( 64'h0F0F05030F0F0F0F ))
  \ALU_24bit/Mmux_C_bus12_A213_SW0  (
    .I0(\AC_reg/d_out [23]),
    .I1(\AC_reg/d_out [17]),
    .I2(\ALU_24bit/Mmux_C_bus12_A211_564 ),
    .I3(\MIR[18] ),
    .I4(\MIR[17] ),
    .I5(\MIR[19] ),
    .O(N133)
  );
  LUT6 #(
    .INIT ( 64'h0F0F05030F0F000F ))
  \ALU_24bit/Mmux_C_bus12_A213_SW1  (
    .I0(\AC_reg/d_out [23]),
    .I1(\AC_reg/d_out [17]),
    .I2(\ALU_24bit/Mmux_C_bus12_A211_564 ),
    .I3(\MIR[18] ),
    .I4(\MIR[17] ),
    .I5(\MIR[19] ),
    .O(N134)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF00DD0D0D ))
  \ALU_24bit/Mmux_C_bus12_A214  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I2(N133),
    .I3(N134),
    .I4(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<19> ),
    .I5(\ALU_24bit/Mmux_C_bus12_A21 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_A [19])
  );
  LUT6 #(
    .INIT ( 64'h0F0F05030F0F0F0F ))
  \ALU_24bit/Mmux_C_bus12_A193_SW0  (
    .I0(\AC_reg/d_out [22]),
    .I1(\AC_reg/d_out [16]),
    .I2(\ALU_24bit/Mmux_C_bus12_A191_561 ),
    .I3(\MIR[18] ),
    .I4(\MIR[17] ),
    .I5(\MIR[19] ),
    .O(N136)
  );
  LUT6 #(
    .INIT ( 64'h0F0F05030F0F000F ))
  \ALU_24bit/Mmux_C_bus12_A193_SW1  (
    .I0(\AC_reg/d_out [22]),
    .I1(\AC_reg/d_out [16]),
    .I2(\ALU_24bit/Mmux_C_bus12_A191_561 ),
    .I3(\MIR[18] ),
    .I4(\MIR[17] ),
    .I5(\MIR[19] ),
    .O(N137)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF00DD0D0D ))
  \ALU_24bit/Mmux_C_bus12_A194  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I2(N136),
    .I3(N137),
    .I4(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<18> ),
    .I5(\ALU_24bit/Mmux_C_bus12_A19 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_A [18])
  );
  LUT6 #(
    .INIT ( 64'h0F0F05030F0F0F0F ))
  \ALU_24bit/Mmux_C_bus12_A173_SW0  (
    .I0(\AC_reg/d_out [21]),
    .I1(\AC_reg/d_out [15]),
    .I2(\ALU_24bit/Mmux_C_bus12_A171_558 ),
    .I3(\MIR[18] ),
    .I4(\MIR[17] ),
    .I5(\MIR[19] ),
    .O(N139)
  );
  LUT6 #(
    .INIT ( 64'h0F0F05030F0F000F ))
  \ALU_24bit/Mmux_C_bus12_A173_SW1  (
    .I0(\AC_reg/d_out [21]),
    .I1(\AC_reg/d_out [15]),
    .I2(\ALU_24bit/Mmux_C_bus12_A171_558 ),
    .I3(\MIR[18] ),
    .I4(\MIR[17] ),
    .I5(\MIR[19] ),
    .O(N140)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF00DD0D0D ))
  \ALU_24bit/Mmux_C_bus12_A174  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I2(N139),
    .I3(N140),
    .I4(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<17> ),
    .I5(\ALU_24bit/Mmux_C_bus12_A17 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_A [17])
  );
  LUT6 #(
    .INIT ( 64'h0F0F05030F0F0F0F ))
  \ALU_24bit/Mmux_C_bus12_A153_SW0  (
    .I0(\AC_reg/d_out [20]),
    .I1(\AC_reg/d_out [14]),
    .I2(\ALU_24bit/Mmux_C_bus12_A151_555 ),
    .I3(\MIR[18] ),
    .I4(\MIR[17] ),
    .I5(\MIR[19] ),
    .O(N142)
  );
  LUT6 #(
    .INIT ( 64'h0F0F05030F0F000F ))
  \ALU_24bit/Mmux_C_bus12_A153_SW1  (
    .I0(\AC_reg/d_out [20]),
    .I1(\AC_reg/d_out [14]),
    .I2(\ALU_24bit/Mmux_C_bus12_A151_555 ),
    .I3(\MIR[18] ),
    .I4(\MIR[17] ),
    .I5(\MIR[19] ),
    .O(N143)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF00DD0D0D ))
  \ALU_24bit/Mmux_C_bus12_A154  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I2(N142),
    .I3(N143),
    .I4(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<16> ),
    .I5(\ALU_24bit/Mmux_C_bus12_A15 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_A [16])
  );
  LUT6 #(
    .INIT ( 64'h0F0F05030F0F0F0F ))
  \ALU_24bit/Mmux_C_bus12_A133_SW0  (
    .I0(\AC_reg/d_out [19]),
    .I1(\AC_reg/d_out [13]),
    .I2(\ALU_24bit/Mmux_C_bus12_A131_552 ),
    .I3(\MIR[18] ),
    .I4(\MIR[17] ),
    .I5(\MIR[19] ),
    .O(N145)
  );
  LUT6 #(
    .INIT ( 64'h0F0F05030F0F000F ))
  \ALU_24bit/Mmux_C_bus12_A133_SW1  (
    .I0(\AC_reg/d_out [19]),
    .I1(\AC_reg/d_out [13]),
    .I2(\ALU_24bit/Mmux_C_bus12_A131_552 ),
    .I3(\MIR[18] ),
    .I4(\MIR[17] ),
    .I5(\MIR[19] ),
    .O(N146)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF00DD0D0D ))
  \ALU_24bit/Mmux_C_bus12_A134  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I2(N145),
    .I3(N146),
    .I4(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<15> ),
    .I5(\ALU_24bit/Mmux_C_bus12_A13 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_A [15])
  );
  LUT6 #(
    .INIT ( 64'h0F0F05030F0F0F0F ))
  \ALU_24bit/Mmux_C_bus12_A113_SW0  (
    .I0(\AC_reg/d_out [18]),
    .I1(\AC_reg/d_out [12]),
    .I2(\ALU_24bit/Mmux_C_bus12_A112_549 ),
    .I3(\MIR[18] ),
    .I4(\MIR[17] ),
    .I5(\MIR[19] ),
    .O(N148)
  );
  LUT6 #(
    .INIT ( 64'h0F0F05030F0F000F ))
  \ALU_24bit/Mmux_C_bus12_A113_SW1  (
    .I0(\AC_reg/d_out [18]),
    .I1(\AC_reg/d_out [12]),
    .I2(\ALU_24bit/Mmux_C_bus12_A112_549 ),
    .I3(\MIR[18] ),
    .I4(\MIR[17] ),
    .I5(\MIR[19] ),
    .O(N149)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF20227077 ))
  \ALU_24bit/Mmux_C_bus12_A114  (
    .I0(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<14> ),
    .I1(N149),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I4(N148),
    .I5(\ALU_24bit/Mmux_C_bus12_A111_548 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_A [14])
  );
  LUT6 #(
    .INIT ( 64'h0F0F03050F0F0F0F ))
  \ALU_24bit/Mmux_C_bus12_A93_SW0  (
    .I0(\AC_reg/d_out [11]),
    .I1(\AC_reg/d_out [17]),
    .I2(\ALU_24bit/Mmux_C_bus12_A91_582 ),
    .I3(\MIR[18] ),
    .I4(\MIR[17] ),
    .I5(\MIR[19] ),
    .O(N151)
  );
  LUT6 #(
    .INIT ( 64'h0F0F03050F0F000F ))
  \ALU_24bit/Mmux_C_bus12_A93_SW1  (
    .I0(\AC_reg/d_out [11]),
    .I1(\AC_reg/d_out [17]),
    .I2(\ALU_24bit/Mmux_C_bus12_A91_582 ),
    .I3(\MIR[18] ),
    .I4(\MIR[17] ),
    .I5(\MIR[19] ),
    .O(N152)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF20227077 ))
  \ALU_24bit/Mmux_C_bus12_A94  (
    .I0(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<13> ),
    .I1(N152),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I4(N151),
    .I5(\ALU_24bit/Mmux_C_bus12_A9 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_A [13])
  );
  LUT6 #(
    .INIT ( 64'h0F0F03050F0F0F0F ))
  \ALU_24bit/Mmux_C_bus12_A73_SW0  (
    .I0(\AC_reg/d_out [10]),
    .I1(\AC_reg/d_out [16]),
    .I2(\ALU_24bit/Mmux_C_bus12_A71_579 ),
    .I3(\MIR[18] ),
    .I4(\MIR[17] ),
    .I5(\MIR[19] ),
    .O(N154)
  );
  LUT6 #(
    .INIT ( 64'h0F0F03050F0F000F ))
  \ALU_24bit/Mmux_C_bus12_A73_SW1  (
    .I0(\AC_reg/d_out [10]),
    .I1(\AC_reg/d_out [16]),
    .I2(\ALU_24bit/Mmux_C_bus12_A71_579 ),
    .I3(\MIR[18] ),
    .I4(\MIR[17] ),
    .I5(\MIR[19] ),
    .O(N155)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF20227077 ))
  \ALU_24bit/Mmux_C_bus12_A74  (
    .I0(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<12> ),
    .I1(N155),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I4(N154),
    .I5(\ALU_24bit/Mmux_C_bus12_A7 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_A [12])
  );
  LUT6 #(
    .INIT ( 64'h0F0F03050F0F0F0F ))
  \ALU_24bit/Mmux_C_bus12_A53_SW0  (
    .I0(\AC_reg/d_out [9]),
    .I1(\AC_reg/d_out [15]),
    .I2(\ALU_24bit/Mmux_C_bus12_A51_576 ),
    .I3(\MIR[18] ),
    .I4(\MIR[17] ),
    .I5(\MIR[19] ),
    .O(N157)
  );
  LUT6 #(
    .INIT ( 64'h0F0F03050F0F000F ))
  \ALU_24bit/Mmux_C_bus12_A53_SW1  (
    .I0(\AC_reg/d_out [9]),
    .I1(\AC_reg/d_out [15]),
    .I2(\ALU_24bit/Mmux_C_bus12_A51_576 ),
    .I3(\MIR[18] ),
    .I4(\MIR[17] ),
    .I5(\MIR[19] ),
    .O(N158)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF20227077 ))
  \ALU_24bit/Mmux_C_bus12_A54  (
    .I0(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<11> ),
    .I1(N158),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I4(N157),
    .I5(\ALU_24bit/Mmux_C_bus12_A5 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_A [11])
  );
  LUT6 #(
    .INIT ( 64'h0F0F03050F0F0F0F ))
  \ALU_24bit/Mmux_C_bus12_A36_SW0  (
    .I0(\AC_reg/d_out [8]),
    .I1(\AC_reg/d_out [14]),
    .I2(\ALU_24bit/Mmux_C_bus12_A31 ),
    .I3(\MIR[18] ),
    .I4(\MIR[17] ),
    .I5(\MIR[19] ),
    .O(N160)
  );
  LUT6 #(
    .INIT ( 64'h0F0F03050F0F000F ))
  \ALU_24bit/Mmux_C_bus12_A36_SW1  (
    .I0(\AC_reg/d_out [8]),
    .I1(\AC_reg/d_out [14]),
    .I2(\ALU_24bit/Mmux_C_bus12_A31 ),
    .I3(\MIR[18] ),
    .I4(\MIR[17] ),
    .I5(\MIR[19] ),
    .O(N161)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF20227077 ))
  \ALU_24bit/Mmux_C_bus12_A38  (
    .I0(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<10> ),
    .I1(N161),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I4(N160),
    .I5(\ALU_24bit/Mmux_C_bus12_A3 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_A [10])
  );
  LUT6 #(
    .INIT ( 64'h0F0F03050F0F0F0F ))
  \ALU_24bit/Mmux_C_bus12_A473_SW0  (
    .I0(\AC_reg/d_out [7]),
    .I1(\AC_reg/d_out [13]),
    .I2(\ALU_24bit/Mmux_C_bus12_A471_570 ),
    .I3(\MIR[18] ),
    .I4(\MIR[17] ),
    .I5(\MIR[19] ),
    .O(N163)
  );
  LUT6 #(
    .INIT ( 64'h0F0F03050F0F000F ))
  \ALU_24bit/Mmux_C_bus12_A473_SW1  (
    .I0(\AC_reg/d_out [7]),
    .I1(\AC_reg/d_out [13]),
    .I2(\ALU_24bit/Mmux_C_bus12_A471_570 ),
    .I3(\MIR[18] ),
    .I4(\MIR[17] ),
    .I5(\MIR[19] ),
    .O(N164)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF20227077 ))
  \ALU_24bit/Mmux_C_bus12_A474  (
    .I0(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<9> ),
    .I1(N164),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I4(N163),
    .I5(\ALU_24bit/Mmux_C_bus12_A47 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_A [9])
  );
  LUT6 #(
    .INIT ( 64'h5A55AAA56655AA99 ))
  \ALU_24bit/Mmux_C_bus12_rs_lut<1>  (
    .I0(\ALU_24bit/Mmux_C_bus12_rs_AS_inv ),
    .I1(N14),
    .I2(N15),
    .I3(N166),
    .I4(N167),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<1> ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_lut [1])
  );
  LUT6 #(
    .INIT ( 64'hFF00AE15FF000C3F ))
  \ALU_24bit/Mmux_C_bus12_rs_lut<2>  (
    .I0(\ALU_24bit/Mmux_C_bus12_A332_469 ),
    .I1(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I2(N170),
    .I3(N169),
    .I4(\ALU_24bit/Mmux_C_bus12_A331_603 ),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<2> ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_lut [2])
  );
  LUT4 #(
    .INIT ( 16'hAEA2 ))
  \PC_reg/Mcount_ins_addr_lut<0>  (
    .I0(\PC_reg/ins_addr [0]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<14> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(C_bus[0]),
    .O(\PC_reg/Mcount_ins_addr_lut [0])
  );
  LUT5 #(
    .INIT ( 32'hFBF3AA00 ))
  \ALU_24bit/Mmux_C_bus12_A332  (
    .I0(\AC_reg/d_out [2]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A251_467 ),
    .I4(\ALU_24bit/Mmux_C_bus12_A33 ),
    .O(\ALU_24bit/Mmux_C_bus12_A331_603 )
  );
  LUT5 #(
    .INIT ( 32'hFBF3AA00 ))
  \ALU_24bit/Mmux_C_bus12_A432  (
    .I0(\AC_reg/d_out [7]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A251_467 ),
    .I4(\ALU_24bit/Mmux_C_bus12_A43 ),
    .O(\ALU_24bit/Mmux_C_bus12_A431_597 )
  );
  LUT5 #(
    .INIT ( 32'hBB0BB000 ))
  \decoder_4to16/Mmux_B_bus12  (
    .I0(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<3> ),
    .I2(\MIR[2] ),
    .I3(\decoder_4to16/Mmux__n0040_37_357 ),
    .I4(\decoder_4to16/Mmux__n0040_47_356 ),
    .O(B_bus[0])
  );
  LUT6 #(
    .INIT ( 64'h9A9A559A9A555555 ))
  \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<0>  (
    .I0(\AC_reg/d_out [0]),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<3> ),
    .I3(\MIR[2] ),
    .I4(\decoder_4to16/Mmux__n0040_37_357 ),
    .I5(\decoder_4to16/Mmux__n0040_47_356 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<0>_372 )
  );
  LUT6 #(
    .INIT ( 64'h9A9A559A9A555555 ))
  \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<1>  (
    .I0(\AC_reg/d_out [1]),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<3> ),
    .I3(\MIR[2] ),
    .I4(\decoder_4to16/Mmux__n0040_36_359 ),
    .I5(\decoder_4to16/Mmux__n0040_46_358 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<1>_374 )
  );
  LUT6 #(
    .INIT ( 64'h9A9A559A9A555555 ))
  \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<2>  (
    .I0(\AC_reg/d_out [2]),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<3> ),
    .I3(\MIR[2] ),
    .I4(\decoder_4to16/Mmux__n0040_35_361 ),
    .I5(\decoder_4to16/Mmux__n0040_45_360 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<2>_376 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \decoder_4to16/Mmux_B_bus242_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I1(\R1_reg/d_out [9]),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(N79)
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \decoder_4to16/Mmux_B_bus22_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I1(\R1_reg/d_out [10]),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(N81)
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \decoder_4to16/Mmux_B_bus32_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I1(\R1_reg/d_out [11]),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(N83)
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \decoder_4to16/Mmux_B_bus42_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I1(\R1_reg/d_out [12]),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(N85)
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \decoder_4to16/Mmux_B_bus52_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I1(\R1_reg/d_out [13]),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(N87)
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \decoder_4to16/Mmux_B_bus62_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I1(\R1_reg/d_out [14]),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(N89)
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \decoder_4to16/Mmux_B_bus72_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I1(\R1_reg/d_out [15]),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(N91)
  );
  LUT5 #(
    .INIT ( 32'h00000002 ))
  \ALU_24bit/Mmux_C_bus12_A11111  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o<7>_787 ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .O(\ALU_24bit/Mmux_C_bus12_A1111 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \decoder_4to16/Mmux_B_bus82_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I1(\R1_reg/d_out [16]),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(N93)
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \decoder_4to16/Mmux_B_bus92_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I1(\R1_reg/d_out [17]),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(N95)
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \ALU_24bit/Mmux_C_bus12_rs_AS_inv2  (
    .I0(\controlStore/next_addr[7]_GND_8_o_equal_7_o<7>_787 ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_AS_inv )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \decoder_4to16/Mmux_B_bus102_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I1(\R1_reg/d_out [18]),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(N97)
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \decoder_4to16/Mmux_B_bus112_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I1(\R1_reg/d_out [19]),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(N99)
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \decoder_4to16/Mmux_B_bus132_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I1(\R1_reg/d_out [20]),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(N101)
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \decoder_4to16/Mmux_B_bus142_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I1(\R1_reg/d_out [21]),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(N103)
  );
  LUT6 #(
    .INIT ( 64'hFF00FF00A04CB35F ))
  \ALU_24bit/Mmux_C_bus12_rs_lut<23>  (
    .I0(\ALU_24bit/Mmux_C_bus12_A332_469 ),
    .I1(\MIR[18] ),
    .I2(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<23> ),
    .I3(N173),
    .I4(N172),
    .I5(\ALU_24bit/Mmux_C_bus12_A312_587 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_lut [23])
  );
  LUT6 #(
    .INIT ( 64'h595A555659595555 ))
  \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<22>  (
    .I0(\AC_reg/d_out [22]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(N175),
    .I4(\decoder_4to16/Mmux_B_bus15 ),
    .I5(\MIR[1] ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<22>_416 )
  );
  LUT3 #(
    .INIT ( 8'h35 ))
  \ALU_24bit/Mmux_C_bus12_A431_SW0  (
    .I0(\AC_reg/d_out [5]),
    .I1(\AC_reg/d_out [11]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .O(N179)
  );
  LUT6 #(
    .INIT ( 64'h0000000008003830 ))
  \ALU_24bit/Mmux_C_bus12_A431  (
    .I0(\AC_reg/d_out [6]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I4(N179),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\ALU_24bit/Mmux_C_bus12_A43 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux_B_bus151_SW0  (
    .I0(\R_reg/d_out [22]),
    .I1(\R4_reg/d_out [22]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N181)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAFCFA0C0A ))
  \decoder_4to16/Mmux_B_bus151  (
    .I0(\R2_reg/d_out [22]),
    .I1(\R3_reg/d_out [22]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I4(N181),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\decoder_4to16/Mmux_B_bus15 )
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  \decoder_4to16/Mmux_B_bus161_SW0  (
    .I0(\R_reg/d_out [23]),
    .I1(\R4_reg/d_out [23]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .O(N183)
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAAFCFA0C0A ))
  \decoder_4to16/Mmux_B_bus161  (
    .I0(\R2_reg/d_out [23]),
    .I1(\R3_reg/d_out [23]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I4(N183),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\decoder_4to16/Mmux_B_bus16 )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \controlStore/next_addr[7]_GND_8_o_equal_7_o<7>_SW1  (
    .I0(\controlStore/next_addr [0]),
    .I1(\controlStore/next_addr [1]),
    .O(N185)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFDF00000000 ))
  \controlStore/Mmux_MIR231  (
    .I0(\controlStore/next_addr [2]),
    .I1(\controlStore/next_addr [3]),
    .I2(\controlStore/next_addr [4]),
    .I3(N4),
    .I4(N185),
    .I5(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<2> ),
    .O(\MIR[2] )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \ALU_24bit/Mmux_C_bus12_A14_SW0  (
    .I0(\AC_reg/d_out [0]),
    .I1(\ALU_24bit/Mmux_C_bus12_A251_467 ),
    .I2(\ALU_24bit/Mmux_C_bus12_A1 ),
    .O(N187)
  );
  LUT6 #(
    .INIT ( 64'hFFF2FFF0FF22FF00 ))
  \ALU_24bit/Mmux_C_bus12_A16  (
    .I0(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I1(\MIR[18] ),
    .I2(\ALU_24bit/Mmux_C_bus12_A332_469 ),
    .I3(N187),
    .I4(B_bus[0]),
    .I5(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<0> ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_A [0])
  );
  LUT6 #(
    .INIT ( 64'hFF00FF00A04CB35F ))
  \ALU_24bit/Mmux_C_bus12_rs_lut<22>  (
    .I0(\ALU_24bit/Mmux_C_bus12_A332_469 ),
    .I1(\MIR[18] ),
    .I2(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<22> ),
    .I3(N190),
    .I4(N189),
    .I5(\ALU_24bit/Mmux_C_bus12_A291_589 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_lut [22])
  );
  LUT6 #(
    .INIT ( 64'hFF00FF00A04CB35F ))
  \ALU_24bit/Mmux_C_bus12_rs_lut<21>  (
    .I0(\ALU_24bit/Mmux_C_bus12_A332_469 ),
    .I1(\MIR[18] ),
    .I2(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<21> ),
    .I3(N193),
    .I4(N192),
    .I5(\ALU_24bit/Mmux_C_bus12_A271_591 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_lut [21])
  );
  LUT6 #(
    .INIT ( 64'hFF00FF00A04CB35F ))
  \ALU_24bit/Mmux_C_bus12_rs_lut<20>  (
    .I0(\ALU_24bit/Mmux_C_bus12_A332_469 ),
    .I1(\MIR[18] ),
    .I2(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<20> ),
    .I3(N196),
    .I4(N195),
    .I5(\ALU_24bit/Mmux_C_bus12_A252_585 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_lut [20])
  );
  LUT6 #(
    .INIT ( 64'hFAF00103FEFC050F ))
  \ALU_24bit/Mmux_C_bus12_rs_lut<7>  (
    .I0(\ALU_24bit/Mmux_C_bus12_A332_469 ),
    .I1(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I2(\ALU_24bit/Mmux_C_bus12_A431_597 ),
    .I3(\ALU_24bit/A_bus[23]_B_bus[23]_sub_2_OUT<7> ),
    .I4(N198),
    .I5(N199),
    .O(\ALU_24bit/Mmux_C_bus12_rs_lut [7])
  );
  LUT4 #(
    .INIT ( 16'hEDFF ))
  \ALU_24bit/Mmux_C_bus12_A1101_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .O(N201)
  );
  LUT5 #(
    .INIT ( 32'hFCF3FFFB ))
  \ALU_24bit/Mmux_C_bus12_A1101_SW1  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<3> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .O(N202)
  );
  LUT6 #(
    .INIT ( 64'h0055101501511111 ))
  \ALU_24bit/Mmux_C_bus12_A1101  (
    .I0(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I1(N201),
    .I2(\MIR[2] ),
    .I3(N202),
    .I4(\decoder_4to16/Mmux__n0040_37_357 ),
    .I5(\decoder_4to16/Mmux__n0040_47_356 ),
    .O(\ALU_24bit/Mmux_C_bus12_rs_B [0])
  );
  LUT5 #(
    .INIT ( 32'hCFEFDFFF ))
  \ALU_24bit/Mmux_C_bus12_A233_SW1  (
    .I0(\MIR[2] ),
    .I1(\MIR[3] ),
    .I2(\ALU_24bit/Mmux_C_bus12_A1111 ),
    .I3(\decoder_4to16/Mmux__n0040_36_359 ),
    .I4(\decoder_4to16/Mmux__n0040_46_358 ),
    .O(N167)
  );
  LUT5 #(
    .INIT ( 32'hFBF3AA00 ))
  \ALU_24bit/Mmux_C_bus12_A352  (
    .I0(\AC_reg/d_out [3]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A251_467 ),
    .I4(\ALU_24bit/Mmux_C_bus12_A35 ),
    .O(\ALU_24bit/Mmux_C_bus12_A351_601 )
  );
  LUT6 #(
    .INIT ( 64'h3C0F2D0F1E0F0F0F ))
  \ALU_24bit/Mmux_C_bus12_A353_SW0  (
    .I0(\MIR[2] ),
    .I1(\MIR[3] ),
    .I2(\ALU_24bit/Mmux_C_bus12_rs_AS_inv ),
    .I3(\ALU_24bit/Mmux_C_bus12_A1111 ),
    .I4(\decoder_4to16/Mmux__n0040_44_362 ),
    .I5(\decoder_4to16/Mmux__n0040_34_363 ),
    .O(N76)
  );
  LUT5 #(
    .INIT ( 32'hFBF3AA00 ))
  \ALU_24bit/Mmux_C_bus12_A372  (
    .I0(\AC_reg/d_out [4]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A251_467 ),
    .I4(\ALU_24bit/Mmux_C_bus12_A37 ),
    .O(\ALU_24bit/Mmux_C_bus12_A371_599 )
  );
  LUT6 #(
    .INIT ( 64'h3C0F2D0F1E0F0F0F ))
  \ALU_24bit/Mmux_C_bus12_A373_SW0  (
    .I0(\MIR[2] ),
    .I1(\MIR[3] ),
    .I2(\ALU_24bit/Mmux_C_bus12_rs_AS_inv ),
    .I3(\ALU_24bit/Mmux_C_bus12_A1111 ),
    .I4(\decoder_4to16/Mmux__n0040_43_364 ),
    .I5(\decoder_4to16/Mmux__n0040_33_365 ),
    .O(N73)
  );
  LUT5 #(
    .INIT ( 32'hFBF3AA00 ))
  \ALU_24bit/Mmux_C_bus12_A392  (
    .I0(\AC_reg/d_out [5]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A251_467 ),
    .I4(\ALU_24bit/Mmux_C_bus12_A39 ),
    .O(\ALU_24bit/Mmux_C_bus12_A391_593 )
  );
  LUT6 #(
    .INIT ( 64'h3C0F2D0F1E0F0F0F ))
  \ALU_24bit/Mmux_C_bus12_A393_SW0  (
    .I0(\MIR[2] ),
    .I1(\MIR[3] ),
    .I2(\ALU_24bit/Mmux_C_bus12_rs_AS_inv ),
    .I3(\ALU_24bit/Mmux_C_bus12_A1111 ),
    .I4(\decoder_4to16/Mmux__n0040_42_366 ),
    .I5(\decoder_4to16/Mmux__n0040_32_367 ),
    .O(N70)
  );
  LUT5 #(
    .INIT ( 32'hFBF3AA00 ))
  \ALU_24bit/Mmux_C_bus12_A412  (
    .I0(\AC_reg/d_out [6]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A251_467 ),
    .I4(\ALU_24bit/Mmux_C_bus12_A41 ),
    .O(\ALU_24bit/Mmux_C_bus12_A411_595 )
  );
  LUT6 #(
    .INIT ( 64'h3C0F2D0F1E0F0F0F ))
  \ALU_24bit/Mmux_C_bus12_A413_SW0  (
    .I0(\MIR[2] ),
    .I1(\MIR[3] ),
    .I2(\ALU_24bit/Mmux_C_bus12_rs_AS_inv ),
    .I3(\ALU_24bit/Mmux_C_bus12_A1111 ),
    .I4(\decoder_4to16/Mmux__n0040_41_368 ),
    .I5(\decoder_4to16/Mmux__n0040_31_369 ),
    .O(N67)
  );
  LUT6 #(
    .INIT ( 64'h9A9A559A9A555555 ))
  \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<3>  (
    .I0(\AC_reg/d_out [3]),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<3> ),
    .I3(\MIR[2] ),
    .I4(\decoder_4to16/Mmux__n0040_34_363 ),
    .I5(\decoder_4to16/Mmux__n0040_44_362 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<3>_378 )
  );
  LUT6 #(
    .INIT ( 64'h9A9A559A9A555555 ))
  \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<4>  (
    .I0(\AC_reg/d_out [4]),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<3> ),
    .I3(\MIR[2] ),
    .I4(\decoder_4to16/Mmux__n0040_33_365 ),
    .I5(\decoder_4to16/Mmux__n0040_43_364 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<4>_380 )
  );
  LUT6 #(
    .INIT ( 64'h9A9A559A9A555555 ))
  \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<5>  (
    .I0(\AC_reg/d_out [5]),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<3> ),
    .I3(\MIR[2] ),
    .I4(\decoder_4to16/Mmux__n0040_32_367 ),
    .I5(\decoder_4to16/Mmux__n0040_42_366 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<5>_382 )
  );
  LUT6 #(
    .INIT ( 64'h9A9A559A9A555555 ))
  \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<6>  (
    .I0(\AC_reg/d_out [6]),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<3> ),
    .I3(\MIR[2] ),
    .I4(\decoder_4to16/Mmux__n0040_31_369 ),
    .I5(\decoder_4to16/Mmux__n0040_41_368 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<6>_384 )
  );
  LUT5 #(
    .INIT ( 32'hBB0BB000 ))
  \decoder_4to16/Mmux_B_bus171  (
    .I0(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<3> ),
    .I2(\MIR[2] ),
    .I3(\decoder_4to16/Mmux__n0040_35_361 ),
    .I4(\decoder_4to16/Mmux__n0040_45_360 ),
    .O(B_bus[2])
  );
  LUT6 #(
    .INIT ( 64'h9A9A559A9A555555 ))
  \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<7>  (
    .I0(\AC_reg/d_out [7]),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<3> ),
    .I3(\MIR[2] ),
    .I4(\decoder_4to16/Mmux__n0040_3_371 ),
    .I5(\decoder_4to16/Mmux__n0040_4_370 ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<7>_386 )
  );
  LUT3 #(
    .INIT ( 8'h35 ))
  \ALU_24bit/Mmux_C_bus12_A351_SW0  (
    .I0(\AC_reg/d_out [1]),
    .I1(\AC_reg/d_out [7]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .O(N204)
  );
  LUT6 #(
    .INIT ( 64'h0000000008003830 ))
  \ALU_24bit/Mmux_C_bus12_A351  (
    .I0(\AC_reg/d_out [2]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I4(N204),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\ALU_24bit/Mmux_C_bus12_A35 )
  );
  LUT3 #(
    .INIT ( 8'h35 ))
  \ALU_24bit/Mmux_C_bus12_A371_SW0  (
    .I0(\AC_reg/d_out [2]),
    .I1(\AC_reg/d_out [8]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .O(N206)
  );
  LUT6 #(
    .INIT ( 64'h0000000008003830 ))
  \ALU_24bit/Mmux_C_bus12_A371  (
    .I0(\AC_reg/d_out [3]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I4(N206),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\ALU_24bit/Mmux_C_bus12_A37 )
  );
  LUT3 #(
    .INIT ( 8'h35 ))
  \ALU_24bit/Mmux_C_bus12_A391_SW0  (
    .I0(\AC_reg/d_out [3]),
    .I1(\AC_reg/d_out [9]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .O(N208)
  );
  LUT6 #(
    .INIT ( 64'h0000000008003830 ))
  \ALU_24bit/Mmux_C_bus12_A391  (
    .I0(\AC_reg/d_out [4]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I4(N208),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\ALU_24bit/Mmux_C_bus12_A39 )
  );
  LUT3 #(
    .INIT ( 8'h35 ))
  \ALU_24bit/Mmux_C_bus12_A411_SW0  (
    .I0(\AC_reg/d_out [4]),
    .I1(\AC_reg/d_out [10]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .O(N210)
  );
  LUT6 #(
    .INIT ( 64'h0000000008003830 ))
  \ALU_24bit/Mmux_C_bus12_A411  (
    .I0(\AC_reg/d_out [5]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I4(N210),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\ALU_24bit/Mmux_C_bus12_A41 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFDF00000000 ))
  \controlStore/Mmux_MIR251  (
    .I0(\controlStore/next_addr [2]),
    .I1(\controlStore/next_addr [3]),
    .I2(\controlStore/next_addr [4]),
    .I3(N4),
    .I4(N185),
    .I5(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<3> ),
    .O(\MIR[3] )
  );
  LUT4 #(
    .INIT ( 16'hF53F ))
  \ALU_24bit/Mmux_C_bus12_A232_SW0_SW0  (
    .I0(\AC_reg/d_out [5]),
    .I1(\AC_reg/d_out [0]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .O(N214)
  );
  LUT6 #(
    .INIT ( 64'hFFFF001000100010 ))
  \ALU_24bit/Mmux_C_bus12_A232_SW0  (
    .I0(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I3(N214),
    .I4(\AC_reg/d_out [1]),
    .I5(\ALU_24bit/Mmux_C_bus12_A251_467 ),
    .O(N14)
  );
  LUT4 #(
    .INIT ( 16'hF530 ))
  \ALU_24bit/Mmux_C_bus12_A232_SW1_SW0  (
    .I0(\AC_reg/d_out [5]),
    .I1(\AC_reg/d_out [0]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .O(N216)
  );
  LUT6 #(
    .INIT ( 64'hFFFF001000100010 ))
  \ALU_24bit/Mmux_C_bus12_A232_SW1  (
    .I0(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I3(N216),
    .I4(\AC_reg/d_out [1]),
    .I5(\ALU_24bit/Mmux_C_bus12_A251_467 ),
    .O(N15)
  );
  LUT4 #(
    .INIT ( 16'hFF95 ))
  \decoder_4to16/Mmux_B_bus171_SW1  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<3> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I3(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(N219)
  );
  LUT6 #(
    .INIT ( 64'h03F3237313B33333 ))
  \ALU_24bit/Mmux_C_bus12_A333_SW0  (
    .I0(\MIR[2] ),
    .I1(\ALU_24bit/Mmux_C_bus12_rs_AS_inv ),
    .I2(\ALU_24bit/Mmux_C_bus12_A1111 ),
    .I3(N219),
    .I4(\decoder_4to16/Mmux__n0040_35_361 ),
    .I5(\decoder_4to16/Mmux__n0040_45_360 ),
    .O(N169)
  );
  LUT5 #(
    .INIT ( 32'h08F7F7F7 ))
  \ALU_24bit/Mmux_C_bus12_A433_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A1111 ),
    .I4(B_bus[7]),
    .O(N198)
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \decoder_4to16/Mmux_B_bus171_SW2  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .O(N221)
  );
  LUT5 #(
    .INIT ( 32'hFF005551 ))
  \decoder_4to16/Mmux_B_bus171_SW3  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<3> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .O(N222)
  );
  LUT6 #(
    .INIT ( 64'h050505EEEE05EEEE ))
  \ALU_24bit/Mmux_C_bus12_A333_SW1  (
    .I0(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I1(N221),
    .I2(N222),
    .I3(\MIR[2] ),
    .I4(\decoder_4to16/Mmux__n0040_45_360 ),
    .I5(\decoder_4to16/Mmux__n0040_35_361 ),
    .O(N170)
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \decoder_4to16/Mmux_B_bus181_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(N224)
  );
  LUT5 #(
    .INIT ( 32'h000000F2 ))
  \decoder_4to16/Mmux_B_bus181_SW1  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I4(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(N225)
  );
  LUT6 #(
    .INIT ( 64'hFFFFCEDF31200000 ))
  \ALU_24bit/Mmux_C_bus12_A353_SW1  (
    .I0(\MIR[2] ),
    .I1(\MIR[3] ),
    .I2(\decoder_4to16/Mmux__n0040_34_363 ),
    .I3(\decoder_4to16/Mmux__n0040_44_362 ),
    .I4(N225),
    .I5(N224),
    .O(N77)
  );
  LUT6 #(
    .INIT ( 64'hFFFFCEDF31200000 ))
  \ALU_24bit/Mmux_C_bus12_A373_SW1  (
    .I0(\MIR[2] ),
    .I1(\MIR[3] ),
    .I2(\decoder_4to16/Mmux__n0040_33_365 ),
    .I3(\decoder_4to16/Mmux__n0040_43_364 ),
    .I4(N225),
    .I5(N224),
    .O(N74)
  );
  LUT6 #(
    .INIT ( 64'hFFFFCEDF31200000 ))
  \ALU_24bit/Mmux_C_bus12_A393_SW1  (
    .I0(\MIR[2] ),
    .I1(\MIR[3] ),
    .I2(\decoder_4to16/Mmux__n0040_32_367 ),
    .I3(\decoder_4to16/Mmux__n0040_42_366 ),
    .I4(N225),
    .I5(N224),
    .O(N71)
  );
  LUT6 #(
    .INIT ( 64'hFFFFCEDF31200000 ))
  \ALU_24bit/Mmux_C_bus12_A413_SW1  (
    .I0(\MIR[2] ),
    .I1(\MIR[3] ),
    .I2(\decoder_4to16/Mmux__n0040_31_369 ),
    .I3(\decoder_4to16/Mmux__n0040_41_368 ),
    .I4(N225),
    .I5(N224),
    .O(N68)
  );
  LUT6 #(
    .INIT ( 64'h000000F2FFFF0FFF ))
  \ALU_24bit/Mmux_C_bus12_A433_SW1  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I4(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I5(B_bus[7]),
    .O(N199)
  );
  LUT5 #(
    .INIT ( 32'h00000010 ))
  \ALU_24bit/Mmux_C_bus12_A3321  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I4(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\ALU_24bit/Mmux_C_bus12_A332_469 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000C0A000 ))
  \ALU_24bit/Mmux_C_bus12_A472  (
    .I0(\AC_reg/d_out [1]),
    .I1(\AC_reg/d_out [8]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\ALU_24bit/Mmux_C_bus12_A471_570 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000C0A000 ))
  \ALU_24bit/Mmux_C_bus12_A34  (
    .I0(\AC_reg/d_out [2]),
    .I1(\AC_reg/d_out [9]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\ALU_24bit/Mmux_C_bus12_A31 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000C0A000 ))
  \ALU_24bit/Mmux_C_bus12_A52  (
    .I0(\AC_reg/d_out [3]),
    .I1(\AC_reg/d_out [10]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\ALU_24bit/Mmux_C_bus12_A51_576 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000C0A000 ))
  \ALU_24bit/Mmux_C_bus12_A72  (
    .I0(\AC_reg/d_out [4]),
    .I1(\AC_reg/d_out [11]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\ALU_24bit/Mmux_C_bus12_A71_579 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000C0A000 ))
  \ALU_24bit/Mmux_C_bus12_A92  (
    .I0(\AC_reg/d_out [5]),
    .I1(\AC_reg/d_out [12]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\ALU_24bit/Mmux_C_bus12_A91_582 )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \decoder_4to16/Mmux_B_bus152_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I1(\R1_reg/d_out [22]),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(N175)
  );
  LUT6 #(
    .INIT ( 64'h0000000000C0A000 ))
  \ALU_24bit/Mmux_C_bus12_A112  (
    .I0(\AC_reg/d_out [6]),
    .I1(\AC_reg/d_out [13]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\ALU_24bit/Mmux_C_bus12_A112_549 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000C0A000 ))
  \ALU_24bit/Mmux_C_bus12_A132  (
    .I0(\AC_reg/d_out [7]),
    .I1(\AC_reg/d_out [14]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\ALU_24bit/Mmux_C_bus12_A131_552 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000C0A000 ))
  \ALU_24bit/Mmux_C_bus12_A152  (
    .I0(\AC_reg/d_out [8]),
    .I1(\AC_reg/d_out [15]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\ALU_24bit/Mmux_C_bus12_A151_555 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000C0A000 ))
  \ALU_24bit/Mmux_C_bus12_A172  (
    .I0(\AC_reg/d_out [9]),
    .I1(\AC_reg/d_out [16]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\ALU_24bit/Mmux_C_bus12_A171_558 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000C0A000 ))
  \ALU_24bit/Mmux_C_bus12_A192  (
    .I0(\AC_reg/d_out [10]),
    .I1(\AC_reg/d_out [17]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\ALU_24bit/Mmux_C_bus12_A191_561 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000A0C000 ))
  \ALU_24bit/Mmux_C_bus12_A212  (
    .I0(\AC_reg/d_out [18]),
    .I1(\AC_reg/d_out [11]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\ALU_24bit/Mmux_C_bus12_A211_564 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFEFF ))
  \ALU_24bit/Mmux_C_bus12_A233_SW0_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I4(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(N236)
  );
  LUT6 #(
    .INIT ( 64'hCFFCDFFDEFFEFFFF ))
  \ALU_24bit/Mmux_C_bus12_A233_SW0  (
    .I0(\MIR[2] ),
    .I1(\MIR[3] ),
    .I2(\ALU_24bit/Mmux_C_bus12_A1111 ),
    .I3(N236),
    .I4(\decoder_4to16/Mmux__n0040_46_358 ),
    .I5(\decoder_4to16/Mmux__n0040_36_359 ),
    .O(N166)
  );
  LUT4 #(
    .INIT ( 16'hFB08 ))
  \MDR_reg/Mmux_data_out[7]_data_in[7]_mux_2_OUT11  (
    .I0(data_in_0_IBUF_7),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<6> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(C_bus[0]),
    .O(\MDR_reg/data_out[7]_data_in[7]_mux_2_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'hFBF3AA00AA00AA00 ))
  \ALU_24bit/Mmux_C_bus12_A451  (
    .I0(\AC_reg/d_out [8]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A251_467 ),
    .I4(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I5(B_bus[8]),
    .O(\ALU_24bit/Mmux_C_bus12_A45 )
  );
  LUT6 #(
    .INIT ( 64'hFBF3AA00AA00AA00 ))
  \ALU_24bit/Mmux_C_bus12_A471  (
    .I0(\AC_reg/d_out [9]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A251_467 ),
    .I4(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I5(B_bus[9]),
    .O(\ALU_24bit/Mmux_C_bus12_A47 )
  );
  LUT6 #(
    .INIT ( 64'hFBF3AA00AA00AA00 ))
  \ALU_24bit/Mmux_C_bus12_A32  (
    .I0(\AC_reg/d_out [10]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A251_467 ),
    .I4(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I5(B_bus[10]),
    .O(\ALU_24bit/Mmux_C_bus12_A3 )
  );
  LUT6 #(
    .INIT ( 64'hFBF3AA00AA00AA00 ))
  \ALU_24bit/Mmux_C_bus12_A51  (
    .I0(\AC_reg/d_out [11]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A251_467 ),
    .I4(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I5(B_bus[11]),
    .O(\ALU_24bit/Mmux_C_bus12_A5 )
  );
  LUT6 #(
    .INIT ( 64'hFBF3AA00AA00AA00 ))
  \ALU_24bit/Mmux_C_bus12_A71  (
    .I0(\AC_reg/d_out [12]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A251_467 ),
    .I4(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I5(B_bus[12]),
    .O(\ALU_24bit/Mmux_C_bus12_A7 )
  );
  LUT6 #(
    .INIT ( 64'hFBF3AA00AA00AA00 ))
  \ALU_24bit/Mmux_C_bus12_A91  (
    .I0(\AC_reg/d_out [13]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A251_467 ),
    .I4(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I5(B_bus[13]),
    .O(\ALU_24bit/Mmux_C_bus12_A9 )
  );
  LUT6 #(
    .INIT ( 64'hFBF3AA00AA00AA00 ))
  \ALU_24bit/Mmux_C_bus12_A111  (
    .I0(\AC_reg/d_out [14]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A251_467 ),
    .I4(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I5(B_bus[14]),
    .O(\ALU_24bit/Mmux_C_bus12_A111_548 )
  );
  LUT6 #(
    .INIT ( 64'hFBF3AA00AA00AA00 ))
  \ALU_24bit/Mmux_C_bus12_A131  (
    .I0(\AC_reg/d_out [15]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A251_467 ),
    .I4(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I5(B_bus[15]),
    .O(\ALU_24bit/Mmux_C_bus12_A13 )
  );
  LUT6 #(
    .INIT ( 64'hFBF3AA00AA00AA00 ))
  \ALU_24bit/Mmux_C_bus12_A151  (
    .I0(\AC_reg/d_out [16]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A251_467 ),
    .I4(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I5(B_bus[16]),
    .O(\ALU_24bit/Mmux_C_bus12_A15 )
  );
  LUT6 #(
    .INIT ( 64'hFBF3AA00AA00AA00 ))
  \ALU_24bit/Mmux_C_bus12_A171  (
    .I0(\AC_reg/d_out [17]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A251_467 ),
    .I4(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I5(B_bus[17]),
    .O(\ALU_24bit/Mmux_C_bus12_A17 )
  );
  LUT6 #(
    .INIT ( 64'hFBF3AA00AA00AA00 ))
  \ALU_24bit/Mmux_C_bus12_A191  (
    .I0(\AC_reg/d_out [18]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A251_467 ),
    .I4(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I5(B_bus[18]),
    .O(\ALU_24bit/Mmux_C_bus12_A19 )
  );
  LUT6 #(
    .INIT ( 64'hFBF3AA00AA00AA00 ))
  \ALU_24bit/Mmux_C_bus12_A211  (
    .I0(\AC_reg/d_out [19]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A251_467 ),
    .I4(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I5(B_bus[19]),
    .O(\ALU_24bit/Mmux_C_bus12_A21 )
  );
  LUT5 #(
    .INIT ( 32'hFBF3AA00 ))
  \ALU_24bit/Mmux_C_bus12_A252  (
    .I0(\AC_reg/d_out [20]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A251_467 ),
    .I4(\ALU_24bit/Mmux_C_bus12_A25 ),
    .O(\ALU_24bit/Mmux_C_bus12_A252_585 )
  );
  LUT6 #(
    .INIT ( 64'hF70808F7F7F7F7F7 ))
  \ALU_24bit/Mmux_C_bus12_A253_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A1111 ),
    .I4(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I5(B_bus[20]),
    .O(N195)
  );
  LUT5 #(
    .INIT ( 32'h08F7F7F7 ))
  \ALU_24bit/Mmux_C_bus12_A253_SW1  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A1111 ),
    .I4(B_bus[20]),
    .O(N196)
  );
  LUT5 #(
    .INIT ( 32'hFBF3AA00 ))
  \ALU_24bit/Mmux_C_bus12_A272  (
    .I0(\AC_reg/d_out [21]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A251_467 ),
    .I4(\ALU_24bit/Mmux_C_bus12_A27 ),
    .O(\ALU_24bit/Mmux_C_bus12_A271_591 )
  );
  LUT6 #(
    .INIT ( 64'hF70808F7F7F7F7F7 ))
  \ALU_24bit/Mmux_C_bus12_A273_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A1111 ),
    .I4(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I5(B_bus[21]),
    .O(N192)
  );
  LUT5 #(
    .INIT ( 32'h08F7F7F7 ))
  \ALU_24bit/Mmux_C_bus12_A273_SW1  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A1111 ),
    .I4(B_bus[21]),
    .O(N193)
  );
  LUT5 #(
    .INIT ( 32'hFBF3AA00 ))
  \ALU_24bit/Mmux_C_bus12_A292  (
    .I0(\AC_reg/d_out [22]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A251_467 ),
    .I4(\ALU_24bit/Mmux_C_bus12_A29 ),
    .O(\ALU_24bit/Mmux_C_bus12_A291_589 )
  );
  LUT6 #(
    .INIT ( 64'hF70808F7F7F7F7F7 ))
  \ALU_24bit/Mmux_C_bus12_A293_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A1111 ),
    .I4(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I5(B_bus[22]),
    .O(N189)
  );
  LUT5 #(
    .INIT ( 32'h08F7F7F7 ))
  \ALU_24bit/Mmux_C_bus12_A293_SW1  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A1111 ),
    .I4(B_bus[22]),
    .O(N190)
  );
  LUT6 #(
    .INIT ( 64'h0000C0EA0000C040 ))
  \decoder_4to16/Mmux_B_bus233  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> ),
    .I1(\MIR[2] ),
    .I2(\decoder_4to16/Mmux_B_bus231_530 ),
    .I3(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I4(\MIR[3] ),
    .I5(\decoder_4to16/Mmux_B_bus23 ),
    .O(B_bus[8])
  );
  LUT6 #(
    .INIT ( 64'h0000F0020000F000 ))
  \ALU_24bit/Mmux_C_bus12_A454_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I4(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I5(B_bus[8]),
    .O(N39)
  );
  LUT6 #(
    .INIT ( 64'h0000F0020000F000 ))
  \ALU_24bit/Mmux_C_bus12_A474_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I4(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I5(B_bus[9]),
    .O(N37)
  );
  LUT6 #(
    .INIT ( 64'h0000F0020000F000 ))
  \ALU_24bit/Mmux_C_bus12_A38_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I4(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I5(B_bus[10]),
    .O(N35)
  );
  LUT6 #(
    .INIT ( 64'h0000F0020000F000 ))
  \ALU_24bit/Mmux_C_bus12_A54_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I4(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I5(B_bus[11]),
    .O(N33)
  );
  LUT6 #(
    .INIT ( 64'h0000F0020000F000 ))
  \ALU_24bit/Mmux_C_bus12_A74_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I4(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I5(B_bus[12]),
    .O(N31)
  );
  LUT6 #(
    .INIT ( 64'h0000F0020000F000 ))
  \ALU_24bit/Mmux_C_bus12_A94_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I4(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I5(B_bus[13]),
    .O(N29)
  );
  LUT6 #(
    .INIT ( 64'h0000F0020000F000 ))
  \ALU_24bit/Mmux_C_bus12_A114_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I4(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I5(B_bus[14]),
    .O(N27)
  );
  LUT6 #(
    .INIT ( 64'h0000F0020000F000 ))
  \ALU_24bit/Mmux_C_bus12_A134_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I4(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I5(B_bus[15]),
    .O(N25)
  );
  LUT6 #(
    .INIT ( 64'h0000F0020000F000 ))
  \ALU_24bit/Mmux_C_bus12_A154_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I4(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I5(B_bus[16]),
    .O(N23)
  );
  LUT6 #(
    .INIT ( 64'h0000F0020000F000 ))
  \ALU_24bit/Mmux_C_bus12_A174_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I4(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I5(B_bus[17]),
    .O(N21)
  );
  LUT6 #(
    .INIT ( 64'h0000F0020000F000 ))
  \ALU_24bit/Mmux_C_bus12_A194_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I4(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I5(B_bus[18]),
    .O(N19)
  );
  LUT6 #(
    .INIT ( 64'h0000F0020000F000 ))
  \ALU_24bit/Mmux_C_bus12_A214_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I4(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I5(B_bus[19]),
    .O(N17)
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \MDR_reg/_n0010_inv1  (
    .I0(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<15> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<6> ),
    .O(\MDR_reg/_n0010_inv )
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<23>_SW0  (
    .I0(\R1_reg/d_out [23]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(N238)
  );
  LUT6 #(
    .INIT ( 64'h595A555659595555 ))
  \ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<23>  (
    .I0(\AC_reg/d_out [23]),
    .I1(\MIR[2] ),
    .I2(\MIR[3] ),
    .I3(N238),
    .I4(\decoder_4to16/Mmux_B_bus16 ),
    .I5(\MIR[0] ),
    .O(\ALU_24bit/Msub_A_bus[23]_B_bus[23]_sub_2_OUT_lut<23>_418 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000C0A000 ))
  \ALU_24bit/Mmux_C_bus12_A452  (
    .I0(\AC_reg/d_out [0]),
    .I1(\AC_reg/d_out [7]),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I4(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I5(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\ALU_24bit/Mmux_C_bus12_A451_567 )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \MIR<14>_inv1  (
    .I0(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<14> ),
    .O(\MIR<14>_inv )
  );
  LUT3 #(
    .INIT ( 8'h54 ))
  \PC_reg/_n0013_inv1  (
    .I0(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<4> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<14> ),
    .O(\PC_reg/_n0013_inv )
  );
  LUT4 #(
    .INIT ( 16'h5140 ))
  \controlStore/Mmux_addr[7]_MBRU[7]_mux_1_OUT11  (
    .I0(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<21> ),
    .I2(\MBRU_reg/ins_out [0]),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<23> ),
    .O(\controlStore/addr[7]_MBRU[7]_mux_1_OUT<0> )
  );
  LUT5 #(
    .INIT ( 32'h5410FEBA ))
  \controlStore/Mmux_addr[7]_MBRU[7]_mux_1_OUT21  (
    .I0(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<21> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<24> ),
    .I3(\MBRU_reg/ins_out [1]),
    .I4(\ALU_24bit/Z_flag_275 ),
    .O(\controlStore/addr[7]_MBRU[7]_mux_1_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'h5140 ))
  \controlStore/Mmux_addr[7]_MBRU[7]_mux_1_OUT31  (
    .I0(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<21> ),
    .I2(\MBRU_reg/ins_out [2]),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<25> ),
    .O(\controlStore/addr[7]_MBRU[7]_mux_1_OUT<2> )
  );
  LUT4 #(
    .INIT ( 16'hFFE4 ))
  \controlStore/Mmux_addr[7]_MBRU[7]_mux_1_OUT41  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<21> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<26> ),
    .I2(\MBRU_reg/ins_out [3]),
    .I3(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\controlStore/addr[7]_MBRU[7]_mux_1_OUT<3> )
  );
  LUT4 #(
    .INIT ( 16'hFFE4 ))
  \controlStore/Mmux_addr[7]_MBRU[7]_mux_1_OUT51  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<21> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<27> ),
    .I2(\MBRU_reg/ins_out [4]),
    .I3(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\controlStore/addr[7]_MBRU[7]_mux_1_OUT<4> )
  );
  LUT4 #(
    .INIT ( 16'h5140 ))
  \controlStore/Mmux_addr[7]_MBRU[7]_mux_1_OUT61  (
    .I0(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<21> ),
    .I2(\MBRU_reg/ins_out [5]),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<28> ),
    .O(\controlStore/addr[7]_MBRU[7]_mux_1_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \controlStore/Mmux_addr[7]_MBRU[7]_mux_1_OUT71  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<21> ),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I2(\MBRU_reg/ins_out [6]),
    .O(\controlStore/addr[7]_MBRU[7]_mux_1_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \controlStore/Mmux_addr[7]_MBRU[7]_mux_1_OUT81  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<21> ),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I2(\MBRU_reg/ins_out [7]),
    .O(\controlStore/addr[7]_MBRU[7]_mux_1_OUT<7> )
  );
  LUT5 #(
    .INIT ( 32'hFBF3AA00 ))
  \ALU_24bit/Mmux_C_bus12_A312  (
    .I0(\AC_reg/d_out [23]),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A251_467 ),
    .I4(\ALU_24bit/Mmux_C_bus12_A311_586 ),
    .O(\ALU_24bit/Mmux_C_bus12_A312_587 )
  );
  LUT6 #(
    .INIT ( 64'hF70808F7F7F7F7F7 ))
  \ALU_24bit/Mmux_C_bus12_A313_SW0  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A1111 ),
    .I4(\ALU_24bit/Mmux_C_bus12_A25111 ),
    .I5(B_bus[23]),
    .O(N172)
  );
  LUT5 #(
    .INIT ( 32'h08F7F7F7 ))
  \ALU_24bit/Mmux_C_bus12_A313_SW1  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I2(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I3(\ALU_24bit/Mmux_C_bus12_A1111 ),
    .I4(B_bus[23]),
    .O(N173)
  );
  LUT4 #(
    .INIT ( 16'hEAEB ))
  \ALU_24bit/oper[3]_PWR_11_o_Mux_8_o1  (
    .I0(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .I1(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> ),
    .I2(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> ),
    .I3(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> ),
    .O(\ALU_24bit/oper[3]_PWR_11_o_Mux_8_o )
  );
  LUT6 #(
    .INIT ( 64'h0000000000004000 ))
  \controlStore/next_addr[7]_GND_8_o_equal_7_o<7>_1  (
    .I0(\controlStore/next_addr [0]),
    .I1(\controlStore/next_addr [1]),
    .I2(\controlStore/next_addr [4]),
    .I3(\controlStore/next_addr [2]),
    .I4(\controlStore/next_addr [3]),
    .I5(N4),
    .O(\controlStore/next_addr[7]_GND_8_o_equal_7_o<7>_787 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \controlStore/Mmux_MIR121_1  (
    .I0(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> ),
    .I1(\controlStore/next_addr[7]_GND_8_o_equal_7_o ),
    .O(\controlStore/Mmux_MIR121_788 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_16)
  );
  LUT6 #(
    .INIT ( 64'h202008AA2A2A2228 ))
  \controlStore_Mram_next_addr[5]_X_8_o_wide_mux_5_OUT281  (
    .I0(\controlStore/next_addr [5]),
    .I1(\controlStore/next_addr [2]),
    .I2(\controlStore/next_addr [0]),
    .I3(\controlStore/next_addr [3]),
    .I4(\controlStore/next_addr [4]),
    .I5(\controlStore/next_addr [1]),
    .O(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<28> )
  );
  LUT6 #(
    .INIT ( 64'h08080A802A2A0800 ))
  \controlStore_Mram_next_addr[5]_X_8_o_wide_mux_5_OUT271  (
    .I0(\controlStore/next_addr [4]),
    .I1(\controlStore/next_addr [0]),
    .I2(\controlStore/next_addr [2]),
    .I3(\controlStore/next_addr [3]),
    .I4(\controlStore/next_addr [5]),
    .I5(\controlStore/next_addr [1]),
    .O(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<27> )
  );
  LUT6 #(
    .INIT ( 64'h0000382018901800 ))
  \controlStore_Mram_next_addr[5]_X_8_o_wide_mux_5_OUT261  (
    .I0(\controlStore/next_addr [1]),
    .I1(\controlStore/next_addr [2]),
    .I2(\controlStore/next_addr [3]),
    .I3(\controlStore/next_addr [0]),
    .I4(\controlStore/next_addr [5]),
    .I5(\controlStore/next_addr [4]),
    .O(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<26> )
  );
  LUT6 #(
    .INIT ( 64'h4240460620002208 ))
  \controlStore_Mram_next_addr[5]_X_8_o_wide_mux_5_OUT251  (
    .I0(\controlStore/next_addr [2]),
    .I1(\controlStore/next_addr [0]),
    .I2(\controlStore/next_addr [4]),
    .I3(\controlStore/next_addr [5]),
    .I4(\controlStore/next_addr [3]),
    .I5(\controlStore/next_addr [1]),
    .O(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<25> )
  );
  LUT6 #(
    .INIT ( 64'h0202060042460264 ))
  \controlStore_Mram_next_addr[5]_X_8_o_wide_mux_5_OUT241  (
    .I0(\controlStore/next_addr [0]),
    .I1(\controlStore/next_addr [1]),
    .I2(\controlStore/next_addr [2]),
    .I3(\controlStore/next_addr [3]),
    .I4(\controlStore/next_addr [5]),
    .I5(\controlStore/next_addr [4]),
    .O(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<24> )
  );
  LUT6 #(
    .INIT ( 64'h0405404410044441 ))
  \controlStore_Mram_next_addr[5]_X_8_o_wide_mux_5_OUT231  (
    .I0(\controlStore/next_addr [0]),
    .I1(\controlStore/next_addr [5]),
    .I2(\controlStore/next_addr [4]),
    .I3(\controlStore/next_addr [3]),
    .I4(\controlStore/next_addr [1]),
    .I5(\controlStore/next_addr [2]),
    .O(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<23> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \controlStore_Mram_next_addr[5]_X_8_o_wide_mux_5_OUT211  (
    .I0(\controlStore/next_addr [1]),
    .I1(\controlStore/next_addr [2]),
    .I2(\controlStore/next_addr [3]),
    .I3(\controlStore/next_addr [4]),
    .I4(\controlStore/next_addr [0]),
    .I5(\controlStore/next_addr [5]),
    .O(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<21> )
  );
  LUT6 #(
    .INIT ( 64'h36279ADE00930820 ))
  \controlStore_Mram_next_addr[5]_X_8_o_wide_mux_5_OUT201  (
    .I0(\controlStore/next_addr [5]),
    .I1(\controlStore/next_addr [0]),
    .I2(\controlStore/next_addr [1]),
    .I3(\controlStore/next_addr [3]),
    .I4(\controlStore/next_addr [2]),
    .I5(\controlStore/next_addr [4]),
    .O(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<20> )
  );
  LUT6 #(
    .INIT ( 64'h20207D484809D2A0 ))
  \controlStore_Mram_next_addr[5]_X_8_o_wide_mux_5_OUT191  (
    .I0(\controlStore/next_addr [5]),
    .I1(\controlStore/next_addr [1]),
    .I2(\controlStore/next_addr [0]),
    .I3(\controlStore/next_addr [3]),
    .I4(\controlStore/next_addr [4]),
    .I5(\controlStore/next_addr [2]),
    .O(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<19> )
  );
  LUT6 #(
    .INIT ( 64'h38282021D720E40A ))
  \controlStore_Mram_next_addr[5]_X_8_o_wide_mux_5_OUT181  (
    .I0(\controlStore/next_addr [5]),
    .I1(\controlStore/next_addr [0]),
    .I2(\controlStore/next_addr [1]),
    .I3(\controlStore/next_addr [3]),
    .I4(\controlStore/next_addr [2]),
    .I5(\controlStore/next_addr [4]),
    .O(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<18> )
  );
  LUT6 #(
    .INIT ( 64'hFB68DF53AA2968A0 ))
  \controlStore_Mram_next_addr[5]_X_8_o_wide_mux_5_OUT171  (
    .I0(\controlStore/next_addr [5]),
    .I1(\controlStore/next_addr [1]),
    .I2(\controlStore/next_addr [0]),
    .I3(\controlStore/next_addr [2]),
    .I4(\controlStore/next_addr [4]),
    .I5(\controlStore/next_addr [3]),
    .O(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<17> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \controlStore_Mram_next_addr[5]_X_8_o_wide_mux_5_OUT161  (
    .I0(\controlStore/next_addr [0]),
    .I1(\controlStore/next_addr [1]),
    .I2(\controlStore/next_addr [2]),
    .I3(\controlStore/next_addr [3]),
    .I4(\controlStore/next_addr [4]),
    .I5(\controlStore/next_addr [5]),
    .O(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<16> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000400 ))
  \controlStore_Mram_next_addr[5]_X_8_o_wide_mux_5_OUT151  (
    .I0(\controlStore/next_addr [1]),
    .I1(\controlStore/next_addr [0]),
    .I2(\controlStore/next_addr [2]),
    .I3(\controlStore/next_addr [3]),
    .I4(\controlStore/next_addr [4]),
    .I5(\controlStore/next_addr [5]),
    .O(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<15> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000004000 ))
  \controlStore_Mram_next_addr[5]_X_8_o_wide_mux_5_OUT141  (
    .I0(\controlStore/next_addr [0]),
    .I1(\controlStore/next_addr [4]),
    .I2(\controlStore/next_addr [2]),
    .I3(\controlStore/next_addr [3]),
    .I4(\controlStore/next_addr [1]),
    .I5(\controlStore/next_addr [5]),
    .O(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<14> )
  );
  LUT6 #(
    .INIT ( 64'h0200002002000000 ))
  \controlStore_Mram_next_addr[5]_X_8_o_wide_mux_5_OUT131  (
    .I0(\controlStore/next_addr [1]),
    .I1(\controlStore/next_addr [2]),
    .I2(\controlStore/next_addr [0]),
    .I3(\controlStore/next_addr [4]),
    .I4(\controlStore/next_addr [5]),
    .I5(\controlStore/next_addr [3]),
    .O(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<13> )
  );
  LUT6 #(
    .INIT ( 64'h4000000440000000 ))
  \controlStore_Mram_next_addr[5]_X_8_o_wide_mux_5_OUT121  (
    .I0(\controlStore/next_addr [1]),
    .I1(\controlStore/next_addr [2]),
    .I2(\controlStore/next_addr [0]),
    .I3(\controlStore/next_addr [4]),
    .I4(\controlStore/next_addr [5]),
    .I5(\controlStore/next_addr [3]),
    .O(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<12> )
  );
  LUT6 #(
    .INIT ( 64'h8000000880000000 ))
  \controlStore_Mram_next_addr[5]_X_8_o_wide_mux_5_OUT1111  (
    .I0(\controlStore/next_addr [2]),
    .I1(\controlStore/next_addr [0]),
    .I2(\controlStore/next_addr [1]),
    .I3(\controlStore/next_addr [4]),
    .I4(\controlStore/next_addr [5]),
    .I5(\controlStore/next_addr [3]),
    .O(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<11> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000004000 ))
  \controlStore_Mram_next_addr[5]_X_8_o_wide_mux_5_OUT101  (
    .I0(\controlStore/next_addr [0]),
    .I1(\controlStore/next_addr [1]),
    .I2(\controlStore/next_addr [2]),
    .I3(\controlStore/next_addr [3]),
    .I4(\controlStore/next_addr [4]),
    .I5(\controlStore/next_addr [5]),
    .O(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<10> )
  );
  LUT6 #(
    .INIT ( 64'h0000100440000000 ))
  \controlStore_Mram_next_addr[5]_X_8_o_wide_mux_5_OUT91  (
    .I0(\controlStore/next_addr [4]),
    .I1(\controlStore/next_addr [0]),
    .I2(\controlStore/next_addr [1]),
    .I3(\controlStore/next_addr [2]),
    .I4(\controlStore/next_addr [3]),
    .I5(\controlStore/next_addr [5]),
    .O(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<9> )
  );
  LUT6 #(
    .INIT ( 64'hFADA78F1F6966AFC ))
  \controlStore_Mram_next_addr[5]_X_8_o_wide_mux_5_OUT81  (
    .I0(\controlStore/next_addr [4]),
    .I1(\controlStore/next_addr [2]),
    .I2(\controlStore/next_addr [5]),
    .I3(\controlStore/next_addr [0]),
    .I4(\controlStore/next_addr [1]),
    .I5(\controlStore/next_addr [3]),
    .O(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<8> )
  );
  LUT6 #(
    .INIT ( 64'h0110108000140081 ))
  \controlStore_Mram_next_addr[5]_X_8_o_wide_mux_5_OUT71  (
    .I0(\controlStore/next_addr [4]),
    .I1(\controlStore/next_addr [3]),
    .I2(\controlStore/next_addr [0]),
    .I3(\controlStore/next_addr [2]),
    .I4(\controlStore/next_addr [5]),
    .I5(\controlStore/next_addr [1]),
    .O(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000400 ))
  \controlStore_Mram_next_addr[5]_X_8_o_wide_mux_5_OUT61  (
    .I0(\controlStore/next_addr [2]),
    .I1(\controlStore/next_addr [0]),
    .I2(\controlStore/next_addr [3]),
    .I3(\controlStore/next_addr [1]),
    .I4(\controlStore/next_addr [4]),
    .I5(\controlStore/next_addr [5]),
    .O(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000400 ))
  \controlStore_Mram_next_addr[5]_X_8_o_wide_mux_5_OUT51  (
    .I0(\controlStore/next_addr [0]),
    .I1(\controlStore/next_addr [1]),
    .I2(\controlStore/next_addr [2]),
    .I3(\controlStore/next_addr [3]),
    .I4(\controlStore/next_addr [4]),
    .I5(\controlStore/next_addr [5]),
    .O(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<5> )
  );
  LUT6 #(
    .INIT ( 64'h1001014001000814 ))
  \controlStore_Mram_next_addr[5]_X_8_o_wide_mux_5_OUT41  (
    .I0(\controlStore/next_addr [4]),
    .I1(\controlStore/next_addr [3]),
    .I2(\controlStore/next_addr [0]),
    .I3(\controlStore/next_addr [1]),
    .I4(\controlStore/next_addr [2]),
    .I5(\controlStore/next_addr [5]),
    .O(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'h4000002004000807 ))
  \controlStore_Mram_next_addr[5]_X_8_o_wide_mux_5_OUT31  (
    .I0(\controlStore/next_addr [5]),
    .I1(\controlStore/next_addr [0]),
    .I2(\controlStore/next_addr [1]),
    .I3(\controlStore/next_addr [2]),
    .I4(\controlStore/next_addr [4]),
    .I5(\controlStore/next_addr [3]),
    .O(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'h808281D600000000 ))
  \controlStore_Mram_next_addr[5]_X_8_o_wide_mux_5_OUT22  (
    .I0(\controlStore/next_addr [5]),
    .I1(\controlStore/next_addr [1]),
    .I2(\controlStore/next_addr [0]),
    .I3(\controlStore/next_addr [2]),
    .I4(\controlStore/next_addr [3]),
    .I5(\controlStore/next_addr [4]),
    .O(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'h818481C000218619 ))
  \controlStore_Mram_next_addr[5]_X_8_o_wide_mux_5_OUT112  (
    .I0(\controlStore/next_addr [5]),
    .I1(\controlStore/next_addr [1]),
    .I2(\controlStore/next_addr [0]),
    .I3(\controlStore/next_addr [2]),
    .I4(\controlStore/next_addr [3]),
    .I5(\controlStore/next_addr [4]),
    .O(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'h0104010400218708 ))
  \controlStore_Mram_next_addr[5]_X_8_o_wide_mux_5_OUT110  (
    .I0(\controlStore/next_addr [5]),
    .I1(\controlStore/next_addr [1]),
    .I2(\controlStore/next_addr [0]),
    .I3(\controlStore/next_addr [2]),
    .I4(\controlStore/next_addr [3]),
    .I5(\controlStore/next_addr [4]),
    .O(\controlStore/next_addr[5]_X_8_o_wide_mux_5_OUT<0> )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

