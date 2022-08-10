clear;
close all;

motor2roadConst = 0.01842102362; % Divide by diff ratio, multiply by wheel circumfrence, convert meters per min to MPH

messageIDs = [165,165,1,514,166,1,2,162,192]; % CAN message ID
dataInMessage = [4,4,5,2,4,5,6,4,7]; % How much data is in that message
dataIndex = [2,2,2,1,4,1,5,3,1]; % Index of which data we want out of the message
dataMulti = [-1,-motor2roadConst,0.1,1/256,1,0.1,1,1,1]; % Data multiplier
dataOffset = [0,0,0,0,0,0,0,0,0]; % Data +/- offset
dataName = ["Motor Speed", "Wheel Speed", "BMS Pack Current", "Discharge Current Limit", "MC DC Current", "Pack Inst Voltage", "Average Temp", "Motor Temperature", "Commanded Torque"];
plotOrder = {'Motor Speed', 'Wheel Speed', {'BMS Pack Current', 'Discharge Current Limit', 'MC DC Current'}, 'Pack Inst Voltage', {'Average Temp', 'Motor Temperature'}, 'Commanded Torque'};

dataQty = length(messageIDs);

disp('Importing Data');
T = readtable('output073122.csv', 'Delimiter', ','); % SELECT FILE HERE
h = height(T);
cell = T{:,2};
disp('Import Complete');

for i = 1:dataQty
	fprintf('Processing data selection %2u of %2u\n', i, dataQty);
	ind = cell == messageIDs(i); % Find message we want
	dataT = T(ind,:); % Keep only message we want
	dataH = height(dataT); % How many are there
	ind = dataIndex(i):dataInMessage(i):dataH; % Create array selecting data (since it is always the same order)
	dataT = dataT(ind,:); % Keep only data we want
	dataT = timetable(datetime(table2array(dataT(:,1)), 'InputFormat', 'yyyy-MM-dd''T''HH:mm:ss.SSS''Z'),(dataT{:,4} * dataMulti(i) + dataOffset(i))); % Create a timetable and convert strings to datetimes
	if i > 1 % Typically, join
		procT = outerjoin(procT, dataT);
	else % If it's the first (or only), just define the new table
		procT = dataT;
	end
end
procT.Properties.VariableNames = dataName;

% TEMP Patch
temp = (table2array(procT(:,3)) > 1000);
procT{temp,3} = -99;

range = timerange('2022-07-31 20:05:00', '2022-07-31 20:34:00'); % SELECT TIME RANGE HERE
plotT = procT(range,:); % Keep only time we want

% plotT(:,2:length(dataName)) = fillmissing(plotT(:,2:length(dataName)),'previous'); % Interpolate missing values (this just uses latest value)
for i = 1:dataQty
	fprintf('Filling missing data %2u of %2u\n', i, dataQty);
	plotT{:,i} = fillmissing(plotT{:,i},'previous');
end

s = stackedplot(plotT, plotOrder);
