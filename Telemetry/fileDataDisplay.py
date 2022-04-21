from os import listdir
from sys import path, argv
path.append('./data_processing')
from decode_ids import DECODE_IDS, DATA_IDS
from utils import getDoubleTime, process_data_bytes
import matplotlib.pyplot as plt

LOGS = "./logs_active/"

# Process the data using a double timestamp and the requested filters for the data field
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
                decode = DATA_IDS[DECODE_IDS[can_id]]["decode_class"](data)
                processed_data = decode.values()

                timestamp = getDoubleTime(timestamp)

                # Add processed data into final list
                for value in processed_data:
                    # Filter by data desciption if listed
                    if filter_param != "" and filter_param != value:
                        continue
                    values.append([timestamp, can_id, value, processed_data[value]])
    
    x = [value[0] for value in values]
    y = [value[3] for value in values]

    plot_data(x, y, filter_param)

# Plots the filtered data 
def plot_data(xs,ys,ylabel):
    plt.figure()
    plt.plot(xs, ys)
    plt.title('Post Run Data')
    plt.ylabel(ylabel)
    plt.xlabel('Time (sec)')
    plt.legend()
    plt.show()


if __name__ == "__main__":
    filterId = 0
    filterParam = ""

    args = argv[1:]

    for arg in args:
        value_pair = arg.split("=")

        if value_pair[0] == "-id":
            filterId = value_pair[1]
        elif value_pair[0] == "-data":
            filterParam = value_pair[1]

    if filterId == 0 or filterParam == "":
        print("Invalid data filters")
    else:
        process_data(LOGS, filterId, filterParam) 
        print("Data filtered by id: " + str(filterId))
        print("Data filtered by parameter: " + filterParam)