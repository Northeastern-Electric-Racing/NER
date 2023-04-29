clear
close all

T = readtable('CoolTerm Capture 2023-04-28 03-53-35.txt', 'Delimiter', ',');

rawHeaders = strcmp('Raw Cell Voltage:', T.Var1);
raw = rawHeaders;

for i = 1:length(rawHeaders)
	if (rawHeaders(i) == 1)
		raw(i:i+8,1) = 1;
		raw(i) = 0;
	end
end

Tdat = T.Var1(raw);

% A = strcat(Tdat,'\t');
A = sprintf('%s\t',Tdat{:});
dat = sscanf(A,'%f\t');
dat = reshape(dat,72,[]).';

time = 1:13000;
time = time.';

hold on
for i = 1:72
	plot(time,dat(1:13000,i));
end

plot(time,dat(1:13000,36),'LineWidth',5);
plot(time,dat(1:13000,19),'LineWidth',5);
% plot(time,dat(1:13000,55),'LineWidth',5);
% plot(time,dat(1:13000,50),'LineWidth',5);
% plot(time,dat(1:13000,69),'LineWidth',5);

deltas = dat(11300,:) - dat(100,:);
deltas = deltas.';
deltas(:,2) = 1:length(deltas);
deltT = array2table(deltas);

