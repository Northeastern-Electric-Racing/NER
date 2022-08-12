# Telemetry Python Scripts
Currently only the getCSV.py script is working, which converts the files in the logs directory to a csv file with the processed data. To use, run the following command:
- python getCSV.py -name="fileName.csv" -id=00 -data="Data Name" -n=0
- The flags in the command are optional, but do the following:
  - '-name="fileName.csv"' sets the output csv filename (default is output.txt)
  - '-id=00' sets an id to filter the data on, which must be in decimal (default is no filter to show all data)
  - '-data="Data Name"' sets a filter on the data from a specific id by the name in the description column (default is no filter to show all data from an id)
  - '-n=0' sets the format of the timestamp (0 for default string version or 1 for a numeric value)
- To graph a specific data value, filter by the correct -id and -data parameters and use a value of 1 for -n, then graphing the data vs timestamp columns in excel should be straightforward
The `drafts` directory contains unfinished scripts, with development moved to the Telemetry Hub

### Input/Output Directories
The scripts process all of the data in the /log_active directory and send an output to the /outputs directory. 
- Place old logs that we don't want to process but still want to keep in the /log_legacy directory

### TODO
- Add more behavior to graphing scripts
- Add full command line to control behavior through one main
