clear;
close all;

motor2roadConst = 0.01842102362; % Divide by diff ratio, multiply by wheel circumfrence, convert meters per min to MPH

dataIDs = [31,31,2,60,37,1,10,11,9]; % CAN message ID
thinner = [0,0,0,0,0,0,0,1,0];
dataMulti = [-1,-motor2roadConst,0.1,1,1,0.1,1,1,1]; % Data multiplier
dataOffset = [0,0,0,0,0,0,0,0,0]; % Data +/- offset
dataName = ["Motor Speed", "Wheel Speed", "BMS Pack Current", "Discharge Current Limit", "MC DC Current", "Pack Inst Voltage", "Average Temp", "Motor Temperature", "Limit Status"];
plotOrder = {'Motor Speed', 'Wheel Speed', {'BMS Pack Current', 'Discharge Current Limit', 'MC DC Current'}, 'Pack Inst Voltage', {'Average Temp', 'Motor Temperature'}, 'Limit Status'};

dataQty = length(dataIDs);

disp('Importing Data');
T = readtable('091422_2359.csv', 'Delimiter', ','); % SELECT FILE HERE
h = height(T);
cell = T{:,2};
disp('Import Complete');

for i = 1:dataQty
	fprintf('Processing data selection %2u of %2u\n', i, dataQty);
	ind = cell == dataIDs(i); % Find data we want
	if thinner(i)
		ind = ind(5:5:end);
	end
	dataT = T(ind,:); % Keep only data we want
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

range = timerange('2022-09-14 22:31:00', '2022-09-14 23:02:00'); % SELECT TIME RANGE HERE
plotT = procT(range,:); % Keep only time we want

% plotT(:,2:length(dataName)) = fillmissing(plotT(:,2:length(dataName)),'previous'); % Interpolate missing values (this just uses latest value)
for i = 1:dataQty
	fprintf('Filling missing data %2u of %2u\n', i, dataQty);
	plotT{:,i} = fillmissing(plotT{:,i},'previous');
end

% thinning
plotT = plotT(1:10:height(plotT),:);

disp('Generating Plot!');
s = stackedplot(plotT, plotOrder);
