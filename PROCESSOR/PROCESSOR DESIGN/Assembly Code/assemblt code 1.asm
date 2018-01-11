	LOADI R1, 10 		//  n = 10
	LOADI R2, 0 		//  i = 0
	LOADI R3, 0 		//  sum = 0

(LOOP)	
	SUB AC, R1, R2 		// n-i
	JLE @END       		// jump if (n-1) <= 0 PC = R7
	INC R2 				// increment i
	ADD R3, R3, R2 		// sum = sum + i
	JMP @LOOP 				// jump to LOOP

(END)
	LOADI R6, 3			// load constant int 3 to R6
	LDMAR R6			// set MAR
	STORE R3			// store R3 in RAM[3]