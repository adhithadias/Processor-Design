import cv2
import numpy as np
import time 
from PIL import Image

image = cv2.imread('lena-256x256.jpg')
image = cv2.cvtColor(image, cv2.COLOR_RGB2GRAY)

kernel = [ [1,2,1], [2,4,2], [1,2,1]]

memory = []

for x in range(0, 256):
	for y in range(0, 256):
		memory.append(image[x][y])

#print memory

for j in range(1, 254+1):
	for i in range(1, 254+1):

		x = j*256 + i

		total = 0

		total += memory[x] * 4;
		total += memory[x-1] * 2;
		total += memory[x+1] * 2;
		total += memory[x+256] * 2;
		total += memory[x-256] * 2;
		total += memory[x+257];
		total += memory[x+255];
		total += memory[x-257];
		total += memory[x-255];

		total = total / 16

		#print x - 9
		memory[x-257] = total

count = 0 
result = ''
for i in image:
	result += 'memory[' + str(count) + '] = ' + str(i) + ';\n'
	count += 1

#print result

print 'Memory after gaussian filtered'

#for m in memory:
	#print m

# sampling the gaussian filtered image

k = 0

for j in range(0, 127+1):
	for i in range(0, 127+1):

		y = 2*256*j + 2*i

		memory[k] = memory[y]

		k = k + 1

print 'Memory after sampled'

for m in memory:
	print m

p = 128
result = np.zeros(shape=(p, p))
k = 0

for x in range(0, p):
	for y in range(0, p):
		result[x][y] = memory[k]
		k = k + 1

print result[0][0]

result = np.array(result, dtype = np.uint8)

cv2.imshow('Original image', image)
cv2.imshow('Downsmpled image', result)
cv2.waitKey(0)
