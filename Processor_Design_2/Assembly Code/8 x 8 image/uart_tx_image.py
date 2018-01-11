import serial
import time 

delay = 1000 # micro seconds

s = serial.Serial('COM3', 115200);



image = [ [123, 89, 67, 94, 34, 43, 120,134],
		 [95, 56, 220, 144, 96, 43, 120, 134],
		 [123, 89, 67,94,34,43,120,134],
		 [123, 89, 67,94,34,43,120,134],
		 [123, 89, 67,94,34,43,120,134],
		 [123, 89, 67,94,34,43,120,134],
		 [123, 89, 67,94,34,43,120,134],
		 [123, 89, 67,94,34,43,120,134] ]

print 'Sending data...'

L = 8
IMAGE_LENGTH = L*L

t1 = time.time()

for x in range(0, L):
	for y in range(0, L):
		s.write(bytearray([image[x][y]]))
		#time.sleep(0.0001)

t = time.time() - t1

print 'Done sending data.'
print 'Elapsed time ' + str(t) + ' s'
print 'Waiting for data...'

rx_count = 0

while(1):
	raw = s.read()	
	print ord(raw),

	rx_count = rx_count + 1
	if rx_count == IMAGE_LENGTH:
		break

print '\nDone receiving.'
