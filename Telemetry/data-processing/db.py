import influxdb_client
from influxdb_client.client.write_api import SYNCHRONOUS
from constants import BUCKET, ORG, TOKEN, URL


def connect_db():
    client = influxdb_client.InfluxDBClient(url=URL, token=TOKEN, org=ORG)

    return client


def create_entry(can_id, device, data, timestamp):
    entry = {
        "measurement": can_id,
        "tags": {
            "device": device,
        },
        "fields": {
            "data": data,
            "timestamp": timestamp,
            # TODO: Move the timestamp into the time field of the entry
            # Peter said to use normal datetime format,
            # can get from datetime.datetime for now
        },
    }

    return entry


def insert_entries(entries):
    client = connect_db()
    write_api = client.write_api(write_options=SYNCHRONOUS)

    write_api.write(bucket=BUCKET, org=ORG, record=entries)