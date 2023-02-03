% Plot battery temps
page = "Fans only";
data = readtable("CoolingTestingData.xlsx","Sheet",page,"VariableNamingRule","Preserve","ReadVariableNames",true);
data = data(3:height(data),:);
count = 1;
for i = 1:11:height(data)
    FansOnlycellVoltages(count,1) = str2double(data{i,1});
    FansOnlycellVoltages(count,2:18) = data{i,2:18};
    FansOnlycellTemps(count,1) = str2double(data{i+8,1});
    FansOnlycellTemps(count,2:22) = data{i+8,2:22};
    FansOnlyavgTemp(count,1) = sum(FansOnlycellTemps(count,1:22))/22;
    FansOnlyPackVoltage(count,1) = data{i+2,2};
    FansOnlyminVoltage(count,1) = data{i+4,2};
    FansOnlymaxVoltage(count,1) = data{i+3,2};
    FansOnlycellDelta(count,1) = data{i+5,2};
    count = count+1;
end

%% PLOTS
time = 0:3:3*1088;
% time = 0:3:3*717;
% time = 0:3:3*1320;
t=tiledlayout(4,1);
title(t, strcat("Cooling Test: ",page))
% Voltages
nexttile(t)
for i = 1:width(FansOnlycellVoltages)
    name = strcat("Cell",string(i));
    plot(time,FansOnlycellVoltages(:,i),"HandleVisibility","Off")
    hold on
end
plot(time,FansOnlyminVoltage,"DisplayName","Minimum Voltage","LineWidth",1)
hold on
plot(time,FansOnlymaxVoltage,'DisplayName',"Maximum Voltage","LineWidth",1)
legend
xlabel("Time (sec)")
ylabel("Voltage (V)")
title("Cell Voltages")
xticks(0:300:3300)
xlim([0 3600])
ylim([2.6 4.2])
grid on
% Delta
nexttile(t)
plot(time,FansOnlycellDelta)
xlabel("Time (sec)")
ylabel("Voltage (V)")
title("Cell Delta")
xticks(0:300:3300)
xlim([0 3600])
ylim([0 1])
grid on

% Pack Voltage
nexttile(t)
plot(time,FansOnlyPackVoltage,"DisplayName","Pack Voltage")
xlabel("Time (sec)")
ylabel("Voltage (V)")
title("Pack Voltage")
xticks(0:300:3300)
xlim([0 3600])
ylim([58 75])
grid on

% Temps
nexttile(t)
for i = 1:width(FansOnlycellTemps)
    name = strcat("Cell",string(i));
    plot(time,FansOnlycellTemps(:,i),"HandleVisibility","off")
    hold on
end
hold on
plot(time,FansOnlyavgTemp,"DisplayName","Average Temp","LineWidth",1)
xlabel("Time (sec)")
ylabel("Temperature (C)")
title("Cell Temperatures")
xticks(0:300:3300)
xlim([0 3600])
ylim([24 ])
legend
grid on
