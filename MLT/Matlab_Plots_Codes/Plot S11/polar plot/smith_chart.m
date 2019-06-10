% SMITH CHART
clear all;
close all;
clc;
%%
linear_S11 = [0.78675424
0.78699696
0.78725505
0.78752023
0.78778367
0.78803617
0.78826815
0.78846953
0.78863012
0.78873941
0.78878676
0.78876123
0.788652
0.78844799
0.78813836
0.78771224
0.78715887
0.78646766
0.78562824
0.78463065
0.78346497
0.78212179
0.78059218
0.77886732
0.77693929
0.77480031
0.77244328
0.76986176
0.76704959
0.76400152
0.76071275
0.7571792
0.75339744
0.7493648
0.74507913
0.74053902
0.73574391
0.73069387
0.72538957
0.7198327
0.7140254
0.70797049
0.7016718
0.6951336
0.68836101
0.6813597
0.67413625
0.66669777
0.65905188
0.6512073
0.64317281
0.63495822
0.62657386
0.61803048
0.60933964
0.60051313
0.59156351
0.58250385
0.57334752
0.56410836
0.55480087
0.54543972
0.53604
0.52661724
0.51718717
0.507766
0.49836999
0.48901577
0.47972025
0.47050031
0.46137313
0.45235595
0.44346606
0.43472089
0.42613758
0.41773356
0.40952594
0.40153162
0.39376738
0.38624968
0.37899463
0.37201788
0.36533453
0.35895923
0.35290575
0.3471873
0.34181609
0.33680351
0.33215978
0.32789419
0.32401476
0.3205283
0.31744041
0.3147553
0.31247596
0.31060403
0.30913982
0.30808246
0.30742988
0.30717894
0.30732544
0.30786429
0.30878949
0.31009447
0.31177204
0.31381438
0.31621342
0.31896073
0.32204751
0.32546496
0.32920405
0.33325568
0.33761067
0.34225979
0.3471938
0.35240336
0.35787908
0.36361149
0.36959107
0.37580813
0.38225289
0.38891542
0.39578553
0.40285298
0.4101072
0.41753751
0.4251329
0.43288219
0.440774
0.44879664
0.45693839
0.46518709
0.47353058
0.48195643
0.49045219];
angle_S11 = [155.01495
153.70809
152.38505
151.04524
149.68816
148.31317
146.91992
145.50787
144.07659
142.62586
141.15518
139.66429
138.15296
136.62092
135.06801
133.494
131.89891
130.28245
128.64479
126.98571
125.30532
123.60345
121.88033
120.13585
118.37022
116.5835
114.77573
112.9471
111.0976
109.22755
107.33689
105.42586
103.49456
101.5432
99.571898
97.580707
95.569845
93.539311
91.48938
89.419997
87.33138
85.223529
83.096554
80.950453
78.785284
76.601097
74.397788
72.175355
69.933794
67.672894
65.392758
63.09317
60.773802
58.434707
56.075505
53.69603
51.296012
48.875119
46.432918
43.969185
41.483489
38.975281
36.444175
33.889629
31.311206
28.708359
26.080483
23.427091
20.747526
18.041186
15.307637
12.546163
9.7564415
6.9378672
4.090116
1.2128577
358.30587
355.36895
352.4023
349.40603
346.38047
343.32634
340.2445
337.136
334.0022
330.8448
327.66587
324.46765
321.25281
318.02431
314.78528
311.53946
308.29031
305.04193
301.79835
298.56369
295.34213
292.13779
288.95459
285.79648
282.66694
279.56937
276.5066
273.48132
270.49587
267.55178
264.65065
261.79344
258.98072
256.2128
253.48925
250.80995
248.1741
245.5806
243.02835
240.51587
238.04176
235.60426
233.20167
230.8323
228.49441
226.18603
223.9054
221.65089
219.42081
217.21329
215.02708
212.86049
210.71226
208.58092
206.46547
204.36461
202.27747
200.2029
198.14029];

complex_S11 = linear_S11.*exp(angle_S11*1i);
smithplot(linear_S11, angle_S11)