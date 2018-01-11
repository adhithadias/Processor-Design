// gaussian filtering

for j = 1; j <= 6; j++
	for i = 1; i <= 6; i++
	
		x = j * 8 + i

		total = 0

		total += memory[x] * 4;
		total += memory[x-1] * 2;
		total += memory[x+1] * 2;
		total += memory[x-8] * 2;
		total += memory[x+8] * 2;
		total += memory[x-7];
		total += memory[x+7];
		total += memory[x-9];		
		total += memory[x+9];		

		total = total / 16;

		memory[x-9] = total;

// sampling

k = 0

for j = 0; j <= 3; j++
	for i = 0; i <= 3; i ++

		y = 16 * j + 2 * i

		memory[k] = memory[y]

		k = k + 1