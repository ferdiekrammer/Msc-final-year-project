%equations fail if halfspace is metal in natur
% keys
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

Rad=10;    %radius of NP
hs=5;      %hight of layer 3
hf1=40;    %thickness of layer 2 (standard is 320nm)
hf2=100;   %thickness of layer 8 (standard is 320nm)
alofi=0;   %angel of incident light
aconst=3;  % a=Rad*3;   %lattice constant
a=Rad*aconst;
L=1000;     %cell size
% dep=1;     %thickness of layer 2
dep=(4*pi*Rad^3)/(3*a^2); 

nwa=key2/10;
ucA=10;


 [a1,a2,a3,a4]=deal(Rad*2.5,Rad*3,Rad*3.5,Rad*5);
[RSr1,RPr1,TSr1,TPr1,ASr1,APr1,wavelengthr1,var1r1,var2r1] = spectrum_anisotropic_fabryperot_nw_bottom(Rad,dep,hs,alofi,a1,hf1,hf2,L,nwa,ucA,key1);
[RSr2,RPr2,TSr2,TPr2,ASr2,APr2,wavelengthr2,var1r2,var2r2] = spectrum_anisotropic_fabryperot_nw_bottom(Rad,dep,hs,alofi,a2,hf1,hf2,L,nwa,ucA,key1);
[RSr3,RPr3,TSr3,TPr3,ASr3,APr3,wavelengthr3,var1r3,var2r3] = spectrum_anisotropic_fabryperot_nw_bottom(Rad,dep,hs,alofi,a3,hf1,hf2,L,nwa,ucA,key1);
[RSr4,RPr4,TSr4,TPr4,ASr4,APr4,wavelengthr4,var1r4,var2r4] = spectrum_anisotropic_fabryperot_nw_bottom(Rad,dep,hs,alofi,a4,hf1,hf2,L,nwa,ucA,key1);
[RSnoNPr1,RPnoNPr1,TSnoNPr1,TPnoNPr1,ASnoNPr1,APnoNPr1,wavelengthnoNPr1,var1noNPr1,var2noNPr1] = spectrum_anisotropic_fabryperot_nw_bottom(0.00000000001,dep,hs,alofi,a,hf1,hf2,L,nwa,ucA,key1);

figure;
tiledlayout(1,3,'TileSpacing','compact');
p1=nexttile;
hold on
plot(p1,wavelengthr1,RSnoNPr1*100,'DisplayName',char(append("no NP")))
plot(p1,wavelengthr1,RSr1*100,'DisplayName',char(append("a=2.5R")))
plot(p1,wavelengthr1,RSr2*100,'DisplayName',char(append("a=3R")))
plot(p1,wavelengthr1,RSr3*100,'DisplayName',char(append("a=3.5R")))
% plot(p1,wavelengthr1,RSr4*100,'DisplayName',char(append("a=5R")))

hold off
xlabel(p1,'wavelength (nm)')
ylabel(p1,'Reflection %')
% title(p1,'Reflectance with out NP')
axis([300 800 0 100])
% legend('Location','northwest','NumColumns',1)

p2=nexttile;
hold on
plot(p2,wavelengthr1,TSnoNPr1*100,'DisplayName',char(append("no NP")))
plot(p2,wavelengthr1,TSr1*100,'DisplayName',char(append("a=2.5R")))
plot(p2,wavelengthr1,TSr2*100,'DisplayName',char(append("a=3R")))
plot(p2,wavelengthr1,TSr3*100,'DisplayName',char(append("a=3.5R")))
% plot(p2,wavelengthr1,TSr4*100,'DisplayName',char(append("a=5R")))

hold off
xlabel(p2,'wavelength (nm)')
ylabel(p2,'Transmitance %')
% title(p2,'Reflectance with out NP')
axis([300 800 0 100])
% legend('Location','northeast','NumColumns',1)

p3=nexttile;
hold on
plot(p3,wavelengthr1,ASnoNPr1*100,'DisplayName',char(append("no NP")))
plot(p3,wavelengthr1,ASr1*100,'DisplayName',char(append("a=2.5R")))
plot(p3,wavelengthr1,ASr2*100,'DisplayName',char(append("a=3R")))
plot(p3,wavelengthr1,ASr3*100,'DisplayName',char(append("a=3.5R")))
% plot(p3,wavelengthr1,ASr4*100,'DisplayName',char(append("a=5R")))

hold off
xlabel(p3,'wavelength (nm)')
ylabel(p3,'Absorbance %')
% title(p3,'Reflectance with out NP')
axis([300 800 0 100])
legend('Location','northeast','NumColumns',1)


% tiledlayout(1,1,'TileSpacing','none');
% R=[RSr1(:)*100 RSr2(:)*100 RSr3(:)*100 RSr4(:)*100 RSnoNPr1(:)*100];
% q=stackedplot(wavelengthr1,R)
% q.LineProperties(1).Color='r';
% q.LineProperties(2).Color='g';
% q.LineProperties(3).Color='c';
% q.LineProperties(4).Color='m';
% q.LineProperties(5).Color='k';
% q.DisplayLabels={'a=2.5R' 'a=3R' 'a=3.5R' 'a=5R' 'no NP'};
% % q.DisplayVariables(2)='a=3R';
% % q.DisplayVariables(3)='no NP';
% % q.LineProperties(2)='g';
% % q.Layout.TileSpacing('none')
% q.XLabel='wavelength (nm)';
% q.XLimits=[300 800];
% q.YLimits=[0 100];
% qYLabel='Reflectance %';

clear variables