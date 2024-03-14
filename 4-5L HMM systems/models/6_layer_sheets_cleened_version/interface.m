%equations fail if halfspace is metal in natur
% keys
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
hs=5;      %hight of layer 3
hf=200;    %thickness of layer 4 (standard is 320nm)
alofi=0;   %angel of incident light
aconst=3;  % a=Rad*3;   %lattice constant
a=Rad*aconst;
% dep=100;     %thickness of layer 2
dep=(4*pi*Rad^3)/(3*a^2);    %thickness of layer 2
% dep=1;
L=5;
md=key2/100;
dd=1-md;


[RSr1,RPr1,TSr1,TPr1,ASr1,APr1,wavelengthr1,var1r1,var2r1] = spectrum_anisotropic_sheets_6L(Rad,dep,hs,alofi,a,hf,md,dd,L,key1);
[RSnoNPr1,RPnoNPr1,TSnoNPr1,TPnoNPr1,ASnoNPr1,APnoNPr1,wavelengthnoNPr1,var1noNPr1,var2noNPr1] = spectrum_anisotropic_sheets_6L(0.0000001,dep,hs,alofi,a,hf,md,dd,L,key1);

figure;

    tiledlayout(1,1);
    
        p1=nexttile;
        hold on    
        plot(p1,wavelengthr1,RSr1*100,'r','DisplayName',char(append("RS",string(key2))))
        plot(p1,wavelengthr1,RSnoNPr1*100,'--','DisplayName',char(append("RS",string(key2),"  no NP")))
        
        hold off
        xlabel(p1,'wavelength')
        ylabel(p1,'%')
        legend(p1,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
        axis([300 900 0 100])
    