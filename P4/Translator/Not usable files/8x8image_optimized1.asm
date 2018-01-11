// ********************************************** //
// ******** gaussian filtering the image ******** //
// ********************************************** // 

	LOADI R1, 7			// J,I = 7  

	LOADI R2, 1			// j = 1

(LOOP1)
	SUB AC, R1, R2		// J - j
	JLE @LOOP1END 			// jump to end if AC <= 0

	LOADI R3, 1			// i = 1 

(LOOP2)
	SUB AC, R1, R3		// I - i
	JLE @LOOP2END		// jump to end of loop 2 in AC <= 0

	// ***** calculating x = j * 8 + i 
	// ***** store x in R4 

	LOADI R4, 3			// multiply by 8 = 3 bits shift left
	MUL R4, R2, R4		// j * 8
	ADD R4, R4, R3		// j * 8 + i = x

	// ***** calculating memory[x] * 4
	// ***** store total in R6

	LDMAR R4			// MAR = RAM[x]
	LOAD AC				// load RAM[x] to AC

	LOADI R5, 2 		// multiply by 4 = 2 bits shift left
	MUL R6, AC, R5		// R6 = AC << 2 (image(x) * 4)

	// ***** calculating memory[x-1] * 2 +
	// ***** and memory[x+2] * 2
	// ***** store total in R6

	LOADI R5, 1

	SUB AC, R4, R5		// x - 1
	LDMAR AC
	LOAD AC				// AC = image(x-1)

	MUL AC, AC, R5		// AC = image(x-1) * 2
	ADD R6, R6, AC		// sum of image(x) * 4 + image(x-1) * 2

	ADD AC, R4, R5		// x + 1
	LDMAR AC
	LOAD AC				// AC = image(x+1)

	MUL AC, AC, R5		// AC = image(x+1) * 2
	ADD R6, R6, AC		// sum 

	// ***** calculating memory[x-8] * 2 +
	// ***** and memory[x+8] * 2
	// ***** store total in R6

	LOADI R7, 8

	SUB AC, R4, R7		// x - 8
	LDMAR AC
	LOAD AC				// AC = image(x-8)

	MUL AC, AC, R5		// AC = image(x-8) * 2
	ADD R6, R6, AC		// sum 

	ADD AC, R4, R7		// x + 8
	LDMAR AC
	LOAD AC				// AC = image(x+8)

	MUL AC, AC, R5		// AC = image(x+8) * 2
	ADD R6, R6, AC		// sum 

	// ***** calculating memory[x-7] +
	// ***** and memory[x+7]
	// ***** store total in R6

	LOADI R7, 7

	SUB AC, R4, R7		// x - 7
	LDMAR AC
	LOAD AC				// AC = image(x-7)

	ADD R6, R6, AC		// sum 

	ADD AC, R4, R7		// x + 7
	LDMAR AC
	LOAD AC				// AC = image(x+7)

	ADD R6, R6, AC		// sum 

	// ***** calculating memory[x-9] +
	// ***** and memory[x+9]
	// ***** store total in R6

	LOADI R7, 9

	SUB AC, R4, R7		// x - 9
	LDMAR AC
	LOAD AC				// AC = image(x-9)

	ADD R6, R6, AC		// sum 

	ADD AC, R4, R7		// x + 9
	LDMAR AC
	LOAD AC				// AC = image(x+9)

	ADD R6, R6, AC		// sum 

	// ***** calculating total = total / 16
	// ***** store the result in R6

	LOADI R5, 4			// no of bits to shift right i.e. divide by 16
	DIV R6, R6, R5		// total = total / 16

	// ***** store total in memory[x-9]
	
	SUB AC, R4, R7		// x - 9
	LDMAR AC
	STORE R6			// store total in memory[x-9]	

	// ***** increment i

	INC R3				// i = i + 1
	JMP @LOOP2

(LOOP2END)	
	
	// increment j

	INC R2				// j = j + 1
	JMP @LOOP1

(LOOP1END)

// ********************************************** //
// ************ sampling the image ************** //
// ********************************************** // 
	
	LOADI R1, 0			// k = 0
	LOADI R2, 4			// J/I = 4

	LOADI R3, 0			// j = 0

(LOOP3)
	SUB AC, R2, R3		// J -j 
	JLE @END		// jump if AC <= 0

	LOADI R4, 0			// i = 0

(LOOP4)
	SUB AC, R2, R4		// I - i
	JLE @LOOP4END		// jump if AC <= 0

	// ***** calculating y = 16*j + 2*i
	// ***** store the result in R5

	LOADI R5, 4			// no of bits to shift left i.e. multiply by 16
	MUL R5, R3, R5		// j * 16
	LDACI 1				// no of bits to shift left i.e. multiply by 2
	MUL AC, R4, AC		// i * 2
	ADD R5, R5, AC		// y = j * 16 + i * 2

	// ***** fetching memory[y] to AC

	LDMAR R5
	LOAD AC				// AC = memory[y]

	// ***** store memory[y] in memory[k]

	LDMAR R1			// k is stored in R1
	STORE AC			// memory[k] = memory[y]

	// ***** increment k

	INC R1				// k = k + 1

	// ***** increment i

	INC R4				// i = i + 1
	JMP @LOOP4

(LOOP4END)
	
	// ***** increment j

	INC R3				// j = j + 1
	JMP @LOOP3



(END)
	NOP
	JMP @END