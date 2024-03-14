function [RS,RP,wavelength,var1,var2] = spectrum_anisotropic_nw_V3(R,d,hs,alofi,a,nwa,ucA,key1)
%spectrum_anisotropic_nw(Rad3,dep,hs3,alofi2,a3,md,dd,key1);
%UNTITLED2 Summary of this function goes here
%equations fail if halfspace is metal in natur
%electric permiativity for layer 1
e1=1.78;
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

%electric permiativity for layer 4
%gold sheets
% einf4m=5.9752;
% ew_pD4m=8.8667;
% eg_D4m=0.03799;
% es14m=1.76;
% ew_p1L4m=3.6;
% eg_1L4m=1.3;
% es24m=0.952;
% ew_p2L4m=2.8;
% eg_2L4m=0.737;

%silver
einf4m=3.718;
ew_pD4m=9.2093;
eg_D4m=0.02;
es14m=0.4242;
ew_p1L4m=4.284;
eg_1L4m=0.737;
es24m=0;
ew_p2L4m=0;
eg_2L4m=0;

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

%einf4d=4;
B1=1.43134930;
B2=0.65054713;
B3=5.3414021;
C1=5.2799261*10^(-3);
C2=1.42382647*10^(-2);
C3=3.25017834*10^2;
ew_pD4d=0;
eg_D4d=0;
es14d=0;
ew_p1L4d=0;
eg_1L4d=0;
es24d=0;
ew_p2L4d=0;
eg_2L4d=0;

% nwa=6.5;
% ucA=10;
%ang=0;
%R=25;

w=1.377:0.00001:4.1333;
%w=1.9;

Ka=11.031;

%hs=1;
h=R+hs;

% a=3*R;

%d=1;

p=2*h/a;

angl=alofi*(pi/180);

fn=fn_hex(p);
g1n=g1n_hex(p);
g2n=g2n_hex(p);

wavelength=zeros(1,length(w));
RS=zeros(1,length(w));
RP=zeros(1,length(w));
%variables
var1=zeros(1,length(w));
epsper4=zeros(1,length(w));
epspll4=zeros(1,length(w));
epsper4xepspll4=zeros(1,length(w));
sqepsper4xepspll4=zeros(1,length(w));
for i=1:length(w)
    wavelength(i)=lambda(w(i));
    
%     einf4d=epsSE(B1,B2,B3,C1,C2,C3,w(i));  %needed for Al2O3
        einf4d=5.7;  %needed for Al2O3

    %define the permiativity of the NP individual
    %epsNP=epsDL(einf2,eo2,ed2,w(i),emod2);
    epsNP=epsDL2(einf2,ew_pD2,eg_D2,es12,ew_p1L2,eg_1L2,es22,ew_p2L2,eg_2L2,w(i));
    %define the permiativity of layer 4
    %eps4=epsDL2(einf4m,ew_pD4m,eg_D4m,es14m,ew_p1L4m,eg_1L4m,es24m,ew_p2L4m,eg_2L4m,w(i));
    [eps4pll,eps4per]=epsaniso_wires(einf4m,ew_pD4m,eg_D4m,es14m,ew_p1L4m,eg_1L4m,es24m,ew_p2L4m,eg_2L4m,einf4d,ew_pD4d,eg_D4d,es14d,ew_p1L4d,eg_1L4d,es24d,ew_p2L4d,eg_2L4d,nwa,ucA,w(i));
    epsper4(i)=eps4per;
    epspll4(i)=eps4pll;
    epsper4xepspll4(i)=eps4per*eps4pll;
    %sqepsper4xepspll4(i)=sqrt(eps4per*eps4pll);
    % dipole aproximation 
    chi=e3*(R^3)*((epsNP-e3)/(epsNP+2*e3));
    
    % the image-charge screening factor
    if key1==1
        eta=(e3-sqrt(eps4pll*eps4per))/(e3+sqrt(eps4pll*eps4per));
    elseif key1==2
        epsmix=sqrt(eps4pll*eps4per);
        epsmixreal=real(epsmix);
        epsmiximag=imag(epsmix);
        if epsmiximag<0
            epsmix=epsmixreal-sqrt(-1)*epsmiximag;
        end
        sqepsper4xepspll4(i)=epsmix;
        eta=(e3-epsmix)/(e3+epsmix);
    elseif key1==0
        eta=0;
    elseif key1==0.5
        eta1=(e3-sqrt(eps4pll*eps4per))/(e3+sqrt(eps4pll*eps4per));
        eta=real(eta1);
    end
    
    var1(i)=eta;
    %effectiv quasi-static polarisability (parallel to plane)
    betapll=chi/(1+(chi/e3)*((-Ka/(2*a^3))+eta*((fn/a^3)-(3/2)*(g1n/(a^3))+1/(8*h^3))));
    %effectiv quasi-static polarisability (perpendicular to plane)
    betaper=chi/(1+(chi/e3)*((Ka/(a^3))-eta*((fn/(a^3))-(12)*(((h^2)*g2n)/(a^5))-1/(4*(h^3)))));
    
    % parallel component for NP inbeded in dielectric
    eps2pll=e3+((4*pi)/(d*a^2))*betapll;
    % perpendicula component for NP inbeded in dielectric
    eps2per=((1/e3)-(1/e3^2)*((4*pi)/(d*(a^2)))*betaper)^(-1);
    
    %wave vectors
    k1=(w(i)/197.4)*sqrt(e1)*cos(angl);
    k2pll=(w(i)/197.4)*sqrt(eps2pll-e1*((sin(angl))^2));
    k2per=(w(i)/197.4)*sqrt(eps2pll/eps2per)*sqrt(eps2per-e1*((sin(angl))^2));
    k3=(w(i)/197.4)*sqrt(e3-e1*((sin(angl))^2));
    k4pll=(w(i)/197.4)*sqrt(eps4pll-e1*((sin(angl))^2));
    k4per=(w(i)/197.4)*sqrt(eps4pll/eps4per)*sqrt(eps4per-e1*((sin(angl))^2));
    
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
end

var2={epsper4,epspll4,epsper4xepspll4,sqepsper4xepspll4};

end

