%equations fail if halfspace is metal in natur
key1=2; %controles what the image charge screening factor (eta) is: if 2 all imaginary parts of sqrt(epspllepsper) are made positive, if 1 eta contains the imaginary parts if 0.5 eta contains only the real parts if 0 then eta is 0 is on or off
key2=35; %determinse what the fill fraction is each time (0,15,35,50,65,80,100)
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
hf=100;    %thickness of layer 4 (standard is 320nm)
alofi=0;   %angel of incident light
aconst=3;  % a=Rad*3;   %lattice constant
a=Rad*aconst;
L=1000;     %cell size
% dep=1;     %thickness of layer 2
dep=(4*pi*Rad^3)/(3*a^2); 

Rad2=10; 
dep2=(4*pi*Rad2^3)/(3*a^2);

nwa=key2/10;
ucA=10;

 [a1,a2,a3,a4]=deal(2.5,3,3.5,5);
%   [a1,a2,a3,a4]=deal(Rad*2.5,Rad*3,Rad*3.5,Rad*5);

[RSr1,RPr1,TSr1,TPr1,ASr1,APr1,wavelengthr1,var1r1,var2r1] = spectrum_anisotropic_fabryperot_nw(Rad,dep,hs,alofi,Rad*a1,hf,L,nwa,ucA,key1);
[RSr2,RPr2,TSr2,TPr2,ASr2,APr2,wavelengthr2,var1r2,var2r2] = spectrum_anisotropic_fabryperot_nw(Rad,dep,hs,alofi,Rad*a2,hf,L,nwa,ucA,key1);
[RSr3,RPr3,TSr3,TPr3,ASr3,APr3,wavelengthr3,var1r3,var2r3] = spectrum_anisotropic_fabryperot_nw(Rad,dep,hs,alofi,Rad*a3,hf,L,nwa,ucA,key1);
[RSr4,RPr4,TSr4,TPr4,ASr4,APr4,wavelengthr4,var1r4,var2r4] = spectrum_anisotropic_fabryperot_nw(Rad,dep,hs,alofi,Rad*a4,hf,L,nwa,ucA,key1);
[RSnoNPr1,RPnoNPr1,TSnoNPr1,TPnoNPr1,ASnoNPr1,APnoNPr1,wavelengthnoNPr1,var1noNPr1,var2noNPr1] = spectrum_anisotropic_fabryperot_nw(0.00000001,dep,hs,alofi,a,hf,L,nwa,ucA,key1);

[RSr12,RPr12,TSr12,TPr12,ASr12,APr12,wavelengthr12,var1r12,var2r12] = spectrum_anisotropic_fabryperot_nw(Rad2,dep2,hs,alofi,Rad*a1,hf,L,nwa,ucA,key1);
[RSr22,RPr22,TSr22,TPr22,ASr22,APr22,wavelengthr22,var1r22,var2r22] = spectrum_anisotropic_fabryperot_nw(Rad2,dep2,hs,alofi,Rad*a2,hf,L,nwa,ucA,key1);
[RSr32,RPr32,TSr32,TPr32,ASr32,APr32,wavelengthr32,var1r32,var2r32] = spectrum_anisotropic_fabryperot_nw(Rad2,dep2,hs,alofi,Rad*a3,hf,L,nwa,ucA,key1);
[RSr42,RPr42,TSr42,TPr42,ASr42,APr42,wavelengthr42,var1r42,var2r42] = spectrum_anisotropic_fabryperot_nw(Rad2,dep2,hs,alofi,Rad*a4,hf,L,nwa,ucA,key1);
[RSnoNPr12,RPnoNPr12,TSnoNPr12,TPnoNPr12,ASnoNPr12,APnoNPr12,wavelengthnoNPr12,var1noNPr12,var2noNPr12] = spectrum_anisotropic_fabryperot_nw(0.00000001,dep2,hs,alofi,a,hf,L,nwa,ucA,key1);

figure;
% tiledlayout(1,3,'TileSpacing','tight');
% p1=nexttile;
% hold on
% plot(p1,wavelengthr1,RSnoNPr1*100,'DisplayName',char(append("no NP")))
% % plot(p1,wavelengthr1,RSr1*100,'DisplayName',char(append("a=2.5R")))
% plot(p1,wavelengthr1,RSr2*100,'--','DisplayName',char(append("a=3R")))
% % plot(p1,wavelengthr1,RSr3*100,'DisplayName',char(append("a=3.5R")))
% % plot(p1,wavelengthr1,RSr4*100,'DisplayName',char(append("a=5R")))
% 
% hold off
% xlabel(p1,'wavelength (nm)')
% ylabel(p1,'Reflection %')
% % title(p1,'Reflectance with out NP')
% axis([300 800 0 100])
% legend('Location','northeast','NumColumns',1)
% 
% p2=nexttile;
% hold on
% plot(p2,wavelengthr1,TSnoNPr1*100,'DisplayName',char(append("no NP")))
% % plot(p2,wavelengthr1,TSr1*100,'DisplayName',char(append("a=2.5R")))
% plot(p2,wavelengthr1,TSr2*100,'--','DisplayName',char(append("a=3R")))
% % plot(p2,wavelengthr1,TSr3*100,'DisplayName',char(append("a=3.5R")))
% % plot(p2,wavelengthr1,TSr4*100,'DisplayName',char(append("a=5R")))
% 
% hold off
% xlabel(p2,'wavelength (nm)')
% ylabel(p2,'Transmitance %')
% % title(p2,'Reflectance with out NP')
% axis([300 800 0 100])
% legend('Location','northeast','NumColumns',1)
% 
% p3=nexttile;
% hold on
% plot(p3,wavelengthr1,ASnoNPr1*100,'DisplayName',char(append("no NP")))
% % plot(p3,wavelengthr1,ASr1*100,'DisplayName',char(append("a=2.5R")))
% plot(p3,wavelengthr1,ASr2*100,'--','DisplayName',char(append("a=3R")))
% % plot(p3,wavelengthr1,ASr3*100,'DisplayName',char(append("a=3.5R")))
% % plot(p3,wavelengthr1,ASr4*100,'DisplayName',char(append("a=5R")))
% 
% hold off
% xlabel(p3,'wavelength (nm)')
% ylabel(p3,'Absorbance %')
% % title(p3,'Reflectance with out NP')
% axis([300 800 0 100])
% legend('Location','northeast','NumColumns',1)


figure;
tiledlayout(1,2,'TileSpacing','compact');
p1=nexttile;

R=[RSr1(:)*100 RSr2(:)*100 RSr3(:)*100 RSr4(:)*100 RSnoNPr1(:)*100];
q=stackedplot(wavelengthr1,R)
q.LineProperties(1).Color='r';
q.LineProperties(2).Color='g';
q.LineProperties(3).Color='c';
q.LineProperties(4).Color='m';
q.LineProperties(5).Color='k';
q.DisplayLabels={'a=2.5R' 'a=3R' 'a=3.5R' 'a=5R' 'no NP'};
% q.DisplayVariables(2)='a=3R';
% q.DisplayVariables(3)='no NP';
% q.LineProperties(2)='g';
% q.Layout.TileSpacing('none')
q.XLabel='wavelength (nm)';
q.XLimits=[300 800];
% q.YLimits=[0 100];
q.Title='Reflectance (%) [AuNP R=20 nm]';

p2=nexttile;

R2=[RSr12(:)*100 RSr22(:)*100 RSr32(:)*100 RSr42(:)*100 RSnoNPr12(:)*100];
q2=stackedplot(wavelengthr12,R2)
q2.LineProperties(1).Color='r';
q2.LineProperties(2).Color='g';
q2.LineProperties(3).Color='c';
q2.LineProperties(4).Color='m';
q2.LineProperties(5).Color='k';
q2.DisplayLabels={'a=2.5R' 'a=3R' 'a=3.5R' 'a=5R' 'no NP'};
% q.DisplayVariables(2)='a=3R';
% q.DisplayVariables(3)='no NP';
% q.LineProperties(2)='g';
% q.Layout.TileSpacing('none')
q2.XLabel='wavelength (nm)';
q2.XLimits=[300 800];
% q.YLimits=[0 100];
q2.Title='Reflectance (%) [AuNP R=10 nm]';

