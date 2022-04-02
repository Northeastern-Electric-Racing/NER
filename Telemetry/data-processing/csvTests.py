from os import listdir
from time import time
import decode
import sys
import csv

LOGS = "./logs/"
OUTPUTS = "./outputs/"
DECODE_IDS = {
    "160": {
        "device": "temperatures (igbt modules, gate driver board)",
        "decode_class": decode.Decode0X0A0,
    },
    "161": {
        "device": "temperatures (control board)",
        "decode_class": decode.Decode0X0A1,
    },
    "162": {
        "device": "temperatures (motor)",
        "decode_class": decode.Decode0X0A2,
    },
    "165": {
        "device": "motor position information",
        "decode_class": decode.Decode0X0A5,
    },
    "166": {
        "device": "current information",
        "decode_class": decode.Decode0X0A6,
    },
    "167": {
        "device": "voltage information",
        "decode_class": decode.Decode0X0A7,
    },
    "170": {
        "device": "internal states",
        "decode_class": decode.Decode0X0AA,
    },
    "171": {
        "device": "fault codes",
        "decode_class": decode.Decode0X0AB,
    },
    "172": {
        "device": "torque and timer",
        "decode_class": decode.Decode0X0AC,
    },
}


def process_data_bytes(data_bytes):
    data_bytes = data_bytes[1:] # remove first [
    data_bytes = data_bytes[:-1] # remove last ]
    seperated = data_bytes.split(",")
    return [int(x) for x in seperated]


def process_data(log_path, output_file_name, id_filter):
    values = [] # array of lists of form [timestamp, description, value]

    for file_name in listdir(log_path):
        with open(log_path + file_name) as file:
            for line in file:
                info = line.strip().split(" ")

                timestamp, can_id, length, data = (
                    info[0],
                    info[1],
                    info[2],
                    process_data_bytes(info[3:][0]),
                )

                if can_id not in DECODE_IDS:
                    continue

                if filterId != 0 and can_id != id_filter:
                    continue

                device = DECODE_IDS[can_id]["device"]

                decode = DECODE_IDS[can_id]["decode_class"](data)
                processed_data = decode.values()

                for value in processed_data:
                    values.append([timestamp, can_id, value, processed_data[value]])
    
    header = ['time', 'message_id', 'description', 'value']
    with open(OUTPUTS + output_file_name, 'w', encoding='UTF8', newline='') as f:
        writer = csv.writer(f)

        # write the header
        writer.writerow(header)

        for data_value in values:
            writer.writerow(data_value)

                



if __name__ == "__main__":
    args = sys.argv[1:]
    outputName = args[0]

    filterId = 0

    if len(args) > 1:
        filterId = args[1]

    process_data(LOGS, outputName, filterId) 

    print("Data filtered by id: " + str(filterId))
    print("Filtered data written to " + outputName)