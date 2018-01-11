import cv2
import numpy as np
import serial
import time 

s = serial.Serial('COM3', 250000);


image = cv2.imread('lena-256x256.jpg')
image = cv2.cvtColor(image, cv2.COLOR_RGB2GRAY)

#for x in range(0, 256):
#	for y in range(0, 256):
#		print image[x][y]

#cv2.imshow('image', img)
#cv2.waitKey(0)

print 'Sending data...'

L = 256
p = L/2

t1 = time.time()

for x in range(0, L):
	for y in range(0, L):
		s.write(bytearray([image[x][y]]))
		#time.sleep(0.0001)

t = time.time() - t1

print 'Done!'
print 'Elapsed time ' + str(t) + ' s'
print 'Receiving data...'

rx_count = 0
rx_img = []

t2 = time.time()

while(1):
	raw = s.read()
	rx_img.append(raw)	
	#print ord(raw),

	rx_count = rx_count + 1
	if rx_count == p*p:
		break

t = time.time() - t2
total_t = time.time() - t1

print 'Done!.'
print 'Elapsed time ' + str(t) + ' s'
print 'Total time ' + str(total_t) + ' s'

result = np.zeros(shape=(p, p))
k = 0

for x in range(0, p):
	for y in range(0, p):
		result[x][y] = map(ord, rx_img[k])[0]
		k = k + 1
		#print result[x][y]


result = np.array(result, dtype = np.uint8)

#img2 = image.copy()
#downSamImage = cv2.pyrDown(img2)

# Gaussian filtering the image
kernel = [ [1,2,1], [2,4,2], [1,2,1]]

memory = []

for x in range(0, 256):
	for y in range(0, 256):
		memory.append(int(image[x][y]))

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

		#print x - 257
		memory[x-257] = total

# sampling the gaussian filtered image

k = 0

for j in range(0, 127+1):
	for i in range(0, 127+1):

		y = 2*256*j + 2*i

		memory[k] = memory[y]

		k = k + 1

downSamImage = np.zeros(shape=(p, p))

k = 0

for x in range(0, p):
	for y in range(0, p):
		downSamImage[x][y] = memory[k]
		k = k + 1
		#print result[x][y]


downSamImage = np.array(downSamImage, dtype = np.uint8)

# calculating the error

nonZeroPxCount = 0
maxErrorPx = 0

for x in range(0, p):
	for y in range(0, p):

		absVal = abs(int(downSamImage[x][y]) - int(result[x][y]))
		#print str(downSamImage[x][y]) + ' ' + str(result[x][y]) + ' ' + str(absVal)

		# count non zero pixels
		if absVal != 0:
			nonZeroPxCount += 1

		if absVal > maxErrorPx:
			maxErrorPx = absVal

print 'Non zero pixel count ' + str(nonZeroPxCount)
print 'Maximum error ' + str(maxErrorPx)

# displaying the images
print 'Displaying the images.'

cv2.imshow('Original image', image)
cv2.imshow('Python', downSamImage)
cv2.imshow('FPGA', result)
cv2.waitKey(0)


