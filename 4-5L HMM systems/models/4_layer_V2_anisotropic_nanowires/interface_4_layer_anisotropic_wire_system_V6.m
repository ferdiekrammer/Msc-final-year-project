%nw version 2
%keys
key1=2; %controles what the image charge screening factor (eta) is: if 1 eta contains the imaginary parts if 0.5 eta contains only the real parts if 0 then eta is 0 is on or off 
key3=65;

nwa=key3/10;
ucA=10;
RS=append("RS",string(key3));
RP=append("RP",string(key3));

%constants 
Rad=20;
d=1;
hs=1;
alofi=0;
a=3*Rad;
%spectrum_anisotropic_nw_V2(R,d,hs,alofi,a,nwa,ucA,key1)
%canculations
[RS0,RP0,wavelength0,eps4per0,eps4pll0] = spectrum_anisotropic_nw_V2(Rad,d,hs,alofi,a,nwa,ucA,1);

[RS05,RP05,wavelength05,eps4per05,eps4pll05] = spectrum_anisotropic_nw_V2(Rad,d,hs,alofi,a,nwa,ucA,2);

[RS10,RP10,wavelength10,eps4per10,eps4pll10] = spectrum_anisotropic_nw_V2(Rad,d,hs,alofi,a,nwa,ucA,0.5);

[RS15,RP15,wavelength15,eps4per15,eps4pll15] = spectrum_anisotropic_nw_V2(Rad,d,hs,alofi,a,nwa,ucA,0);


%plots
figure;
tiledlayout(1,2);
p1=nexttile;
hold on

plot(p1,wavelength0,RS0*100,'DisplayName',char(append(RS,', eta=real&imag')));
plot(p1,wavelength05,RS05*100,'--','DisplayName',char(append(RS,', eta=real&abs(imag)')));
plot(p1,wavelength10,RS10*100,'-.','DisplayName',char(append(RS,', eta=real')));
plot(p1,wavelength15,RS15*100,'DisplayName',char(append(RS,', eta=0')));

% plot(p1,wavelength05,RS05*100,'DisplayName',char(append(RS)));
hold off

xlabel(p1,'wavelength')
ylabel(p1,'%')
legend('Location','northwest','NumColumns',2)
axis(p1,[300 900 -1 101])

p2=nexttile;
hold on
plot(p2,wavelength0,real(eps4per0),'r','DisplayName',char(append(RS,', real eta=real&imag')));
plot(p2,wavelength05,real(eps4per05),'b','DisplayName',char(append(RS,', real eta=real&abs(imag)')));
plot(p2,wavelength10,real(eps4per10),'g','DisplayName',char(append(RS,', real eta=real')));
plot(p2,wavelength15,real(eps4per15),'y','DisplayName',char(append(RS,', real eta=0')));

plot(p2,wavelength0,imag(eps4per0),'--r','DisplayName',char(append(RS,', imag eta=real&imag')));
plot(p2,wavelength05,imag(eps4per05),'--b','DisplayName',char(append(RS,', imag eta=real&abs(imag)')));
plot(p2,wavelength10,imag(eps4per10),'--g','DisplayName',char(append(RS,', imag eta=real')));
plot(p2,wavelength15,imag(eps4per15),'--y','DisplayName',char(append(RS,', imag eta=0')));

hold off

xlabel(p2,'wavelength')
ylabel(p2,'$\xi$','Interpreter','latex')
legend(p2,'Location','northwest','NumColumns',2,'AutoUpdate', 'off')
yline(p2,0);
axis(p2,[300 900 -inf inf])


clear variables