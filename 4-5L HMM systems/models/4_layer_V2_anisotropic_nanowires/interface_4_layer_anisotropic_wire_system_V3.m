%nw version 2
%keys
clear vaiables
key1=2; %controles what the image charge screening factor (eta) is: if 1 eta contains the imaginary parts if 0.5 eta contains only the real parts if 0 then eta is 0 is on or off 


%constants 
Rad=20;
d=1;

hs=1;
alofi=0;
a=3*Rad;
d=(4*pi*Rad^3)/(3*a^2);
dep=d
%spectrum_anisotropic_nw_V2(R,d,hs,alofi,a,nwa,ucA,key1)
%canculations
[RS0,RP0,wavelength0,eps4per0,eps4pll0] = spectrum_anisotropic_nw_V2(Rad,d,hs,alofi,a,0,10,key1);

% [RS05,RP05,wavelength05,eps4per05,eps4pll05] = spectrum_anisotropic_nw_V2(Rad,d,hs,alofi,a,0.5,10,key1);
% 
% [RS10,RP10,wavelength10,eps4per10,eps4pll10] = spectrum_anisotropic_nw_V2(Rad,d,hs,alofi,a,1.0,10,key1);

[RS15,RP15,wavelength15,eps4per15,eps4pll15] = spectrum_anisotropic_nw_V2(Rad,d,hs,alofi,a,1.5,10,key1);

% [RS20,RP20,wavelength20,eps4per20,eps4pll20] = spectrum_anisotropic_nw_V2(Rad,d,hs,alofi,a,2.0,10,key1);
% 
% [RS25,RP25,wavelength25,eps4per25,eps4pll25] = spectrum_anisotropic_nw_V2(Rad,d,hs,alofi,a,2.5,10,key1);
% 
% [RS30,RP30,wavelength30,eps4per30,eps4pll30] = spectrum_anisotropic_nw_V2(Rad,d,hs,alofi,a,3.0,10,key1);

[RS35,RP35,wavelength35,eps4per35,eps4pll35] = spectrum_anisotropic_nw_V2(Rad,d,hs,alofi,a,3.5,10,key1);

% [RS40,RP40,wavelength40,eps4per40,eps4pll40] = spectrum_anisotropic_nw_V2(Rad,d,hs,alofi,a,4.0,10,key1);
% 
% [RS45,RP45,wavelength45,eps4per45,eps4pll45] = spectrum_anisotropic_nw_V2(Rad,d,hs,alofi,a,4.5,10,key1);

[RS50,RP50,wavelength50,eps4per50,eps4pll50] = spectrum_anisotropic_nw_V2(Rad,d,hs,alofi,a,5.0,10,key1);

% [RS55,RP55,wavelength55,eps4per55,eps4pll55] = spectrum_anisotropic_nw_V2(Rad,d,hs,alofi,a,5.5,10,key1);
% 
% [RS60,RP60,wavelength60,eps4per60,eps4pll60] = spectrum_anisotropic_nw_V2(Rad,d,hs,alofi,a,6.0,10,key1);

[RS65,RP65,wavelength65,eps4per65,eps4pll65] = spectrum_anisotropic_nw_V2(Rad,d,hs,alofi,a,6.5,10,key1);

% [RS70,RP70,wavelength70,eps4per70,eps4pll70] = spectrum_anisotropic_nw_V2(Rad,d,hs,alofi,a,7.0,10,key1);
% 
% [RS75,RP75,wavelength75,eps4per75,eps4pll75] = spectrum_anisotropic_nw_V2(Rad,d,hs,alofi,a,7.5,10,key1);

[RS80,RP80,wavelength80,eps4per80,eps4pll80] = spectrum_anisotropic_nw_V2(Rad,d,hs,alofi,a,8.0,10,key1);

% [RS85,RP85,wavelength85,eps4per85,eps4pll85] = spectrum_anisotropic_nw_V2(Rad,d,hs,alofi,a,8.5,10,key1);
% 
% [RS90,RP90,wavelength90,eps4per90,eps4pll90] = spectrum_anisotropic_nw_V2(Rad,d,hs,alofi,a,9.0,10,key1);
% 
% [RS95,RP95,wavelength95,eps4per95,eps4pll95] = spectrum_anisotropic_nw_V2(Rad,d,hs,alofi,a,9.5,10,key1);

[RS100,RP100,wavelength100,eps4per100,eps4pll100] = spectrum_anisotropic_nw_V2(Rad,d,hs,alofi,a,10,10,key1);

[RSr11,RPr11,wavelength0r11,epsper0r11,epspll0r11]=spectrum_anisotropic_nw_V2(Rad,dep,hs,alofi,a,35,100,key1);
% no NP

[RS0noNP,RP0noNP,wavelength0noNP,epsper0noNP,epspll0noNP]=spectrum_anisotropic_nw_V2(0.0000001,d,hs,alofi,a,0,10,key1);
[RS15noNP,RP15noNP,wavelength15noNP,epsper15noNP,epspll15noNP]=spectrum_anisotropic_nw_V2(0.0000001,d,hs,alofi,a,1.5,10,key1);
[RS35noNP,RP35noNP,wavelength35noNP,epsper35noNP,epspll35noNP]=spectrum_anisotropic_nw_V2(0.0000001,d,hs,alofi,a,3.5,10,key1);
[RS50noNP,RP50noNP,wavelength50noNP,epsper50noNP,epspll50noNP]=spectrum_anisotropic_nw_V2(0.0000001,d,hs,alofi,a,5,10,key1);
[RS65noNP,RP65noNP,wavelength65noNP,epsper65noNP,epspll65noNP]=spectrum_anisotropic_nw_V2(0.0000001,d,hs,alofi,a,6.5,10,key1);
[RS80noNP,RP80noNP,wavelength80noNP,epsper80noNP,epspll80noNP]=spectrum_anisotropic_nw_V2(0.0000001,d,hs,alofi,a,8.0,10,key1);
[RS100noNP,RP100noNP,wavelength100noNP,epsper100noNP,epspll100noNP]=spectrum_anisotropic_nw_V2(0.0000001,d,hs,alofi,a,10,10,key1);
%plots
figure;
tiledlayout(1,2,'TileSpacing','compact');
p1=nexttile;
hold on
% plot(p1,wavelength0,RS0*100,'DisplayName','RS0');
% % plot(p1,wavelength05,RS05*100,'DisplayName','RS05');
% % plot(p1,wavelength10,RS10*100,'DisplayName','RS10');
% plot(p1,wavelength15,RS15*100,'DisplayName','RS15');
% % plot(p1,wavelength20,RS20*100,'DisplayName','RS20');
% % plot(p1,wavelength25,RS25*100,'DisplayName','RS25');
% % plot(p1,wavelength30,RS30*100,'DisplayName','RS30');
% plot(p1,wavelength35,RS35*100,'DisplayName','RS35');
% % plot(p1,wavelength40,RS40*100,'DisplayName','RS40');
% % plot(p1,wavelength45,RS45*100,'DisplayName','RS45');
% plot(p1,wavelength50,RS50*100,'DisplayName','RS50');
% % plot(p1,wavelength55,RS55*100,'DisplayName','RS55');
% % plot(p1,wavelength60,RS60*100,'DisplayName','RS60');
% plot(p1,wavelength65,RS65*100,'DisplayName','RS65');
% % plot(p1,wavelength70,RS70*100,'DisplayName','RS70');
% % plot(p1,wavelength75,RS75*100,'DisplayName','RS75');
% plot(p1,wavelength80,RS80*100,'DisplayName','RS80');
% % plot(p1,wavelength85,RS85*100,'DisplayName','RS85');
% % plot(p1,wavelength90,RS90*100,'DisplayName','RS90');
% % plot(p1,wavelength95,RS95*100,'DisplayName','RS95');
% plot(p1,wavelength100,RS100*100,'DisplayName','RS100');

plot(p1,wavelength0,RS0*100,'DisplayName','0% ff');
plot(p1,wavelength15,RS15*100,'DisplayName','15% ff');
plot(p1,wavelength35,RS35*100,'DisplayName','35% ff');
% plot(p1,wavelength0r11,RSr11*100,'--','DisplayName','RS35');

plot(p1,wavelength50,RS50*100,'DisplayName','50% ff');
plot(p1,wavelength65,RS65*100,'DisplayName','65% ff');
plot(p1,wavelength80,RS80*100,'DisplayName','80% ff');
plot(p1,wavelength100,RS100*100,'DisplayName','100% ff');

hold off

xlabel(p1,'wavelength (nm)')
ylabel(p1,'Reflectance (%)')
legend('Location','northwest','NumColumns',1)
title(p1,'Reflectance with NP')
axis(p1,[300 800 -1 101])

p2=nexttile;
hold on
plot(p2,wavelength0,RS0noNP*100,'DisplayName','RS0  noNP');
plot(p2,wavelength15,RS15noNP*100,'DisplayName','RS15 noNP');
plot(p2,wavelength35,RS35noNP*100,'DisplayName','RS35 noNP');
plot(p2,wavelength50,RS50noNP*100,'DisplayName','RS50 noNP');
plot(p2,wavelength65,RS65noNP*100,'DisplayName','RS65 noNP');
plot(p2,wavelength80,RS80noNP*100,'DisplayName','RS80 noNP');
plot(p2,wavelength100,RS100noNP*100,'DisplayName','RS100 noNP');
hold off
xlabel(p2,'wavelength (nm)')
ylabel(p2,'Reflectance (%)')
title(p2,'Reflectance with out NP')
% legend('Location','northwest','NumColumns',1)
axis(p2,[300 800 -1 101])

% clear vaiables

% % p2=nexttile;
% % hold on
% % plot(p2,wavelength0,real(eps4per0),'DisplayName','RS0, real(eta)');
% % % plot(p2,wavelength05,real(eps4per05),'DisplayName','RS05');
% % % plot(p2,wavelength10,real(eps4per10),'DisplayName','RS10');
% % plot(p2,wavelength15,real(eps4per15),'DisplayName','RS15, real(eta)');
% % % plot(p2,wavelength20,real(eps4per20),'DisplayName','RS20');
% % % plot(p2,wavelength25,real(eps4per25),'DisplayName','RS25');
% % % plot(p2,wavelength30,real(eps4per30),'DisplayName','RS30');
% % plot(p2,wavelength35,real(eps4per35),'DisplayName','RS35, real(eta)');
% % % plot(p2,wavelength40,real(eps4per40),'DisplayName','RS40');
% % % plot(p2,wavelength45,real(eps4per45),'DisplayName','RS45');
% % plot(p2,wavelength50,real(eps4per50),'DisplayName','RS50, real(eta)');
% % % plot(p2,wavelength55,real(eps4per55),'DisplayName','RS55');
% % % plot(p2,wavelength60,real(eps4per60),'DisplayName','RS60');
% % plot(p2,wavelength65,real(eps4per65),'DisplayName','RS65, real(eta)');
% % % plot(p2,wavelength70,real(eps4per70),'DisplayName','RS70');
% % % plot(p2,wavelength75,real(eps4per75),'DisplayName','RS75');
% % plot(p2,wavelength80,real(eps4per80),'DisplayName','RS80, real(eta)');
% % % plot(p2,wavelength85,real(eps4per85),'DisplayName','RS85');
% % % plot(p2,wavelength90,real(eps4per90),'DisplayName','RS90');
% % % plot(p2,wavelength95,real(eps4per95),'DisplayName','RS95');
% % plot(p2,wavelength100,real(eps4per100),'DisplayName','RS100, real(eta)');
% % hold off
% % 
% % xlabel(p2,'wavelength')
% % legend('Location','northeast','NumColumns',2)
% % axis(p2,[300 900 -inf inf])
% % 
% % p3=nexttile;
% % hold on
% % plot(p3,wavelength0,imag(eps4per0),'DisplayName','RS0, imag(eta)');
% % % plot(p3,wavelength05,imag(eps4per05),'DisplayName','RS05');
% % % plot(p3,wavelength10,imag(eps4per10),'DisplayName','RS10');
% % plot(p3,wavelength15,imag(eps4per15),'DisplayName','RS15, imag(eta)');
% % % plot(p3,wavelength20,imag(eps4per20),'DisplayName','RS20');
% % % plot(p3,wavelength25,imag(eps4per25),'DisplayName','RS25');
% % % plot(p3,wavelength30,imag(eps4per30),'DisplayName','RS30');
% % plot(p3,wavelength35,imag(eps4per35),'DisplayName','RS35, imag(eta)');
% % % plot(p3,wavelength40,imag(eps4per40),'DisplayName','RS40');
% % % plot(p3,wavelength45,imag(eps4per45),'DisplayName','RS45');
% % plot(p3,wavelength50,imag(eps4per50),'DisplayName','RS50, imag(eta)');
% % % plot(p3,wavelength55,imag(eps4per55),'DisplayName','RS55');
% % % plot(p3,wavelength60,imag(eps4per60),'DisplayName','RS60');
% % plot(p3,wavelength65,imag(eps4per65),'DisplayName','RS65, imag(eta)');
% % % plot(p3,wavelength70,imag(eps4per70),'DisplayName','RS70');
% % % plot(p3,wavelength75,imag(eps4per75),'DisplayName','RS75');
% % plot(p3,wavelength80,imag(eps4per80),'DisplayName','RS80, imag(eta)');
% % % plot(p3,wavelength85,imag(eps4per85),'DisplayName','RS85');
% % % plot(p3,wavelength90,imag(eps4per90),'DisplayName','RS90');
% % % plot(p3,wavelength95,imag(eps4per95),'DisplayName','RS95');
% % plot(p3,wavelength100,imag(eps4per100),'DisplayName','RS100, imag(eta)');
% % hold off
% % 
% % xlabel(p3,'wavelength')
% % legend('Location','northeast','NumColumns',2)
% % axis(p3,[300 900 -inf inf])
% 
p3=nexttile;
hold on
plot(p3,wavelength0,real(eps4pll0),'DisplayName','RS0, real(epspll)');
plot(p3,wavelength15,real(eps4pll15),'DisplayName','RS15, real(epspll)');
plot(p3,wavelength35,real(eps4pll35),'DisplayName','RS35, real(epspll)');
plot(p3,wavelength50,real(eps4pll50),'DisplayName','RS50, real(epspll)');
plot(p3,wavelength65,real(eps4pll65),'DisplayName','RS65, real(epspll)');
plot(p3,wavelength80,real(eps4pll80),'DisplayName','RS80, real(epspll)');
plot(p3,wavelength100,real(eps4pll100),'DisplayName','RS100, real(epspll)');
% 
% plot(p2,wavelength0,real(eps4per0),'--','DisplayName','RS0, real(epsper)');
% plot(p2,wavelength15,real(eps4per15),'--','DisplayName','RS15, real(epsper)');
% plot(p2,wavelength35,real(eps4per35),'--','DisplayName','RS35, real(epsper)');
% plot(p2,wavelength50,real(eps4per50),'--','DisplayName','RS50, real(epsper)');
% plot(p2,wavelength65,real(eps4per65),'--','DisplayName','RS65, real(epsper)');
% plot(p2,wavelength80,real(eps4per80),'--','DisplayName','RS80, real(epsper)');
% plot(p2,wavelength100,real(eps4per100),'--','DisplayName','RS100, real(epsper)');
hold off

xlabel(p3,'wavelength (nm)')
ylabel(p3,'Real($\varepsilon_\parallel$)','Interpreter','latex')
% legend(p3,'Location','northwest','NumColumns',2,'AutoUpdate', 'off')
yline(p3,0);
title(p3,'real($\varepsilon_\parallel$) of HMM','Interpreter','latex')
axis(p3,[300 800 -inf inf])

p4=nexttile;
hold on
 plot(p4,wavelength0,real(eps4per0),'DisplayName','RS0, real(epsper)');
plot(p4,wavelength15,real(eps4per15),'DisplayName','RS15, real(epsper)');
plot(p4,wavelength35,real(eps4per35),'DisplayName','RS35, real(epsper)');
plot(p4,wavelength50,real(eps4per50),'DisplayName','RS50, real(epsper)');
plot(p4,wavelength65,real(eps4per65),'DisplayName','RS65, real(epsper)');
plot(p4,wavelength80,real(eps4per80),'DisplayName','RS80, real(epsper)');
plot(p4,wavelength100,real(eps4per100),'DisplayName','RS100, real(epsper)');
hold off
% % plot(p3,wavelength0,imag(eps4pll0),'DisplayName','RS0, imag(epspll)');
% % plot(p3,wavelength15,imag(eps4pll15),'DisplayName','RS15, imag(epspll)');
% % plot(p3,wavelength35,imag(eps4pll35),'DisplayName','RS35, imag(epspll)');
% % plot(p3,wavelength50,imag(eps4pll50),'DisplayName','RS50, imag(epspll)');
% % plot(p3,wavelength65,imag(eps4pll65),'DisplayName','RS65, imag(epspll)');
% % plot(p3,wavelength80,imag(eps4pll80),'DisplayName','RS80, imag(epspll)');
% % plot(p3,wavelength100,imag(eps4pll100),'DisplayName','RS100, imag(epspll)');
% % 
% % plot(p3,wavelength0,imag(eps4per0),'--','DisplayName','RS0, imag(epsper)');
% % plot(p3,wavelength15,imag(eps4per15),'--','DisplayName','RS15, imag(epsper)');
% % plot(p3,wavelength35,imag(eps4per35),'--','DisplayName','RS35, imag(epsper)');
% % plot(p3,wavelength50,imag(eps4per50),'--','DisplayName','RS50, imag(epsper)');
% % plot(p3,wavelength65,imag(eps4per65),'--','DisplayName','RS65, imag(epsper)');
% % plot(p3,wavelength80,imag(eps4per80),'--','DisplayName','RS80, imag(epsper)');
% % plot(p3,wavelength100,imag(eps4per100),'--','DisplayName','RS100, imag(epsper)');
% % hold off
% % 
xlabel(p4,'wavelength (nm)')
ylabel(p4,'real($\varepsilon_\bot$)','Interpreter','latex')
% legend(p4,'Location','northwest','NumColumns',2,'AutoUpdate', 'off')
title(p4,'real($\varepsilon_\bot$) of HMM','Interpreter','latex')
yline(p4,0);
axis(p4,[300 800 -inf inf])
% 
% 
clear variables