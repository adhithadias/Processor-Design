	LOADI R1, 7			// load J = 7
	LOADI R2, 7			// load I = 7

	LOADI R3, 1			// load j = 1
	LOADI R4, 1			// load i = 1

(LOOP1)
	SUB AC, R1, R3		// J -j
	JLE @END

	LOADI R4, 1			// load i = 1 before loop 2

(LOOP2)
	SUB AC, R2, R4		// I - i
	JLE @LOOP2END

	LOADI R5, 3			// multiply by 8 = 3 bits shift left
	MUL R5, R3, R5		// j * 8
	ADD R5, R5, R4		// j * 8 + i = x

	LDMAR R5			// MAR = RAM[x]
	LOAD AC				// load RAM[x] to AC

	LOADI R6, 2 		// multiply by 4 = 2 bits shift left
	MUL R7, AC, R6		// R6 = AC << 2 (image(x) * 4)

	LDACI 1
	SUB AC, R5, AC
	LDMAR AC
	LOAD AC				// AC = image(x-1)

	LOADI R6, 1
	MUL AC, AC, R6		// AC = image(x-1) * 2
	ADD R7, R7, AC		// sum of image(x) * 4 + image(x-1) * 2

	LDACI 1
	ADD AC, R5, AC
	LDMAR AC
	LOAD AC				// AC = image(x+1)

	LOADI R6, 1
	MUL AC, AC, R6		// AC = image(x+1) * 2
	ADD R7, R7, AC		// sum 

	LDACI 8
	SUB AC, R5, AC
	LDMAR AC
	LOAD AC				// AC = image(x-1)

	LOADI R6, 1
	MUL AC, AC, R6		// AC = image(x-8) * 2
	ADD R7, R7, AC		// sum 

	LDACI 8
	ADD AC, R5, AC
	LDMAR AC
	LOAD AC				// AC = image(x+8)

	LOADI R6, 1
	MUL AC, AC, R6		// AC = image(x+1) * 2
	ADD R7, R7, AC		// sum 

	LDACI 9
	SUB AC, R5, AC
	LDMAR AC
	LOAD AC				// AC = image(x-9)

	ADD R7, R7, AC		// sum 

	LDACI 9
	ADD AC, R5, AC
	LDMAR AC
	LOAD AC				// AC = image(x+9)

	ADD R7, R7, AC		// sum 

	LDACI 7
	SUB AC, R5, AC
	LDMAR AC
	LOAD AC				// AC = image(x-7)

	ADD R7, R7, AC		// sum 

	LDACI 7
	ADD AC, R5, AC
	LDMAR AC
	LOAD AC				// AC = image(x+7)

	ADD R7, R7, AC		// sum 

	LOADI R6, 4
	DIV R7, R7, R6		// total = total / 16

	LDACI 9
	SUB AC, R5, AC
	LDMAR AC
	STORE R7			// store result in RAM[x-9]  end of 68 th instruction

	INC R4				// i = i + 1
	JMP @LOOP2

(LOOP2END)	

	INC R3				// j = j + 1
	JMP @LOOP1

(END)
	NOP
	JMP @END