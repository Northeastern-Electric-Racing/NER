# from digi.xbee.devices import XBeeDevice

# PORT = "COM7"
# BAUD_RATE = 9600


# def main():
#     device = XBeeDevice(PORT, BAUD_RATE)

#     try:
#         device.open()

#         network = device.get_network()
#         coordinator = network.discover_device("Coordinator")
        
#         if coordinator is None:
#             print("Could not find the coordinator node")
#             exit(1)
        
#         print("Sending data to coordinator")

#         device.send_data_async(coordinator, "Hello!")

#         print("Successfully sent data")
#     finally:
#         if device is not None and device.is_open():
#             device.close()


# if __name__ == '__main__':
#     main()


from serial import Serial
import time
from sys import path, argv

PORT = "COM7"
BAUD_RATE = 115200

def main(message, port):
    #initialize serial port
    ser = Serial()
    ser.port = port
    ser.baudrate = BAUD_RATE
    ser.timeout = 10 #specify timeout when using readline()
    ser.open()

    if ser.is_open==True:
        print("\nSerial port now open. Configuration:\n")
        print(ser, "\n") #print serial parameters

    lasttime = time.time()

    while(True):
        if ser.in_waiting > 0:
            word = ser.read()
            print(word)
        if time.time() - lasttime > 2:
            print("Message sent")
            ser.write(message.encode('utf-8'))
            lasttime = time.time()
    
    
    ser.close()
        


if __name__ == '__main__':
    args = argv[1:]

    print(args[0])
    print(args[1])
    main(args[0], args[1])