% einf4m=3.718;
% ew_pD4m=9.2093;
% eg_D4m=0.02;
% es14m=0.4242;
% ew_p1L4m=4.284;
% eg_1L4m=0.737;
% es24m=0;
% ew_p2L4m=0;
% eg_2L4m=0;
% 
% einf4m=2.8251;
% ew_pD4m=9.25982;
% eg_D4m=0.01336;
% es14m=1.73712;
% ew_p1L4m=5.44106;
% eg_1L4m=2.55689;
% es24m=0;
% ew_p2L4m=0;
% eg_2L4m=0;
% 
einf4m=3.718;
ew_pD4m=9.2093;
eg_D4m=0.01;
es14m=0.4242;
ew_p1L4m=4.284;
eg_1L4m=0.737;
es24m=0;
ew_p2L4m=0;
eg_2L4m=0;

% Ag=[1.07,1.1,1.12,1.14,1.15,1.18,1.2,1.22,1.25,1.26,1.28,1.28,1.3,1.31,1.33,1.35,1.38,1.41,1.41,1.39,1.34,1.13,0.81,0.17,0.14,0.1,0.07,0.05,0.05,0.05,0.04,0.04,0.05,0.05,0.05,0.06,0.05,0.06,0.05,0.04,0.03,0.04,0.04,0.04,0.04,0.09,0.13,0.15,0.24];
% wve=[0.1879,0.1916,0.1953,0.1993,0.2033,0.2073,0.2119,0.2164,0.2214,0.2262,0.2313,0.2371,0.2426,0.249,0.2551,0.2616,0.2689,0.2761,0.2844,0.2924,0.3009,0.3107,0.3204,0.3315,0.3425,0.3542,0.3679,0.3815,0.3974,0.4133,0.4305,0.4509,0.4714,0.4959,0.5209,0.5486,0.5821,0.6168,0.6595,0.7045,0.756,0.8211,0.892,0.984,1.088,1.216,1.393,1.61,1.937];


%Ag2=[0.8709,0.8727,0.8747,0.8779,0.8822,0.887,0.8925,0.8994,0.9067,0.9151,0.9238,0.933,0.9421,0.9519,0.9604,0.969,0.9762,0.9829,0.9879,0.9921,0.9943,0.9955,0.9947,0.9925,0.9892,0.9845,0.9786,0.9713,0.963,0.9537,0.9427,0.9318,0.9201,0.9092,0.9009,0.8975,0.9038,0.9245,0.9584,0.9938,1.0143,1.0152,1.0024,0.982,0.9582,0.9335,0.909,0.8849,0.8614,0.8395,0.8201,0.8063,0.8023,0.8137,0.8488,0.915,1.0064,1.0931,1.1406,1.1433,1.1196,1.087,1.055,1.0286,1.0087,0.9971,0.9943,1.0014,1.0191,1.0483,1.0876,1.136,1.1887,1.2398,1.2823,1.3115,1.3259,1.3272,1.3178,1.3008,1.2779,1.25,1.2171,1.1773,1.1287,1.0693,1.0018,0.949,1.041,1.9732,2.3087,2.0077,1.6277,1.2895,1.005,0.7871,0.6313,0.5198,0.438,0.377,0.3325,0.3026,0.2883,0.2939,0.3304,0.425,0.6583,1.3542];

%wve2=[0.025047,0.025303,0.025564,0.02583,0.026102,0.02638,0.026663,0.026953,0.027249,0.027552,0.027862,0.028178,0.028502,0.028834,0.029173,0.02952,0.029876,0.03024	,0.030613,0.030996,0.031388,0.031791,0.032204,0.032627,0.033062,0.033509,0.033968,0.03444,0.034925,0.035424,0.035937,0.036466,0.03701	,0.037571,0.038149,0.038745,0.03936	,0.039995,0.040651,0.041328,0.042029,0.042753,0.043503,0.04428,0.045085,0.04592,0.046786,0.047686,0.048621,0.049594,0.050606,0.05166,0.052759,0.053906,0.055104,0.056356,0.057667,0.05904,0.06048,0.061992,0.063582,0.065255,0.067018,0.06888,0.070848,0.072932,0.075142,0.07749,0.07999,0.082656,0.085506,0.08856,0.09184,0.095372,0.099187,0.10332,0.107812,0.112713,0.11808,0.123984,0.13051,0.13776,0.145864,0.15498,0.165312,0.17712,0.190745,0.20664,0.225426,0.247968,0.261019,0.27552,0.291728,0.30996,0.330625,0.354241,0.38149,0.413281,0.450852,0.495937,0.551041,0.619921,0.708481,0.826561,0.991874,1.239842,1.653123,2.479684];

eV=[0.64008,0.77009,0.89005,1.01961,1.13956,1.26,1.38996,1.50998,1.64,1.75989,1.87997,2.01012,2.12995,2.26001,2.38019,2.50019,2.63013,2.749,2.88,2.99986,3.11988,3.24991,3.37005,3.5004,3.61998,3.7401,3.86967,3.99048,4.12044,4.24023,4.3595,4.49055,4.61079,4.73946,4.86022,4.97928,5.11064,5.22919,5.36032,5.48118,5.60001,5.7294,5.85107,5.98091,6.09858,6.22098,6.3484,6.47099,6.59841];
reAg=[0.24,0.15,0.13,0.09,0.04,0.04,0.04,0.04,0.03,0.04,0.05,0.06,0.05,0.06,0.05,0.05,0.05,0.04,0.04,0.05,0.05,0.05,0.07,0.1,0.14,0.17,0.81,1.13,1.34,1.39,1.41,1.41,1.38,1.35,1.33,1.31,1.3,1.28,1.28,1.26,1.25,1.22,1.2,1.18,1.15,1.14,1.12,1.1,1.07];
imAg=[14.08,11.85,10.1,8.828,7.795,6.992,6.312,5.727,5.242,4.838,4.483,4.152,3.858,3.586,3.324,3.093,2.869,2.657,2.462,2.275,2.07,1.864,1.657,1.419,1.142,0.829,0.392,0.616,0.964,1.161,1.264,1.331,1.372,1.387,1.393,1.389,1.378,1.367,1.357,1.344,1.342,1.336,1.325,1.312,1.296,1.277,1.255,1.232,1.212];



w=1:0.001:5;
wavelength=zeros(1,length(w)); 
eps=zeros(1,length(w)); 
sqeps=zeros(1,length(w));
for i=1:length(w)
    wavelength(i)=lambda(w(i));
    eps(i)= epsDL2(einf4m,ew_pD4m,eg_D4m,es14m,ew_p1L4m,eg_1L4m,es24m,ew_p2L4m,eg_2L4m,w(i));
    sqeps(i)=sqrt(eps(i));
end

wave=zeros(1,length(eV));
eps2=zeros(1,length(eV)); 
sqeps2=zeros(1,length(eV));
for i=1:length(eV)
    wave(i)=lambda(eV(i));
    eps2(i)= epsDL2(einf4m,ew_pD4m,eg_D4m,es14m,ew_p1L4m,eg_1L4m,es24m,ew_p2L4m,eg_2L4m,eV(i));
    sqeps2(i)=sqrt(eps2(i));
end

% length(wave)
% length(eps2)
% length(sqeps2)

% hold on
% plot(wavelength,real(eps))
% plot(wavelength,imag(eps))
% hold off
figure;
tiledlayout(1,2);
p1=nexttile;
hold on
plot(p1,wave,reAg,'x')
plot(p1,wave,real(sqeps2))
% plot(wve2*1000,Ag2)
hold off
xlabel("weavelength  (nm)")
ylabel("refractive index")
legend('experemental','Drude Lorentz')

axis([300 1000 (-inf-10) (inf+1)])


p2=nexttile;
hold on
plot(p2,wave,imAg,'x')
plot(p2,wave,imag(sqeps2))
% plot(wve2*1000,Ag2)
hold off
xlabel("wavelength  (nm)axis([300 1000 (-inf-10) (inf+1)])")
ylabel("extinction coefficien")
legend('experemental','Drude Lorentz')

axis([300 1000 (-inf-10) (inf+1)])
clear variables