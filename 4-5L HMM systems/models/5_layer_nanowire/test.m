% einf4m=3.718;
% ew_pD4m=9.2093;
% eg_D4m=0.02;
% es14m=0.4242;
% ew_p1L4m=4.284;
% eg_1L4m=0.737;
% es24m=0;
% ew_p2L4m=0;
% eg_2L4m=0;
% 
% w=1.377:0.001:4.133;
% wavelength=zeros(1,length(w)); 
% eps=zeros(1,length(w)); 
% for i=1:length(w)
%     wavelength(i)=lambda(w(i));
%     eps(i)= epsDL2(einf4m,ew_pD4m,eg_D4m,es14m,ew_p1L4m,eg_1L4m,es24m,ew_p2L4m,eg_2L4m,w(i));
% end
% hold on
% plot(wavelength,real(eps))
% plot(wavelength,imag(eps))
% hold off
% clear variables

key1=2;
key2=35;

%constants
Rad=20;    %radius of NP
dep=1;     %thickness of layer 2
hs=1;      %hight of layer 3
hf=500;    %thickness of layer 4
alofi=0;   %angel of incident light
aconst=3;  % a=Rad*3;   %lattice constant
a=Rad*aconst;

nwa=key2/10;
ucA=10;

    [RSr1,RPr1,TSr1,TPr1,ASr1,APr1,wavelengthr1,var1r1,var2r1] = spectrum_anisotropic_nw_5L_V2_test(Rad,dep,hs,alofi,a,hf,nwa,ucA,key1);
eta=var1r1;
        epsper4=var2r1{1};
        epspll4=var2r1{2};
        eps4sq=var2r1{3};
        sqeps4sq=var2r1{4};
        epAl=var2r1{5};
        s4per=var2r1{6};
        s4pll=var2r1{7};
        k4per=var2r1{8};
        k4pll=var2r1{9};
        s4per_tp=var2r1{10};
        
figure()
tiledlayout(2,1);
p1=nexttile;
hold on
plot(p1,wavelengthr1,RSr1)
hold off
axis([300 900 -inf inf])

p2=nexttile;
hold on 
plot(p2,wavelengthr1,real(s4per_tp),'r')
plot(p2,wavelengthr1,imag(s4per_tp),'b')
hold off
axis([300 900 -inf inf])

clear variables