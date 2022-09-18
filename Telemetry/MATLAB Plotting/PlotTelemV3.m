clear;
close all;

motor2roadConst = 0.01842102362; % Divide by diff ratio, multiply by wheel circumfrence, convert meters per min to MPH

dataIDs = [31,31,2,60,37,1,10,11,62,63,64]; % CAN message ID
dataMulti = [-1,-motor2roadConst,0.1,1,1,0.1,1,1,1,1,1]; % Data multiplier
dataOffset = [0,0,0,0,0,0,0,0,0,0,0]; % Data +/- offset
dataName = ["Motor Speed", "Wheel Speed", "BMS Pack Current", "Discharge Current Limit", "MC DC Current", "Pack Inst Voltage", "Average Temp", "Motor Temperature", "Accel X", "Accel Y", "Accel Z"];
plotOrder = {'Motor Speed', 'Wheel Speed', {'BMS Pack Current', 'Discharge Current Limit', 'MC DC Current'}, 'Pack Inst Voltage', {'Average Temp', 'Motor Temperature'}, {'Accel X', 'Accel Y', 'Accel Z'}};

dataQty = length(dataIDs);

disp('Importing Data');
T = readtable('091422_2029.csv', 'Delimiter', ','); % SELECT FILE HERE
tv = [datetime(2022,9,14,20,7,0):milliseconds(50):datetime(2022,9,14,20,29,0)]; % SELECT TIME RANGE HERE
h = height(T);
cell = T{:,2};
disp('Import Complete');

for i = 1:dataQty
	fprintf('Processing data selection %2u of %2u\n', i, dataQty);
	ind = cell == dataIDs(i); % Find data we want
	dataT = T(ind,:); % Keep only data we want
	dataT = timetable(datetime(table2array(dataT(:,1)), 'InputFormat', 'yyyy-MM-dd''T''HH:mm:ss.SSS''Z'),(dataT{:,4} * dataMulti(i) + dataOffset(i))); % Create a timetable and convert strings to datetimes
	if i > 1 % Typically, join
		procT = synchronize(procT, dataT, tv, 'previous');
	else % If it's the first (or only), just define the new table
		procT = dataT;
	end
end
procT.Properties.VariableNames = dataName;

% TEMP Patch for BMS current
temp = (table2array(procT(:,3)) > 1000);
procT{temp,3} = -99;

disp('Generating Plot!');
s = stackedplot(procT, plotOrder);