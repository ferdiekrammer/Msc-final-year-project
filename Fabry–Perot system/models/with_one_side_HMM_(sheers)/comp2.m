%equations fail if halfspace is metal in natur
% [RSnoNPr1,RPnoNPr1,TSnoNPr1,TPnoNPr1,ASnoNPr1,APnoNPr1,wavelengthnoNPr1,var1noNPr1,var2noNPr1] = spectrum_anisotropic_fabryperot_sheets(0.000000001,dep,hs,alofi,a,hf,L,md,dd,key1);
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

Rad=20;    %radius of NP
hs=5;      %hight of layer 3
hf1=50;    %thickness of layer 2 (standard is 320nm)
hf2=200;   %thickness of layer 8 (standard is 320nm)
alofi=0;   %angel of incident light
aconst=2.5;  % a=Rad*3;   %lattice constant
a=Rad*aconst;
L=1000;     %cell size
% dep=1;     %thickness of layer 2
dep=(4*pi*Rad^3)/(3*a^2); 
L2=1005;
md=key2/100;
dd=1-md;

[RSr1,RPr1,TSr1,TPr1,ASr1,APr1,wavelengthr1,var1r1,var2r1] = spectrum_anisotropic_fabryperot_sheets_bottom(0.00000001,dep,hs,alofi,a,hf1,hf2,L,md,dd,key1);
[RSr2,RPr2,TSr2,TPr2,ASr2,APr2,wavelengthr2,var1r2,var2r2] = spectrum_anisotropic_fabryperot_sheets_bottom(Rad,dep,hs,alofi,a,hf1,hf2,L2,md,dd,key1);

% fileIDsim=fopen('dd,dm=5_HMMhf=200_Aghf=50_L=1042_noNP_Agfirst.txt','r');
fileIDsim=fopen('FPI_HMM_hf=200_Ag_hf=50.txt','r');
% fileIDsim=fopen('dd,dm_hf=200_L=500_noNP.txt','r');
% fileIDsim=fopen('L500_hf30_r2.txt','r');

%     simformatSpecA = '%s %s %s %s';
%     simsizeA = [1 3];
    simformatSpecB = '%f %f %f %f';
    simsizeB = [3 Inf];
%     simA=fscanf(fileIDsim,simformatSpecA,simsizeA);
    simB=fscanf(fileIDsim,simformatSpecB,simsizeB);
    
    fileIDsim2=fopen('FPI_HMM_hf=200_Ag_hf=50_R=20_h=6.txt','r');
%     simformatSpecA = '%s %s %s %s';
%     simsizeA = [1 3];
    simformatSpecB2 = '%f %f %f %f';
    simsizeB2 = [3 Inf];
%     simA=fscanf(fileIDsim,simformatSpecA,simsizeA);
    simB2=fscanf(fileIDsim2,simformatSpecB2,simsizeB2);
%     simB(2,:)
figure;
tiledlayout(2,3,'TileSpacing','compact');

p1=nexttile;
hold on
plot(p1,wavelengthr1,RSr1*100,'DisplayName',char(append("Theory with out NP")))
plot(p1,simB(1,:),simB(2,:),'--');
hold off
xlabel(p1,'wavelength (nm)')
ylabel(p1,'Reflection %')
title(p1,'No NP')
axis([300 800 0 100])
legend('Location','northwest','NumColumns',1)

p2=nexttile;
hold on
plot(p2,wavelengthr1,TSr1*100,'DisplayName',char(append("Theory with out NP")))
plot(p2,simB(1,:),simB(3,:),'--');


hold off
xlabel(p2,'wavelength (nm)')
ylabel(p2,'Transmitance %')
title(p2,'No NP')
axis([300 800 0 100])
legend('Location','northeast','NumColumns',1)

p3=nexttile;
hold on
plot(p3,wavelengthr1,ASr1*100,'DisplayName',char(append("Theory")))
plot(p3,simB(1,:),100-simB(3,:)-simB(2,:),'--','DisplayName',char(append("COMSOL")));


hold off
xlabel(p3,'wavelength (nm)')
ylabel(p3,'Absorbance %')
title(p3,'No NP')
axis([300 800 0 100])
legend('Location','northeast','NumColumns',1)

p4=nexttile;
hold on
plot(p4,wavelengthr1,RSr2*100,'DisplayName',char(append("Theory with NP")))
plot(p4,simB2(1,:),simB2(2,:),'--','DisplayName',char(append("COMSOL")));
hold off
xlabel(p4,'wavelength (nm)')
ylabel(p4,'Reflection %')
title(p4,'Au NP R=20')
axis([300 800 0 100])
legend('Location','northwest','NumColumns',1)

p5=nexttile;
hold on
plot(p5,wavelengthr1,TSr2*100,'DisplayName',char(append("Theory with NP")))
plot(p5,simB2(1,:),simB2(3,:),'--','DisplayName',char(append("COMSOL")));
hold off
xlabel(p5,'wavelength (nm)')
ylabel(p5,'Transmitance %')
title(p5,'Au NP R=20')
axis([300 800 0 100])
legend('Location','northeast','NumColumns',1)

p6=nexttile;
hold on
plot(p6,wavelengthr1,ASr2*100,'DisplayName',char(append("Theory with NP")))
plot(p6,simB2(1,:),100-simB2(3,:)-simB2(2,:),'--','DisplayName',char(append("COMSOL")));
hold off
xlabel(p6,'wavelength (nm)')
ylabel(p6,'Absorbance %')
title(p6,'Au NP R=20')
axis([300 800 0 100])
legend('Location','northeast','NumColumns',1)

clear variables
