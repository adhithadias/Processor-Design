# gaussian filter 8 x 8 image

image = [123, 89, 67, 94, 34, 43, 120,134,
		 95, 56, 220, 144, 96, 43, 120, 134,
		 123, 89, 67,94,34,43,120,134,
		 123, 89, 67,94,34,43,120,134,
		 123, 89, 67,94,34,43,120,134,
		 123, 89, 67,94,34,43,120,134,
		 123, 89, 67,94,34,43,120,134,
		 123, 89, 67,94,34,43,120,134 ]

kernel = [ [1,2,1], [2,4,2], [1,2,1]]

memory = image[:]

for j in range(1, 6+1):
	for i in range(1, 6+1):

		x = j*8 + i

		total = 0

		total += image[x] * 4;
		total += image[x-1] * 2;
		total += image[x+1] * 2;
		total += image[x+8] * 2;
		total += image[x-8] * 2;
		total += image[x+9];
		total += image[x+7];
		total += image[x-9];
		total += image[x-7];

		total = total / 16

		#print x - 9
		memory[x-9] = total

count = 0 
result = ''
for i in image:
	result += 'memory[' + str(count) + '] = ' + str(i) + ';\n'
	count += 1

print result

print 'Memory after gaussian filtered'

for m in memory:
	print m

# sampling the gaussian filtered image

k = 0

for j in range(0, 3+1):
	for i in range(0, 3+1):

		y = 2*8*j + 2*i

		memory[k] = memory[y]

		k = k + 1

print 'Memory after sampled'

for m in memory:
	print m