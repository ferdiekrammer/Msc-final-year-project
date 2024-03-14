einf2=5.9752;
ew_pD2=8.8667;
eg_D2=0.03799;
es12=1.76;
ew_p1L2=3.6;
eg_1L2=1.3;
es22=0.952;
ew_p2L2=2.8;
eg_2L2=0.737;

% einf2=3.718;
% ew_pD2=9.2093;
% eg_D2=0.01;
% es12=0.4242;
% ew_p1L2=4.284;
% eg_1L2=0.737;
% es22=0;
% ew_p2L2=0;
% eg_2L2=0;


eV=[0.64008,0.77009,0.89005,1.01961,1.13956,1.26,1.38996,1.50998,1.64,1.75989,1.87997,2.01012,2.12995,2.26001,2.38019,2.50019,2.63013,2.7497,2.88,2.99986,3.11988,3.24991,3.37005,3.5004,3.61998,3.7401,3.86967,3.99048,4.12044,4.24023,4.3595,4.49055,4.61079,4.73946,4.86022,4.97928,5.11064,5.22919,5.36032,5.48118,5.60001,5.7294,5.85107,5.98091,6.09858,6.22098,6.3484,6.47099,6.59841];
reAu=[0.92,0.56,0.43,0.35,0.27,0.22,0.17,0.16,0.14,0.13,0.14,0.21,0.29,0.43,0.62,1.04,1.31,1.38,1.45,1.46,1.47,1.46,1.48,1.5,1.48,1.48,1.54,1.53,1.53,1.49,1.47,1.43,1.38,1.35,1.33,1.33,1.32,1.32,1.3,1.31,1.3,1.3,1.3,1.3,1.33,1.33,1.34,1.32,1.28];
imAu=[13.78,11.21,9.519,8.145,7.15,6.35,5.663,5.083,4.542,4.103,3.697,3.272,2.863,2.455,2.081,1.833,1.849,1.914,1.948,1.958,1.952,1.933,1.895,1.866,1.871,1.883,1.898,1.893,1.889,1.878,1.869,1.847,1.803,1.749,1.688,1.631,1.577,1.536,1.497,1.46,1.427,1.387,1.35,1.304,1.277,1.251,1.226,1.203,1.188];



w=1:0.001:5;
wavelength=zeros(1,length(w)); 
eps=zeros(1,length(w)); 
sqeps=zeros(1,length(w));
for i=1:length(w)
    wavelength(i)=lambda(w(i));
    eps(i)= epsDL2(einf2,ew_pD2,eg_D2,es12,ew_p1L2,eg_1L2,es22,ew_p2L2,eg_2L2,w(i));
    sqeps(i)=sqrt(eps(i));
end

wave=zeros(1,length(eV));
eps2=zeros(1,length(eV)); 
sqeps2=zeros(1,length(eV));
for i=1:length(eV)
    wave(i)=lambda(eV(i));
    eps2(i)= epsDL2(einf2,ew_pD2,eg_D2,es12,ew_p1L2,eg_1L2,es22,ew_p2L2,eg_2L2,eV(i));
    sqeps2(i)=sqrt(eps2(i));
end

% length(wave)
% length(eps2)
% length(sqeps2)


figure;
tiledlayout(1,2);
p1=nexttile;
hold on
plot(p1,wave,reAu,'x')
plot(p1,wave,real(sqeps2))
hold off
xlabel("weavelength  (nm)")
ylabel("refractive index")
legend('experemental','Drude Lorentz')

axis([300 1000 (-inf-10) (inf+1)])


p2=nexttile;
hold on
plot(p2,wave,imAu,'x')
plot(p2,wave,imag(sqeps2))
hold off
xlabel("wavelength  (nm)")
ylabel("extinction coefficien")
legend('experemental','Drude Lorentz')

axis([300 1000 (-inf-10) (inf+1)])