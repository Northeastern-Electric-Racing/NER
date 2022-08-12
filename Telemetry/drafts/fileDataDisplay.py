from os import listdir
from sys import path, argv

path.append("../data_processing")
from decode_ids import DECODE_IDS, DATA_IDS
from utils import getDoubleTime, process_data_bytes
import matplotlib.pyplot as plt

LOGS = "../logs_active/"

# Negate the rpm input and perform calcs to get mph
def rpmToSpeed(speed):
    return (-speed) * 0.018421


# Process the data using a double timestamp and the requested filters for the data field
def process_file_data(log_path, id_filter, id_filter1, filter_param, filter_param1, useSeperatePlot):
    values = []  # array of lists of form [timestamp, description, value]
    values1 = []

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
                if id_filter != can_id and id_filter1 != can_id:
                    continue

                # Decode the data bytes of the CAN message
                decode = DATA_IDS[DECODE_IDS[can_id]]["decode_class"](data)
                processed_data = decode.values()

                timestamp = getDoubleTime(timestamp)

                # Add processed data into final list
                for value in processed_data:
                    # Filter by data desciption if listed
                    if can_id == filterId and filter_param == value:
                        values.append([timestamp, can_id, value, rpmToSpeed(processed_data[value])])
                    if can_id == filterId1 and filter_param1 == value:
                        values1.append([timestamp, can_id, value, -processed_data[value]])

    x = [value[0] for value in values]
    y = [value[3] for value in values]
    x1 = [value[0] for value in values1]
    y1 = [value[3] for value in values1]

    if filter_param1 == "":
        plot_data(x,y,filter_param)
    elif useSeperatePlot:
        plot_2sets_seperate(x,x1,y,y1,filter_param,filter_param1)
    else:
        plot_2sets_data(x,x1,y,y1,filter_param,filter_param1)


# Plots the filtered data
def plot_data(xs, ys, ylabel):
    plt.figure()
    plt.plot(xs,ys)
    plt.title('Post Run Data')
    plt.ylabel(ylabel)
    plt.xlabel('Time (sec)')
    # plt.grid()
    plt.legend()
    plt.show()

# Plots two sets of data to compare 
def plot_2sets_data(x1,x2,y1,y2,y1label,y2label):
   plt.figure()
   plt.plot(x1, y1, label=y1label)
   plt.plot(x2, y2, ls = ':', label=y2label)
   plt.title('Post Run Data')
   plt.ylabel('Double Plot')
   plt.xlabel('Time (sec)')
   plt.grid()
   plt.legend()
   plt.show()

def plot_2sets_seperate(x1,x2,y1,y2,y1label,y2label):  
    fig, ax = plt.subplots(nrows=2, ncols=1)
    ax[0].plot(x1, y1, color='r', label=y1label)
    ax[0].legend()
    ax[1].plot(x2, y2, color='green', label=y2label)
    ax[1].legend()
    plt.suptitle(y1label + " and " + y2label, fontweight='bold')
    plt.tight_layout()
    plt.xlabel('Time (sec)')
    plt.show()

# Plots a histogram of y values
def plot_histo(ys,ylabel):
   plt.figure()
   plt.hist(ys)
   plt.title('Post Run Data')
   plt.ylabel(ylabel)
   plt.grid()
   plt.legend()
   plt.show()

# Plots a boxplot of y values
def plot_boxplot(ys,ylabel):
   plt.figure()
   plt.boxplot(ys)
   plt.title('Post Run Data')
   plt.ylabel(ylabel)
   plt.grid()
   plt.legend()
   plt.show()

# Plots a step plot
def plot_step(xs,ys,ylabel):
   plt.figure()
   plt.step(xs,ys)
   plt.title('Post Run Data')
   plt.ylabel(ylabel)
   plt.xlabel('Time (sec)')
   plt.grid()
   plt.legend()
   plt.show()



if __name__ == "__main__":
    filterId = 0
    filterId1 = 0
    filterParam = ""
    filterParam1 = ""
    seperatePlot = True

    args = argv[1:]

    for arg in args:
        value_pair = arg.split("=")

        if value_pair[0] == "-id":
            filterId = value_pair[1]
        elif value_pair[0] == "-id1":
            filterId1 = value_pair[1]
        elif value_pair[0] == "-data":
            filterParam = value_pair[1]
        elif value_pair[0] == "-data1":
            filterParam1 = value_pair[1]
        elif value_pair[0] == "-samePlot":
            seperatePlot = False

    if filterId == 0 or filterParam == "":
        print("Invalid data filters") 
    else:
        process_file_data(LOGS, filterId, filterId1, filterParam, filterParam1, seperatePlot)
        print("Data filtered by id: " + str(filterId))
        print("Data filtered by parameter: " + filterParam)
        print("Data filtered by parameter1: " + filterParam1)
