%equations fail if halfspace is metal in natur
% keys
key1=2; %controles what the image charge screening factor (eta) is: if 2 all imaginary parts of sqrt(epspllepsper) are made positive, if 1 eta contains the imaginary parts if 0.5 eta contains only the real parts if 0 then eta is 0 is on or off
key2=50; %determinse what the fill fraction is each time (0,15,35,50,65,80,100)
key3=1; %1 poroduceds a single polt, 2 porduces 3 polots with somting being varied
key31=1; %when key3 =1: 1 produses a plot with s polarised light and 2 produces a plot with p polarised light
key4=5; %what is beeing varied (1 varys R, 2 varys a, 3 varys hs, 4 varys hf,5 varys angl)
key5=2; % when key3=1, 1 plots R,T&A 2 plots eps per and eps pll

% lines
lin1=312.8;
lin2=448.31;
lin3=448.44;

Rad=0.0000000001;    %radius of NP
hs=1;      %hight of layer 3
hf=200;    %thickness of layer 4 (standard is 320nm)
alofi=0;   %angel of incident light
aconst=3;  % a=Rad*3;   %lattice constant
a=Rad*aconst;
L=500;     %cell size
% dep=1;     %thickness of layer 2
dep=(4*pi*Rad^3)/(3*a^2); 

md=key2/100;
dd=1-md;

[RSr1,RPr1,TSr1,TPr1,ASr1,APr1,wavelengthr1,var1r1,var2r1] = spectrum_anisotropic_fabryperot_sheets(Rad,dep,hs,alofi,a,hf,L,md,dd,key1);
% [RSnoNPr1,RPnoNPr1,TSnoNPr1,TPnoNPr1,ASnoNPr1,APnoNPr1,wavelengthnoNPr1,var1noNPr1,var2noNPr1] = spectrum_anisotropic_fabryperot_sheets(0.000000001,dep,hs,alofi,a,hf,L,md,dd,key1);

% fileIDsim=fopen('nwh=200_npr=20_a=3_h=5AgfirstL=1000.txt','r');
% fileIDsim=fopen('nwh=200_npr=20_a=3_h=7_AgfirstL=500.txt','r');
% fileIDsim=fopen('dd,dm_hf=200_L=1000_noNP.txt','r');
% fileIDsim=fopen('dd,dm_hf=200_L=500_noNP.txt','r');
fileIDsim=fopen('L500_hf30_r2.txt','r');

%     simformatSpecA = '%s %s %s %s';
%     simsizeA = [1 3];
    simformatSpecB = '%f %f %f %f';
    simsizeB = [3 Inf];
%     simA=fscanf(fileIDsim,simformatSpecA,simsizeA);
    simB=fscanf(fileIDsim,simformatSpecB,simsizeB);
    
%     simB(2,:)
figure;
tiledlayout(1,1);
p1=nexttile;
hold on
plot(p1,wavelengthr1,RSr1*100,'b','DisplayName',char(append("RS")))
% plot(p1,wavelengthr1,RPr1*100,'b--','DisplayName',char(append("RP without NP")))
% plot(p1,wavelengthr1,ASr1*100,'c','DisplayName',char(append("AS",string(key2))))
% plot(p1,wavelengthr1,RSnoNPr1*100,'--','DisplayName',char(append("RS","  no NP")))
plot(simB(1,:),simB(2,:),'--');
axis([300 800 0 100])
hold off

clear variables
