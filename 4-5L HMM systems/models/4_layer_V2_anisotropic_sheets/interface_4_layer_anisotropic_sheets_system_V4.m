%spectrum_anisotropic_sheets(R,d,hs,alofi,md,dd)
%keys
key1=2; %controles what the image charge screening factor (eta) is: if 1 eta contains the imaginary parts if 0.5 eta contains only the real parts if 0 then eta is 0 is on or off 




%constants
Rad=20;    %radius of NP
dep=1;     %thickness of layer 2
hs=1;      %hight of layer 3\brack

alofi=0;   %angel of incident light
a=Rad*3;   %lattice constant

%plot data key1=1
[RS0,RP0,wavelength0,epsper0,epspll0]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,0,1,key1);
% [RS05,RP05,wavelength05,epsper05,epspll05]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,0.05,0.95,key1);
% [RS10,RP10,wavelength10,epsper10,epspll10]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,0.10,0.90,key1);
[RS15,RP15,wavelength15,epsper15,epspll15]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,0.15,0.85,key1);
% [RS20,RP20,wavelength20,epsper20,epspll20]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,0.20,0.80,key1);
% [RS25,RP25,wavelength25,epsper25,epspll25]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,0.25,0.75,key1);
% [RS30,RP30,wavelength30,epsper30,epspll30]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,0.30,0.70,key1);
[RS35,RP35,wavelength35,epsper35,epspll35]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,0.35,0.65,key1);
% [RS40,RP40,wavelength40,epsper40,epspll40]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,0.40,0.60,key1);
% [RS45,RP45,wavelength45,epsper45,epspll45]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,0.45,0.55,key1);
[RS50,RP50,wavelength50,epsper50,epspll50]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,0.50,0.50,key1);
% [RS55,RP55,wavelength55,epsper55,epspll55]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,0.55,0.45,key1);
% [RS60,RP60,wavelength60,epsper60,epspll60]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,0.60,0.40,key1);
[RS65,RP65,wavelength65,epsper65,epspll65]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,0.65,0.35,key1);
% [RS70,RP70,wavelength70,epsper70,epspll70]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,0.70,0.30,key1);
% [RS75,RP75,wavelength75,epsper75,epspll75]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,0.75,0.25,key1);
[RS80,RP80,wavelength80,epsper80,epspll80]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,0.80,0.20,key1);
% [RS85,RP85,wavelength85,epsper85,epspll85]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,0.85,0.15,key1);
% [RS90,RP90,wavelength90,epsper90,epspll90]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,0.90,0.10,key1);
% [RS95,RP95,wavelength95,epsper95,epspll95]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,0.95,0.05,key1);
[RS100,RP100,wavelength100,epsper100,epspll100]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,1,0,key1);
%plot data key1=0.5
% [RS0k5,RP0k5,wavelength0k5,epsper0k5,epspll0k5]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,0,1,0.5);
% [RS35k5,RP35k5,wavelength35k5,epsper35k5,epspll35k5]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,0.35,0.65,0.5);
% [RS50k5,RP50k5,wavelength50k5,epsper50k5,epspll50k5]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,0.50,0.50,0.5);
% [RS65k5,RP65k5,wavelength65k5,epsper65k5,epspll65k5]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,0.65,0.35,0.5);
% [RS100k5,RP100k5,wavelength100k5,epsper100k5,epspll100k5]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,1,0,0.5);
% %plot data key1=0
% [RS0k0,RP0k0,wavelength0k0,epsper0k0,epspll0k0]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,0,1,0);
% [RS35k0,RP35k0,wavelength35k0,epsper35k0,epspll35k0]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,0.35,0.65,0);
% [RS50k0,RP50k0,wavelength50k0,epsper50k0,epspll50k0]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,0.50,0.50,0);
% [RS65k0,RP65k0,wavelength65k0,epsper65k0,epspll65k0]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,0.65,0.35,0);
% [RS100k0,RP100k0,wavelength100k0,epsper100k0,epspll100k0]=spectrum_anisotropic_sheets_V3(Rad,dep,hs,alofi,a,1,0,0);

[RS0noNP,RP0noNP,wavelength0noNP,epsper0noNP,epspll0noNP]=spectrum_anisotropic_sheets_V3(0.0000001,dep,hs,alofi,a,0,1,key1);
[RS15noNP,RP15noNP,wavelength15noNP,epsper15noNP,epspll15noNP]=spectrum_anisotropic_sheets_V3(0.0000001,dep,hs,alofi,a,0.15,0.85,key1);
[RS35noNP,RP35noNP,wavelength35noNP,epsper35noNP,epspll35noNP]=spectrum_anisotropic_sheets_V3(0.0000001,dep,hs,alofi,a,0.35,0.65,key1);
[RS50noNP,RP50noNP,wavelength50noNP,epsper50noNP,epspll50noNP]=spectrum_anisotropic_sheets_V3(0.0000001,dep,hs,alofi,a,0.50,0.50,key1);
[RS65noNP,RP65noNP,wavelength65noNP,epsper65noNP,epspll65noNP]=spectrum_anisotropic_sheets_V3(0.0000001,dep,hs,alofi,a,0.65,0.35,key1);
[RS80noNP,RP80noNP,wavelength80noNP,epsper80noNP,epspll80noNP]=spectrum_anisotropic_sheets_V3(0.0000001,dep,hs,alofi,a,0.80,0.20,key1);
[RS100noNP,RP100noNP,wavelength100noNP,epsper100noNP,epspll100noNP]=spectrum_anisotropic_sheets_V3(0.0000001,dep,hs,alofi,a,1,0,key1);
% epspll0
% figure;
% tiledlayout(1,2);
% p1=nexttile;
% hold on
% plot(p1,wavelength0,RS0*100,'c','DisplayName','RS0');
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

% plot(p1,wavelength0k5,RS0k5*100,'--','DisplayName','RS0 eta=real part only');
% plot(p1,wavelength35k5,RS35k5*100,'--','DisplayName','RS35 eta=real part only');
% plot(p1,wavelength50k5,RS50k5*100,'--','DisplayName','RS50 eta=real part only');
% plot(p1,wavelength65k5,RS65k5*100,'--','DisplayName','RS65 eta=real part only');
% plot(p1,wavelength100k5,RS100k5*100,'--','DisplayName','RS100 eta=real part only');

% plot(p1,wavelength0k0,RS0k0*100,'-.','DisplayName','RS0 eta=0');
% plot(p1,wavelength35k0,RS35k0*100,'-.','DisplayName','RS35 eta=0');
% plot(p1,wavelength50k0,RS50k0*100,'-.','DisplayName','RS50 eta=0');
% plot(p1,wavelength65k0,RS65k0*100,'-.','DisplayName','RS65 eta=0');
% plot(p1,wavelength100k0,RS100k0*100,/'-.','DisplayName','RS100 eta=0');

% hold off
% xlabel(p1,'wavelength')
% ylabel(p1,'%')
% legend('Location','northwest','NumColumns',1)
% axis(p1,[300 900 -1 101])
% %
% 
% p2=nexttile;
% hold on
% plot(p2,wavelength0,RS0noNP*100,'c','DisplayName','RS0  noNP');
% plot(p2,wavelength15,RS15noNP*100,'DisplayName','RS15 noNP');
% plot(p2,wavelength35,RS35noNP*100,'DisplayName','RS35 noNP');
% plot(p2,wavelength50,RS50noNP*100,'DisplayName','RS50 noNP');
% plot(p2,wavelength65,RS65noNP*100,'DisplayName','RS65 noNP');
% plot(p2,wavelength80,RS80noNP*100,'DisplayName','RS80 noNP');
% plot(p2,wavelength100,RS100noNP*100,'DisplayName','RS100 noNP');
% hold off
% xlabel(p2,'wavelength (nm)')
% ylabel(p2,'Reflection (%)')
% % legend('Location','northwest','NumColumns',1)
% axis(p2,[300 900 -1 101])

% p2=nexttile;
% hold on
% plot(p2,wavelength50,real(epsper65),'DisplayName','eta65real');
% plot(p2,wavelength50,imag(epsper65),'DisplayName','eta65imag');
% 
% % plot(p2,wavelength0,real(epsper0),'DisplayName','eta0real');
% % plot(p2,wavelength0,imag(epsper0),'DisplayName','eta0imag');
% % plot(p2,wavelength0,real(epsper0k5),'--','DisplayName','eta0real eta=real part only');
% % plot(p2,wavelength0,imag(epsper0k5),'--','DisplayName','eta0imag eta=real part only');
% % plot(p2,wavelength0,real(epsper0k0),'-.','DisplayName','eta0real eta=0');
% % plot(p2,wavelength0,imag(epsper0k0),'-.','DisplayName','eta0imag eta=0');
% 
% % plot(p2,wavelength35,real(epsper35),'DisplayName','eta35real');
% % plot(p2,wavelength35,imag(epsper35),'DisplayName','eta35imag');
% % plot(p2,wavelength35,real(epsper35k5),'--','DisplayName','eta35real eta=real part only');
% % plot(p2,wavelength35,imag(epsper35k5),'--','DisplayName','eta35imag eta=real part only');
% % plot(p2,wavelength35,real(epsper35k0),'-.','DisplayName','eta35real eta=0');
% % plot(p2,wavelength35,imag(epsper35k0),'-.','DisplayName','eta35imag eta=0');
% 
% % plot(p2,wavelength50,real(epsper50),'DisplayName','eta50real');
% % plot(p2,wavelength50,imag(epsper50),'DisplayName','eta50imag');
% % plot(p2,wavelength50,real(epsper50k5),'--','DisplayName','eta50real eta=real part only');
% % plot(p2,wavelength50,imag(epsper50k5),'--','DisplayName','eta50imag eta=real part only');
% % plot(p2,wavelength50,real(epsper50k0),'-.','DisplayName','eta50real eta=0');
% % plot(p2,wavelength50,imag(epsper50k0),'-.','DisplayName','eta50imag eta=0');
% 
% % plot(p2,wavelength65,real(epsper65),'DisplayName','eta65real');
% % plot(p2,wavelength65,imag(epsper65),'DisplayName','eta65imag');
% % plot(p2,wavelength65,real(epsper65k5),'--','DisplayName','eta65real eta=real part only');
% % plot(p2,wavelength65,imag(epsper65k5),'--','DisplayName','eta65imag eta=real part only');
% % plot(p2,wavelength65,real(epsper65k0),'-.','DisplayName','eta65real eta=0');
% % plot(p2,wavelength65,imag(epsper65k0),'-.','DisplayName','eta65imag eta=0');
% 
% % plot(p2,wavelength100,real(epsper100),'DisplayName','eta100real');
% % plot(p2,wavelength100,imag(epsper100),'DisplayName','eta100imag');
% % plot(p2,wavelength100,real(epsper100k5),'--','DisplayName','eta100real eta=real part only');
% % plot(p2,wavelength100,imag(epsper100k5),'--','DisplayName','eta100imag eta=real part only');
% % plot(p2,wavelength100,real(epsper100k0),'-.','DisplayName','eta100real eta=0');
% % plot(p2,wavelength100,imag(epsper100k0),'-.','DisplayName','eta100imag eta=0');
% 
% hold off
% xlabel(p2,'wavelength')
% % ylabel(p1,'%')
% legend(p2,'Location','northeast','NumColumns',2)
% axis(p2,[300 900 -1.01 1.01])

% p2=nexttile;
% hold on
% plot(p2,wavelength0,real(epsper0),'DisplayName','R0, real(eta)');
% plot(p2,wavelength15,real(epsper15),'DisplayName','R15, real(eta)');
% plot(p2,wavelength35,real(epsper35),'DisplayName','R35, real(eta)');
% plot(p2,wavelength50,real(epsper50),'DisplayName','R50, real(eta)');
% plot(p2,wavelength65,real(epsper65),'DisplayName','R65, real(eta)');
% plot(p2,wavelength80,real(epsper80),'DisplayName','R80, real(eta)');
% plot(p2,wavelength100,real(epsper100),'DisplayName','R100, real(eta)');
% hold off
% xlabel(p2,'wavelength')
% % ylabel(p1,'%')
% legend(p2,'Location','northeast','NumColumns',2)
% axis(p2,[300 900 -1.01 1.01])
% 
% p3=nexttile;
% hold on
% plot(p3,wavelength0,imag(epsper0),'DisplayName','R0, imag(eta)');
% plot(p3,wavelength15,imag(epsper15),'DisplayName','R15, imag(eta)');
% plot(p3,wavelength35,imag(epsper35),'DisplayName','R35, imag(eta)');
% plot(p3,wavelength50,imag(epsper50),'DisplayName','R50, imag(eta)');
% plot(p3,wavelength65,imag(epsper65),'DisplayName','R65, imag(eta)');
% plot(p3,wavelength80,imag(epsper80),'DisplayName','R80, imag(eta)');
% plot(p3,wavelength100,imag(epsper100),'DisplayName','R100, imag(eta)');
% hold off
% xlabel(p3,'wavelength')
% % ylabel(p1,'%')
% legend(p3,'Location','northeast','NumColumns',2)
% axis(p3,[300 900 -1.01 1.01])


figure;
tiledlayout(1,2,'TileSpacing','compact');
% p1=nexttile;
% hold on
% plot(p1,wavelength0,RS0*100,'DisplayName','0% ff');
% plot(p1,wavelength15,RS15*100,'DisplayName','15% ff');
% plot(p1,wavelength35,RS35*100,'DisplayName','35% ff');
% plot(p1,wavelength50,RS50*100,'DisplayName','50% ff');
% plot(p1,wavelength65,RS65*100,'DisplayName','65% ff');
% plot(p1,wavelength80,RS80*100,'DisplayName','80% ff');
% plot(p1,wavelength100,RS100*100,'DisplayName','100% ff');
% 
% hold off
% 
% xlabel(p1,'wavelength (nm)')
% ylabel(p1,'Reflectance (%)')
% legend('Location','northwest','NumColumns',1)
% title(p1,'Reflectance with NP')
% axis(p1,[300 800 -1 101])
% 
% p2=nexttile;
% hold on
% plot(p2,wavelength0,RS0noNP*100,'DisplayName','RS0  noNP');
% plot(p2,wavelength15,RS15noNP*100,'DisplayName','RS15 noNP');
% plot(p2,wavelength35,RS35noNP*100,'DisplayName','RS35 noNP');
% plot(p2,wavelength50,RS50noNP*100,'DisplayName','RS50 noNP');
% plot(p2,wavelength65,RS65noNP*100,'DisplayName','RS65 noNP');
% plot(p2,wavelength80,RS80noNP*100,'DisplayName','RS80 noNP');
% plot(p2,wavelength100,RS100noNP*100,'DisplayName','RS100 noNP');
% hold off
% xlabel(p2,'wavelength (nm)')
% ylabel(p2,'Reflectance (%)')
% title(p2,'Reflectance with out NP')
% % legend('Location','northwest','NumColumns',1)
% axis(p2,[300 800 -1 101])

p3=nexttile;
hold on
plot(p3,wavelength0,real(epspll0),'DisplayName','RS0, real(epspll)');
plot(p3,wavelength15,real(epspll15),'DisplayName','RS15, real(epspll)');
plot(p3,wavelength35,real(epspll35),'DisplayName','RS35, real(epspll)');
plot(p3,wavelength50,real(epspll50),'DisplayName','RS50, real(epspll)');
plot(p3,wavelength65,real(epspll65),'DisplayName','RS65, real(epspll)');
plot(p3,wavelength80,real(epspll80),'DisplayName','RS80, real(epspll)');
plot(p3,wavelength100,real(epspll100),'DisplayName','RS100, real(epspll)');
hold off
xlabel(p3,'wavelength (nm)')
ylabel(p3,'Real($\varepsilon_\parallel$)','Interpreter','latex')
% legend(p3,'Location','northwest','NumColumns',2,'AutoUpdate', 'off')
yline(p3,0);
title(p3,'real($\varepsilon_\parallel$) of HMM','Interpreter','latex')
axis(p3,[300 800 -inf inf])

p4=nexttile;
hold on
 plot(p4,wavelength0,real(epsper0),'DisplayName','RS0, real(epsper)');
plot(p4,wavelength15,real(epsper15),'DisplayName','RS15, real(epsper)');
plot(p4,wavelength35,real(epsper35),'DisplayName','RS35, real(epsper)');
plot(p4,wavelength50,real(epsper50),'DisplayName','RS50, real(epsper)');
plot(p4,wavelength65,real(epsper65),'DisplayName','RS65, real(epsper)');
plot(p4,wavelength80,real(epsper80),'DisplayName','RS80, real(epsper)');
plot(p4,wavelength100,real(epsper100),'DisplayName','RS100, real(epsper)');
hold off
xlabel(p4,'wavelength (nm)')
ylabel(p4,'real($\varepsilon_\bot$)','Interpreter','latex')
% legend(p4,'Location','northwest','NumColumns',2,'AutoUpdate', 'off')
title(p4,'real($\varepsilon_\bot$) of HMM','Interpreter','latex')
yline(p4,0);
axis(p4,[300 800 -inf inf])
% 
% 

clear variables