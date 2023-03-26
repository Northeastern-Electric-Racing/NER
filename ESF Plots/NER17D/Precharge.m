% CAR PARAMS
v_s = 302.4; % Max pack voltage
r_p = 1000; % Precharge resistance
c_ts = 440E-6; % TS bus capacitance (mostly the MC)

% CALC SETTINGS
p_ratio = 0.9;

% Initialize timescale
t = [0:0.0001:3];
RC = r_p * c_ts; % RC constant

% Bus voltage
v = v_s * (1 - exp(-t/RC));
subplot(3,1,1);
plot(t, v, 'LineWidth', 2.0);
title('Voltage (Vdc) vs Time (s)');
xlabel('Time (s)');
ylabel('Voltage (Vdc)');
% Find precharge complete
x = 1;
while(v(x) < p_ratio * v_s)
	x = x + 1;
end
yline(p_ratio * v_s,'-','Threshold', 'LineWidth', 1.5, 'LabelVerticalAlignment', 'bottom');
xline(t(x), 'LineWidth', 1.5);
fprintf('Precharge time (%.2f): %.2f seconds\n', p_ratio * v_s, t(x));

% Current
i = (v_s - v) / r_p;
subplot(3,1,2);
plot(t, i, 'LineWidth', 2.0);
title('Current (Idc) vs Time (s)');
xlabel('Time (s)');
ylabel('Current (Idc)');
% Find average current
i_avg = mean(i);
yline(i_avg,'-','Average', 'LineWidth', 1.5);
fprintf('Precharge current (average): %.3f A\n', i_avg);

% Power
p = i.^2 * r_p;
subplot(3,1,3);
plot(t, p, 'LineWidth', 2.0);
title('Power (W) vs Time (s)');
xlabel('Time (s)');
ylabel('Power (W)');
% Find average power
p_avg = mean(p);
yline(p_avg,'-','Average', 'LineWidth', 1.5);
fprintf('Precharge power (average): %.2f W\n', p_avg);
