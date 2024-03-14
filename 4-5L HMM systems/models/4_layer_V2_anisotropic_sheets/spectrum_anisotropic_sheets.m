function [RS,RP,wavelength,epsper4,epspll4] = spectrum_anisotropic_sheets(R,d,hs,alofi,md,dd)
%sheets sim
% epsper4,epspll4
% k4perrun,k4pllrun
% k2perrun,k2pllrun
% epsper2run, epspll2run
% vaer1,vaer2
% k2perrun,k4perrun

%equations fail if halfspace is metal in natur
e1=1.78;
%e1=1;
%electric permiativity for layer 2 (NP)
einf2=5.9752;
ew_pD2=8.8667;
eg_D2=0.03799;
es12=1.76;
ew_p1L2=3.6;
eg_1L2=1.3;
es22=0.952;
ew_p2L2=2.8;
eg_2L2=0.737;

%einf2=1.78;

% einf2=1.78;
% ew_pD2=0;
% eg_D2=0;
% es12=0;
% ew_p1L2=0;
% eg_1L2=0;
% es22=0;
% ew_p2L2=0;
% eg_2L2=0;

%electric permiativity for layer 3
e3=1.78;
%e3=1;

%electric permiativity for layer 4
%gold sheets

einf4m=5.9752;
ew_pD4m=8.8667;
eg_D4m=0.03799;
es14m=1.76;
ew_p1L4m=3.6;
eg_1L4m=1.3;
es24m=0.952;
ew_p2L4m=2.8;
eg_2L4m=0.737;

%silver
% einf4m=3.718;
% ew_pD4m=9.2093;
% eg_D4m=0.02;
% es14m=0.4242;
% ew_p1L4m=4.284;
% eg_1L4m=0.737;
% es24m=0;
% ew_p2L4m=0;
% eg_2L4m=0;

% einf4m=4;
% ew_pD4m=0;
% eg_D4m=0;
% es14m=0;
% ew_p1L4m=0;
% eg_1L4m=0;
% es24m=0;
% ew_p2L4m=0;
% eg_2L4m=0;

% electric permiativity of layer 4 
% dialectric sheet

%TiN
einf4d=2.667;
ew_pD4d=10.707;
eg_D4d=0.195;
es14d=0.195;
ew_p1L4d=2.294;
eg_1L4d=0.722;
es24d=5.312;
ew_p2L4d=4.894;
eg_2L4d=3.875;

% TiO
% einf4d=6.67;
% ew_pD4d=0;
% eg_D4d=0;
% es14d=0;
% ew_p1L4d=0;
% eg_1L4d=0;
% es24d=0;
% ew_p2L4d=0;
% eg_2L4d=0;


sheet=10;
msheet=(md)*sheet;
dsheet=(dd)*sheet;

%R=25;

w=1.377:0.001:4.133;
%w=1240/320;

Ka=11.031;

%hs=1;
h=R+hs;

%alofi=0:0.01:90;
%alofi=60;

a=3*R;

%d=1;

p=2*h/a;

angl=alofi*(pi/180);

fn=fn_hex(p);
g1n=g1n_hex(p);
g2n=g2n_hex(p);
wavelength=zeros(1,length(w));
RS=zeros(1,length(w));
%TS=zeros(1,length(w));
%AS=zeros(1,length(w));
RP=zeros(1,length(w));
%TP=zeros(1,length(w));
epsper2run=zeros(1,length(w));
epspll2run=zeros(1,length(w));
epsper4=zeros(1,length(w));
epspll4=zeros(1,length(w));
k1run=zeros(1,length(w));
k2perrun=zeros(1,length(w));
k2pllrun=zeros(1,length(w));
k3run=zeros(1,length(w));
k4perrun=zeros(1,length(w));
k4pllrun=zeros(1,length(w));
vaer1=zeros(1,length(w));
vaer2=zeros(1,length(w));
for i=1:length(w)
    wavelength(i)=lambda(w(i));
   
    %define the permiativity of the NP individual
    %epsNP=epsDL(einf2,eo2,ed2,w(i),emod2);
    epsNP=epsDL2(einf2,ew_pD2,eg_D2,es12,ew_p1L2,eg_1L2,es22,ew_p2L2,eg_2L2,w(i));
    %define the permiativity of layer 4
    %eps4=epsDL2(einf4m,ew_pD4m,eg_D4m,es14m,ew_p1L4m,eg_1L4m,es24m,ew_p2L4m,eg_2L4m,w(i));
    [eps4pll,eps4per]=epsaniso_sheets(einf4m,ew_pD4m,eg_D4m,es14m,ew_p1L4m,eg_1L4m,es24m,ew_p2L4m,eg_2L4m,einf4d,ew_pD4d,eg_D4d,es14d,ew_p1L4d,eg_1L4d,es24d,ew_p2L4d,eg_2L4d,msheet,dsheet,w(i));
    epspll4(i)=eps4pll;
    epsper4(i)=eps4per;
    % dipole aproximation 
    chi=e3*(R^3)*((epsNP-e3)/(epsNP+2*e3));
    
    % the image-charge screening factor
    %     eta=(e3-sqrt(eps4pll*eps4per))/(e3+sqrt(eps4pll*eps4per));
    epsmix=sqrt(eps4pll*eps4per);
    epsmixreal=real(epsmix);
    epsmiximag=imag(epsmix);
    if epsmiximag<0
        epsmix=epsmixreal-sqrt(-1)*epsmiximag;
    end
    
    eta=(e3-epsmix)/(e3+epsmix);
    
    %effectiv quasi-static polarisability (parallel to plane)
    betapll=chi/(1+(chi/e3)*((-Ka/(2*a^3))+eta*((fn/a^3)-(3/2)*(g1n/(a^3))+1/(8*h^3))));
    %effectiv quasi-static polarisability (perpendicular to plane)
    betaper=chi/(1+(chi/e3)*((Ka/(a^3))-eta*((fn/(a^3))-(12)*(((h^2)*g2n)/(a^5))-1/(4*(h^3)))));   
    % parallel/ component for NP inbeded in dielectric
    eps2pll=e3+((4*pi)/(d*a^2))*betapll;
    % perpendicula component for NP inbeded in dielectric
    eps2per=((1/e3)-(1/e3^2)*((4*pi)/(d*(a^2)))*betaper)^(-1);
    epsper2run(i)=eps2per;
    epspll2run(i)=eps2pll;
    %vaer1(i)=(eps2pll);
    vaer1(i)=eta;
    vaer2(i)=eps2pll;
    %wave vectors
    k1=(w(i)/197.4)*sqrt(e1)*cos(angl);
    k2pll=(w(i)/197.4)*sqrt(eps2pll-e1*(sin(angl)^2));
    k2per=(w(i)/197.4)*sqrt(eps2pll/eps2per)*sqrt(eps2per-e1*((sin(angl))^2));
    k3=(w(i)/197.4)*sqrt(e3-e1*((sin(angl))^2));
    k4pll=(w(i)/197.4)*sqrt(eps4pll-e1*((sin(angl)))^2);
    k4per=(w(i)/197.4)*sqrt(eps4pll/eps4per)*sqrt(eps4per-e1*((sin(angl))^2));
    %k4=(w(i)/197.4)*sqrt(eps4-e1*((sin(angl))^2));
    k1run(i)=k1;
    k2pllrun(i)=k2pll;
    k2perrun(i)=k2per;
    k3run(i)=k3;
    k4perrun(i)=k4per;
    k4pllrun(i)=k4pll;
    
    %phase factors
    s2pll=exp(2*sqrt(-1)*k2pll*d);
    s2per=exp(2*sqrt(-1)*k2per*d);
    s3=exp(2*sqrt(-1)*k3*(h-(d/2)));
    
    %reflectance paramiters (s polarised light)
    r12s=(k1-k2pll)/(k1+k2pll);
    r23s=(k2pll-k3)/(k2pll+k3);
    r34s=(k3-k4pll)/(k3+k4pll);
    
    %result of the transfer matrix (s polarised light)
    rs_num=r12s+r23s*s2pll+r34s*s2pll*s3+r12s*r23s*r34s*s3;
    rs_den=1+r12s*r23s*s2pll+r23s*r34s*s3+r12s*r34s*s2pll*s3;
    
    rs=rs_num/rs_den;
    
    Rs=(abs(rs))^2;
    RS(i)=Rs;
    
    %reflectance paramiters (p polarised light)
    r12p=(e1*k2per-eps2pll*k1)/(e1*k2per+eps2pll*k1);
    r23p=(eps2pll*k3-e3*k2per)/(eps2pll*k3+e3*k2per);
    r34p=(e3*k4per-eps4pll*k3)/(e3*k4per+eps4pll*k3);
    
    %result of the transfer matrix (p polarised light)
    rp_num=r12p+r23p*s2per+r34p*s2per*s3+r12p*r23p*r34p*s3;
    rp_den=1+r12p*r23p*s2per+r23p*r34p*s3+r12p*r34p*s2per*s3;
    
    rp=rp_num/rp_den;
    
    Rp=(abs(rp))^2;
    RP(i)=Rp;
    
%     ni=sqrt(e1); %incident reflectivity constant
%     nts=sqrt(eps4pll); %final relfectivity constant
%     anglts=asin((ni*sin(angl))/(nts)); %final angle
%     
%     %transmitance paramiters (s polarised light)
%     t12s=(2*k1)/(k1+k2pll);
%     t23s=(2*k2pll)/(k2pll+k3);
%     t34s=(2*k3)/(k3+k4pll);
    %result of the transfer matrix (s polarised light)
    %ts_num=t12s*t23s*t34s*sqrt(s2pll)*sqrt(s3);
    %ts_den=1+r12s*r23s*s2pll+r23s*r34s*s3+r12s*r34s*s2pll*s3;
    %
    %ts=(ts_num/ts_den);
    
    %Ts=(abs(ts))^2*((nts*cos(anglts))/(ni*cos(angl)));
    %TS(i)=Ts;
    
    % absorbacen of s polarized light
    %AS(i)=(1-Ts-Rs)*100;
    
%     ni=sqrt(e1); %incident reflectivity constant
%     ntp=sqrt(eps4pll); %final relfectivity constant
%     angltp=asin((ni*sin(angl))/(ntp)); %final angle
%     
%     %transmitance paramiters (p polarised light)
%     t12p=(2*sqrt(e1)*sqrt(eps2pll)*k1)/(e1*k2per+eps2pll*k1);
%     t23p=(2*sqrt(eps2pll)*sqrt(e3)*k2per)/(eps2pll*k3+e3*k2per);
%     t34p=(2*sqrt(e3)*sqrt(eps4pll)*k3)/(e3*k4per+eps4pll*k3);
%     %result of the transfer matrix (p polarised light)
%     tp_num=t12p*t23p*t34p*sqrt(s2per)*sqrt(s3);
%     tp_den=1+r12p*r23p*s2per+r23p*r34p*s3+r12p*r34p*s2per*s3;
%     
%     tp=tp_num/tp_den;
%     
%     Tp=(abs(tp))^2*(((ntp)*cos(angltp))/(ni*cos(angl)));
%     TP(i)=Tp;
end

end

