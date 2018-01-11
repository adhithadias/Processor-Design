import os 

OPCODE = {	        'NOP'		:'00000', 
	 		'LOAD'		:'00001', 
	  		'STORE'		:'00010',
	  		'MOVE'		:'00011',
	  		'LDMAR'		:'00100',
	  		'LDMARI'	:'00101',
	  		'LOADI'		:'00110',
	  		'LDACI'		:'00111',
	  		'ADD'		:'01000',
	  		'SUB'		:'01001',
	  		'MUL'		:'01010',
	  		'DIV'		:'01011',
	  		'INC'		:'01100',
	  		'DEC'		:'01101',
	  		'NEG'		:'01110',
	  		'NOT'		:'01111',
	  		'AND'		:'10000',
	  		'OR'		:'10001',
	  		'XOR'		:'10010',
	  		'JGT'		:'10011',
	  		'JEQ'		:'10100',
	  		'JGE'		:'10101',
	  		'JLT'		:'10110',
	  		'JNE'		:'10111',
	  		'JLE'		:'11000',
	  		'JMP'		:'11001'}

PREDEF = {	        'AC'		:'000', 
 			'R1'		:'001', 
	  		'R2'		:'010',
	  		'R3'		:'011',
	  		'R4'		:'100',
	  		'R5'		:'101',
	  		'R6'		:'110',
	  		'R7'		:'111'}

def Translate(filename):
	# This function will convert assembly code to machine code
	a_code = []
	m_code = []

	SYMBOL = {}
	SYMBOL_COUNT = 16;

	with open("8x8image_optimized1.asm") as fp:
		for line in fp:
			
			x = line.strip()
			if len(x) > 0:
				if not (x[0] == '/' and x[1] == '/'):
					a_code.append(x);
	
	for x in range(0, len(a_code)):
		if "//" in a_code[x]:
			t = a_code[x].split("//")
			a_code[x] = t[0].strip();

	print a_code

	# replace (xxx)
	for x in range(0, len(a_code)):
		if a_code[x][0] == '(':
			label = a_code[x][1:-1]
			# count the instruction number
			count = 0;
			for x in range(0, len(a_code)):
				if a_code[x][1:-1] == label:
					break
				if not a_code[x][0] == '(':
					count += 1
			SYMBOL.update({label:str(count)})
			a_code[x] = '('

	a_code = filter(lambda x: x is not '(', a_code)

	# split opcode and arguments
	for x in range(0, len(a_code)):
		a_code[x] = a_code[x].replace(',', ' ')	## remove ','
		a_code[x] = a_code[x].split(' ')
		a_code[x] =  [var for var in a_code[x] if var]


	# replace symbols and variable names
	for x in range(0, len(a_code)):
		for y in range(0, len(a_code[x])):
			if a_code[x][y][0] == '@':
				if a_code[x][y][1:] in SYMBOL:
					a_code[x][y] = SYMBOL[a_code[x][y][1:]]

				
	print SYMBOL

	for x in a_code:
		print x	

	# translate assembly code to machine code
	for x in range(0, len(a_code)):
		
		instruction = ''
		opcode = a_code[x][0]

		# no operation instruction
		if opcode == 'NOP':
			instruction = format(0, '024b')

		# I type instructions
		elif opcode == 'LDACI':
			instruction = OPCODE[opcode] + format(int(a_code[x][1]), '019b')

		elif opcode == 'LDMARI':
			instruction = OPCODE[opcode] + format(int(a_code[x][1]), '019b')

		# RI type instructions
		elif opcode == 'LOADI':
			instruction = OPCODE[opcode] + PREDEF[a_code[x][1]] + format(int(a_code[x][2]), '016b')

		# jump instructions
		elif opcode[0] == 'J': # all jump instruction opcode starts with J
			instruction = OPCODE[opcode] + format(int(a_code[x][1]), '019b')
		
		# R type instructions
		# LOAD, STORE, LDMAR, INC, DEC instructions
		elif opcode == 'LOAD' or opcode == 'STORE' or opcode == 'LDMAR' or opcode == 'INC' or opcode == 'DEC':
			instruction = OPCODE[opcode] + PREDEF[a_code[x][1]] + format(0, '016b')

		# RR instructions
		# MOVE, NEG instructions
		elif opcode == 'MOVE' or opcode == 'NEG':
			instruction = OPCODE[opcode] + PREDEF[a_code[x][1]] + PREDEF[a_code[x][2]] + format(0, '013b')
		
		# RRR type instructions
		else:
			instruction = OPCODE[opcode] + PREDEF[a_code[x][1]] + PREDEF[a_code[x][2]] + PREDEF[a_code[x][3]] + format(0, '010b')


		m_code.append(instruction)

	for ins in m_code:
		print ins

	# output machine code to .mcode file
	var_name = 'memory'
	index = 0
	out = ''
	for x in m_code:
		out += var_name + '[' + str(index) + '] = 24\'b' + x + ";\n"
		index += 1
	out = out.strip()

	f = filename.split('.')
	outname = f[0] + ".mcode"

	file = open(outname, 'w')
	file.write(out)
	file.close();


path = os.path.dirname(os.path.realpath(__file__))

for file in os.listdir(path):
    if file.endswith(".asm"):
        Translate(os.path.join(path, file))
