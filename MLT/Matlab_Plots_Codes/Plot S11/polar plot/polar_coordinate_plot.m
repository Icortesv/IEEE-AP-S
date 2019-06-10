%% POLAR COORDINATES
close all;
clear all;
clc;
%%
data_dB4 = [-53.7 -54.6 -54 -52 -51.5 -51.8 -52.4 -53 -56.5 -59.5 -55.8 -53 -54 -52 -51.6 -51.6 -50.4 -49.3 -49 -50.5 -51.5 -51.6 -50.6 -50.4 -51.5 -55.3 -60 -61 -63.5 -55 -55 -56 -54.9 -53.1 -51.8 -52.5 -53.7]; 
data_degree4 = [-180 -170 -160 -150 -140 -130 -120 -110 -100 -90 -80 -70 -60 -50 -40 -30 -20 -10 0 10 20 30 40 50 60 70 80 90 100 110 120 130 140 150 160 170 180];

theta4 = data_degree4.*pi/180; % Outter circunference

%Normalize the dB values
%rho4 = abs(max(data_dB4)./data_dB4);
rho4 = data_dB4 - max(data_dB4);
polarplot(theta4,rho4, 'Color', [0, 0.4470, 0.7410], 'LineWidth', 1.5)
rlim([min(rho4) max(rho4)])
hold on;

data_dB2 = [-48.7 -47.2 -46.8 -47.3 -47.6 -48 -46.8 -46 -44.6 -43.4 -44.1 -44.7 -45.1 -45.7 -47.4 -47.7 -48.5 -49.5 -45.7 -51.2 -51.1 -51.8 -52.3 -53.3 -53 -51.7 -50.7 -50.4 -49.8 -49.6 -51.2 -52.3 -52.4 -53.1 -52.4 -49.5 -48.7];
%rho2 = abs(max(data_dB4)./data_dB2);
rho2 = data_dB2 - max(data_dB2);
data_degree2 = [-180 -170 -160 -150 -140 -130 -120 -110 -100 -90 -80 -70 -60 -50 -40 -30 -20 -10 0 10 20 30 40 50 60 70 80 90 100 110 120 130 140 150 160 170];
theta2 = [90 100 110 120 130 140 150 160 170 180 -170 -160 -150 -140 -130 -120 -110 -100 -90 -80 -70 -60 -50 -40 -30 -20 -10 0 10 20 30 40 50 60 70 80 90].*pi/180;
polarplot(theta2,rho2, '--', 'Color', [0.8500, 0.3250, 0.0980], 'LineWidth', 1)
hold on;

data_dB3 = [-47.8 -47.1 -48.8 -49.1 -50.1 -50.3 -50.7 -48.1 -48.5 -51.6 -50.2 -47.3 -48.6 -48.3 -48.6 -48.1 -45.6 -45.1 -44.9 -46.1 -46.1 -46.2 -47.8 -49.3 -50.7 -48.5 -48.6 -47.6 -47.5 -48.6 -47.4 -47.1 -47.8 -47.9 -48.1 -48.7 -47.8];
%rho3 = abs(max(data_dB4)./data_dB3);
rho3 = data_dB3 - max(data_dB3);
theta3 = [90 100 110 120 130 140 150 160 170 180 -170 -160 -150 -140 -130 -120 -110 -100 -90 -80 -70 -60 -50 -40 -30 -20 -10 0 10 20 30 40 50 60 70 80 90].*pi/180;
p = polarplot(theta3,rho3,'-*', 'Color', [0.4660 0.6740 0.1880], 'LineWidth', 1)
hold on;


data_dB1 = [-50.8 -46.7 -49.1 -52 -56.8 -57 -56.6 -54 -49 -47.7 -46.4 -46.2 -46.5 -47 -48 -48.6 -47.7 -45.3 -44 -45.8 -45.8 -48.1 -49.2 -49.9 -50 -49.5 -49.1 -50.1 -47.2 -48 -49.2 -50.6 -51.5 -56.5 -56.7 -52.2 -50.8];
%rho1 = abs(max(data_dB4)./data_dB1);
rho1 = data_dB1 - max(data_dB1);
theta1 = [-90 -80 -70 -60 -50 -40 -30 -20 -10 0 10 20 30 40 50 60 70 80 90 100 110 120 130 140 150 160 170 180 -170 -160 -150 -140 -130 -120 -110 -100 -90].*pi/180;
polarplot(theta1,rho1, '-x', 'Color', [0.9290 0.6940 0.1250], 'LineWidth', 1)
legend('Direction 4', 'Direction 2', 'Direction 3', 'Direction 1');

% data_dB2 = [-57.1 -52.3 -50.5 -58.5 -57.1];
% %rho2 = abs(max(data_dB4)./data_dB2);
% rho2 = data_dB2 - max(data_dB2);
% theta2 = [-180 -90 0 90 180].*pi/180;
% polarplot(theta2,rho2, 'o', 'Color', [0.8500, 0.3250, 0.0980], 'LineWidth', 1)
% hold on;
% 
% data_dB3 = [-52.2 -58.5 -51 -55.7 -52.2];
% %rho3 = abs(max(data_dB4)./data_dB3);
% rho3 = data_dB3 - max(data_dB3);
% theta3 = [-180 -90 0 90 180].*pi/180;
% p = polarplot(theta3,rho3,'s', 'Color', [0.4660 0.6740 0.1880], 'LineWidth', 1)
% hold on;
% 
% 
% data_dB1 = [-53.7 -56.2 -52.9 -57.3 -53.7];
% %rho1 = abs(max(data_dB4)./data_dB1);
% rho1 = data_dB1 - max(data_dB1);
% theta1 = [-180 -90 0 90 180].*pi/180;
% polarplot(theta1,rho1, 'x', 'Color', [0.9290 0.6940 0.1250], 'LineWidth', 1)

%%
theta_cst = [transpose(-180+113-60:179); transpose(-180:-180+112-60)].*pi/180;
rho_cst = [-1.495E+01
-1.521E+01
-1.547E+01
-1.574E+01
-1.602E+01
-1.632E+01
-1.662E+01
-1.693E+01
-1.725E+01
-1.759E+01
-1.793E+01
-1.827E+01
-1.863E+01
-1.898E+01
-1.934E+01
-1.970E+01
-2.005E+01
-2.039E+01
-2.071E+01
-2.100E+01
-2.126E+01
-2.147E+01
-2.163E+01
-2.172E+01
-2.174E+01
-2.168E+01
-2.155E+01
-2.134E+01
-2.106E+01
-2.072E+01
-2.033E+01
-1.989E+01
-1.942E+01
-1.893E+01
-1.842E+01
-1.789E+01
-1.736E+01
-1.683E+01
-1.631E+01
-1.578E+01
-1.526E+01
-1.475E+01
-1.424E+01
-1.375E+01
-1.326E+01
-1.279E+01
-1.232E+01
-1.186E+01
-1.142E+01
-1.098E+01
-1.056E+01
-1.015E+01
-9.742E+00
-9.349E+00
-8.967E+00
-8.594E+00
-8.232E+00
-7.880E+00
-7.538E+00
-7.205E+00
-6.882E+00
-6.569E+00
-6.264E+00
-5.969E+00
-5.683E+00
-5.406E+00
-5.138E+00
-4.878E+00
-4.627E+00
-4.385E+00
-4.150E+00
-3.924E+00
-3.706E+00
-3.495E+00
-3.293E+00
-3.098E+00
-2.910E+00
-2.730E+00
-2.557E+00
-2.392E+00
-2.233E+00
-2.081E+00
-1.936E+00
-1.798E+00
-1.666E+00
-1.541E+00
-1.422E+00
-1.309E+00
-1.202E+00
-1.101E+00
-1.006E+00
-9.159E-01
-8.317E-01
-7.530E-01
-6.794E-01
-6.110E-01
-5.475E-01
-4.889E-01
-4.349E-01
-3.854E-01
-3.404E-01
-2.995E-01
-2.628E-01
-2.301E-01
-2.011E-01
-1.757E-01
-1.538E-01
-1.353E-01
-1.199E-01
-1.075E-01
-9.795E-02
-9.110E-02
-8.678E-02
-8.483E-02
-8.509E-02
-8.740E-02
-9.160E-02
-9.753E-02
-1.050E-01
-1.140E-01
-1.242E-01
-1.355E-01
-1.479E-01
-1.610E-01
-1.749E-01
-1.893E-01
-2.042E-01
-2.193E-01
-2.347E-01
-2.502E-01
-2.656E-01
-2.810E-01
-2.962E-01
-3.110E-01
-3.256E-01
-3.397E-01
-3.534E-01
-3.666E-01
-3.793E-01
-3.915E-01
-4.031E-01
-4.142E-01
-4.247E-01
-4.347E-01
-4.443E-01
-4.535E-01
-4.623E-01
-4.709E-01
-4.793E-01
-4.876E-01
-4.959E-01
-5.044E-01
-5.131E-01
-5.222E-01
-5.319E-01
-5.422E-01
-5.534E-01
-5.656E-01
-5.789E-01
-5.937E-01
-6.099E-01
-6.279E-01
-6.478E-01
-6.698E-01
-6.941E-01
-7.209E-01
-7.504E-01
-7.828E-01
-8.182E-01
-8.569E-01
-8.991E-01
-9.449E-01
-9.945E-01
-1.048E+00
-1.106E+00
-1.168E+00
-1.235E+00
-1.307E+00
-1.383E+00
-1.465E+00
-1.551E+00
-1.643E+00
-1.741E+00
-1.844E+00
-1.953E+00
-2.068E+00
-2.189E+00
-2.317E+00
-2.450E+00
-2.590E+00
-2.737E+00
-2.890E+00
-3.050E+00
-3.217E+00
-3.391E+00
-3.571E+00
-3.759E+00
-3.954E+00
-4.157E+00
-4.367E+00
-4.584E+00
-4.809E+00
-5.041E+00
-5.282E+00
-5.530E+00
-5.785E+00
-6.049E+00
-6.321E+00
-6.601E+00
-6.890E+00
-7.187E+00
-7.492E+00
-7.807E+00
-8.130E+00
-8.463E+00
-8.806E+00
-9.158E+00
-9.521E+00
-9.895E+00
-1.028E+01
-1.068E+01
-1.109E+01
-1.151E+01
-1.195E+01
-1.240E+01
-1.288E+01
-1.337E+01
-1.388E+01
-1.441E+01
-1.497E+01
-1.555E+01
-1.616E+01
-1.679E+01
-1.746E+01
-1.816E+01
-1.888E+01
-1.963E+01
-2.038E+01
-2.111E+01
-2.180E+01
-2.237E+01
-2.279E+01
-2.298E+01
-2.291E+01
-2.260E+01
-2.210E+01
-2.146E+01
-2.075E+01
-2.001E+01
-1.927E+01
-1.854E+01
-1.784E+01
-1.718E+01
-1.655E+01
-1.595E+01
-1.539E+01
-1.486E+01
-1.436E+01
-1.389E+01
-1.345E+01
-1.303E+01
-1.264E+01
-1.227E+01
-1.192E+01
-1.159E+01
-1.128E+01
-1.099E+01
-1.071E+01
-1.045E+01
-1.021E+01
-9.986E+00
-9.774E+00
-9.576E+00
-9.392E+00
-9.222E+00
-9.064E+00
-8.918E+00
-8.784E+00
-8.662E+00
-8.552E+00
-8.452E+00
-8.363E+00
-8.284E+00
-8.216E+00
-8.157E+00
-8.109E+00
-8.069E+00
-8.038E+00
-8.017E+00
-8.004E+00
-7.999E+00
-8.002E+00
-8.013E+00
-8.032E+00
-8.058E+00
-8.091E+00
-8.130E+00
-8.176E+00
-8.227E+00
-8.284E+00
-8.347E+00
-8.414E+00
-8.485E+00
-8.561E+00
-8.641E+00
-8.723E+00
-8.809E+00
-8.897E+00
-8.987E+00
-9.078E+00
-9.171E+00
-9.264E+00
-9.358E+00
-9.452E+00
-9.546E+00
-9.639E+00
-9.731E+00
-9.822E+00
-9.912E+00
-1.000E+01
-1.009E+01
-1.017E+01
-1.026E+01
-1.034E+01
-1.042E+01
-1.050E+01
-1.058E+01
-1.065E+01
-1.073E+01
-1.081E+01
-1.088E+01
-1.096E+01
-1.104E+01
-1.111E+01
-1.119E+01
-1.127E+01
-1.136E+01
-1.144E+01
-1.153E+01
-1.162E+01
-1.172E+01
-1.182E+01
-1.192E+01
-1.203E+01
-1.214E+01
-1.226E+01
-1.239E+01
-1.252E+01
-1.266E+01
-1.281E+01
-1.296E+01
-1.312E+01
-1.329E+01
-1.346E+01
-1.365E+01
-1.384E+01
-1.405E+01
-1.426E+01
-1.448E+01
-1.471E+01
];

rho_cst = rho_cst - max(rho_cst);
polarplot(theta_cst,rho_cst, 'm--', 'LineWidth', 1.5)
rlim([min(rho_cst) max(rho_cst)])
ax = gca;
ax.GridAlpha = 0.7;

%legend('Direction 4', 'Direction 2', 'Direction 3', 'Direction 1', 'Simulated Direction 4');
legend('Measured', 'Simulated', 'Location', 'south', 'FontSize', 15);

%% Measured Simulated Direction 2
figure();
polarplot(theta2,rho2, '-', 'Color', [0.8500, 0.3250, 0.0980], 'LineWidth', 1)
hold on;
theta_cst2 = [transpose(-180+113+120:179); transpose(-180:-180+112+120)].*pi/180;
polarplot(theta_cst2,rho_cst, 'm--','Color', [0.8500, 0.3250, 0.0980], 'LineWidth', 1.5)
rlim([min(rho_cst) max(rho_cst)])
ax = gca;
ax.GridAlpha = 0.7;
legend('Measured Dir. 2', 'Simulated Dir. 2', 'Location', 'southWest', 'FontSize', 10);

%% Measured Simulated Direction 4
figure();
polarplot(theta4,rho4, '-', 'Color', [0, 0.4470, 0.7410], 'LineWidth', 1)
hold on;
theta_cst4 = [transpose(-180+113-60:179); transpose(-180:-180+112-60)].*pi/180;
polarplot(theta_cst4,rho_cst, 'm--', 'Color', [0, 0.4470, 0.7410], 'LineWidth', 1.5)
rlim([min(rho_cst) max(rho_cst)])
ax = gca;
ax.GridAlpha = 0.7;
legend('Measured Dir. 4', 'Simulated Dir. 4', 'Location', 'southWest', 'FontSize', 10);
%% Measured Simulated Direction 3
figure();
polarplot(theta3,rho3, '-', 'Color', [0.4660 0.6740 0.1880], 'LineWidth', 1)
hold on;
theta_cst3 = [transpose(180 - 23-13:179); transpose(-180:179 - 23-13)].*pi/180;
%[transpose(-180+113+120:179); transpose(-180:-180+112+120)].*pi/180;
polarplot(theta_cst3,rho_cst, 'm--', 'Color', [0.4660 0.6740 0.1880], 'LineWidth', 1.5)
rlim([min(rho_cst) max(rho_cst)])
ax = gca;
ax.GridAlpha = 0.7;
legend('Measured Dir. 3', 'Simulated Dir. 3', 'Location', 'southWest', 'FontSize', 10);

%% Measured Simulated Direction 1
figure();
polarplot(theta1,rho1, '-', 'Color', [0.9290 0.6940 0.1250], 'LineWidth', 1)
hold on;
theta_cst1 = [transpose(-180+113+29:179); transpose(-180:-180+112+29)].*pi/180;
polarplot(theta_cst1,rho_cst, 'm--', 'Color', [0.9290 0.6940 0.1250], 'LineWidth', 1.5)
rlim([min(rho_cst) max(rho_cst)])
ax = gca;
ax.GridAlpha = 0.7;
legend('Measured Dir. 1', 'Simulated Dir. 1', 'Location', 'southWest', 'FontSize', 10);
%%
%Four directions CST
figure();
polarplot(theta_cst,rho_cst, 'm','Color', [0, 0.4470, 0.7410], 'LineWidth', 1)
rlim([min(rho_cst) max(rho_cst)])
hold on;

%theta_cst2 = [transpose(-180+113+29:179); transpose(-180:-180+112+29)].*pi/180;
polarplot(theta_cst3,rho_cst, '--', 'Color', [0.8500, 0.3250, 0.0980], 'LineWidth', 1)

%theta_cst3 = [transpose(-180+113+120:179); transpose(-180:-180+112+120)].*pi/180;
polarplot(theta_cst4,rho_cst, '-x', 'Color', [0.4660 0.6740 0.1880], 'LineWidth', 1)

%theta_cst4 = [transpose(180 - 23-13:179); transpose(-180:179 - 23-13)].*pi/180;
polarplot(theta_cst1,rho_cst, '-.', 'Color', [0.9290 0.6940 0.1250], 'LineWidth', 1)

legend('Direction 4', 'Direction 2', 'Direction 3', 'Direction 1');

%%
%Four directions MEASURED
polarplot(theta4,rho4, 'Color', [0, 0.4470, 0.7410], 'LineWidth', 1.5)
rlim([min(rho4) max(rho4)])
hold on;

theta_cst2 = [-90 -80 -70 -60 -50 -40 -30 -20 -10 0 10 20 30 40 50 60 70 80 90 100 110 120 130 140 150 160 170 180 -170 -160 -150 -140 -130 -120 -110 -100 -90].*pi/180;
polarplot(theta_cst2,rho4, '--', 'Color', [0.8500, 0.3250, 0.0980], 'LineWidth', 1)

theta_cst3 = [0 10 20 30 40 50 60 70 80 90 100 110 120 130 140 150 160 170 180 -170 -160 -150 -140 -130 -120 -110 -100 -90 -80 -70 -60 -50 -40 -30 -20 -10 0].*pi/180;
polarplot(theta_cst3,rho4, '-*', 'Color', [0.4660 0.6740 0.1880], 'LineWidth', 1)

theta_cst1 = [90 100 110 120 130 140 150 160 170 180 -170 -160 -150 -140 -130 -120 -110 -100 -90 -80 -70 -60 -50 -40 -30 -20 -10 0 10 20 30 40 50 60 70 80 90].*pi/180;
polarplot(theta_cst1,rho4, '-+', 'Color', [0.9290 0.6940 0.1250], 'LineWidth', 1)

legend('Direction 4', 'Direction 2', 'Direction 3', 'Direction 1');

%%
% Find HPBW of the CST diagram
[max_rho, I_rho] = max(rho_cst);
cut_3dB = max_rho - 3;
for i = 1 : length(rho_cst)
    if (rho_cst(i) > cut_3dB)
        first_cut = rho_cst(i);
        first_cut_i = i;
        first_cut_angle = theta_cst(i);
        break;
    end
end
for j = i : length(rho_cst)
    if (rho_cst(j) < cut_3dB)
        second_cut = rho_cst(j);
        second_cut_i = j;
        second_cut_angle = theta_cst(j);
        break;
    end
end
HPBW = (second_cut_angle - first_cut_angle).*180/pi;

% Front-to-back ratios
front_to_back_measured = max(rho4) - min([rho4(1) rho4(end)]);
front_to_back_cst = max_rho - rho_cst(308);
%% 8 monopole array
rho_8mon = [-1.46E+01
-1.48E+01
-1.51E+01
-1.54E+01
-1.57E+01
-1.61E+01
-1.65E+01
-1.69E+01
-1.73E+01
-1.78E+01
-1.84E+01
-1.90E+01
-1.96E+01
-2.04E+01
-2.12E+01
-2.20E+01
-2.30E+01
-2.40E+01
-2.49E+01
-2.58E+01
-2.63E+01
-2.64E+01
-2.59E+01
-2.50E+01
-2.39E+01
-2.27E+01
-2.15E+01
-2.04E+01
-1.94E+01
-1.85E+01
-1.76E+01
-1.68E+01
-1.60E+01
-1.53E+01
-1.46E+01
-1.40E+01
-1.34E+01
-1.29E+01
-1.24E+01
-1.19E+01
-1.14E+01
-1.10E+01
-1.06E+01
-1.02E+01
-9.78E+00
-9.42E+00
-9.08E+00
-8.75E+00
-8.44E+00
-8.15E+00
-7.86E+00
-7.59E+00
-7.34E+00
-7.09E+00
-6.85E+00
-6.62E+00
-6.41E+00
-6.20E+00
-6.00E+00
-5.81E+00
-5.63E+00
-5.45E+00
-5.28E+00
-5.12E+00
-4.97E+00
-4.82E+00
-4.68E+00
-4.55E+00
-4.42E+00
-4.30E+00
-4.18E+00
-4.07E+00
-3.97E+00
-3.86E+00
-3.77E+00
-3.68E+00
-3.59E+00
-3.51E+00
-3.43E+00
-3.36E+00
-3.29E+00
-3.23E+00
-3.17E+00
-3.11E+00
-3.06E+00
-3.01E+00
-2.96E+00
-2.92E+00
-2.88E+00
-2.84E+00
-2.81E+00
-2.78E+00
-2.75E+00
-2.72E+00
-2.69E+00
-2.67E+00
-2.65E+00
-2.63E+00
-2.61E+00
-2.59E+00
-2.57E+00
-2.56E+00
-2.54E+00
-2.53E+00
-2.52E+00
-2.51E+00
-2.49E+00
-2.48E+00
-2.47E+00
-2.46E+00
-2.44E+00
-2.43E+00
-2.42E+00
-2.40E+00
-2.39E+00
-2.37E+00
-2.36E+00
-2.34E+00
-2.32E+00
-2.31E+00
-2.29E+00
-2.27E+00
-2.25E+00
-2.22E+00
-2.20E+00
-2.18E+00
-2.15E+00
-2.13E+00
-2.10E+00
-2.07E+00
-2.04E+00
-2.01E+00
-1.98E+00
-1.95E+00
-1.92E+00
-1.89E+00
-1.85E+00
-1.82E+00
-1.78E+00
-1.75E+00
-1.71E+00
-1.67E+00
-1.63E+00
-1.60E+00
-1.56E+00
-1.52E+00
-1.48E+00
-1.44E+00
-1.40E+00
-1.36E+00
-1.32E+00
-1.28E+00
-1.24E+00
-1.20E+00
-1.17E+00
-1.13E+00
-1.09E+00
-1.05E+00
-1.02E+00
-9.80E-01
-9.45E-01
-9.11E-01
-8.79E-01
-8.47E-01
-8.17E-01
-7.88E-01
-7.60E-01
-7.34E-01
-7.10E-01
-6.88E-01
-6.68E-01
-6.50E-01
-6.34E-01
-6.21E-01
-6.10E-01
-6.01E-01
-5.96E-01
-5.93E-01
-5.93E-01
-5.96E-01
-6.02E-01
-6.12E-01
-6.25E-01
-6.41E-01
-6.61E-01
-6.84E-01
-7.11E-01
-7.42E-01
-7.76E-01
-8.14E-01
-8.57E-01
-9.03E-01
-9.53E-01
-1.01E+00
-1.07E+00
-1.13E+00
-1.20E+00
-1.27E+00
-1.34E+00
-1.42E+00
-1.50E+00
-1.59E+00
-1.68E+00
-1.78E+00
-1.88E+00
-1.99E+00
-2.10E+00
-2.21E+00
-2.33E+00
-2.45E+00
-2.58E+00
-2.71E+00
-2.85E+00
-2.99E+00
-3.14E+00
-3.28E+00
-3.44E+00
-3.60E+00
-3.76E+00
-3.93E+00
-4.10E+00
-4.28E+00
-4.46E+00
-4.65E+00
-4.84E+00
-5.04E+00
-5.24E+00
-5.44E+00
-5.65E+00
-5.87E+00
-6.09E+00
-6.32E+00
-6.55E+00
-6.79E+00
-7.04E+00
-7.29E+00
-7.54E+00
-7.80E+00
-8.07E+00
-8.35E+00
-8.63E+00
-8.92E+00
-9.22E+00
-9.53E+00
-9.84E+00
-1.02E+01
-1.05E+01
-1.08E+01
-1.12E+01
-1.16E+01
-1.19E+01
-1.23E+01
-1.27E+01
-1.31E+01
-1.35E+01
-1.40E+01
-1.44E+01
-1.49E+01
-1.54E+01
-1.59E+01
-1.65E+01
-1.70E+01
-1.76E+01
-1.82E+01
-1.89E+01
-1.96E+01
-2.04E+01
-2.12E+01
-2.20E+01
-2.30E+01
-2.41E+01
-2.52E+01
-2.66E+01
-2.82E+01
-3.00E+01
-3.24E+01
-3.56E+01
-4.05E+01
-5.04E+01
-4.47E+01
-3.80E+01
-3.42E+01
-3.16E+01
-2.96E+01
-2.80E+01
-2.66E+01
-2.55E+01
-2.45E+01
-2.36E+01
-2.28E+01
-2.21E+01
-2.14E+01
-2.08E+01
-2.03E+01
-1.97E+01
-1.93E+01
-1.88E+01
-1.84E+01
-1.80E+01
-1.77E+01
-1.73E+01
-1.70E+01
-1.67E+01
-1.65E+01
-1.62E+01
-1.60E+01
-1.57E+01
-1.55E+01
-1.53E+01
-1.51E+01
-1.49E+01
-1.48E+01
-1.46E+01
-1.45E+01
-1.43E+01
-1.42E+01
-1.41E+01
-1.39E+01
-1.38E+01
-1.37E+01
-1.36E+01
-1.35E+01
-1.35E+01
-1.34E+01
-1.33E+01
-1.32E+01
-1.32E+01
-1.31E+01
-1.31E+01
-1.30E+01
-1.30E+01
-1.29E+01
-1.29E+01
-1.28E+01
-1.28E+01
-1.28E+01
-1.28E+01
-1.27E+01
-1.27E+01
-1.27E+01
-1.27E+01
-1.27E+01
-1.27E+01
-1.28E+01
-1.28E+01
-1.28E+01
-1.29E+01
-1.29E+01
-1.30E+01
-1.30E+01
-1.31E+01
-1.32E+01
-1.33E+01
-1.34E+01
-1.35E+01
-1.37E+01
-1.38E+01
-1.40E+01
-1.42E+01
-1.44E+01];
theta_8mon = (0:359).*pi/180;
rho_8mon = rho_8mon - max(rho_8mon);
polarplot(theta_8mon,rho_8mon, 'b', 'LineWidth', 1)
rlim([min(rho_8mon) max(rho_8mon)])

% Find HPBW of the CST diagram
[max_rho, I_rho] = max(rho_8mon);
cut_3dB = max_rho - 3;
for i = 1 : length(rho_8mon)
    if (rho_8mon(i) > cut_3dB)
        first_cut = rho_8mon(i);
        first_cut_i = i;
        first_cut_angle = theta_8mon(i);
        break;
    end
end
for j = i : length(rho_8mon)
    if (rho_8mon(j) < cut_3dB)
        second_cut = rho_8mon(j);
        second_cut_i = j;
        second_cut_angle = theta_8mon(j);
        break;
    end
end
HPBW_8mon = (second_cut_angle - first_cut_angle).*180/pi;