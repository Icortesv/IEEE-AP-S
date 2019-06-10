% This script plot the S11 of each directivity of the antenna! 
clear all; 
close all; 

set(0,'DefaultFigureWindowStyle','docked');
formatSpec = '%f';


fileID      = fopen('s11_cst_lossy_FR4.txt', 'r');
cstS11   = fscanf(fileID, formatSpec);
fileID      = fopen('freq_CST.txt', 'r');
freqIdxCST   = fscanf(fileID, formatSpec);
nFig = 1;
figure(nFig) 
plot(freqIdxCST, cstS11,'k', 'LineWidth', 1.5);
grid on; 
xlabel(' Frequency [GHz] ');
ylabel(' S11 [dBm] '); 
% title(' Theoretical S11 of the antenna array ');
set(gca, 'FontSize', 12);

% Plot S11 
% S11 of each directivity of the antenna 
fileID      = fopen('diodo1Off.txt', 'r');
diodo1Off   = fscanf(fileID, formatSpec);
fileID      = fopen('diodo2Off.txt', 'r');
diodo2Off   = fscanf(fileID, formatSpec);
fileID      = fopen('diodo3Off.txt', 'r');
diodo3Off   = fscanf(fileID, formatSpec);
fileID      = fopen('diodo4Off.txt', 'r');
diodo4Off   = fscanf(fileID, formatSpec);
fileID      = fopen('diodosOff.txt', 'r');
diodosOff	= fscanf(fileID, formatSpec);

% freq index 
fileID      = fopen('freq.txt', 'r');
freqIdx     = fscanf(fileID, formatSpec);

% nFig = nFig + 1;
% figure(nFig); 
hold on;
plot(freqIdx, diodo1Off,'--', freqIdx, diodo2Off,'-.', freqIdx, diodo3Off, '-*', freqIdx, ...
    diodo4Off,':', freqIdx, diodosOff,'-+', 'LineWidth', 1.5);
grid on; 
%legend('Simulated S11 \phi = 0º','Measured S11 \phi = 0º', 'Measured S11 \phi = 90º', 'Measured S11 \phi = 180º', ...
    %'Measured S11 \phi = 270º', 'Measured S11 Direction not set', 'Location', 'southwest' , 'FontSize', 20);
legend('Simulated Direction 4','Measured Direction 4', 'Measured Direction 3', 'Measured Direction 2', ...
    'Measured Direction 1', 'Measured Direction not set', 'Location', 'southwest' , 'FontSize', 20);
