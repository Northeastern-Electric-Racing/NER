from os import listdir
import sys
import csv
from data_processing import decode


LOGS = "./logs/"
OUTPUTS = "./outputs/"
DECODE_IDS = {
    "1": {
        "device": "accumulator status",
        "decode_class": decode.Decode0X001,
    },
    "2": {
        "device": "BMS status",
        "decode_class": decode.Decode0X002,
    },
    "3": {
        "device": "shutdown control",
        "decode_class": decode.Decode0X003,
    },
    "4": {
        "device": "cell data",
        "decode_class": decode.Decode0X004,
    },
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
    "514": {
        "device": "current limits",
        "decode_class": decode.Decode0X202,
    }
}


# Gets the time value in seconds of a string time ("YYYY-MM-DDT00:00:00.000Z") 
#   - only uses the hour, minutes, seconds, and milliseconds fields
#   - useful for graphing with time on the x axis in excel
#   - returns a double time in seconds (decimals go to millisecond precision)
def getDoubleTime(string_time):
    hour =   int(string_time[11:13])
    minute = int(string_time[14:16])
    sec =    int(string_time[17:19])
    milli =  int(string_time[20:23])

    return (hour * 3600) + (minute * 60) + (sec * 1) + (milli * 0.001)


# Processes the data bytes of a CAN message to remove brackets and commas
def process_data_bytes(data_bytes):
    data_bytes = data_bytes[1:-1] # remove brackets at start and end
    seperated = data_bytes.split(",")
    return [int(x) for x in seperated]


# Process the raw logged data from the car. Input parameters are:
#   * log_path         - path to the directory of all the SD log files to read from
#   * output_file_name - name for the csv file to output
#   * id_filter        - id to filter by (if 0 then use all ids)
#   * filter_param     - specific piece of data to filter by inside an id
#   * time_format      - 0 means string time, 1 means epoch time (seconds since 1970, in double format)
def process_data(log_path, output_file_name, id_filter, filter_param, time_format):
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
                if filterId != 0 and can_id != id_filter:
                    continue

                # Decode the data bytes of the CAN message
                decode = DECODE_IDS[can_id]["decode_class"](data)
                processed_data = decode.values()

                # Get correct time value (numeric or string)
                if time_format == 1:
                    timestamp = getDoubleTime(timestamp)

                # Add processed data into final list
                for value in processed_data:
                    # Filter by data desciption if listed
                    if filter_param != "" and filter_param != value:
                        continue
                    values.append([timestamp, can_id, value, processed_data[value]])
    
    header = ['time', 'message_id', 'description', 'value']
    with open(OUTPUTS + output_file_name, 'w', encoding='UTF8', newline='') as f:
        writer = csv.writer(f)

        # write the header
        writer.writerow(header)

        for data_value in values:
            writer.writerow(data_value)


# Runs the processing scripts to generate a csv of car-generated data. Run with the format:
#   python getCSV.py [arg list]
# The argument list contains options in the formats below:
#   * '-name="fileName.csv"' : specify the name of the output csv file
#   * '-id=NUM'            : specify an integer id to filter on (0 for no filter)
#   * '-data="Data Name"'  : specify a specific data field to show (description field in csv)
#   * '-n=NUM'             : optional flag to use a number time instead of the default string format (1 for number time)
# Example call to get the pack DCL data with number times:
#   python getCSV.py -name="packDCL.csv" -id=514 -data="Pack DCL" -n=1
if __name__ == "__main__":
    outputName = "output.csv"
    filterId = 0
    filterParam = ""
    useNumericTime = 0

    args = sys.argv[1:]

    for arg in args:
        value_pair = arg.split("=")

        if value_pair[0] == "-name":
            outputName = value_pair[1]
        elif value_pair[0] == "-id":
            filterId = value_pair[1]
        elif value_pair[0] == "-data":
            filterParam = value_pair[1]
        elif value_pair[0] == "-n":
            useNumericTime = value_pair[1]

    process_data(LOGS, outputName, filterId, filterParam, int(useNumericTime)) 

    print("Data filtered by id: " + str(filterId))
    print("Data filtered by parameter: " + filterParam)
    print("Filtered data written to " + outputName)