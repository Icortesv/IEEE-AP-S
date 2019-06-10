fileID = fopen('D:\Documentos\TECNUN\IEEE Contest\17_Febrero_Marzo_19_Paper\3_Matlab\Plot Receiver Measurements\channel sounding\data.txt', 'r');
formatSpec = '%f';
A = fscanf(fileID,formatSpec);
real = A(1:2:end);
imag = A(2:2:end);
power_linear = sqrt(real.^2+imag.^2);
for i = 1:length(power_linear)
    if power_linear(i) == 0
        power_linear(i) = 1e-5;
    end
end
power_dB = 10*log10(power_linear);
power_dB_normalized = power_dB - max(power_dB);
%plot(1:length(real),power_dB_normalized);
plot(1:length(real),power_linear);
xlabel('Time (ms)');
ylabel('Power Delay Profile \it P(\tau)');
grid on;
