class DecodeX01:
    def __init__(self, length, data):
        self.length = length
        self.data = data

    def parse(self):
        return self.data[0]


# Repeat for all classes required to parse message ids.
