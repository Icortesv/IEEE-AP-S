clc;clear;close all;
overSampling_Factor=12;
Input_bit = [1]; %Bits to be transmitted
Input_bit_os=upsample(Input_bit,overSampling_Factor); %oversampling
alpha=0.5; % roll-off factor of Root Raised Cosine Filter
pt = srrc(overSampling_Factor,alpha); % impulse response of SRRC filter
%   METER AQUI EL PRN9 Y SIMULAR LO QUE VA A SALIR DE AQUI. 
%   LUEGO METER LOS DATOS QUE HE RECIBIDO Y HACER LA CONVOLUCIÓN Y QUITAR
%   LOS VALORES PASADOS. VAMOS QUE TU PUEDES
output_of_srrc_filter = conv(Input_bit_os,pt);
figure(1);
stem(output_of_srrc_filter);
title('Response of SRRC Filter at Tx side')
xlabel('Samples')
ylabel('Amplitude')

fid=fopen('rrc1.txt','w');
for i=1:length(pt)
fprintf(fid,'%1.6f ,',pt(i));
end

fid=fclose(fid);

%%
fileID = fopen('data_bpsk_I.map','r');
formatSpec = '%f';
A = fscanf(fileID,formatSpec);

fs = 12e6;
Ts = 1 / fs;
fc = 2e6;
t = 0 : Ts : 1/fc - Ts;
sine = sin(2 * pi * fc * t);
%plot(sine)
cosine = cos(2 * pi * fc * t);
%plot(cosine)

load filterUp
figure(2)
plot(A)
title('Función Seno(t)')
xlabel('Tiempo [Seg]')

% Down conversion
for (i = 1: length(A))
    downSineI(i) = A(i)*cosine(rem(i, 6)+1);
    downSineQ(i) = -A(i)*sine(rem(i, 6)+1); 
end

bb_signal =downSineI+downSineQ;
figure(3)
stem(bb_signal)
f = -fs/2 : fc : fs/2 - fc;
bb_fft_signal = fft(bb_signal);
%bb_fft_filtered_signal = bb_fft_signal.*filterUp(1:3066);
%bb_filtered_signal = ifft(bb_fft_signal);
figure(4)
plot(fftshift(abs(bb_fft_signal)))
%stem(fftshift(abs(fft(downSineI + 1i*downSineQ))))



%Receiver side; Using a matched filter (that is matched to the SRRC pulse
%in the transmitter)
y = conv(bb_signal,pt);
figure(5);
stem(y);
title('Matched filter (SRRC) response at Rx side');
xlabel('Samples');
ylabel('Amplitude');

midSample=length(-4:1/overSampling_Factor:4);
y_truncated=y(midSample-1:end); %Remove unwanted portions(first few samples till the peak value)
figure(7)
plot(fftshift(abs(fft(y_truncated))));
%Now the first sample contains the peak value of the response. From here
 
%the samples are extracted depending on the oversampling factor
 
y_down = downsample(y_truncated,overSampling_Factor); %here offset=1 means starting from 1st sample %retain every 8th sample
figure(5); 
stem(y_down);
title('Downsampled output (ADC conversion and Sampling)');
xlabel('Samples');
ylabel('Amplitude');

ak_cap = (y_down > 0).';

%%

% PN sequence generator 
pnSequence = comm.PNSequence('Polynomial', 'x^9+x^5+1', 'SamplesPerFrame',511,'InitialConditions', [0 0 0 0 0 0 0 0 1]);
x1 = step(pnSequence);
x2 = x1;
for i=1:length(x1)
        if x1(i)==0
           x1(i)=-1; 
           x2(i)=1;
        else 
           x2(i)=-1; 
        end
end

RUpSamp = 12;
lenseq = length(x1);
% The final index of the mu vector
mu_final_index = lenseq*RUpSamp;
% Declaration of the mu vector
mu = complex(zeros(1,mu_final_index));
 
% Shift correlation
for i = 1:mu_final_index
    shift_s_received=circshift(A,[i-1,0]);
    mu(i) = sum(conj(x1).*shift_s_received(1:RUpSamp:RUpSamp*lenseq));
    
end
ak_cap_1 = [ak_cap' ak_cap'];

x1_up=upsample(x1,12); %oversampling
p1 = xcorr(x2,double(ak_cap));
p = conv(y_down,x1);



mu = mu';
figure(1)
plot(abs(p)); %hold on; 
%plot (abs(p1));
% imax =  the first maximum peak of the convolution
[~,imax] = max(mu);
