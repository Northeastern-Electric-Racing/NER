from .decode import *

# Defines the supported CAN IDs in our system with their associated name and processing class
# Import this dictionary to get access to processing any message (with the values() method)
DECODE_IDS = {
    "1": {
        "device": "accumulator status",
        "decode_class": Decode0X001,
    },
    "2": {
        "device": "BMS status",
        "decode_class": Decode0X002,
    },
    "3": {
        "device": "shutdown control",
        "decode_class": Decode0X003,
    },
    "4": {
        "device": "cell data",
        "decode_class": Decode0X004,
    },
    "160": {
        "device": "temperatures (igbt modules, gate driver board)",
        "decode_class": Decode0X0A0,
    },
    "161": {
        "device": "temperatures (control board)",
        "decode_class": Decode0X0A1,
    },
    "162": {
        "device": "temperatures (motor)",
        "decode_class": Decode0X0A2,
    },
    "165": {
        "device": "motor position information",
        "decode_class": Decode0X0A5,
    },
    "166": {
        "device": "current information",
        "decode_class": Decode0X0A6,
    },
    "167": {
        "device": "voltage information",
        "decode_class": Decode0X0A7,
    },
    "170": {
        "device": "internal states",
        "decode_class": Decode0X0AA,
    },
    "171": {
        "device": "fault codes",
        "decode_class": Decode0X0AB,
    },
    "172": {
        "device": "torque and timer",
        "decode_class": Decode0X0AC,
    },
    "514": {
        "device": "current limits",
        "decode_class": Decode0X202,
    }
}
