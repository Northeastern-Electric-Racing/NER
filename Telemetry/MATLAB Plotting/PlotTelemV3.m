clear;
close all;

motor2roadConst = 0.01842102362; % Divide by diff ratio, multiply by wheel circumfrence, convert meters per min to MPH

dataIDs = [45,45,2,89,51,1,10,28,91,92,93,98,82]; % CAN message ID
dataMulti = [1,motor2roadConst,0.1,1,1,0.1,1,1,0.0029,0.0029,0.0029,-1,1]; % Data multiplier
dataOffset = [0,0,0,0,0,0,0,0,0.061,0.1769,-0.017,0,0]; % Data +/- offset
dataName = ["Motor Speed", "Wheel Speed", "BMS Pack Current", "Discharge Current Limit", "MC DC Current", "Pack Inst Voltage", "Average Temp", "Motor Temperature", "Accel X", "Accel Y", "Accel Z", "GLV Current", "Torque Command"];
plotOrder = {'Motor Speed', 'Wheel Speed', {'BMS Pack Current', 'Discharge Current Limit', 'MC DC Current'}, 'Pack Inst Voltage', {'Average Temp', 'Motor Temperature'}, {'Accel X', 'Accel Y', 'Accel Z'}, 'GLV Current', 'Torque Command'};
filterData = [1 2 8 9 10 11 12]; % Indeces 

dataQty = length(dataIDs);

disp('Importing Data');
T = readtable('100222.csv', 'Delimiter', ','); % SELECT FILE HERE
tv = [datetime(2022,10,2,19,29,0):milliseconds(5):datetime(2022,10,2,19,32,0)]; % SELECT TIME RANGE HERE
h = height(T);
cell = T{:,2};
disp('Import Complete');

for i = 1:dataQty
	fprintf('Processing data selection %2u of %2u\n', i, dataQty);
	ind = cell == dataIDs(i); % Find data we want
	dataT = T(ind,:); % Keep only data we want
	dataT = timetable(datetime(table2array(dataT(:,1)), 'InputFormat', 'yyyy-MM-dd''T''HH:mm:ss.SSS''Z'),(dataT{:,4} * dataMulti(i) + dataOffset(i))); % Create a timetable and convert strings to datetimes
	dataT = unique(dataT);
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

smoothT(:,[1 2 8 9 10 11 12]) = smoothdata(procT(:,[1 2 8 9 10 11 12]),'movmean',duration(0,0,0,350));

disp('Generating Plot!');
s = stackedplot(smoothT, plotOrder);