import serial

#initialize serial port
ser = serial.Serial()
ser.port = 'COM3' #Arduino serial port
ser.baudrate = 9600
ser.timeout = 10 #specify timeout when using readline()
ser.open()
if ser.is_open==True:
	print("\nSerial port now open. Configuration:\n")
	print(ser, "\n") #print serial parameters

numBytes = 1

while 1:
    data = ser.readline(numBytes)
    print(data)
    #if ser.in_waiting == numBytes: # read when specified number of bytes have been received  
        

# todo: connect to influx db client

