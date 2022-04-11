from os import listdir
import sys
import csv
from data_processing.decode_ids import DECODE_IDS
from data_processing.utils import getDoubleTime, process_data_bytes
import matplotlib.pyplot as plt

LOGS = "./logs/"


def process_data(log_path, id_filter, filter_param):
    values = [] # array of lists of form [timestamp, description, value]

    for file_name in listdir(log_path):
        with open(log_path + file_name) as file:
            for line in file:
                info = line.strip().split(" ")

                # Get the individual fields for each message
                timestamp, can_id, length, data = (
                    info[0],
                    info[1],
                    info[2],
                    process_data_bytes(info[3:][0]),
                )

                # Filter by id
                if can_id not in DECODE_IDS:
                    continue
                if id_filter != 0 and can_id != id_filter:
                    continue

                # Decode the data bytes of the CAN message
                decode = DECODE_IDS[can_id]["decode_class"](data)
                processed_data = decode.values()

                # Add processed data into final list
                for value in processed_data:
                    # Filter by data desciption if listed
                    if filter_param != "" and filter_param != value:
                        continue
                    values.append([timestamp, can_id, value, processed_data[value]])
    
    x = []
    y = []
    for value in values:
        new_time = timeparse(value[0])
        x.append(new_time)
        y.append(value[3])

    plot_data(x, y)

def plot_data(xs,ys):
    # Create figure for plotting
    fig = plt.figure()
    ax = fig.add_subplot(1, 1, 1) # 1 row, 1 axis, in graph position 1 on the figure
    xs = [] #store time data here (n)
    ys = [] #store potentiometer data here
    ax.plot(xs, ys, label="Pot Value")
    plt.title('Real time data view')
    plt.ylabel('Potentiometer Values')
    plt.legend()
    plt.show()

def timeparse(arg):
    t = arg
    hours = t[11:13]
    minutes = t[14:16]
    seconds = t[17:19]
    millis = t[20:23]
    total = 0.001 * int(millis) + int(seconds) + 60 * int(minutes) + 3600 * int(hours)
    return total

if __name__ == "__main__":
    filterId = 0
    filterParam = ""

    args = sys.argv[1:]

    for arg in args:
        value_pair = arg.split("=")

        if value_pair[0] == "-id":
            filterId = value_pair[1]
        elif value_pair[0] == "-data":
            filterParam = value_pair[1]

    process_data(LOGS, filterId, filterParam) 

    print("Data filtered by id: " + str(filterId))
    print("Data filtered by parameter: " + filterParam)