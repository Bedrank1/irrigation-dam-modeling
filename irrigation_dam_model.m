%% Report_1.m  -  Irrigation Dam Model (Q1 - Q6)
clear; clc; close all;

%% Q1) Dam volume, V0 = 270 (Figure 1.1)
figure;
v0 = 270;
x = [0 2 1.2 3.7 8.9 9.7 14.89 15 15 15];
m = {'t=1','t=2','t=3','t=4','t=5','t=6','t=7','t=8','t=9'};
v = v0 + cumsum(x);
v(10:12) = v(9);
t = 1:length(v);
t_fine = linspace(t(1), t(end), 200);
v_smooth = interp1(t, v, t_fine, 'spline');
plot(t_fine, v_smooth, '-b', 'LineWidth', 1.5)
hold on
plot(t, v, 'o', 'MarkerFaceColor', 'r')
grid on
title('Volume of Irrigation Dam by Month')
xlabel('TIME')
ylabel('Amount of the Irrigation Dam (K m^3)')
xticks(t)
xticklabels(m)
xtickangle(45)
for i = 1:length(v)
    text(t(i), v(i)+0.5, num2str(v(i)), 'HorizontalAlignment', 'center')
end

%% Q2) Dam volume with July transfer (Figure 2.1)
figure;
V0 = 270;
x = [0 2 1.2 3.7 8.9 9.7 14.89 15 15 15 8 6 3.3 0];
m = {'t=1','t=2','t=3','t=4','t=5','t=6','t=7','t=8','t=9','t=10','t=11','t=12'};
v = V0 + cumsum(x);
t = 1:length(v);
t_fine = linspace(t(1), t(end), 200);
v_smooth = interp1(t, v, t_fine, 'spline');
plot(t_fine, v_smooth, '-b', 'LineWidth', 1.5)
hold on
plot(t, v, 'o', 'MarkerFaceColor', 'r')
grid on
title('Volume of Irrigation Dam by Month')
xlabel('TIME')
ylabel('Amount of the Irrigation Dam (K m^3)')
xticks(t)
xticklabels(m)
xtickangle(45)
for i = 1:length(v)
    text(t(i), v(i)+0.5, num2str(v(i)), 'HorizontalAlignment', 'center')
end

%% Q3) Annual course of dam volume, V0 = 100 (Figure 3.1)
figure;
V0 = 100;
x = [0 2 1.2 3.7 8.9 9.7 14.89 15 15 15 8 6 3.3 0];
m = {'t=1','t=2','t=3','t=4','t=5','t=6','t=7','t=8','t=9','t=10','t=11','t=12'};
v = V0 + cumsum(x);
t = 1:length(v);
t_fine = linspace(t(1), t(end), 200);
v_smooth = interp1(t, v, t_fine, 'spline');
plot(t_fine, v_smooth, '-b', 'LineWidth', 1.5)
hold on
plot(t, v, 'o', 'MarkerFaceColor', 'r')
grid on
title('Volume of Irrigation Dam by Month')
xlabel('TIME')
ylabel('Amount of the Irrigation Dam (K m^3)')   % raporda 'Ylabel' yazili, MATLAB buyuk/kucuk harfe duyarli
xticks(t)
xticklabels(m)
xtickangle(45)
for i = 1:length(v)
    text(t(i), v(i)+0.5, num2str(v(i)), 'HorizontalAlignment', 'center')
end

%% Q4) Dam absorption (Figure 4.1)
figure;
t = 0:0.1:2;
k = 0.8;
y0 = 1000;
y = y0 * exp(-k*t);
plot(t, y, 'b')
hold on
plot(2, y(end), 'ro')
text(2, y(end)+20, 'Saturation')
xlabel('TIME')
ylabel('Water Absorbed (m^3)')
title('Dam Absorption')
xticks([0 1 2])
xticklabels({'t=1','t=2','t=3'})
grid on
hold off

%% Q5) Evaporation behaviour (Figure 5.1 - evaporation)
figure;
months = {'t=1','t=2','t=3','t=4','t=5','t=6','t=7','t=8','t=9','t=10','t=11','t=12','t=13'};
maxE = 0.05;
evap = maxE * (0.6*rand(1,13));
evap(9) = maxE;
evap = smoothdata(evap, 'gaussian', 3);
plot(evap, '-o', 'LineWidth', 1.3, 'MarkerFaceColor', 'b'); grid on
xticks(1:13); xticklabels(months)
xlabel('Months'); ylabel('Evaporation (K m^3)');
title('Evaporation Behaviour of the Dam (Mediterranean Climate)');
ylim([0 maxE*1.2]);
for k = 1:13
    text(k, evap(k)+0.002, sprintf('%.3f', evap(k)), 'HorizontalAlignment', 'center');
end

%% Q6) Constant leakage (Figure 5.1 - leakage)
figure;
months = {'t=1','t=2','t=3','t=4','t=5','t=6','t=7','t=8','t=9','t=10','t=11','t=12'};
plot(0.01*ones(1,13), '-o'); grid on;
title('Constant Leakage'); xlabel('TIME'); ylabel('Leakage (K m^3)');
xticks(1:13); xticklabels(months);
text(7, 0.0105, '0.01', 'HorizontalAlignment', 'center');