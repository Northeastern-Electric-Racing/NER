# Telemetry Python Scripts
Currently only the getCSV.py script is working, which converts the files in the logs directory to a csv file with the processed data. To use, run the following command:
- python getCSV.py -name="fileName.csv" -id=00 -data="Data Name" -n=0
- The flags in the command are optional, but do the following:
  - '-name="fileName.csv"' sets the output csv filename (default is output.txt)
  - '-id=00' sets an id to filter the data on, which must be in decimal (default is no filter to show all data)
  - '-data="Data Name"' sets a filter on the data from a specific id by the name in the description column (default is no filter to show all data from an id)
  - '-n=0' sets the format of the timestamp (0 for default string version or 1 for a numeric value)

## TODO
- Update influx scripts using changes from csv version
- Add graphical support
- Enhance command line to allow different input and output formats
