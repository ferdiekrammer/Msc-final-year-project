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
[hs1,hs2,hs3,hs4,hs5]=deal(hs);
[Rad1,Rad2,Rad3,Rad4,Rad5]=deal(Rad);
% Latc=num2cell((aconst.*[Rad1, Rad2, Rad3]).');
[hf1,hf2,hf3,hf4,hf5]=deal(hf);
[alofi1,alofi2,alofi3]=deal(alofi);

[a1,a2,a3,a4,a5]=deal(Rad*2.2,Rad*2.5,Rad*3,Rad*3.5,Rad*5);

[dep1,dep2,dep3,dep4,dep5]=deal((4*pi*Rad1^3)/(3*a1^2),(4*pi*Rad2^3)/(3*a2^2),(4*pi*Rad3^3)/(3*a3^2),(4*pi*Rad4^3)/(3*a4^2),(4*pi*Rad5^3)/(3*a5^2));    %thickness of layer 2

ver="a=Rx";
[ver1,ver2,ver3,ver4,ver5]=deal(2.2,2.5,3,3.5,5);


[RSr11,RPr11,TSr11,TPr11,ASr11,APr11,wavelengthr11,var1r11,var2r11] = spectrum_anisotropic_sheets_5L(Rad1,dep1,hs1,alofi1,a1,hf1,md1,dd1,key1);
[RSr12,RPr12,TSr12,TPr12,ASr12,APr12,wavelengthr12,var1r12,var2r12] = spectrum_anisotropic_sheets_5L(Rad2,dep2,hs1,alofi1,a2,hf1,md1,dd1,key1);
[RSr13,RPr13,TSr13,TPr13,ASr13,APr13,wavelengthr13,var1r13,var2r13] = spectrum_anisotropic_sheets_5L(Rad3,dep3,hs1,alofi1,a3,hf1,md1,dd1,key1);
[RSr14,RPr14,TSr14,TPr14,ASr14,APr14,wavelengthr14,var1r14,var2r14] = spectrum_anisotropic_sheets_5L(Rad4,dep4,hs1,alofi1,a4,hf1,md1,dd1,key1);
[RSr15,RPr15,TSr15,TPr15,ASr15,APr15,wavelengthr15,var1r15,var2r15] = spectrum_anisotropic_sheets_5L(Rad5,dep5,hs1,alofi1,a5,hf1,md1,dd1,key1);


[RSr21,RPr21,TSr21,TPr21,ASr21,APr21,wavelengthr21,var1r21,var2r21] = spectrum_anisotropic_sheets_5L(Rad1,dep1,hs2,alofi2,a1,hf2,md2,dd2,key1);
[RSr22,RPr22,TSr22,TPr22,ASr22,APr22,wavelengthr22,var1r22,var2r22] = spectrum_anisotropic_sheets_5L(Rad2,dep2,hs2,alofi2,a2,hf2,md2,dd2,key1);
[RSr23,RPr23,TSr23,TPr23,ASr23,APr23,wavelengthr23,var1r23,var2r23] = spectrum_anisotropic_sheets_5L(Rad3,dep3,hs2,alofi2,a3,hf2,md2,dd2,key1);
[RSr24,RPr24,TSr24,TPr24,ASr24,APr24,wavelengthr24,var1r24,var2r24] = spectrum_anisotropic_sheets_5L(Rad4,dep4,hs2,alofi2,a4,hf2,md2,dd2,key1);
[RSr25,RPr25,TSr25,TPr25,ASr25,APr25,wavelengthr25,var1r25,var2r25] = spectrum_anisotropic_sheets_5L(Rad5,dep5,hs2,alofi2,a5,hf2,md2,dd2,key1);

[RSr31,RPr31,TSr31,TPr31,ASr31,APr31,wavelengthr31,var1r31,var2r31] = spectrum_anisotropic_sheets_5L(Rad3,dep1,hs3,alofi3,a1,hf3,md3,dd3,key1);
[RSr32,RPr32,TSr32,TPr32,ASr32,APr32,wavelengthr32,var1r32,var2r32] = spectrum_anisotropic_sheets_5L(Rad3,dep2,hs3,alofi3,a2,hf3,md3,dd3,key1);
[RSr33,RPr33,TSr33,TPr33,ASr33,APr33,wavelengthr33,var1r33,var2r33] = spectrum_anisotropic_sheets_5L(Rad3,dep3,hs3,alofi3,a3,hf3,md3,dd3,key1);
[RSr34,RPr34,TSr34,TPr34,ASr34,APr34,wavelengthr34,var1r34,var2r34] = spectrum_anisotropic_sheets_5L(Rad3,dep4,hs3,alofi3,a4,hf3,md3,dd3,key1);
[RSr35,RPr35,TSr35,TPr35,ASr35,APr35,wavelengthr35,var1r35,var2r35] = spectrum_anisotropic_sheets_5L(Rad3,dep5,hs3,alofi3,a5,hf3,md3,dd3,key1);

[RSr41,RPr41,TSr41,TPr41,ASr41,APr41,wavelengthr41,var1r41,var2r41] = spectrum_anisotropic_sheets_5L(Rad3,dep1,hs3,alofi3,a1,hf3,md4,dd4,key1);
[RSr42,RPr42,TSr42,TPr42,ASr42,APr42,wavelengthr42,var1r42,var2r42] = spectrum_anisotropic_sheets_5L(Rad3,dep2,hs3,alofi3,a2,hf3,md4,dd4,key1);
[RSr43,RPr43,TSr43,TPr43,ASr43,APr43,wavelengthr43,var1r43,var2r43] = spectrum_anisotropic_sheets_5L(Rad3,dep3,hs3,alofi3,a3,hf3,md4,dd4,key1);
[RSr44,RPr44,TSr44,TPr44,ASr44,APr44,wavelengthr44,var1r44,var2r44] = spectrum_anisotropic_sheets_5L(Rad3,dep4,hs3,alofi3,a4,hf3,md4,dd4,key1);
[RSr45,RPr45,TSr45,TPr45,ASr45,APr45,wavelengthr45,var1r45,var2r45] = spectrum_anisotropic_sheets_5L(Rad3,dep5,hs3,alofi3,a5,hf3,md4,dd4,key1);

[RSr51,RPr51,TSr51,TPr51,ASr51,APr51,wavelengthr51,var1r51,var2r51] = spectrum_anisotropic_sheets_5L(Rad1,dep1,hs1,alofi3,a1,hf1,md5,dd5,key1);
[RSr52,RPr52,TSr52,TPr52,ASr52,APr52,wavelengthr52,var1r52,var2r52] = spectrum_anisotropic_sheets_5L(Rad2,dep2,hs2,alofi3,a2,hf2,md5,dd5,key1);
[RSr53,RPr53,TSr53,TPr53,ASr53,APr53,wavelengthr53,var1r53,var2r53] = spectrum_anisotropic_sheets_5L(Rad3,dep3,hs3,alofi3,a3,hf3,md5,dd5,key1);
[RSr54,RPr54,TSr54,TPr54,ASr54,APr54,wavelengthr54,var1r54,var2r54] = spectrum_anisotropic_sheets_5L(Rad4,dep4,hs4,alofi3,a4,hf4,md5,dd5,key1);
[RSr55,RPr55,TSr55,TPr55,ASr55,APr55,wavelengthr55,var1r55,var2r55] = spectrum_anisotropic_sheets_5L(Rad5,dep5,hs5,alofi3,a5,hf5,md5,dd5,key1);

[RSnoNPr1,RPnoNPr1,TSnoNPr1,TPnoNPr1,ASnoNPr1,APnoNPr1,wavelengthnoNPr1,var1noNPr1,var2noNPr1] = spectrum_anisotropic_sheets_5L(0.0000001,dep,hs1,alofi1,a1,hf1,md1,dd1,key1);
[RSnoNPr2,RPnoNPr2,TSnoNPr2,TPnoNPr2,ASnoNPr2,APnoNPr2,wavelengthnoNPr2,var1noNPr2,var2noNPr2] = spectrum_anisotropic_sheets_5L(0.0000001,dep,hs2,alofi2,a2,hf2,md2,dd2,key1);
[RSnoNPr3,RPnoNPr3,TSnoNPr3,TPnoNPr3,ASnoNPr3,APnoNPr3,wavelengthnoNPr3,var1noNPr3,var2noNPr3] = spectrum_anisotropic_sheets_5L(0.0000001,dep,hs3,alofi3,a3,hf3,md3,dd3,key1);
[RSnoNPr4,RPnoNPr4,TSnoNPr4,TPnoNPr4,ASnoNPr4,APnoNPr4,wavelengthnoNPr4,var1noNPr4,var2noNPr4] = spectrum_anisotropic_sheets_5L(0.0000001,dep,hs3,alofi3,a3,hf3,md4,dd4,key1);
[RSnoNPr5,RPnoNPr5,TSnoNPr5,TPnoNPr5,ASnoNPr5,APnoNPr5,wavelengthnoNPr5,var1noNPr5,var2noNPr5] = spectrum_anisotropic_sheets_5L(0.0000001,dep,hs3,alofi3,a3,hf3,md5,dd5,key1);

figure;

tiledlayout(2,3,'TileSpacing','compact');
p1=nexttile;
hold on
% plot(p1,wavelengthr11,RSr11*100,'DisplayName',char(append(string(ver),string(ver1))))
plot(p1,wavelengthr12,RSr12*100,'DisplayName',char(append(string(ver),string(ver2))))
plot(p1,wavelengthr13,RSr13*100,'DisplayName',char(append(string(ver),string(ver3))))
plot(p1,wavelengthr14,RSr14*100,'DisplayName',char(append(string(ver),string(ver4))))
plot(p1,wavelengthr15,RSr15*100,'DisplayName',char(append(string(ver),string(ver5))))
plot(p1,wavelengthnoNPr1,RSnoNPr1*100,'--','DisplayName','no NP')
hold off
xlabel(p1,'Wavelength (nm)')
ylabel(p1,'Reflectance %')
title(p1,char(append('ff=',string(key21),'%')))
legend(p1,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
axis([300 800 0 100])

p2=nexttile;
hold on
% plot(p2,wavelengthr21,RSr21*100,'DisplayName',char(append(string(ver),string(ver1))))
plot(p2,wavelengthr22,RSr22*100,'DisplayName',char(append(string(ver),string(ver2))))
plot(p2,wavelengthr23,RSr23*100,'DisplayName',char(append(string(ver),string(ver3))))
plot(p2,wavelengthr24,RSr24*100,'DisplayName',char(append(string(ver),string(ver4))))
plot(p2,wavelengthr25,RSr25*100,'DisplayName',char(append(string(ver),string(ver5))))
plot(p2,wavelengthnoNPr2,RSnoNPr2*100,'--','DisplayName','no NP')
hold off
xlabel(p2,'Wavelength (nm)')
ylabel(p2,'Reflectance %')
title(p2,char(append('ff=',string(key22),'%')))
legend(p2,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
axis([300 800 0 100])

p3=nexttile;
hold on
% plot(p3,wavelengthr31,RSr31*100,'DisplayName',char(append(string(ver),string(ver1))))
plot(p3,wavelengthr32,RSr32*100,'DisplayName',char(append(string(ver),string(ver2))))
plot(p3,wavelengthr33,RSr33*100,'DisplayName',char(append(string(ver),string(ver3))))
plot(p3,wavelengthr34,RSr34*100,'DisplayName',char(append(string(ver),string(ver4))))
plot(p3,wavelengthr35,RSr35*100,'DisplayName',char(append(string(ver),string(ver5))))
plot(p3,wavelengthnoNPr3,RSnoNPr3*100,'--','DisplayName','no NP')
hold off
xlabel(p3,'Wavelength (nm)')
ylabel(p3,'Reflectance %')
title(p3,char(append('ff=',string(key23),'%')))
legend(p3,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
axis([300 800 0 100])

p4=nexttile;
hold on
% plot(p4,wavelengthr41,RSr41*100,'DisplayName',char(append(string(ver),string(ver1))))
plot(p4,wavelengthr42,RSr42*100,'DisplayName',char(append(string(ver),string(ver2))))
plot(p4,wavelengthr43,RSr43*100,'DisplayName',char(append(string(ver),string(ver3))))
plot(p4,wavelengthr44,RSr44*100,'DisplayName',char(append(string(ver),string(ver4))))
plot(p4,wavelengthr45,RSr45*100,'DisplayName',char(append(string(ver),string(ver5))))
plot(p4,wavelengthnoNPr4,RSnoNPr4*100,'--','DisplayName','no NP')
hold off
xlabel(p4,'Wavelength (nm)')
ylabel(p4,'Reflectance %')
title(p4,char(append('ff=',string(key24),'%')))
legend(p4,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
axis([300 800 0 100])

p5=nexttile;
hold on
% plot(p5,wavelengthr51,RSr51*100,'DisplayName',char(append(string(ver),string(ver1))))
plot(p5,wavelengthr52,RSr52*100,'DisplayName',char(append(string(ver),string(ver2))))
plot(p5,wavelengthr53,RSr53*100,'DisplayName',char(append(string(ver),string(ver3))))
plot(p5,wavelengthr54,RSr54*100,'DisplayName',char(append(string(ver),string(ver4))))
plot(p5,wavelengthr55,RSr55*100,'DisplayName',char(append(string(ver),string(ver5))))
plot(p5,wavelengthnoNPr5,RSnoNPr5*100,'--','DisplayName','no NP')
hold off
xlabel(p5,'Wavelength (nm)')
ylabel(p5,'Reflectance %')
title(p5,char(append('ff=',string(key25),'%')))
legend(p5,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
axis([300 800 0 100])


% p2=nexttile;
% hold on
% plot(p2,wavelengthr1,RSr1*100,'DisplayName',char(append(string(ver),string(ver1))))
% plot(p2,wavelengthr2,RSr2*100,'DisplayName',char(append(string(ver),string(ver2))))
% plot(p2,wavelengthr3,RSr3*100,'DisplayName',char(append(string(ver),string(ver3))))
% plot(p2,wavelengthr4,RSr4*100,'DisplayName',char(append(string(ver),string(ver4))))
% plot(p2,wavelengthr5,RSr5*100,'DisplayName',char(append(string(ver),string(ver5))))
% hold off
% xlabel(p2,'Wavelength (nm)')
% ylabel(p2,'Reflectance %')
% title(p2,'with NP present')
% 
% legend(p2,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
% axis([300 800 0 100])


clear variables