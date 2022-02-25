from os import listdir
import decode
from db import create_entry, insert_entries

LOGS = "./logs/"
DECODE_IDS = {
    "0x00": {
        "device": "acceleration",
        "decode_class": decode.DecodeX01,
    },
    "0x01": {
        "device": "vehicle speed",
        "decode_class": decode.DecodeX01,
    },
    "0x02": {
        "device": "brake fluid pressue",
        "decode_class": decode.DecodeX01,
    },
    "0x03": {
        "device": "tire pressure",
        "decode_class": decode.DecodeX01,
    },
    "0x04": {
        "device": "gps",
        "decode_class": decode.DecodeX01,
    },
    "0x05": {
        "device": "battery",
        "decode_class": decode.DecodeX01,
    },
    "0x06": {
        "device": "wheel speed",
        "decode_class": decode.DecodeX01,
    },
    "0x07": {
        "device": "temperature",
        "decode_class": decode.DecodeX01,
    },
    "0x08": {
        "device": "a",
        "decode_class": decode.DecodeX01,
    },
    "0x09": {
        "device": "b",
        "decode_class": decode.DecodeX01,
    },
    "0x10": {
        "device": "c",
        "decode_class": decode.DecodeX01,
    },
    "0x11": {
        "device": "d",
        "decode_class": decode.DecodeX01,
    },
    "0x12": {
        "device": "e",
        "decode_class": decode.DecodeX01,
    },
    "0x13": {
        "device": "f",
        "decode_class": decode.DecodeX01,
    },
    "0x14": {
        "device": "g",
        "decode_class": decode.DecodeX01,
    },
    "0x15": {
        "device": "h",
        "decode_class": decode.DecodeX01,
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

                decode = DECODE_IDS[can_id]["decode_class"](length, data)
                processed_data = decode.parse()

                entry = create_entry(can_id, device, processed_data, timestamp)

                entries.append(entry)

    insert_entries(entries)


if __name__ == "__main__":
    process_data(LOGS)
