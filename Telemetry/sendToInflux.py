from os import listdir
from data_processing import decode
from data_processing.db import create_entry, insert_entries

LOGS = "./logs/"
DECODE_IDS = {
    "0x0A0": {
        "device": "temperatures (igbt modules, gate driver board)",
        "decode_class": decode.Decode0X0A0,
    },
    "0x0A1": {
        "device": "temperatures (control board)",
        "decode_class": decode.Decode0X0A1,
    },
    "0x0A2": {
        "device": "temperatures (motor)",
        "decode_class": decode.Decode0X0A2,
    },
    "0x0A5": {
        "device": "motor position information",
        "decode_class": decode.Decode0X0A5,
    },
    "0x0A6": {
        "device": "current information",
        "decode_class": decode.Decode0X0A6,
    },
    "0x0A7": {
        "device": "voltage information",
        "decode_class": decode.Decode0X0A7,
    },
    "0x0AA": {
        "device": "internal states",
        "decode_class": decode.Decode0X0AA,
    },
    "0x0AB": {
        "device": "fault codes",
        "decode_class": decode.Decode0X0AB,
    },
    "0x0AC": {
        "device": "torque and timer",
        "decode_class": decode.Decode0X0AC,
    },
}


def process_data(log_path):
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

                decode = DECODE_IDS[can_id]["decode_class"](data)
                processed_data = decode.values()

                entry = create_entry(can_id, device, processed_data, timestamp)

                entries.append(entry)

    insert_entries(entries)


if __name__ == "__main__":
    process_data(LOGS)
