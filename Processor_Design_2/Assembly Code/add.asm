LDMARI 0	// point to memory location 0
LOAD R1		// load memory[0] to R1
LDMARI 1	// point to memory location 1
LOAD R2		// load memory[1] to R2

ADD AC, R1, R2
LDMARI 3
STORE AC


