from os import listdir
from sys import path
path.append('../data_processing')
from decode_ids import DECODE_IDS, DATA_IDS
from utils import process_data_bytes
from db import create_entry, insert_entries

LOGS = "../logs_active/"


def process_data_influx(log_path):
    entries = []

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

                device = DATA_IDS[DECODE_IDS[can_id]]["device"]

                # Decode the data bytes of the CAN message
                decode = DATA_IDS[DECODE_IDS[can_id]]["decode_class"](data)
                processed_data = decode.values()

                entry = create_entry(can_id, device, processed_data, timestamp)

                entries.append(entry)

        insert_entries(entries)
        entries = []


if __name__ == "__main__":
    process_data_influx(LOGS)
