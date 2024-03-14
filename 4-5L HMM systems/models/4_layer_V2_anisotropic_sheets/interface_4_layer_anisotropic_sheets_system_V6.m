%spectrum_anisotropic_sheets(R,d,hs,alofi,md,dd)
%varies the form of eta (imag&real,normalisedimage&real,real,0)

%keys
key1=2; %controles what the image charge screening factor (eta) is: if 2 all imaginary parts of sqrt(epspllepsper) are made positive, if 1 eta contains the imaginary parts if 0.5 eta contains only the real parts if 0 then eta is 0 is on or off
key2=2; %determines what is being varies in each run (1 is for R, 2 is for a, 3 is for hs, 0 is for epspll,epsper,epspllepsper,sqrt(epspllepsper),eta)
key3=50; %determinse what the fill fraction is each time (0,15,35,50,65,80,100)
key4=1; %controles the graphs ploted: 1 all RS plots at 0 degrees one one plot (if 0.5 only plots 3 in the middle for a), 2 gives either the plots for the first half or second half of the variables for aloi=0,20,60
key5=1; %for first half we use 1 for second we use 2
lin1=0; %plots a vertical line at a given wavelength
%constants
Rad=20;    %radius of NP
dep=1;     %thickness of layer 2
hs=1;      %hight of layer 3
alofi=0;   %angel of incident light
a=Rad*3;   %lattice constant
alofi1=0;
md=key3/100;
dd=1-md;
RS=append("RS",string(key3));
RP=append("RP",string(key3));
[hs1,hs2,hs3,hs4]=deal(hs);
[Rad1,Rad2,Rad3,Rad4]=deal(Rad);
[a1,a2,a3,a4]=deal(Rad*3);


[RSr11,RPr11,wavelength0r11,epsper0r11,epspll0r11]=spectrum_anisotropic_sheets_V3(Rad1,dep,hs1,alofi1,a1,md,dd,0);
[RSr21,RPr21,wavelength0r21,epsper0r21,epspll0r21]=spectrum_anisotropic_sheets_V3(Rad2,dep,hs2,alofi1,a2,md,dd,1);
[RSr31,RPr31,wavelength0r31,epsper0r31,epspll0r31]=spectrum_anisotropic_sheets_V3(Rad3,dep,hs3,alofi1,a3,md,dd,2);
[RSr41,RPr41,wavelength0r41,epsper0r41,epspll0r41]=spectrum_anisotropic_sheets_V3(Rad4,dep,hs4,alofi1,a4,md,dd,0.5);


figure;
tiledlayout(1,2);
p1=nexttile;
hold on
plot(p1,wavelength0r11,RSr11*100,'DisplayName',char(append(RS,', eta=0')));
plot(p1,wavelength0r21,RSr21*100,'DisplayName',char(append(RS,', eta=real&imag')));
plot(p1,wavelength0r31,RSr31*100,'--','DisplayName',char(append(RS,', eta=absimag&real')));
plot(p1,wavelength0r41,RSr41*100,'-.','DisplayName',char(append(RS,', eta=real')));
hold off
xlabel(p1,'wavelength')
ylabel(p1,'%')
% legend(p1,'Location','southeast','NumColumns',1)
legend(p1,'Location','northwest','NumColumns',1)
axis(p1,[400 900 -1 101])

p2=nexttile;
hold on
plot(p2,wavelength0r11,real(epsper0r11),'DisplayName',char(append(RS,', real eta=0')));
plot(p2,wavelength0r11,imag(epsper0r11),'DisplayName',char(append(RS,', imag eta=0')));

plot(p2,wavelength0r21,real(epsper0r21),'DisplayName',char(append(RS,', real eta=real&imag')));
plot(p2,wavelength0r21,imag(epsper0r21),'DisplayName',char(append(RS,', imag eta=real&imag')));

plot(p2,wavelength0r31,real(epsper0r31),'--','DisplayName',char(append(RS,', real eta=absimag&real')));
plot(p2,wavelength0r31,imag(epsper0r31),'--','DisplayName',char(append(RS,', imag eta=absimag&real')));

plot(p2,wavelength0r41,real(epsper0r41),'-.','DisplayName',char(append(RS,', real eta=real')));
plot(p2,wavelength0r41,imag(epsper0r41),'-.','DisplayName',char(append(RS,', imag eta=real')));
hold off
xlabel(p2,'wavelength')
ylabel(p2,'%')
% legend(p1,'Location','southeast','NumColumns',1)
legend(p2,'Location','northeast','NumColumns',2)
axis(p2,[400 900 -inf inf])

clear variables