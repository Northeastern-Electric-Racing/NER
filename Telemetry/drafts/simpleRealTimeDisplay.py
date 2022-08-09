import matplotlib.pyplot as plt
import matplotlib.animation as animation
from matplotlib import style
import numpy as np
import random
import serial

#initialize serial port
ser = serial.Serial()
ser.port = 'COM3' #Arduino serial port
ser.baudrate = 9600
ser.timeout = 10 #specify timeout when using readline()
ser.open()
if ser.is_open==True:
	print("\nAll right, serial port now open. Configuration:\n")
	print(ser, "\n") #print serial parameters

# Create figure for plotting
fig = plt.figure()
ax = fig.add_subplot(1, 1, 1) # 1 row, 1 axis, in graph position 1 on the figure
xs = [] #store time data here (n)
ys = [] #store potentiometer data here

# This function is called periodically from FuncAnimation
def animate(i, xs, ys):

    #Aquire and parse data from serial port
    line=ser.readline()
    data_entry_list = line.split(b',')

    potValue = int(data_entry_list[0]) # data piece for y-axis
    time = int(data_entry_list[1])     # time for x-axis
	
	# Add x and y to lists
    xs.append(time)
    ys.append(potValue)

    # Limit x and y lists to 20 items
    #xs = xs[-20:]
    #ys = ys[-20:]

    # Draw x and y lists
    ax.clear()
    ax.plot(xs, ys, label="Pot Value")

    # Format plot
    plt.xticks(rotation=45, ha='right')
    plt.subplots_adjust(bottom=0.30)
    plt.title('Real time data view')
    plt.ylabel('Potentiometer Values')
    plt.legend()

    # [xmin, xmax, ymin, ymax]
    plt.axis([1, None, 0, 1024]) #Use for arbitrary number of trials
    #plt.axis([1, 100, 0, 1.1]) #Use for 100 trial demo

# Set up plot to call animate() function periodically
ani = animation.FuncAnimation(fig, animate, fargs=(xs, ys), interval=100)
plt.show()