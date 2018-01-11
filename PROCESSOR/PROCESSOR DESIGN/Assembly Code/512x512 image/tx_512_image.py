import cv2
import numpy as np
import serial
import time 

s = serial.Serial('COM13', 250000);


image = cv2.imread('lena.jpg')
image = cv2.cvtColor(image, cv2.COLOR_RGB2GRAY)

#for x in range(0, 256):
#	for y in range(0, 256):
#		print image[x][y]

#cv2.imshow('image', img)
#cv2.waitKey(0)

print 'Sending data...'

L = 512
p = L

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


print 'Displaying the images.'

result = np.array(result, dtype = np.uint8)

cv2.imshow('Original image', image)
cv2.imshow('Downsmpled image', result)
cv2.waitKey(0)