// ********************************************** //
// ******** gaussian filtering the image ******** //
// ********************************************** // 

	LOADI R1, 255			// J,I = 255  

	LOADI R2, 1			// j = 1

(LOOP1)
	SUB AC, R1, R2		// J - j
	JLE @LOOP1END 			// jump to end if AC <= 0

	LOADI R3, 1			// i = 1 

(LOOP2)
	SUB AC, R1, R3		// I - i
	JLE @LOOP2END		// jump to end of loop 2 in AC <= 0

	// ***** calculating x = j * 256 + i 
	// ***** store x in R4 

	LOADI R4, 8			// multiply by 256 = 8 bits shift left
	MUL R4, R2, R4		// j * 256
	ADD R4, R4, R3		// j * 256 + i = x

	// ***** calculating memory[x] * 4
	// ***** store total in R6

	LDMAR R4			// MAR = RAM[x]
	NOP
	LOAD AC				// load RAM[x] to AC

	LOADI R5, 2 		// multiply by 4 = 2 bits shift left
	MUL R6, AC, R5		// R6 = AC << 2 (image(x) * 4)

	// ***** calculating memory[x-1] * 2 +
	// ***** and memory[x+1] * 2
	// ***** store total in R6

	LOADI R5, 1

	SUB AC, R4, R5		// x - 1
	LDMAR AC
	NOP
	LOAD AC				// AC = image(x-1)

	MUL AC, AC, R5		// AC = image(x-1) * 2
	ADD R6, R6, AC		// sum of image(x) * 4 + image(x-1) * 2

	ADD AC, R4, R5		// x + 1
	LDMAR AC
	NOP
	LOAD AC				// AC = image(x+1)

	MUL AC, AC, R5		// AC = image(x+1) * 2
	ADD R6, R6, AC		// sum 

	// ***** calculating memory[x-256] * 2 +
	// ***** and memory[x+256] * 2
	// ***** store total in R6

	LOADI R7, 256

	SUB AC, R4, R7		// x - 256
	LDMAR AC
	NOP
	LOAD AC				// AC = image(x-256)

	MUL AC, AC, R5		// AC = image(x-256) * 2
	ADD R6, R6, AC		// sum 

	ADD AC, R4, R7		// x + 256
	LDMAR AC
	NOP
	LOAD AC				// AC = image(x+256)

	MUL AC, AC, R5		// AC = image(x+256) * 2
	ADD R6, R6, AC		// sum 

	// ***** calculating memory[x-255] +
	// ***** and memory[x+255]
	// ***** store total in R6

	LOADI R7, 255

	SUB AC, R4, R7		// x - 255
	LDMAR AC
	NOP
	LOAD AC				// AC = image(x-255)

	ADD R6, R6, AC		// sum 

	ADD AC, R4, R7		// x + 255
	LDMAR AC
	NOP
	LOAD AC				// AC = image(x+255)

	ADD R6, R6, AC		// sum 

	// ***** calculating memory[x-257] +
	// ***** and memory[x+257]
	// ***** store total in R6

	LOADI R7, 257

	SUB AC, R4, R7		// x - 257
	LDMAR AC
	NOP
	LOAD AC				// AC = image(x-257)

	ADD R6, R6, AC		// sum 

	ADD AC, R4, R7		// x + 257
	LDMAR AC
	NOP
	LOAD AC				// AC = image(x+257)

	ADD R6, R6, AC		// sum 

	// ***** calculating total = total / 16
	// ***** store the result in R6

	LOADI R5, 4			// no of bits to shift right i.e. divide by 16
	DIV R6, R6, R5		// total = total / 16

	// ***** store total in memory[x-257]
	
	SUB AC, R4, R7		// x - 257
	LDMAR AC
	NOP
	STORE R6			// store total in memory[x-257]	

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
	LOADI R2, 128			// J/I = 128

	LOADI R3, 0			// j = 0

(LOOP3)
	SUB AC, R2, R3		// J -j 
	JLE @END		// jump if AC <= 0

	LOADI R4, 0			// i = 0

(LOOP4)
	SUB AC, R2, R4		// I - i
	JLE @LOOP4END		// jump if AC <= 0

	// ***** calculating y = 512*j + 2*i
	// ***** store the result in R5

	LOADI R5, 9			// no of bits to shift left i.e. multiply by 512
	MUL R5, R3, R5		// j * 512
	LDACI 1				// no of bits to shift left i.e. multiply by 2
	MUL AC, R4, AC		// i * 2
	ADD R5, R5, AC		// y = j * 512 + i * 2

	// ***** fetching memory[y] to AC

	LDMAR R5
	NOP
	LOAD AC				// AC = memory[y]

	// ***** store memory[y] in memory[k]

	LDMAR R1			// k is stored in R1
	NOP
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
	FIN

(FINISH)
	NOP
	JMP @FINISH