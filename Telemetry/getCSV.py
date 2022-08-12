from os import listdir
from sys import path, argv

path.append("./data_processing")
import csv
from decode_ids import DECODE_IDS, DATA_IDS
from utils import getDoubleTime, process_data_bytes

LOGS = "./logs_active/"
OUTPUTS = "./outputs/"

# Process the raw logged data from the car. Input parameters are:
#   * log_path         - path to the directory of all the SD log files to read from
#   * output_file_name - name for the csv file to output
#   * id_filter        - id to filter by (if 0 then use all ids)
#   * filter_param     - specific piece of data to filter by inside an id
#   * time_format      - 0 means string time, 1 means epoch time (seconds since 1970, in double format)
def process_data_csv(log_path, output_file_name, id_filter, filter_param, time_format):
    values = []  # array of lists of form [timestamp, description, value]

    for file_name in listdir(log_path):
        with open(log_path + file_name) as file:
            line_count = 0
            for line in file:
                line_count += 1
                info = line.strip().split(" ")

                try:
                    # Get the individual fields for each message
                    timestamp, can_id, length, data = (
                        info[0],
                        info[1],
                        info[2],
                        process_data_bytes(info[3:][0]),
                    )
                except:
                    print("Bad line structure: file - ", file_name, ", line - ", line_count)

                # Filter by id
                if can_id not in DECODE_IDS:
                    continue
                if id_filter != 0 and can_id != id_filter:
                    continue

                # Decode the data bytes of the CAN message
                decode = DATA_IDS[DECODE_IDS[can_id]]["decode_class"](data)
                try:
                    processed_data = decode.values()
                except:
                    print("Bad line data: file - ", file_name, ", line - ", line_count)

                # Get correct time value (numeric or string)
                if time_format == 1:
                    timestamp = getDoubleTime(timestamp)

                # Add processed data into final list
                for value in processed_data:
                    # Filter by data desciption if listed
                    if filter_param != "" and filter_param != value:
                        continue
                    values.append([timestamp, can_id, value, processed_data[value]])
        

    header = ["time", "message_id", "description", "value"]
    with open(OUTPUTS + output_file_name, "w", encoding="UTF8", newline="") as f:
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

    args = argv[1:]

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

    process_data_csv(LOGS, outputName, filterId, filterParam, int(useNumericTime))

    print("Data filtered by id: " + str(filterId))
    print("Data filtered by parameter: " + filterParam)
    print("Filtered data written to " + outputName)
