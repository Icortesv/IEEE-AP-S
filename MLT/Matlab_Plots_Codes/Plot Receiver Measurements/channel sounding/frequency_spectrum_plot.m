clear all;
close all;
clc;

fileID = fopen('data_1_I.map','r');
formatSpec = '%f';
channel_1_I = fscanf(fileID,formatSpec);

fileID = fopen('data_1_Q.map','r');
formatSpec = '%f';
channel_1_Q = fscanf(fileID,formatSpec);

fc = 2e6;
fs = 12e6;
f = -fs/2 : (fc/length(channel_1_I))*6 : fs/2 - (fc/length(channel_1_I))*6;

vpp_adc = fftshift(abs(fft(channel_1_I + 1i*channel_1_Q))/(10^5));
vpp_range = 1 + vpp_adc;
vrms = vpp_range./(2*sqrt(2));
power_linear = vrms.^2;
power_dBm = 10*log10(power_linear);

plot(f/(10^6), power_dBm, 'LineWidth', 1.5)
ylim([min(power_dBm) 0]);
grid on;
xlabel('Frequency(MHz)')
ylabel('Power (dBc)');