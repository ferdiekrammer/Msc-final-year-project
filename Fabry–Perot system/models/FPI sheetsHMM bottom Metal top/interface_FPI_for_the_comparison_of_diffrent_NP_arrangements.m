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
hf12=20;
hf2=100;   %thickness of layer 8 (standard is 320nm)
alofi=0;   %angel of incident light
aconst=3;  % a=Rad*3;   %lattice constant
a=Rad*aconst;
L=1000;     %cell size
% dep=1;     %thickness of layer 2
dep=(4*pi*Rad^3)/(3*a^2); 
Rad2=20;
md=key2/100;
dd=1-md;

[a1,a2,a3,a4]=deal(Rad*2.5,Rad*3,Rad*3.5,Rad*4);
[RSr1,RPr1,TSr1,TPr1,ASr1,APr1,wavelengthr1,var1r1,var2r1] = spectrum_anisotropic_fabryperot_sheets_bottom(Rad,depNP(Rad,a1),hs,alofi,a1,hf1,hf2,L,md,dd,key1);
[RSr2,RPr2,TSr2,TPr2,ASr2,APr2,wavelengthr2,var1r2,var2r2] = spectrum_anisotropic_fabryperot_sheets_bottom(Rad,depNP(Rad,a2),hs,alofi,a2,hf1,hf2,L,md,dd,key1);
[RSr3,RPr3,TSr3,TPr3,ASr3,APr3,wavelengthr3,var1r3,var2r3] = spectrum_anisotropic_fabryperot_sheets_bottom(Rad,depNP(Rad,a3),hs,alofi,a3,hf1,hf2,L,md,dd,key1);
[RSr4,RPr4,TSr4,TPr4,ASr4,APr4,wavelengthr4,var1r4,var2r4] = spectrum_anisotropic_fabryperot_sheets_bottom(Rad,depNP(Rad,a4),hs,alofi,a4,hf1,hf2,L,md,dd,key1);
[RSnoNPr1,RPnoNPr1,TSnoNPr1,TPnoNPr1,ASnoNPr1,APnoNPr1,wavelengthnoNPr1,var1noNPr1,var2noNPr1] = spectrum_anisotropic_fabryperot_sheets_bottom(0.00000001,depNP(0.00000001,a),hs,alofi,a,hf1,hf2,L,md,dd,key1);

[RSr12,RPr12,TSr12,TPr12,ASr12,APr12,wavelengthr12,var1r12,var2r12] = spectrum_anisotropic_fabryperot_sheets_bottom(Rad2,depNP(Rad2,a1),hs,alofi,a1,hf12,hf2,L,md,dd,key1);
[RSr22,RPr22,TSr22,TPr22,ASr22,APr22,wavelengthr22,var1r22,var2r22] = spectrum_anisotropic_fabryperot_sheets_bottom(Rad2,depNP(Rad2,a2),hs,alofi,a2,hf12,hf2,L,md,dd,key1);
[RSr32,RPr32,TSr32,TPr32,ASr32,APr32,wavelengthr32,var1r32,var2r32] = spectrum_anisotropic_fabryperot_sheets_bottom(Rad2,depNP(Rad2,a3),hs,alofi,a3,hf12,hf2,L,md,dd,key1);
[RSr42,RPr42,TSr42,TPr42,ASr42,APr42,wavelengthr42,var1r42,var2r42] = spectrum_anisotropic_fabryperot_sheets_bottom(Rad2,depNP(Rad2,a4),hs,alofi,a4,hf12,hf2,L,md,dd,key1);
[RSnoNPr12,RPnoNPr12,TSnoNPr12,TPnoNPr12,ASnoNPr12,APnoNPr12,wavelengthnoNPr12,var1noNPr12,var2noNPr12] = spectrum_anisotropic_fabryperot_sheets_bottom(0.00000001,depNP(0.00000001,a),hs,alofi,a,hf12,hf2,L,md,dd,key1);


figure;
tiledlayout(2,3,'TileSpacing','compact');
p1=nexttile;
hold on
plot(p1,wavelengthr1,RSnoNPr1*100,'DisplayName',char(append("no NP")))
plot(p1,wavelengthr1,RSr1*100,'DisplayName',char(append("a=2.5R")))
plot(p1,wavelengthr1,RSr2*100,'DisplayName',char(append("a=3R")))
plot(p1,wavelengthr1,RSr3*100,'DisplayName',char(append("a=3.5R")))
plot(p1,wavelengthr1,RSr4*100,'DisplayName',char(append("a=5R")))
hold off
xlabel(p1,'wavelength (nm)')
ylabel(p1,'Reflection %')
title(p1,'Au NP R=20 nm hf=50 nm')
axis([300 800 0 100])
legend('Location','northwest','NumColumns',1)

p2=nexttile;
hold on
plot(p2,wavelengthr1,TSnoNPr1*100,'DisplayName',char(append("no NP")))
plot(p2,wavelengthr1,TSr1*100,'DisplayName',char(append("a=2.5R")))
plot(p2,wavelengthr1,TSr2*100,'DisplayName',char(append("a=3R")))
plot(p2,wavelengthr1,TSr3*100,'DisplayName',char(append("a=3.5R")))
plot(p2,wavelengthr1,TSr4*100,'DisplayName',char(append("a=5R")))

hold off
xlabel(p2,'wavelength (nm)')
ylabel(p2,'Transmitance %')
title(p2,'Au NP R=20 nm hf=50 nm')
axis([300 800 0 100])
legend('Location','northeast','NumColumns',1)

p3=nexttile;
hold on
plot(p3,wavelengthr1,ASnoNPr1*100,'DisplayName',char(append("no NP")))
plot(p3,wavelengthr1,ASr1*100,'DisplayName',char(append("a=2.5R")))
plot(p3,wavelengthr1,ASr2*100,'DisplayName',char(append("a=3R")))
plot(p3,wavelengthr1,ASr3*100,'DisplayName',char(append("a=3.5R")))
plot(p3,wavelengthr1,ASr4*100,'DisplayName',char(append("a=5R")))

hold off
xlabel(p3,'wavelength (nm)')
ylabel(p3,'Absorbance %')
title(p3,'Au NP R=20 nm hf=50 nm')
axis([300 800 0 100])
legend('Location','northeast','NumColumns',1)

p4=nexttile;
hold on
plot(p4,wavelengthr1,RSnoNPr12*100,'DisplayName',char(append("no NP")))
plot(p4,wavelengthr1,RSr12*100,'DisplayName',char(append("a=2.5R")))
plot(p4,wavelengthr1,RSr22*100,'DisplayName',char(append("a=3R")))
plot(p4,wavelengthr1,RSr32*100,'DisplayName',char(append("a=3.5R")))
plot(p4,wavelengthr1,RSr42*100,'DisplayName',char(append("a=5R")))
hold off
xlabel(p4,'wavelength (nm)')
ylabel(p4,'Reflection %')
title(p4,'Au NP R=20 nm hf=30 nm')
axis([300 800 0 100])
legend('Location','northwest','NumColumns',1)

p5=nexttile;
hold on
plot(p5,wavelengthr1,TSnoNPr12*100,'DisplayName',char(append("no NP")))
plot(p5,wavelengthr1,TSr12*100,'DisplayName',char(append("a=2.5R")))
plot(p5,wavelengthr1,TSr22*100,'DisplayName',char(append("a=3R")))
plot(p5,wavelengthr1,TSr32*100,'DisplayName',char(append("a=3.5R")))
plot(p5,wavelengthr1,TSr42*100,'DisplayName',char(append("a=5R")))

hold off
xlabel(p5,'wavelength (nm)')
ylabel(p5,'Transmitance %')
title(p5,'Au NP R=20 nm hf=30 nm')
axis([300 800 0 100])
legend('Location','northeast','NumColumns',1)

p6=nexttile;
hold on
plot(p6,wavelengthr1,ASnoNPr12*100,'DisplayName',char(append("no NP")))
plot(p6,wavelengthr1,ASr12*100,'DisplayName',char(append("a=2.5R")))
plot(p6,wavelengthr1,ASr22*100,'DisplayName',char(append("a=3R")))
plot(p6,wavelengthr1,ASr32*100,'DisplayName',char(append("a=3.5R")))
plot(p6,wavelengthr1,ASr42*100,'DisplayName',char(append("a=5R")))

hold off
xlabel(p6,'wavelength (nm)')
ylabel(p6,'Absorbance %')
title(p6,'Au NP R=20 nm hf=30 nm')
axis([300 800 0 100])
legend('Location','northeast','NumColumns',1)

clear variables