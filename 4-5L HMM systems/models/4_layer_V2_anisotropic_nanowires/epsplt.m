Rad=0.0000010;
dep=1;
hs=1;
alofi=0;
%plot data
% [RS10,RP10,wavelength10,epsper10,epspll10]=spectrum_anisotropic_sheets(Rad,dep,hs,alofi,0.35,1);
[RS10,RP10,wavelength10,epsper10,epspll10] = spectrum_anisotropic_nw_V2(Rad,dep,hs,alofi,3*Rad,0.35,1,1);
% (R,d,hs,alofi,a,nwa,ucA,key1)
figure;
tiledlayout(1,1);
p3=nexttile;
hold on 
plot(p3,wavelength10,real(epspll10),'MarkerFaceColor','#77AC30','DisplayName','real(epspll)');
plot(p3,wavelength10,real(epsper10),'MarkerFaceColor','#77AC30','DisplayName','real(epsper)');
% 
% plot(p3,wavelength10,real(epspll10),'y','DisplayName','R10,  real(epspll)');
% plot(p3,wavelength10,real(epsper10),'--y','DisplayName','R10,  real(epsper)');


% plot(p3,wavelength100,real(epspll100),'k','DisplayName','R100,  real(epspll)');
% plot(p3,wavelength100,real(epsper100),'k--','DisplayName','R100,  real(epsper)');

hold off
xlabel(p3,'wavelength (nm)')
ylabel(p3,'Real($\varepsilon$)','Interpreter','latex')
legend(p3,'Location','northwest','NumColumns',2,'AutoUpdate', 'off')
yline(p3,0);
axis(p3,[300 900 -inf inf])