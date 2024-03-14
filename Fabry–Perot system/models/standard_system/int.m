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

Rad=0.000001;    %radius of NP
Rad2=10;
hs=3;      %hight of layer 3
hf=20;    %thickness of layer 4 (standard is 320nm)
alofi=0;   %angel of incident light
aconst=3;  % a=Rad*3;   %lattice constant
a=Rad*aconst;
a2=Rad2*aconst;

L=1000;     %cell size
L2=800;     %cell size

% dep=1;     %thickness of layer 2
dep=(4*pi*Rad^3)/(3*a^2); 
dep2=(4*pi*Rad2^3)/(3*a^2); 

nwa=key2/10;
ucA=10;

[RSr1,RPr1,TSr1,TPr1,ASr1,APr1,wavelengthr1,var1r1,var2r1] = spectrum_anisotropic_fabryperot(Rad,dep,hs,alofi,a,hf,L,key1);
[RSr2,RPr2,TSr2,TPr2,ASr2,APr2,wavelengthr2,var1r2,var2r2] = spectrum_anisotropic_fabryperot(Rad,dep,hs,alofi,a,hf,L2,key1);
[RSr3,RPr3,TSr3,TPr3,ASr3,APr3,wavelengthr3,var1r3,var2r3] = spectrum_anisotropic_fabryperot(Rad2,dep2,hs,alofi,a2,hf,L,key1);

figure;
tiledlayout(1,3,'TileSpacing','compact');

p1=nexttile;
hold on
plot(p1,wavelengthr1,RSr1*100,'b','DisplayName','L=1000 nm')
% plot(p1,wavelengthr1,RSr2*100,'r','DisplayName','L2')
% plot(p1,wavelengthr1,RSr3*100,'g','DisplayName','NP')

hold off
xlabel(p1,'wavelength (nm)')
ylabel(p1,'Reflectance (%)')
legend('Location','northeast','NumColumns',1)
% title(p1,'With out NP')
axis([300 800 0 100])

p2=nexttile;
hold on
plot(p2,wavelengthr1,TSr1*100,'b','DisplayName','L=1000 nm')
% plot(p2,wavelengthr1,TSr2*100,'r','DisplayName','L2')
% plot(p2,wavelengthr1,TSr3*100,'g','DisplayName','NP')

axis([300 800 0 100])
hold off
xlabel(p2,'wavelength (nm)')
ylabel(p2,'Transmitance (%)')
legend('Location','northeast','NumColumns',1)
% title(p2,'With out NP')

p3=nexttile;
hold on
plot(p3,wavelengthr1,ASr1*100,'b','DisplayName','L=1000 nm')
% plot(p3,wavelengthr1,ASr2*100,'r','DisplayName','L2')
% plot(p3,wavelengthr1,ASr3*100,'g','DisplayName','NP')

axis([300 800 0 100])
hold off
xlabel(p3,'wavelength (nm)')
ylabel(p3,'Absorbance (%)')
legend('Location','northeast','NumColumns',1)
% title(p3,'With out NP')

clear variables
