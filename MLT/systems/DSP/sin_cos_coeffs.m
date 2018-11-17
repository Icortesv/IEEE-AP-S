%% ENERGY
fileID = fopen('channel_1_I.ener','r');
formatSpec = '%f';
channel_1_energy_I = fscanf(fileID,formatSpec);
fileID = fopen('channel_2_I.ener','r');
formatSpec = '%f';
channel_2_energy_I = fscanf(fileID,formatSpec);
fileID = fopen('channel_3_I.ener','r');
formatSpec = '%f';
channel_3_energy_I = fscanf(fileID,formatSpec);
fileID = fopen('channel_4_I.ener','r');
formatSpec = '%f';
channel_4_energy_I = fscanf(fileID,formatSpec);


figure(1)
subplot(2,2,1); 
title('I Energies');
plot(channel_1_energy_I)
xlabel('Samples')
ylabel('Energy I 1');
subplot(2,2,2); 
plot(channel_2_energy_I)
xlabel('Samples')
ylabel('Energy I 2');
subplot(2,2,3); 
plot(channel_3_energy_I)
xlabel('Samples')
ylabel('Energy I 3');
subplot(2,2,4); 
plot(channel_4_energy_I)
xlabel('Samples')
ylabel('Energy I 4');


% Q
fileID = fopen('channel_1_Q.ener','r');
formatSpec = '%f';
channel_1_energy_Q = fscanf(fileID,formatSpec);
fileID = fopen('channel_2_Q.ener','r');
formatSpec = '%f';
channel_2_energy_Q = fscanf(fileID,formatSpec);
fileID = fopen('channel_3_Q.ener','r');
formatSpec = '%f';
channel_3_energy_Q = fscanf(fileID,formatSpec);
fileID = fopen('channel_4_Q.ener','r');
formatSpec = '%f';
channel_4_energy_Q = fscanf(fileID,formatSpec);


figure(2)
subplot(2,2,1); 
plot(channel_1_energy_Q)
xlabel('Samples')
ylabel('Energy Q 1');
subplot(2,2,2); 
plot(channel_2_energy_Q)
xlabel('Samples')
ylabel('Energy Q 2');
subplot(2,2,3); 
plot(channel_3_energy_Q)
xlabel('Samples')
ylabel('Energy Q 3');
subplot(2,2,4); 
plot(channel_4_energy_Q)
xlabel('Samples')
ylabel('Energy Q 4');


% Señal 
fileID = fopen('data_1_I.map','r');
formatSpec = '%f';
channel_1_I = fscanf(fileID,formatSpec);
fileID = fopen('data_2_I.map','r');
formatSpec = '%f';
channel_2_I = fscanf(fileID,formatSpec);
fileID = fopen('data_3_I.map','r');
formatSpec = '%f';
channel_3_I = fscanf(fileID,formatSpec);
fileID = fopen('data_4_I.map','r');
formatSpec = '%f';
channel_4_I = fscanf(fileID,formatSpec);


figure(3)
subplot(2,2,1); 
plot(channel_1_I)
xlabel('Samples')
ylabel('Amplitude I 1');
subplot(2,2,2); 
plot(channel_2_I)
xlabel('Samples')
ylabel('Amplitude I 2');
subplot(2,2,3); 
plot(channel_3_I)
xlabel('Samples')
ylabel('Amplitude I 3');
subplot(2,2,4); 
plot(channel_4_I)
xlabel('Samples')
ylabel('Amplitude I 4');


% Q
fileID = fopen('data_1_Q.map','r');
formatSpec = '%f';
channel_1_Q = fscanf(fileID,formatSpec);
fileID = fopen('data_2_Q.map','r');
formatSpec = '%f';
channel_2_Q = fscanf(fileID,formatSpec);
fileID = fopen('data_3_Q.map','r');
formatSpec = '%f';
channel_3_Q = fscanf(fileID,formatSpec);
fileID = fopen('data_4_Q.map','r');
formatSpec = '%f';
channel_4_Q = fscanf(fileID,formatSpec);


figure(4)
subplot(2,2,1); 
plot(channel_1_Q)
xlabel('Samples')
ylabel('Amplitude Q 1');
subplot(2,2,2); 
plot(channel_2_Q)
xlabel('Samples')
ylabel('Amplitude Q 2');
subplot(2,2,3); 
plot(channel_3_Q)
xlabel('Samples')
ylabel('Amplitude Q 3');
subplot(2,2,4); 
plot(channel_4_Q)
xlabel('Samples')
ylabel('Amplitude Q 4');




%bb_fft_signal = fft(bb_signal);

%%






%% SIN DOWNCONVERTED PLOT
fs = 12e6;
fc = 2e6;
fileID = fopen('data_D.ch','r');
formatSpec = '%f';
A = fscanf(fileID,formatSpec);
figure(1)
plot(A)
title('Función Seno(t)')
xlabel('Tiempo [Seg]')

fileID = fopen('data_Q_D.ch','r');
formatSpec = '%f';
B = fscanf(fileID,formatSpec);
figure(2)
plot(B)
title('Función Seno(t)')
xlabel('Tiempo [Seg]')


f = -fs/2 : (fc/length(A))*6 : fs/2 - (fc/length(A))*6;
stem(f, fftshift(abs(fft(A + 1i*B))))


%% BPSK PLOT
clear all;
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
figure(1)
plot(A)
title('Función Seno(t)')
xlabel('Tiempo [Seg]')

% Down conversion
for (i = 1: length(A))
    downSineI(i) = A(i)*cosine(rem(i, 6)+1);
    downSineQ(i) = A(i)*sine(rem(i, 6)+1); 
end

bb_signal =downSineI-downSineQ;
figure(3)
plot(bb_signal)
f = -fs/2 : fc : fs/2 - fc;
bb_fft_signal = fft(bb_signal);
%bb_fft_filtered_signal = bb_fft_signal.*filterUp(1:3066);
%bb_filtered_signal = ifft(bb_fft_signal);
figure(4)
plot(ifftshift(abs(bb_fft_signal)))
%stem(fftshift(abs(fft(downSineI + 1i*downSineQ))))

%% 

h = rcosdesign(0.5,,4);
fvtool(h,'Analysis','impulse'); 

%% TEST 

% 
clear all;

% Abrimos fichero de datos BPSK
fileID = fopen('data_bpsk_I.map','r');
formatSpec = '%f';
A = fscanf(fileID,formatSpec);

fs = 12e6; %Sampling frequency
ts = 1/fs; % Time step
Fchip = 1e6; % Chip frequency
Tchip = 1/Fchip; % Chip Period
Nchips = 511; % Sequence length
F_if = 2e6; % Intermediate Freq. 

% Duración de una secuencia. A la secuencia completa se le llama epoch.
tepoch = Tchip*Nchips; 
% Numero de samples totales 
N_epoch_samples = ceil(tepoch*fs); 
% Numero de samples por symbolo (12) 
N_samples_per_chip = ceil(N_epoch_samples/Nchips);
% Time index
t = 0:ts:(N_epoch_samples-1)*ts;
% Freq index
df = 1/tepoch; 
fprintf(1,'La resolucion freq es %d Hz\n',df);
f = (-N_epoch_samples/2:N_epoch_samples/2-1)*df;

% FFT de los datos BPSK recibidos
X2 = fftshift(fft(A));
% Ploteamos la señal BPSK recibida con una frecuencia intermedia de 2MHz
figure(1)
    subplot(2,1,1);
    plot(t,A)
    title('BPSK I-Channel')
    xlabel('Tiempo [Seg]')
    
    subplot(2,1,2);
    stem(f,abs(X2));
    title('FFT BPSK I-Channel')
    xlabel('Freq [Hz]')
    ylabel('|A|');

% PN sequence generator 
pnSequence = comm.PNSequence('Polynomial', 'x^9+x^5+1', 'SamplesPerFrame',511,'InitialConditions', [0 0 0 0 0 0 0 0 1]);
x1 = step(pnSequence);
x1 = fliplr(x1');
for i=1:length(x1)
   if(x1(i)==0)
       x1(i)=-1;
   end
end
pn9_sampled = zeros(1,N_epoch_samples);
%Interpolación lineal
for k=1:511
    for i = 1:12
       pn9_sampled(i+(12*(k-1)))= x1(k);   
    end
end
%Interpolación cero
%pn9_sampled(1:N_samples_per_chip:N_epoch_samples)= x1(:);   

Input_bit_os=upsample(x1,12); %oversampling

fid=fopen('pnseq.txt','w');
for i=1:length(Input_bit_os)
fprintf(fid,'%1.0f ,',Input_bit_os(i));
end
fid=fclose(fid);
% FFT de la secuencia
pn9_fft = fftshift(fft(pn9_sampled));  
%%
% PLOT
figure(2); 
    subplot(2,1,1);
    stem(t,pn9_sampled);
    title('PN9')
    xlabel('Time [s]')
    ylabel('PN9');

    subplot(2,1,2);
    stem(f,abs(pn9_fft));
    title('FFT PN9')
    xlabel('Freq [Hz]')
    ylabel('|PN9|');

%Index para el periodo de un seno
n = 0:1:(fs/F_if)-1;
sin_sampled = sin(2*pi*(F_if/fs).*n);
cos_sampled = cos(2*pi*(F_if/fs).*n);
freq_shift_exp = exp(1j*2*pi*F_if*ts.*n);
% figure(11);
% stem(cos_sampled);
% figure(12); 
% stem(sin_sampled); 

% DOWN CONVERSION
for (i = 1: length(A))
    bb_signal_exp(i) = A(i)*freq_shift_exp(rem(i, 6)+1);
    downSineI(i) = A(i)*cos_sampled(rem(i, 6)+1);
    downSineQ(i) = A(i)*sin_sampled(rem(i, 6)+1); 
end

bb_signal_2 =downSineI  - downSineQ;

%scatterplot(bb_signal_2);
%axis([-3 3 -3 3])
    
figure(3);
    subplot(2,1,1);
    stem(downSineI,-downSineQ);
    title('IQ samples')
    xlabel('I');
    ylabel('Q');
    
    subplot(2,1,2);
    plot(t,bb_signal_2);
    title('BPSK down converted')
    xlabel('time');
    ylabel('Angle (º)');

%%
% FFT OF THE BB SIGNAL
% X = fftshift(fft(bb_signal_2));
% figure(4); 
%     subplot(2,1,1);
%     plot(t,abs(bb_signal_2));
%     title('IQ samples')
%     xlabel('time')
%     ylabel('|BB signal|');
%     
%     subplot(2,1,2);
%     stem(f,abs(X));
%     title('FFT BPSK downconverter')
%     xlabel('Freq [Hz]')
%     ylabel('|X|');
 
% A la hora de hacer el filtro RRC he puesto estos parametros
% offset = 0.5 
% span = Numero de chips que tiene una secuencia
% sps = Numero de samples que contiene cada chip
% label = ´sqrt´ para indicar que es RRC. 
h = rcosdesign(0.5,Nchips,12,'sqrt');
%FFT del RRC
fft_h = fftshift(fft(h));

% Ploteamos el filtro RRC
% figure(5)
%     stem(f,abs(fft_h(1:length(fft_h)-1)));
%     title('RRC Filter')
%     xlabel('Freq [Hz]')
%     ylabel('|fft h|');

bb_signal_zeros_real = zeros(1,length(h)+length(real(bb_signal_2))-1);
bb_signal_zeros_real (1,1:length(real(bb_signal_2)))= real(bb_signal_2);
BB_real = fftshift(fft(bb_signal_zeros_real));
bb_signal_zeros_imag = zeros(1,length(h)+length(imag(bb_signal_2))-1); 
bb_signal_zeros_imag (1,1:length(imag(bb_signal_2)))= imag(bb_signal_2);
BB_imag = fftshift(fft(bb_signal_zeros_imag));

h_zeros=zeros(1,length(h)+length(real(bb_signal_2))-1);
h_zeros(1,1:length(h)) = h;
H = fftshift(fft(h_zeros)); 

%Multiplicación en Frecuencia
BB_real_filtered = BB_real.*H;
bb_real_filt = ifftshift(ifft(BB_real_filtered));
BB_imag_filtered = BB_imag.*H;
bb_imag_filt = ifftshift(ifft(BB_imag_filtered));
f2 = (-length(bb_imag_filt)/2:length(bb_imag_filt)/2-1)*df;
figure(11);
scatterplot(bb_real_filt-1j*bb_imag_filt);
figure(6);
    subplot(2,1,1);
    stem(bb_real_filt-1j*bb_imag_filt);
    title('IQ samples')
    xlabel('time')
    ylabel('|BB signal filt|');
    
    subplot(2,1,2);
    stem(f2,abs(BB_real_filtered));
    title('FFT BPSK downconverter')
    xlabel('Freq [Hz]')
    ylabel('|BB filtered|');

% Correlation

pn9_sampled_zeros = zeros(1,length(pn9_sampled)+length(real(BB_real_filtered))-1);
pn9_sampled_zeros(1,1:length(pn9_sampled))=pn9_sampled;
PN9_sampled_zeros = fftshift(fft(pn9_sampled_zeros));
bb_real_filt_zeros = zeros(1,length(pn9_sampled)+length(real(BB_real_filtered))-1);
bb_real_filt_zeros(1,1:length(real(BB_real_filtered)))= bb_imag_filt;
BB_real_filt_zeros = fftshift(fft(bb_real_filt_zeros));
corr_fft = conj(PN9_sampled_zeros).*BB_real_filt_zeros;
corr_time = ifftshift(ifft(corr_fft));
figure(7);
    subplot(2,1,1);
    stem(abs(corr_time))
    title('Corr')
    xlabel('time')
    ylabel('|Corr|');
    
    subplot(2,1,2);
    stem(abs(corr_fft));
    title('FFT Corr')
    xlabel('Freq [Hz]')
    ylabel('|Corr|');

[M,I]=max(abs(corr_time))

data_shift = circshift(bb_signal_filtered,N_epoch_samples+1-I);
data = data_shift(1:N_samples_per_chip:N_epoch_samples);
figure(13)
stem (data);

data_fft = fftshift(fft(data)); 
x1_fft = fftshift(fft(x1'));
h_fft = data_fft./x1_fft;
h =  ifftshift(ifft(h_fft));
figure(14)
stem (abs(h));


x3=real(data_shift); %I arm
x3 = conv(x3,ones(1,N_samples_per_chip));%integrate for L (Tb) duration
x3 = x3(N_samples_per_chip:N_samples_per_chip:end);%I arm - sample at every L
ak_cap = (x3 > 0).'; %threshold detector 


%%

bb_signal =downSineI+downSineQ;
% Ploteamos señal en banda base. 
figure(3)
plot(bb_signal)

figure(4);
plot(t,bb_signal_exp);
% FFT OF THE BB SIGNAL
% k=0:N_epoch_samples;
% ck = 1/N_epoch_samples * exp(-1j*2*pi*(k')*k/N_epoch_samples) * bb_signal';
% dF = 1/N_epoch_samples;
% Fk = k*dF;
% Fk(Fk>=1/2) = Fk(Fk>=1/2)-1;
% fk = Fk*fs; 
% figure(3); stem(fk,abs(ck)); grid;
% figure(4); stem(fk,angle(ck)); grid;

% FFT OF THE BB SIGNAL
X = fft(real(bb_signal_exp));
X1 = fftshift(X);
df = 1/tepoch; 
fprintf(1,'La resolucion freq es %d Hz\n',df);
f = (-N_epoch_samples/2:N_epoch_samples/2-1)*df;
figure(5); 
stem(f,abs(X1)); hold on; 

% A la hora de hacer el filtro RRC he puesto estos parametros
% offset = 0.5 
% span = Numero de chips que tiene una secuencia
% sps = Numero de samples que contiene cada chip
% label = ´sqrt´ para indicar que es RRC. 
h = rcosdesign(0.5,Nchips,12,'sqrt');
% Ploteamos la señal: Lo malo es que la longitud es N_samples_per_chip+1 y
% no N_samples_per_chip. Como se puede corregir esto? Lo que he hecho ha
% sido quitar el ultimo sample pero ni idea. 
%fvtool(h,'Analysis','impulse');

%FFT del RRC
fft_h = fft(h);
fft_rcos_1 = fftshift(fft_h);
% Ploteamos el filtro RRC
figure(6)
stem(f,abs(fft_rcos_1(1:length(fft_rcos_1)-1))); hold on; 

%Multiplicación en Frecuencia
bb_fft_filtered_signal = X1.*fft_rcos_1(1:length(fft_rcos_1)-1);
figure(7);
stem(f,abs(bb_fft_filtered_signal)); hold on;
bb_filtered_signal = ifft(bb_fft_filtered_signal);
figure(8);
plot(abs(ifftshift(bb_filtered_signal)))
figure(12);
plot(angle(ifftshift(bb_filtered_signal)))
% Convolución en tiempo
%result_1 = cconv(h,bb_signal_exp);
%figure(9);
%stem(result_1)

% DOWN CONVERSION
data = zeros(1,floor(N_epoch_samples));
angle_data = angle(ifftshift(bb_filtered_signal))
data(1)=1;
% for (i = 1: length(angle_data))
%     if abs(angle_data(i)-angle_data(i+1))> 
%         
%     end
%     data(i) = 1; 
%     A(i)*freq_shift_exp(rem(i, 6)+1);
%     downSineI(i) = A(i)*cos_sampled(rem(i, 6)+1);
%     downSineQ(i) = A(i)*sin_sampled(rem(i, 6)+1); 
% end

fft_conv = fft(result_1);
fft_conv_1 = fftshift(result_1);
% Ploteamos el filtro RRC
figure(10);
stem(abs(fft_conv_1));
hold on; 


% Los resultados son diferentes. La convolución en tiempo es correcta. Algo
% he hecho mal al hacer la FFT. Mañana Probaré con la DFT. 

%% PRUEBA 
fileID = fopen('data_D.ch','r');
formatSpec = '%f';
A = fscanf(fileID,formatSpec);
fclose(fileID);
fileID = fopen('data_Q_D.ch','r');
formatSpec = '%f';
B = fscanf(fileID,formatSpec);
fclose(fileID);

bb_signal =A   - B;

figure(1)
subplot(3,1,1);
plot(A)
title('I(t)')
xlabel('Tiempo [Seg]')
subplot(3,1,2);
plot(B)
title('Q(t)')
xlabel('Tiempo [Seg]')
subplot(3,1,3);
plot(bb_signal)
title('x_bb(t)')
xlabel('Tiempo [Seg]')


% FFT OF THE BB SIGNAL
X = fftshift(fft(bb_signal));
figure(4); 
    subplot(2,1,1);
    plot(abs(bb_signal));
    title('IQ samples')
    xlabel('time')
    ylabel('|BB signal|');
    
    subplot(2,1,2);
    stem(abs(X));
    title('FFT BPSK downconverter')
    xlabel('Freq [Hz]')
    ylabel('|X|');
 %%
 clear all; 
 close all;
fileID = fopen('data.cor','r');
formatSpec = '%f';
A = fscanf(fileID,formatSpec);
fclose(fileID);
figure(1)
plot(A)
title('corr')
xlabel('Tiempo [Seg]')

    
    
%%

pnSequence = comm.PNSequence('Polynomial', 'x^9+x^5+1', 'SamplesPerFrame',511,'InitialConditions', [0 0 0 0 0 0 0 0 1]);
x1 = step(pnSequence);
for i=1:length(x1)
   if(x1(i)==0)
       x1(i)=-1;
   end
end
a = xcorr(x1,x1);

plot(a);

