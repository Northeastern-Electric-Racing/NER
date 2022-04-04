import ./data-processing/decode
import matplotlib.pyplot as plt
from os import listdir


LOGS = "./data-processing/logs/"

def read_data(log_path):
    entries = []

    for file_name in listdir(log_path):
        with open(log_path + file_name) as file:
            for line in file:
                info = line.strip().split(" ")

                timestamp, can_id, length, data = (
                    int(info[0]),
                    info[1],
                    info[2],
                    [int(i) for i in info[3:]],
                )

                device = DECODE_IDS[can_id]["device"]

                decode = DECODE_IDS[can_id]["decode_class"](length, data)
                processed_data = decode.parse()

                entries.append(entry)

def plot_data(x,y):
    # Create figure for plotting
    fig = plt.figure()
    ax = fig.add_subplot(1, 1, 1) # 1 row, 1 axis, in graph position 1 on the figure
    xs = [] #store time data here (n)
    ys = [] #store potentiometer data here
    ax.plot(xs, ys, label="Pot Value")
    plt.title('Real time data view')
    plt.ylabel('Potentiometer Values')
    plt.legend()


if __name__ == "__main__":
    read_data(LOGS)