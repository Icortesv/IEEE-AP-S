%% POLAR COORDINATES
close all;
clear all;
clc;
%%
power_4 = [0.119997044
0.117865781
0.122833782
0.110892582
0.101192019
0.106708092
0.096526111
0.098097054
0.09486102
0.102504858
0.12215952
0.124773545
0.11534198
0.113433246
0.107293388
0.098530021
0.109387222
0.114978217
0.106420039
0.104525091
0.11382095
0.099330015
0.127996101
0.123641187
0.12322403
0.12944109]; 
angle_4 = [-140 -130 -80 -60 -60 -50 -50 -40 -40 -30 -30 -20 -20 -10 -10 0 0 10 10 20 20 30 30 40 40 50];

%Normalize the power values
rho4 = power_4 - max(power_4);
%rho4 = abs(max(power_4)./power_4);
theta4 = angle_4.*pi/180; % Outter circunference
polarplot(theta4,rho4, '*', 'Color', [0, 0.4470, 0.7410], 'LineWidth', 1.5)
%rlim([min(rho4) max(rho4)])
hold on;

power_2 = [0.136391268
0.133376037
0.134403323
0.13480224
0.132871183
0.131413473
0.127857057
0.124082912
0.117865781
0.122833782
0.09486102
0.102504858
0.136131087
0.136928117
0.137429155
0.13733318
0.136251054
0.135371789
0.134493154
0.132944351
0.131917509
0.129153235
0.122896332
0.128115151
]; 
angle_2 = [-180 -180 -170 -170 -160 -160 -150 -150 -140 -140 -110 -110 130 130 140 140 150 150 160 160 170 170 180 180];

rho2 = power_2 - max(power_2);
theta2 = angle_2.*pi/180;
polarplot(theta2,rho2, 'o', 'Color', [0.8500, 0.3250, 0.0980], 'LineWidth', 1.5)
hold on;

power_3 = [0.101192019
0.106708092
0.096526111
0.098097054
0.09486102
0.102504858
0.12215952
0.124773545
0.11534198
0.113433246
0.107293388
0.098530021
0.109387222
0.114978217]; 
angle_3 = [-130 -130 -120 -120 -110 -110 -100 -100 -90 -90 -80 -80 -70 -70];

rho3 = power_3 - max(power_3);
theta3 = angle_3.*pi/180;
polarplot(theta3,rho3,'s', 'Color', [0.4660 0.6740 0.1880], 'LineWidth', 1.5)
hold on;

power_1 = [0.138463544
0.138152074
0.138709546
0.139038364
0.138747956
0.138364428
0.133933207
0.138206574
0.136340703
0.137331114
0.134985196
0.139277189
0.139277189
0.137662073
0.138645888
0.138697762]; 
angle_1 = [50 50 60 60 70 70 80 80 90 90 100 100 110 110 120 120];

rho1 = power_1 - max(power_1);
theta1 = angle_1.*pi/180;
polarplot(theta1,rho1,'x', 'Color', [0.9290 0.6940 0.1250], 'LineWidth', 1.5)
rlim([min([rho4; rho3; rho2; rho1]) max([rho4; rho3; rho2; rho1])])
legend('Direction 4', 'Direction 2', 'Direction 3', 'Direction 1');
%% Pass the amplitudes to Power in dB
vpp_adc = 0:0.001:1;
vpp_range = 1:0.001:2;
%plot(vpp_range, vpp_adc)

vrms = vpp_range./(2*sqrt(2));

power_linear = vrms.^2;
power_dB = 10*log10(power_linear);

vpp_1 = 1 + power_1;
vpp_2 = 1 + power_2;
vpp_3 = 1 + power_3;
vpp_4 = 1 + power_4;

vrms_1 = vpp_1./(2*sqrt(2));
vrms_2 = vpp_2./(2*sqrt(2));
vrms_3 = vpp_3./(2*sqrt(2));
vrms_4 = vpp_4./(2*sqrt(2));

power_linear_1 = vrms_1.^2;
power_linear_2 = vrms_2.^2;
power_linear_3 = vrms_3.^2;
power_linear_4 = vrms_4.^2;

power_dB_1 = 10*log10(power_linear_1);
power_dB_2 = 10*log10(power_linear_2);
power_dB_3 = 10*log10(power_linear_3);
power_dB_4 = 10*log10(power_linear_4);

% Put the angles from 0 to 360
degree_0 = 0;
i_4 = 1;
i_3 = 1;
i_2 = 1;
i_1 = 1;
for i = 1:length(angle_4)
    if angle_4(i) < 0
        angle_4_360(i) = angle_4(i) + 360;
    elseif (angle_4(i) >= 0 && degree_0 == 0)
        if angle_4(i) == 0
            isZero = 4;
        end
        angle_4_360(i) = angle_4(i);
        i_4 = i;
        degree_0 = 1;
    else
        angle_4_360(i) = angle_4(i);
    end
end
degree_0 = 0;
for i = 1:length(angle_3)
    if angle_3(i) < 0
        angle_3_360(i) = angle_3(i) + 360;
    elseif (angle_3(i) >= 0 && degree_0 == 0)
        if angle_3(i) == 0
            isZero = 3;
        end
        angle_3_360(i) = angle_3(i);
        i_3 = i;
        degree_0 = 1;
    else
        angle_3_360(i) = angle_3(i);
    end
end
degree_0 = 0;
for i = 1:length(angle_2)
    if angle_2(i) < 0
        angle_2_360(i) = angle_2(i) + 360;
    elseif (angle_2(i) >= 0 && degree_0 == 0)
        if angle_2(i) == 0
            isZero = 2;
        end
        angle_2_360(i) = angle_2(i);
        i_2 = i;
        degree_0 = 1;
    else
        angle_2_360(i) = angle_2(i);
    end
end
degree_0 = 0;
for i = 1:length(angle_1)
    if angle_1(i) < 0
        angle_1_360(i) = angle_1(i) + 360;
    elseif (angle_1(i) >= 0 && degree_0 == 0)
        if angle_1(i) == 0
            isZero = 1;
        end
        angle_1_360(i) = angle_1(i);
        i_1 = i;
        degree_0 = 1;
    else
        angle_1_360(i) = angle_1(i);
    end
end

% Sort the power values according to the angles
angle_4_360 = sort(angle_4_360);
for i = 0 : length (power_dB_4)-1
    if (i_4 + i)<=length(power_dB_4)
        power_dB_4_360(i+1) = power_dB_4(i_4 + i);
    else
        power_dB_4_360(i+1) = power_dB_4( -i + length(power_dB_4));
    end
end

angle_3_360 = sort(angle_3_360);
for i = 0 : length (power_dB_3)-1
    if (i_3 + i)<=length(power_dB_3)
        power_dB_3_360(i+1) = power_dB_3(i_3 + i);
    else
        power_dB_3_360(i+1) = power_dB_3(- i + length(power_dB_3));
    end
end

angle_2_360 = sort(angle_2_360);
for i = 0 : length (power_dB_2)-1
    if (i_2 + i)<=length(power_dB_2)
        power_dB_2_360(i+1) = power_dB_2(i_2 + i);
    else
        power_dB_2_360(i+1) = power_dB_2(- i + length(power_dB_2));
    end
end

angle_1_360 = sort(angle_1_360);
for i = 0 : length (power_dB_1)-1
    if (i_1 + i)<=length(power_dB_1)
        power_dB_1_360(i+1) = power_dB_1(i_1 + i);
    else
        power_dB_1_360(i+1) = power_dB_1(- i + length(power_dB_1));
    end
end

% Add the 360 degrees
if isZero == 1
    angle_1_360 = [angle_1_360 360];
    power_dB_1_360 = [power_dB_1_360 power_dB_1_360(1)];
elseif isZero == 2
    angle_2_360 = [angle_2_360 360];
    power_dB_2_360 = [power_dB_2_360 power_dB_2_360(1)];
elseif isZero == 3
    angle_3_360 = [angle_3_360 360];
    power_dB_3_360 = [power_dB_3_360 power_dB_3_360(1)];
else
    angle_4_360 = [angle_4_360 360];
    power_dB_4_360 = [power_dB_4_360 power_dB_4_360(1)];
end

figure(6);
plot(angle_4_360,power_dB_4_360, '*', 'Color', [0, 0.4470, 0.7410], 'LineWidth', 1.5)
hold on;
plot(angle_3_360,power_dB_3_360, 'o', 'Color', [0.8500, 0.3250, 0.0980], 'LineWidth', 1.5)
plot(angle_2_360,power_dB_2_360, 's', 'Color', [0.4660 0.6740 0.1880], 'LineWidth', 1.5)
plot(angle_1_360,power_dB_1_360, 'x', 'Color', [0.9290 0.6940 0.1250], 'LineWidth', 1.5)
ylim([-9 -7]);
xlim([0 360]);
grid on;
xlabel('\phi(degrees)');
ylabel('RSS (dBm)');
legend('Direction 4', 'Direction 3', 'Direction 2', 'Direction 1');
%% TWO TRANSMITTERS
close all;
clear all;
figure();
power_4 = [
0.101898543
0.098382512
0.101357933
0.103678351
0.101931938
0.104794236
0.103618518
0.104872561
0.100233413
0.099703062
0.102119771
0.102063377
0.100714357
0.10097347
0.126253272
0.122925462];
%angle_4 = [-150 -140 60 60 70 70 80 80 90 90 130 130 140 140 160 160]; 
angle_4 = [-30 -30 -20 -20 -10 -10 0 0 40 40 50 50 70 70 120 130];

%Normalize the power values
rho4 = power_4 - max(power_4);
%rho4 = abs(max(power_4)./power_4);
theta4 = angle_4.*pi/180; % Outter circunference
polarplot(theta4,rho4, '*', 'Color', [0, 0.4470, 0.7410], 'LineWidth', 1.5)
%rlim([min(rho4) max(rho4)])
hold on;

power_2 = [
0.111578542
0.108165357
0.114073529
0.113085002
0.106207832
0.106507917
0.107453676
0.103198432
0.115293676
0.115601298
0.113161066
0.111977683
0.113215446
0.113398061
0.100701383
0.09961958
0.097399097
0.098864312
0.111780534
0.11231005
0.111899036
0.110349521
0.113676583
0.109334906
0.108395742
0.107247829]; 
%angle_2 = [-130 -130 -120 -120 -110 -110 -100 -100 -90 -90 -80 -80 -70 -70 -60 -60 -50 -50 -40 -40 -30 -30 100 100 110 110]; 
angle_2 = [-180 -180 -170 -170 -160 -160 -150 -150 -140 -140 -130 -130 -120 -120 10 10 20 20 140 140 150 150 160 160 170 170]; 
rho2 = power_2 - max(power_2);
theta2 = angle_2.*pi/180;
polarplot(theta2,rho2, 'o', 'Color', [0.8500, 0.3250, 0.0980], 'LineWidth', 1.5)
hold on;

power_3 = [
0.116144899
0.116000708
0.11744195
0.117400906
0.11767792
0.117569732
0.106041097
0.103219886
0.10280119
0.100252998
0.103446089
0.103642469
0.100742017
0.098450182
0.096749916
0.094397086
0.126418254
0.125118722
0.123085741]; 
%angle_3 = [-160 -160 -150 -20 -20 -10 -10 0 0 10 10 20 30 30 40 50 50 170 170];
angle_3 = [-110 -110 -100 -100 -90 -90 -80 -80 -70 -60 -60 -50 -40 -40 80 80 110 110 120];

rho3 = power_3 - max(power_3);
theta3 = angle_3.*pi/180;
polarplot(theta3,rho3,'s', 'Color', [0.4660 0.6740 0.1880], 'LineWidth', 1.5)
hold on;

power_1 = [
0.104646677
0.104045521
0.096811629
0.097126001
0.100738697
0.09671802
0.0883137
0.095330882
0.111421497
0.108156466
0.124078164
0.10971328
0.113882371]; 
%angle_1 = [-180 -180 -170 -170 -140 20 40 120 120 150 150 180 180];
angle_1 = [-70 -50 30 30 60 60 90 90 90 90 100 100 130];

rho1 = power_1 - max(power_1);
theta1 = angle_1.*pi/180;
polarplot(theta1,rho1,'x', 'Color', [0.9290 0.6940 0.1250], 'LineWidth', 1.5)
rlim([min([rho4; rho3; rho2; rho1]) max([rho4; rho3; rho2; rho1])])
legend('Direction 4', 'Direction 2', 'Direction 3', 'Direction 1');
%% Pass the amplitudes to Power in dB
figure()
vpp_adc = 0:0.001:1;
vpp_range = 1:0.001:2;
%plot(vpp_range, vpp_adc)

vrms = vpp_range./(2*sqrt(2));

power_linear = vrms.^2;
power_dB = 10*log10(power_linear);

vpp_1 = 1 + power_1;
vpp_2 = 1 + power_2;
vpp_3 = 1 + power_3;
vpp_4 = 1 + power_4;

vrms_1 = vpp_1./(2*sqrt(2));
vrms_2 = vpp_2./(2*sqrt(2));
vrms_3 = vpp_3./(2*sqrt(2));
vrms_4 = vpp_4./(2*sqrt(2));

power_linear_1 = vrms_1.^2;
power_linear_2 = vrms_2.^2;
power_linear_3 = vrms_3.^2;
power_linear_4 = vrms_4.^2;

power_dB_1 = 10*log10(power_linear_1);
power_dB_2 = 10*log10(power_linear_2);
power_dB_3 = 10*log10(power_linear_3);
power_dB_4 = 10*log10(power_linear_4);

% Put the angles from 0 to 360
degree_0 = 0;
i_4 = 1;
i_3 = 1;
i_2 = 1;
i_1 = 1;
for i = 1:length(angle_4)
    if angle_4(i) < 0
        angle_4_360(i) = angle_4(i) + 360;
    elseif (angle_4(i) >= 0 && degree_0 == 0)
        if angle_4(i) == 0
            isZero = 4;
        end
        angle_4_360(i) = angle_4(i);
        i_4 = i;
        degree_0 = 1;
    else
        angle_4_360(i) = angle_4(i);
    end
end
degree_0 = 0;
for i = 1:length(angle_3)
    if angle_3(i) < 0
        angle_3_360(i) = angle_3(i) + 360;
    elseif (angle_3(i) >= 0 && degree_0 == 0)
        if angle_3(i) == 0
            isZero = 3;
        end
        angle_3_360(i) = angle_3(i);
        i_3 = i;
        degree_0 = 1;
    else
        angle_3_360(i) = angle_3(i);
    end
end
degree_0 = 0;
for i = 1:length(angle_2)
    if angle_2(i) < 0
        angle_2_360(i) = angle_2(i) + 360;
    elseif (angle_2(i) >= 0 && degree_0 == 0)
        if angle_2(i) == 0
            isZero = 2;
        end
        angle_2_360(i) = angle_2(i);
        i_2 = i;
        degree_0 = 1;
    else
        angle_2_360(i) = angle_2(i);
    end
end
degree_0 = 0;
for i = 1:length(angle_1)
    if angle_1(i) < 0
        angle_1_360(i) = angle_1(i) + 360;
    elseif (angle_1(i) >= 0 && degree_0 == 0)
        if angle_1(i) == 0
            isZero = 1;
        end
        angle_1_360(i) = angle_1(i);
        i_1 = i;
        degree_0 = 1;
    else
        angle_1_360(i) = angle_1(i);
    end
end

% Sort the power values according to the angles
angle_4_360 = sort(angle_4_360);
for i = 0 : length (power_dB_4)-1
    if (i_4 + i)<=length(power_dB_4)
        power_dB_4_360(i+1) = power_dB_4(i_4 + i);
    else
        power_dB_4_360(i+1) = power_dB_4( -i + length(power_dB_4));
    end
end

angle_3_360 = sort(angle_3_360);
for i = 0 : length (power_dB_3)-1
    if (i_3 + i)<=length(power_dB_3)
        power_dB_3_360(i+1) = power_dB_3(i_3 + i);
    else
        power_dB_3_360(i+1) = power_dB_3(- i + length(power_dB_3));
    end
end

angle_2_360 = sort(angle_2_360);
for i = 0 : length (power_dB_2)-1
    if (i_2 + i)<=length(power_dB_2)
        power_dB_2_360(i+1) = power_dB_2(i_2 + i);
    else
        power_dB_2_360(i+1) = power_dB_2(- i + length(power_dB_2));
    end
end

angle_1_360 = sort(angle_1_360);
for i = 0 : length (power_dB_1)-1
    if (i_1 + i)<=length(power_dB_1)
        power_dB_1_360(i+1) = power_dB_1(i_1 + i);
    else
        power_dB_1_360(i+1) = power_dB_1(- i + length(power_dB_1));
    end
end

% Add the 360 degrees
if isZero == 1
    angle_1_360 = [angle_1_360 360];
    power_dB_1_360 = [power_dB_1_360 power_dB_1_360(1)];
elseif isZero == 2
    angle_2_360 = [angle_2_360 360];
    power_dB_2_360 = [power_dB_2_360 power_dB_2_360(1)];
elseif isZero == 3
    angle_3_360 = [angle_3_360 360];
    power_dB_3_360 = [power_dB_3_360 power_dB_3_360(1)];
else
    angle_4_360 = [angle_4_360 360];
    power_dB_4_360 = [power_dB_4_360 power_dB_4_360(1)];
end

%Normalize the power values
figure();
plot(angle_4_360,power_dB_4_360, '*', 'Color', [0, 0.4470, 0.7410], 'LineWidth', 1.5)
hold on;
plot(angle_3_360,power_dB_3_360, 'o', 'Color', [0.8500, 0.3250, 0.0980], 'LineWidth', 1.5)
plot(angle_2_360,power_dB_2_360, 's', 'Color', [0.4660 0.6740 0.1880], 'LineWidth', 1.5)
plot(angle_1_360,power_dB_1_360, 'x', 'Color', [0.9290 0.6940 0.1250], 'LineWidth', 1.5)
ylim([-9 -7]);
xlim([0 360]);
grid on;
xlabel('\phi(degrees)');
ylabel('RSS (dBm)');
legend('Direction 4', 'Direction 3', 'Direction 2', 'Direction 1');

%% Plot the RSSI of all the emasurements (Direction 4 in the middle)
clear all;
close all;
clc;

power_1 = [0.128269769
0.115897908
0.122395028
0.113965296
0.115767649
0.092067979
0.108664717
0.091889422
0.102422703
0.0948636
0.099211659
0.092881673
0.096754561
0.106708092
0.08750595
0.096581394
0.087952634
0.079647493
0.10659568
0.098936432
0.09129383
0.078871579
0.083610874
0.072337005
0.083160853
0.07612739
0.081659196
0.083639443
0.087968296
0.094951029
0.085376545
0.088160109
0.080266111
0.109411741
0.094628342
0.115055081
0.120175798
0.121272144
0.130066799
0.121955999
0.125080351
0.118667744
0.138463544
0.127680635
0.138152074
0.138709546
0.139038364
0.138747956
0.138364428
0.138206574
0.136340703
0.137331114
0.134985196
0.139277189
0.139277189
0.137662073
0.138645888
0.138697762
0.129336352
0.136502281
0.127819454
0.136270252
0.132472566
0.117791045
0.117173491
0.124198315
0.111103661
0.097320199
0.091216112
];
power_2 = [0.136391268
0.133376037
0.134403323
0.13480224
0.132871183
0.131413473
0.127857057
0.124082912
0.102589927
0.117865781
0.122833782
0.082966386
0.092649536
0.08504087
0.093647903
0.08950774
0.09486102
0.102504858
0.118912021
0.113603973
0.098826872
0.089668568
0.10133737
0.09593314
0.090471125
0.079635651
0.07915313
0.098616967
0.082648663
0.096550322
0.085779961
0.087128047
0.084877896
0.110031901
0.07259412
0.104258177
0.121483611
0.116412775
0.116414521
0.110995579
0.12657865
0.120966149
0.130058394
0.127835826
0.127002728
0.131962329
0.131244065
0.132232746
0.13634218
0.13110035
0.132037844
0.133376015
0.129829888
0.13510364
0.135029801
0.130608919
0.134095505
0.137208126
0.136131087
0.137429155
0.13733318
0.136251054
0.135371789
0.134493154
0.132944351
0.131917509
0.129153235
0.122896332
0.128115151
];
power_3 = [0.129119129
0.125293549
0.124650884
0.126287127
0.124851908
0.122865006
0.117857009
0.10705484
0.106003388
0.088097186
0.098434865
0.104549311
0.101192019
0.091359032
0.096526111
0.098097054
0.080081156
0.088584521
0.12215952
0.124773545
0.11534198
0.113433246
0.102222272
0.098530021
0.109387222
0.114978217
0.10371204
0.092050816
0.099931957
0.123587301
0.123171275
0.105398131
0.083563704
0.116009957
0.103676804
0.112066952
0.123253549
0.119499466
0.117238216
0.119109686
0.127281343
0.123822162
0.130779604
0.128773678
0.126637225
0.129406322
0.130659191
0.129783557
0.131590515
0.126302662
0.129090092
0.129430668
0.129765685
0.131219796
0.131148553
0.136543911
0.126532252
0.136956957
0.130802515
0.129176588
0.131818523
0.132711255
0.123234879
0.11698427
0.124014564
0.123173076
0.115420793
0.084616798
0.108916637
];
power_4 = [0.122881548
0.124726372
0.120909229
0.118823409
0.121509625
0.116984137
0.11999093
0.108638901
0.119997044
0.079272172
0.115273642
0.110892582
0.080382984
0.09837512
0.093552378
0.082700182
0.078449052
0.070754756
0.107097001
0.108119531
0.092976503
0.073923182
0.107293388
0.093677719
0.109250258
0.114670215
0.106420039
0.11382095
0.099330015
0.127996101
0.12944109
0.120580835
0.118660767
0.120666268
0.12266846
0.126081463
0.135277736
0.13352991
0.131822923
0.133055691
0.139096167
0.139096167
0.137117226
0.136535608
0.136601276
0.135518616
0.136230432
0.13414943
0.13519834
0.136814395
0.128542228
0.13082673
0.130888246
0.134046789
0.13441017
0.130973327
0.131753884
0.135950856
0.131086177
0.1302229
0.131360514
0.129280042
0.126110178
0.110304149
0.130201199
0.128228448
0.124814492
0.116819316
0.121350177
];
angles = [-180 -180 -170 -170 -160 -160 -150 -150 -140 -140 -140 -130 -130 -130 -120 -120 -110 -110 -100 -100 -90 -90 -80 -80 -70 -70 -60 -50 -50 -40 -30 -20 -20 -10 -10 0 10 10 20 20 40 40 50 50 50 60 60 70 70 80 90 90 100 100 110 110 120 120 130 140 140 150 150 160 160 170 170 180 180];

vpp_adc = 0:0.001:1;
vpp_range = 1:0.001:2;

vrms = vpp_range./(2*sqrt(2));

power_linear = vrms.^2;
power_dB = 10*log10(power_linear);

vpp_1 = 1 + power_1;
vpp_2 = 1 + power_2;
vpp_3 = 1 + power_3;
vpp_4 = 1 + power_4;

vrms_1 = vpp_1./(2*sqrt(2));
vrms_2 = vpp_2./(2*sqrt(2));
vrms_3 = vpp_3./(2*sqrt(2));
vrms_4 = vpp_4./(2*sqrt(2));

power_linear_1 = vrms_1.^2;
power_linear_2 = vrms_2.^2;
power_linear_3 = vrms_3.^2;
power_linear_4 = vrms_4.^2;

power_dB_1 = 10*log10(power_linear_1);
power_dB_2 = 10*log10(power_linear_2);
power_dB_3 = 10*log10(power_linear_3);
power_dB_4 = 10*log10(power_linear_4);

% % Put the angles from 0 to 360
% degree_0 = 0;
% i_count = 1;
% 
% for i = 1:length(angles)
%     if angles(i) < 0
%         angles_360(i) = angles(i) + 360;
%     elseif (angles(i) >= 0 && degree_0 == 0)
%         if angles(i) == 0
%             isZero = 4;
%         end
%         angles_360(i) = angles(i);
%         i_count = i;
%         degree_0 = 1;
%     else
%         angles_360(i) = angles(i);
%     end
% end
% 
% % Sort the power values according to the angles
% angles_360 = sort(angles_360);
% for i = 0 : length (power_dB_4)-1
%     if (i_count + i)<=length(power_dB_4)
%         power_dB_4_360(i+1) = power_dB_4(i_count + i);
%         power_dB_3_360(i+1) = power_dB_3(i_count + i);
%         power_dB_2_360(i+1) = power_dB_2(i_count + i);
%         power_dB_1_360(i+1) = power_dB_1(i_count + i);
%     else
%         power_dB_4_360(i+1) = power_dB_4( -i + length(power_dB_4));
%         power_dB_3_360(i+1) = power_dB_3( -i + length(power_dB_3));
%         power_dB_2_360(i+1) = power_dB_2( -i + length(power_dB_2));
%         power_dB_1_360(i+1) = power_dB_1( -i + length(power_dB_1));
%     end
% end
% 
% % Add the 360 degrees
% angles_360 = [angles_360 360];
% power_dB_1_360 = [power_dB_1_360 power_dB_1_360(1)];
% power_dB_2_360 = [power_dB_2_360 power_dB_2_360(1)];
% power_dB_3_360 = [power_dB_3_360 power_dB_3_360(1)];
% power_dB_4_360 = [power_dB_4_360 power_dB_4_360(1)];

% figure(1);
% plot(angles_360,power_dB_4_360, '*', 'Color', [0, 0.4470, 0.7410], 'LineWidth', 1.5)
% hold on;
% plot(angles_360,power_dB_3_360, 'o', 'Color', [0.8500, 0.3250, 0.0980], 'LineWidth', 1.5)
% plot(angles_360,power_dB_2_360, 's', 'Color', [0.4660 0.6740 0.1880], 'LineWidth', 1.5)
% plot(angles_360,power_dB_1_360, 'x', 'Color', [0.9290 0.6940 0.1250], 'LineWidth', 1.5)
% ylim([-9 -7]);
% xlim([0 360]);
% grid on;
% xlabel('\phi(degrees)');
% ylabel('RSS (dBm)');
% legend('Direction 4', 'Direction 3', 'Direction 2', 'Direction 1');

for i = 1 : length(angles)
   if(angles(i)==0)
       zeroPos = i;
   end
end
angles_360 = [angles(zeroPos : end) angles(1 : zeroPos -1) + 360];
power_dB_1 = [power_dB_1(zeroPos : end); power_dB_1(1 : zeroPos -1)];
power_dB_2 = [power_dB_2(zeroPos : end); power_dB_2(1 : zeroPos -1)];
power_dB_3 = [power_dB_3(zeroPos : end); power_dB_3(1 : zeroPos -1)];
power_dB_4 = [power_dB_4(zeroPos : end); power_dB_4(1 : zeroPos -1)];

% figure(3);
% plot(angles_360,power_dB_4, '*','Color', [0, 0.4470, 0.7410], 'LineWidth', 1.5)
% hold on;
% plot(angles_360,power_dB_3, 'o', 'Color', [0.8500, 0.3250, 0.0980], 'LineWidth', 1.5)
% plot(angles_360,power_dB_2, 's', 'Color', [0.4660 0.6740 0.1880], 'LineWidth', 1.5)
% plot(angles_360,power_dB_1, 'x', 'Color', [0.9290 0.6940 0.1250], 'LineWidth', 1.5)
% ylim([-9 -7]);
% %xlim([0 360]);
% grid on;
% xlabel('\phi(degrees)');
% ylabel('RSS (dBm)');
% legend('Direction 4', 'Direction 3', 'Direction 2', 'Direction 1');

figure(3);
plot(angles_360,power_dB_4, 'Color', [0, 0.4470, 0.7410], 'LineWidth', 1.5)
hold on;
plot(angles_360,power_dB_3, '--', 'Color', [0.8500, 0.3250, 0.0980], 'LineWidth', 1.5)
plot(angles_360,power_dB_2, ':', 'Color', [0.4660 0.6740 0.1880], 'LineWidth', 2)
plot(angles_360,power_dB_1, '.-', 'Color', [0.9290 0.6940 0.1250], 'LineWidth', 1)
ylim([-9 -7]);
%xlim([0 360]);
grid on;
xlabel('\phi(degrees)');
ylabel('RSS (dBm)');
legend('Direction 4', 'Direction 3', 'Direction 2', 'Direction 1');

hold on;
plot([angles_360(1:10) angles_360(43) angles_360(end - 10) angles_360(end - 8:end)],[power_dB_4(1:10); power_dB_4(43); power_dB_4(end-10); power_dB_4(end-8:end)],'*', 'Color', [0, 0.4470, 0.7410], 'LineWidth', 1.5)
hold on;
plot(angles_360(45 : end - 9),power_dB_3(45 : end - 9), 'o', 'Color', [0.8500, 0.3250, 0.0980], 'LineWidth', 1.5)
plot([angles_360(23:42) angles_360(44) angles_360(51:52)],[power_dB_2(23:42); power_dB_2(44); power_dB_2(51:52)], 's', 'Color', [0.4660 0.6740 0.1880], 'LineWidth', 2)
plot(angles_360(11:22),power_dB_1(11:22), 'x', 'Color', [0.9290 0.6940 0.1250], 'LineWidth', 1)
ylim([-9 -7]);
%xlim([0 360]);
grid on;
xlabel('\phi(degrees)');
ylabel('RSS (dBm)');
legend('Direction 4', 'Direction 3', 'Direction 2', 'Direction 1');

% differences_4_3 = power_dB_4(1:15) - power_dB_3(1:15);
% differences_4_2 = power_dB_4(1:15) - power_dB_2(1:15);
% differences_4_1 = power_dB_4(1:15) - power_dB_1(1:15);
% differences_1_3 = power_dB_1 - power_dB_3;
% differences_1_2 = power_dB_1 - power_dB_2;
% differences_2_3 = power_dB_2 - power_dB_3;
% 
% mean_4_3 = mean(differences_4_3);
% mean_4_2 = mean(differences_4_2);
% mean_4_1 = mean(differences_4_1);
% 
% mean_4 = mean([differences_4_3; differences_4_2; differences_4_1]);