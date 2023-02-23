% CAR PARAMS
v_s = 302.4; % Max pack voltage
r_d = 3250; % Discharge resistance
c_ts = 440E-6; % TS bus capacitance (mostly the MC)

% CALC SETTINGS
v_safe = 30;

% Initialize timescale
t = [0:0.0001:7];
RC = r_d * c_ts; % RC constant

% Bus voltage
v = v_s * exp(-t/RC);
subplot(3,1,1);
plot(t, v, 'LineWidth', 2.0);
title('Voltage (Vdc) vs Time (s)');
xlabel('Time (s)');
ylabel('Voltage (Vdc)');
% Find discharge complete
x = 1;
while(v(x) > v_safe)
	x = x + 1;
end
yline(v_safe,'-','Threshold', 'LineWidth', 1.5);
xline(t(x), 'LineWidth', 1.5);
fprintf('Discharge time (%.2f): %.2f seconds\n', v_safe, t(x));

% Current
i = v / r_d;
subplot(3,1,2);
plot(t, i, 'LineWidth', 2.0);
title('Current (Idc) vs Time (s)');
xlabel('Time (s)');
ylabel('Current (Idc)');
% Find average current
i_avg = mean(i);
yline(i_avg,'-','Average', 'LineWidth', 1.5);
fprintf('Discharge current (average): %.3f A\n', i_avg);

% Power
p = i.^2 * r_d;
subplot(3,1,3);
plot(t, p, 'LineWidth', 2.0);
title('Power (W) vs Time (s)');
xlabel('Time (s)');
ylabel('Power (W)');
% Find average power
p_avg = mean(p);
yline(p_avg,'-','Average', 'LineWidth', 1.5);
fprintf('Discharge power (average): %.2f W\n', p_avg);
fprintf('Discharge power (peak): %.2f W\n', p(1));
fprintf('Discharge energy: %.2f J\n', 0.5 * c_ts * v_s ^ 2);
