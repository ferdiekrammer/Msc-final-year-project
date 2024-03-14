%equations fail if halfspace is metal in natur
% keys
key1=2; %controles what the image charge screening factor (eta) is: if 2 all imaginary parts of sqrt(epspllepsper) are made positive, if 1 eta contains the imaginary parts if 0.5 eta contains only the real parts if 0 then eta is 0 is on or off
key2=0; %determinse what the fill fraction is each time (0,15,35,50,65,80,100)
key3=2; %1 poroduceds a single polt, 2 porduces 3 polots with somting being varied
key31=1; %when key3 =1: 1 produses a plot with s polarised light and 2 produces a plot with p polarised light
key4=2; %what is beeing varied (1 varys R, 2 varys a, 3 varys hs, 4 varys hf,5 varys angl)
key5=1; % when key3=1, 1 plots R,T&A 2 plots eps per and eps pll

% lines
lin1=312.8;
lin2=448.31;
lin3=448.44;

Rad=20;    %radius of NP
hs=1;      %hight of layer 3
hf=200;    %thickness of layer 4 (standard is 320nm)
alofi=0;   %angel of incident light
aconst=3;  % a=Rad*3;   %lattice constant
a=Rad*aconst;
% dep=100;     %thickness of layer 2
dep=(4*pi*Rad^3)/(3*a^2);    %thickness of layer 2
% dep=1;

md=key2/100;
dd=1-md;

[key21,key22,key23,key24,key25]=deal(0,35,50,65,100);
[md1,md2,md3,md4,md5]=deal(key21/100,key22/100,key23/100,key24/100,key25/100);
[dd1,dd2,dd3,dd4,dd5]=deal(1-md1,1-md2,1-md3,1-md4,1-md5);
[hs1,hs2,hs3]=deal(hs);
[Rad1,Rad2,Rad3]=deal(Rad);
Latc=num2cell((aconst.*[Rad1, Rad2, Rad3]).');
[a1, a2, a3]=Latc{1:3,1};
[hf1,hf2,hf3]=deal(hf);
[alofi1,alofi2,alofi3]=deal(alofi);
ver="ff=";
[ver1,ver2,ver3,ver4,ver5]=deal(key21,key22,key23,key24,key25);


[RSr1,RPr1,TSr1,TPr1,ASr1,APr1,wavelengthr1,var1r1,var2r1] = spectrum_anisotropic_sheets_5L(Rad1,dep,hs1,alofi1,a1,hf1,md1,dd1,key1);
[RSr2,RPr2,TSr2,TPr2,ASr2,APr2,wavelengthr2,var1r2,var2r2] = spectrum_anisotropic_sheets_5L(Rad2,dep,hs2,alofi2,a2,hf2,md2,dd2,key1);
[RSr3,RPr3,TSr3,TPr3,ASr3,APr3,wavelengthr3,var1r3,var2r3] = spectrum_anisotropic_sheets_5L(Rad3,dep,hs3,alofi3,a3,hf3,md3,dd3,key1);
[RSr4,RPr4,TSr4,TPr4,ASr4,APr4,wavelengthr4,var1r4,var2r4] = spectrum_anisotropic_sheets_5L(Rad3,dep,hs3,alofi3,a3,hf3,md4,dd4,key1);
[RSr5,RPr5,TSr5,TPr5,ASr5,APr5,wavelengthr5,var1r5,var2r5] = spectrum_anisotropic_sheets_5L(Rad3,dep,hs3,alofi3,a3,hf3,md5,dd5,key1);

[RSnoNPr1,RPnoNPr1,TSnoNPr1,TPnoNPr1,ASnoNPr1,APnoNPr1,wavelengthnoNPr1,var1noNPr1,var2noNPr1] = spectrum_anisotropic_sheets_5L(0.0000001,dep,hs1,alofi1,a1,hf1,md1,dd1,key1);
[RSnoNPr2,RPnoNPr2,TSnoNPr2,TPnoNPr2,ASnoNPr2,APnoNPr2,wavelengthnoNPr2,var1noNPr2,var2noNPr2] = spectrum_anisotropic_sheets_5L(0.0000001,dep,hs2,alofi2,a2,hf2,md2,dd2,key1);
[RSnoNPr3,RPnoNPr3,TSnoNPr3,TPnoNPr3,ASnoNPr3,APnoNPr3,wavelengthnoNPr3,var1noNPr3,var2noNPr3] = spectrum_anisotropic_sheets_5L(0.0000001,dep,hs3,alofi3,a3,hf3,md3,dd3,key1);
[RSnoNPr4,RPnoNPr4,TSnoNPr4,TPnoNPr4,ASnoNPr4,APnoNPr4,wavelengthnoNPr4,var1noNPr4,var2noNPr4] = spectrum_anisotropic_sheets_5L(0.0000001,dep,hs3,alofi3,a3,hf3,md4,dd4,key1);
[RSnoNPr5,RPnoNPr5,TSnoNPr5,TPnoNPr5,ASnoNPr5,APnoNPr5,wavelengthnoNPr5,var1noNPr5,var2noNPr5] = spectrum_anisotropic_sheets_5L(0.0000001,dep,hs3,alofi3,a3,hf3,md5,dd5,key1);

figure;

tiledlayout(1,2,'TileSpacing','compact');
p1=nexttile;
hold on
plot(p1,wavelengthr1,RSnoNPr1*100,'DisplayName',char(append(string(ver),string(ver1))))
plot(p1,wavelengthr2,RSnoNPr2*100,'DisplayName',char(append(string(ver),string(ver2))))
plot(p1,wavelengthr3,RSnoNPr3*100,'DisplayName',char(append(string(ver),string(ver3))))
plot(p1,wavelengthr4,RSnoNPr4*100,'DisplayName',char(append(string(ver),string(ver4))))
plot(p1,wavelengthr5,RSnoNPr5*100,'DisplayName',char(append(string(ver),string(ver5))))
hold off
xlabel(p1,'Wavelength (nm)')
ylabel(p1,'Reflectance %')
title(p1,'no NP present')
legend(p1,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
axis([300 800 0 100])



clear variables
