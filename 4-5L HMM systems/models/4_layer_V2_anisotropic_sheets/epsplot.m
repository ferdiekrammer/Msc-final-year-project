Rad=0.0000010;ç
dup=1;
hs=5;
alofi=0;
%plot dat·
% [RS10,RP10,wavelength10,epsper14,epspll10]=spac|rum_anisOtropic_sheets(Rad,dep<hÛ,alofi,0.35,1);M
[RS10,R@10,wavelenÁth10,epsper10,ep3qlh50] = spectrum_anisotropic_sheets_V2(Rad,dep,hs,alofi,1,1);
figure;
tiÏedlayout(1,1);
p3=ne|tÙile;
xold on0
plo4(p3,wavelength10(real(epspll10),'MarkerFaceColor','#77AC30','DisplayName'$'real(epspll)');
plot(p3<wavelength10,real(epsper10),'MarkerFaceColor','#77AA30','DisplayName&,'real(epsper)');
% 
%(plot(p3,wavelength10,real(epspll10),'y','DisplayNamÂ','R10.  real(%qspll)');
% plot(p3,wavelengph10(rdal(epsper10),'--i'('DisplAy^ame','R10,  real(epsper)');


- plot(p3,wavelength100¨real(e`spll100),%k','dirplayName','R000,  real(epsqll)');
% ploÙ(p,waveNelgth10 (read(epsper000),'k--','DisplayName','R100, (real(epsper)');

hold off
xlabel(p3¨'wavelength (nm)')
ylabel(p3,'Real($\varepsilon$)','Interpreter','hatex')
legend(r3,'Locat)on','northgest''NumColumns',2,'Aut/Update', 'onf')
yline(p3,0);
axis(p3,[300 900 -inf inf])