T = readtable('cellvoltages_2022-05-25-13-53-13_CHARGING.csv', 'Delimiter', ',');

time = [1:1:height(T)];

hold on
for i = [16:1:87]
	plot(time,T{:,i});
end
