key1=2; %controles what the image charge screening factor (eta) is: if 2 all imaginary parts of sqrt(epspllepsper) are made positive, if 1 eta contains the imaginary parts if 0.5 eta contains only the real parts if 0 then eta is 0 is on or off
key2=50; %determinse what the fill fraction is each time (0,15,35,50,65,80,100)
key3=1; %1 poroduceds a single polt, 2 porduces 3 polots with somting being varied
key31=1; %when key3 =1: 1 produses a plot with s polarised light and 2 produces a plot with p polarised light
key4=2; %what is beeing varied (1 varys R, 2 varys a, 3 varys hs, 4 varys hf,5 varys angl)
key5=1; % when key3=1, 1 plots R,T&A 2 plots eps per and eps pll

% lines
lin1=312.8;
lin2=448.31;
lin3=448.44;

Rad=20;    %radius of NP
hs=6;      %hight of layer 3
hf1=200;    %thickness of layer 4 (standard is 320nm)
alofi=0;   %angel of incident light
aconst=3;  % a=Rad*3;   %lattice constant
a=Rad*aconst;
% dep=100;     %thickness of layer 2
dep=(4*pi*Rad^3)/(3*a^2);    %thickness of layer 2
% dep=1;
L=5;
hf=hf1;
md=key2/100;
dd=1-md;


[RSr1,RPr1,TSr1,TPr1,ASr1,APr1,wavelengthr1,var1r1,var2r1] = spectrum_anisotropic_sheets_6L(Rad,dep,hs,alofi,a,hf,md,dd,L,key1);
% metal Au
% [RSr1,RPr1,TSr1,TPr1,ASr1,APr1,wavelengthr1,var1r1,var2r1] = spectrum_anisotropic_sheets_6L_V2(Rad,dep,hs,alofi,a,hf,md,dd,L,key1);

% fileIDsim=fopen('6L_standard_Au_NP_R=20_h=1_TiO_L=5_Au_hf=100.txt','r');
% fileIDsim=fopen('sim_sheets_hf=160nm_ff50_NP_R=20_a=3R_h=1.txt','r');
%fileIDsim=fopen('nwh=200_npr=20_a=3_h=6_TiO_first.txt','r');
fileIDsim=fopen('nwh=200_npr=20_a=3_h=6_Ag_first.txt','r');
%  fileIDsim=fopen('hf=100_Ti_first_NP20_h6.txt','r');
 
simformatSpecA = '%s %s %s';
simsizeA = [3 1];
simformatSpecB = '%f %f %f';
simsizeB = [3 Inf];
simA=fscanf(fileIDsim,simformatSpecA,simsizeA);
simB=fscanf(fileIDsim,simformatSpecB,simsizeB);

fclose(fileIDsim);

figure;
tiledlayout(1,1);
p1=nexttile;
plot(p1,wavelengthr1,RSr1*100,'b','DisplayName',char(append("Theory")))
hold on
% plot(p1,wavelengthr1,RPr1*100,'g--','DisplayName',char(append("RS",string(key2)," results from theory")))
plot(p1,simB(1,:),simB(2,:),'r--','DisplayName','COMSOL')
hold off
xlabel(p1,'wavelength (nm)')
ylabel(p1,'Reflectance %')
legend(p1,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
axis([300 800 0 100])
%
% p2=nexttile;
% plot(p2,wavelengthr1,var1r1,'r','DisplayName',char(append("RS",string(key2))))
%
% axis([300 800 -5 5])

clear variables 