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
[alofi1,alofi2,alofi3]=deal(0,30,60);
ver="alofi=";
[ver1,ver2,ver3]=deal(alofi1,alofi2,alofi3);
    
[a1,a2,a3,a4,a5]=deal(Rad*aconst);
[dep1,dep2,dep3,dep4,dep5]=deal((4*pi*Rad1^3)/(3*a1^2),(4*pi*Rad2^3)/(3*a2^2),(4*pi*Rad3^3)/(3*a3^2),(4*pi*Rad4^3)/(3*a4^2),(4*pi*Rad5^3)/(3*a5^2));    %thickness of layer 2

[RSr11,RPr11,TSr11,TPr11,ASr11,APr11,wavelengthr11,var1r11,var2r11] = spectrum_anisotropic_sheets_5L(Rad1,dep1,hs1,alofi1,a1,hf1,md1,dd1,key1);
[RSr12,RPr12,TSr12,TPr12,ASr12,APr12,wavelengthr12,var1r12,var2r12] = spectrum_anisotropic_sheets_5L(Rad2,dep2,hs1,alofi2,a2,hf1,md1,dd1,key1);
[RSr13,RPr13,TSr13,TPr13,ASr13,APr13,wavelengthr13,var1r13,var2r13] = spectrum_anisotropic_sheets_5L(Rad3,dep3,hs1,alofi3,a3,hf1,md1,dd1,key1);

[RSr21,RPr21,TSr21,TPr21,ASr21,APr21,wavelengthr21,var1r21,var2r21] = spectrum_anisotropic_sheets_5L(Rad1,dep1,hs2,alofi1,a1,hf2,md2,dd2,key1);
[RSr22,RPr22,TSr22,TPr22,ASr22,APr22,wavelengthr22,var1r22,var2r22] = spectrum_anisotropic_sheets_5L(Rad2,dep2,hs2,alofi2,a2,hf2,md2,dd2,key1);
[RSr23,RPr23,TSr23,TPr23,ASr23,APr23,wavelengthr23,var1r23,var2r23] = spectrum_anisotropic_sheets_5L(Rad3,dep3,hs2,alofi3,a3,hf2,md2,dd2,key1);

[RSr31,RPr31,TSr31,TPr31,ASr31,APr31,wavelengthr31,var1r31,var2r31] = spectrum_anisotropic_sheets_5L(Rad3,dep1,hs3,alofi1,a1,hf3,md3,dd3,key1);
[RSr32,RPr32,TSr32,TPr32,ASr32,APr32,wavelengthr32,var1r32,var2r32] = spectrum_anisotropic_sheets_5L(Rad3,dep2,hs3,alofi2,a2,hf3,md3,dd3,key1);
[RSr33,RPr33,TSr33,TPr33,ASr33,APr33,wavelengthr33,var1r33,var2r33] = spectrum_anisotropic_sheets_5L(Rad3,dep3,hs3,alofi3,a3,hf3,md3,dd3,key1);

[RSr41,RPr41,TSr41,TPr41,ASr41,APr41,wavelengthr41,var1r41,var2r41] = spectrum_anisotropic_sheets_5L(Rad3,dep1,hs3,alofi1,a1,hf3,md4,dd4,key1);
[RSr42,RPr42,TSr42,TPr42,ASr42,APr42,wavelengthr42,var1r42,var2r42] = spectrum_anisotropic_sheets_5L(Rad3,dep2,hs3,alofi2,a2,hf3,md4,dd4,key1);
[RSr43,RPr43,TSr43,TPr43,ASr43,APr43,wavelengthr43,var1r43,var2r43] = spectrum_anisotropic_sheets_5L(Rad3,dep3,hs3,alofi3,a3,hf3,md4,dd4,key1);

[RSr51,RPr51,TSr51,TPr51,ASr51,APr51,wavelengthr51,var1r51,var2r51] = spectrum_anisotropic_sheets_5L(Rad1,dep1,hs1,alofi1,a1,hf1,md5,dd5,key1);
[RSr52,RPr52,TSr52,TPr52,ASr52,APr52,wavelengthr52,var1r52,var2r52] = spectrum_anisotropic_sheets_5L(Rad2,dep2,hs2,alofi2,a2,hf2,md5,dd5,key1);
[RSr53,RPr53,TSr53,TPr53,ASr53,APr53,wavelengthr53,var1r53,var2r53] = spectrum_anisotropic_sheets_5L(Rad3,dep3,hs3,alofi3,a3,hf3,md5,dd5,key1);

figure;

tiledlayout(5,2,'TileSpacing','compact');
p1=nexttile;
hold on
plot(p1,wavelengthr11,RSr11*100,'DisplayName',char(append(string(ver),string(ver1))))
plot(p1,wavelengthr12,RSr12*100,'DisplayName',char(append(string(ver),string(ver2))))
plot(p1,wavelengthr13,RSr13*100,'DisplayName',char(append(string(ver),string(ver3))))
hold off
xlabel(p1,'Wavelength (nm)')
ylabel(p1,'Reflectance %')
title(p1,char(append('ff=',string(key21),'%,   s-polarized light')))
legend(p1,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
axis([300 800 0 100])

p6=nexttile;
hold on
plot(p6,wavelengthr11,RPr11*100,'DisplayName',char(append(string(ver),string(ver1))))
plot(p6,wavelengthr12,RPr12*100,'DisplayName',char(append(string(ver),string(ver2))))
plot(p6,wavelengthr13,RPr13*100,'DisplayName',char(append(string(ver),string(ver3))))
hold off
xlabel(p6,'Wavelength (nm)')
ylabel(p6,'Reflectance %')
title(p6,char(append('ff=',string(key21),'%,   p-polarized light')))
legend(p6,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
axis([300 800 0 100])

p2=nexttile;
hold on
plot(p2,wavelengthr21,RSr21*100,'DisplayName',char(append(string(ver),string(ver1))))
plot(p2,wavelengthr22,RSr22*100,'DisplayName',char(append(string(ver),string(ver2))))
plot(p2,wavelengthr23,RSr23*100,'DisplayName',char(append(string(ver),string(ver3))))
hold off
xlabel(p2,'Wavelength (nm)')
ylabel(p2,'Reflectance %')
title(p2,char(append('ff=',string(key22),'%,   s-polarized light')))
legend(p2,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
axis([300 800 0 100])

p7=nexttile;
hold on
plot(p7,wavelengthr21,RPr21*100,'DisplayName',char(append(string(ver),string(ver1))))
plot(p7,wavelengthr22,RPr22*100,'DisplayName',char(append(string(ver),string(ver2))))
plot(p7,wavelengthr23,RPr23*100,'DisplayName',char(append(string(ver),string(ver3))))
hold off
xlabel(p7,'Wavelength (nm)')
ylabel(p7,'Reflectance %')
title(p7,char(append('ff=',string(key22),'%,   p-polarized light')))
legend(p7,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
axis([300 800 0 100])

p3=nexttile;
hold on
plot(p3,wavelengthr31,RSr31*100,'DisplayName',char(append(string(ver),string(ver1))))
plot(p3,wavelengthr32,RSr32*100,'DisplayName',char(append(string(ver),string(ver2))))
plot(p3,wavelengthr33,RSr33*100,'DisplayName',char(append(string(ver),string(ver3))))
hold off
xlabel(p3,'Wavelength (nm)')
ylabel(p3,'Reflectance %')
title(p3,char(append('ff=',string(key23),'%,   s-polarized light')))
legend(p3,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
axis([300 800 0 100])

p8=nexttile;
hold on
plot(p8,wavelengthr31,RPr31*100,'DisplayName',char(append(string(ver),string(ver1))))
plot(p8,wavelengthr32,RPr32*100,'DisplayName',char(append(string(ver),string(ver2))))
plot(p8,wavelengthr33,RPr33*100,'DisplayName',char(append(string(ver),string(ver3))))
hold off
xlabel(p8,'Wavelength (nm)')
ylabel(p8,'Reflectance %')
title(p8,char(append('ff=',string(key23),'%,   p-polarized light')))
legend(p8,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
axis([300 800 0 100])


p4=nexttile;
hold on
plot(p4,wavelengthr41,RSr41*100,'DisplayName',char(append(string(ver),string(ver1))))
plot(p4,wavelengthr42,RSr42*100,'DisplayName',char(append(string(ver),string(ver2))))
plot(p4,wavelengthr43,RSr43*100,'DisplayName',char(append(string(ver),string(ver3))))
hold off
xlabel(p4,'Wavelength (nm)')
ylabel(p4,'Reflectance %')
title(p4,char(append('ff=',string(key24),'%,   s-polarized light')))
legend(p4,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
axis([300 800 0 100])

p9=nexttile;
hold on
plot(p9,wavelengthr41,RPr41*100,'DisplayName',char(append(string(ver),string(ver1))))
plot(p9,wavelengthr42,RPr42*100,'DisplayName',char(append(string(ver),string(ver2))))
plot(p9,wavelengthr43,RPr43*100,'DisplayName',char(append(string(ver),string(ver3))))
hold off
xlabel(p9,'Wavelength (nm)')
ylabel(p9,'Reflectance %')
title(p9,char(append('ff=',string(key24),'%,   p-polarized light')))
legend(p9,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
axis([300 800 0 100])

p5=nexttile;
hold on
plot(p5,wavelengthr51,RSr51*100,'DisplayName',char(append(string(ver),string(ver1))))
plot(p5,wavelengthr52,RSr52*100,'DisplayName',char(append(string(ver),string(ver2))))
plot(p5,wavelengthr53,RSr53*100,'DisplayName',char(append(string(ver),string(ver3))))
hold off
xlabel(p5,'Wavelength (nm)')
ylabel(p5,'Reflectance %')
title(p5,char(append('ff=',string(key25),'%,   s-polarized light')))
legend(p5,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
axis([300 800 0 100])

p10=nexttile;
hold on
plot(p10,wavelengthr51,RPr51*100,'DisplayName',char(append(string(ver),string(ver1))))
plot(p10,wavelengthr52,RPr52*100,'DisplayName',char(append(string(ver),string(ver2))))
plot(p10,wavelengthr53,RPr53*100,'DisplayName',char(append(string(ver),string(ver3))))
hold off
xlabel(p10,'Wavelength (nm)')
ylabel(p10,'Reflectance %')
title(p10,char(append('ff=',string(key25),'%,   p-polarized light')))
legend(p10,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
axis([300 800 0 100])
clear variables