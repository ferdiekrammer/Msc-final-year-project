function [RS,RP,TS,TP,AS,AP,wavelength,var1,var2] = spectrum_anisotropic_fabryperot_sheets_bottom(R,d,hs,alofi,a,hf1,hf2,L,md,dd,key1)
%equations fail if halfspace is metal in natur

%electric permiativity for layer 1
%e1=1.78;
var2=key1;
epsmed=1.78;

%electric permiativity for layer 2 (NP) au
einfNP=5.9752;
ew_pDNP=8.8667;
eg_DNP=0.03799;
es1NP=1.76;
ew_p1LNP=3.6;
eg_1LNP=1.3;
es2NP=0.952;
ew_p2LNP=2.8;
eg_2LNP=0.737;

%electric permiativity for layer 2 (NP) ag
% einfNP=3.718;
% ew_pDNP=9.2093;
% eg_DNP=0.02;
% es1NP=0.4242;
% ew_p1LNP=4.284;
% eg_1LNP=0.737;
% es2NP=0;
% ew_p2LNP=0;
% eg_2LNP=0;

% einf2=1;
% ew_pD2=0;
% eg_D2=0;
% es12=0;
% ew_p1L2=0;
% eg_1L2=0;
% es22=0;
% ew_p2L2=0;
% eg_2L2=0;

%electric permiativity for layer 3
%e3=1.78;
% e3=1.78;

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

einf4m=3.718;
ew_pD4m=9.2093;
eg_D4m=0.02;
es14m=0.4242;
ew_p1L4m=4.284;
eg_1L4m=0.737;
es24m=0;
ew_p2L4m=0;
eg_2L4m=0;

% einf4m=5.9752;
% ew_pD4m=8.8667;
% eg_D4m=0.03799;
% es14m=1.76;
% ew_p1L4m=3.6;
% eg_1L4m=1.3;
% es24m=0.952;
% ew_p2L4m=2.8;
% eg_2L4m=0.737;

%%silver
einfm=3.718;
ew_pDm=9.2093;
eg_Dm=0.02;
es1m=0.4242;
ew_p1Lm=4.284;
eg_1Lm=0.737;
es2m=0;
ew_p2Lm=0;
eg_2Lm=0;


% electric permiativity of layer 4 
% dialectric sheet

% einfdi=6.6719;
% ew_pDdi=0;
% eg_Ddi=0;
% es1di=0;
% ew_p1Ldi=0;
% eg_1Ldi=0;
% es2di=0;
% ew_p2Ldi=0;
% eg_2Ldi=0;

% einf4d=5.9752;
% ew_pD4d=8.8667;
% eg_D4d=0.03799;
% es14d=1.76;
% ew_p1L4d=3.6;
% eg_1L4d=1.3;
% es24d=0.952;
% ew_p2L4d=2.8;
% eg_2L4d=0.737;

% B1=1.43134930;
% B2=0.65054713;
% B3=5.3414021;
% C1=5.2799261*10^(-3);
% C2=1.42382647*10^(-2);
% C3=3.25017834*10^2;

einfd=6.67;
ew_pDd=0;
eg_Dd=0;
es1d=0;
ew_p1Ld=0;
eg_1Ld=0;
es2d=0;
ew_p2Ld=0;
eg_2Ld=0;

% dsheet=8;
% electric permiativity of layer 5 
% dialectric sheet
einfgl=2.25;
ew_pDgl=0;
eg_Dgl=0;
es1gl=0;
ew_p1Lgl=0;
eg_1Lgl=0;
es2gl=0;
ew_p2Lgl=0;
eg_2Lgl=0;

%w=1.377:0.001:3.099;
w=1.377:0.001:4.133;
% w=1.1273:0.001:3.5;
%w=3.444444;


Ka=11.031;
h=R+hs;
p=2*h/a;

angl=alofi*(pi/180);

fn=fn_hex(p);
g1n=g1n_hex(p);
g2n=g2n_hex(p);
wavelength=zeros(1,length(w));
RS=zeros(1,length(w));
TS=zeros(1,length(w));
AS=zeros(1,length(w));
RP=zeros(1,length(w));
TP=zeros(1,length(w));
AP=zeros(1,length(w));

var1=zeros(1,length(w));
eps3=epsmed;
eps5=epsmed;
eps7=epsmed;


for i=1:length(w)
    wavelength(i)=lambda(w(i));

    %define the permiativity of the NP individual
    
    epsNP=epsDL2(einfNP,ew_pDNP,eg_DNP,es1NP,ew_p1LNP,eg_1LNP,es2NP,ew_p2LNP,eg_2LNP,w(i));

    %define the permiativity of layer 2 and 8
    
    [eps2pll,eps2per]=deal(epsDL2(einf4m,ew_pD4m,eg_D4m,es14m,ew_p1L4m,eg_1L4m,es24m,ew_p2L4m,eg_2L4m,w(i)));

%   [eps2pll,eps2per]=epsaniso_wires(einfm,ew_pDm,eg_Dm,es1m,ew_p1Lm,eg_1Lm,es2m,ew_p2Lm,eg_2Lm,einfd,ew_pDd,eg_Dd,es1d,ew_p1Ld,eg_1Ld,es2d,ew_p2Ld,eg_2Ld,nwa,ucA,w(i));
    
    [eps8pll,eps8per]=epsaniso_sheets(einfm,ew_pDm,eg_Dm,es1m,ew_p1Lm,eg_1Lm,es2m,ew_p2Lm,eg_2Lm,einfd,ew_pDd,eg_Dd,es1d,ew_p1Ld,eg_1Ld,es2d,ew_p2Ld,eg_2Ld,md,dd,w(i));
    
    
    %permiativity of layer 1 and 9
    [eps1,eps9]=deal(epsDL2(einfgl,ew_pDgl,eg_Dgl,es1gl,ew_p1Lgl,eg_1Lgl,es2gl,ew_p2Lgl,eg_2Lgl,w(i)));
    
%    [eps1,eps2pll,eps2per]=deal(eps5);
    
    % dipole aproximation 
    chi=eps5*(R^3)*((epsNP-eps5)/(epsNP+2*eps5));
    %image charge screening factor
    eta1=(eps5-sqrt(eps2per*eps2pll))/(eps5+sqrt(eps2per*eps2pll));
    eta2=(eps5-sqrt(eps8per*eps8pll))/(eps5+sqrt(eps8per*eps8pll));
    
    %top interface
    %effectiv quasi-static polarisability (parallel to plane)
    betapll1=chi/(1+(chi/eps5)*((-Ka/(2*a^3))+eta1*((fn/a^3)-(3/2)*(g1n/(a^3))+1/(8*h^3))));
    %effectiv quasi-static polarisability (perpendicular to plane)
    betaper1=chi/(1+(chi/eps5)*((Ka/(a^3))-eta1*((fn/(a^3))-(12)*(((h^2)*g2n)/(a^5))-1/(4*(h^3)))));
    % bottom interface
    %effectiv quasi-static polarisability (parallel to plane)
    betapll2=chi/(1+(chi/eps5)*((-Ka/(2*a^3))+eta2*((fn/a^3)-(3/2)*(g1n/(a^3))+1/(8*h^3))));
    %effectiv quasi-static polarisability (perpendicular to plane)
    betaper2=chi/(1+(chi/eps5)*((Ka/(a^3))-eta2*((fn/(a^3))-(12)*(((h^2)*g2n)/(a^5))-1/(4*(h^3)))));
    
%     % parallel component for NP inbeded in dielectric
%     [eps4pll,eps6pll]=deal(eps5+((8*pi)/(sqrt(3)*d*a^2))*betapll);
%     % perpendicula component for NP inbeded in dielectric
%     [eps4per,eps6per]=deal(((1/eps5)-(1/eps5^2)*((8*pi)/(sqrt(3)*d*(a^2)))*betaper)^(-1));
%     
     % parallel component for NP inbeded in dielectric
    [eps4pll,eps4per]=deal(eps5+((4*pi)/(d*a^2))*betapll1,((1/eps5)-(1/eps5^2)*((4*pi)/(d*(a^2)))*betaper1)^(-1));
    % perpendicula component for NP inbeded in dielectric
    [eps6per,eps6pll]=deal(eps5+((4*pi)/(d*a^2))*betapll2,((1/eps5)-(1/eps5^2)*((4*pi)/(d*(a^2)))*betaper2)^(-1));
    
    
    %wave vectors
    k1=(w(i)/197.4)*sqrt(eps1)*cos(angl);
    k2per=kGenper(eps1,eps2pll,eps2per,angl,w(i));
    k2pll=kGenpll(eps1,eps2pll,eps2per,angl,w(i));
    k3=kGen(eps1,eps3,angl,w(i));
    k4per=kGenper(eps1,eps4pll,eps4per,angl,w(i));
    k4pll=kGenpll(eps1,eps4pll,eps4per,angl,w(i));
    k5=kGen(eps1,eps5,angl,w(i));
    k6per=kGenper(eps1,eps6pll,eps6per,angl,w(i));
    k6pll=kGenpll(eps1,eps6pll,eps6per,angl,w(i));
    k7=kGen(eps1,eps7,angl,w(i));
    k8per=kGenper(eps1,eps8pll,eps8per,angl,w(i));
    k8pll=kGenpll(eps1,eps8pll,eps8per,angl,w(i));
    k9=kGen(eps1,eps9,angl,w(i));
    
    hs1=R+hs-d/2;
% hs1=hs;
    %phase shifts
    del2pll=k2pll*hf1;
    del2per=k2per*hf1;
    del3=k3*hs1;
    del4pll=k4pll*d;
    del4per=k4per*d;
    del5=k5*(L-2*hs1-2*d);
    del6pll=k6pll*d;
    del6per=k6per*d;
    del7=k7*hs1;
    del8pll=k8pll*hf2;
    del8per=k8per*hf2;
    
    %reflectance paramiters (s polarised light)
    r12s=rsij(k1,k2pll);
    r23s=rsij(k2pll,k3);
    r34s=rsij(k3,k4pll);
    r45s=rsij(k4pll,k5);
    r56s=rsij(k5,k6pll);
    r67s=rsij(k6pll,k7);
    r78s=rsij(k7,k8pll);
    r89s=rsij(k8pll,k9);
    
   %transmitance paramiters (s polarised light)
    t12s=tsij(k1,k2pll);
    t23s=tsij(k2pll,k3);
    t34s=tsij(k3,k4pll);
    t45s=tsij(k4pll,k5);
    t56s=tsij(k5,k6pll);
    t67s=tsij(k6pll,k7);
    t78s=tsij(k7,k8pll);
    t89s=tsij(k8pll,k9);
    
    
    %result of the transfer matrix (s polarised light)
    M1s=Mn(r12s,t12s,del2pll);
    M2s=Mn(r23s,t23s,del3);
    M3s=Mn(r34s,t34s,del4pll);
    M4s=Mn(r45s,t45s,del5);
    M5s=Mn(r56s,t56s,del6pll);
    M6s=Mn(r67s,t67s,del7);
    M7s=Mn(r78s,t78s,del8pll);
%     M8s=Mn(r89s,t89s,0);
    
    Ms=M(M1s,M2s,M3s,M4s,M5s,M6s,M7s,r89s,t89s);
    [M11s,M21s]=deal(Ms(1,1),Ms(2,1));
    rs=M21s/M11s;
    ts=1/M11s;
       
    
    Rs=(abs(rs))^2;
    RS(i)=Rs;
    
    ni=sqrt(eps1); %incident reflectivity constant
    nt=sqrt(eps9); %final relfectivity constant
    anglt=asin((ni*sin(angl))/(nt)); %final angle
       
    Ts=(abs(ts))^2*((nt*cos(anglt))/(ni*cos(angl)));
    TS(i)=Ts;
    
    % absorbacen of s polarized light
    AS(i)=(1-Ts-Rs);
    
    %reflectance paramiters (p polarised light)
    
     %reflectance paramiters (s polarised light)
    r12p=rpij(k1,k2per,eps1,eps2pll);
    r23p=rpij(k2per,k3,eps2pll,eps3);
    r34p=rpij(k3,k4per,eps3,eps4pll);
    r45p=rpij(k4per,k5,eps4pll,eps5);
    r56p=rpij(k5,k6per,eps5,eps6pll);
    r67p=rpij(k6per,k7,eps6pll,eps7);
    r78p=rpij(k7,k8per,eps7,eps8pll);
    r89p=rpij(k8per,k9,eps8pll,eps9);
    
   %transmitance paramiters (s polarised light)
    t12p=tpij(k1,k2per,eps1,eps2pll);
    t23p=tpij(k2per,k3,eps2pll,eps3);
    t34p=tpij(k3,k4per,eps3,eps4pll);
    t45p=tpij(k4per,k5,eps4pll,eps5);
    t56p=tpij(k5,k6per,eps5,eps6pll);
    t67p=tpij(k6per,k7,eps6pll,eps7);
    t78p=tpij(k7,k8per,eps7,eps8pll);
    t89p=tpij(k8per,k9,eps8pll,eps9);
    
    
    %result of the transfer matrix (s polarised light)
    M1p=Mn(r12p,t12p,del2per);
    M2p=Mn(r23p,t23p,del3);
    M3p=Mn(r34p,t34p,del4per);
    M4p=Mn(r45p,t45p,del5);
    M5p=Mn(r56p,t56p,del6per);
    M6p=Mn(r67p,t67p,del7);
    M7p=Mn(r78p,t78p,del8per);
%     M8s=Mn(r89s,t89s,0);
    
    Mp=M(M1p,M2p,M3p,M4p,M5p,M6p,M7p,r89p,t89p);
    [M11p,M21p]=deal(Mp(1,1),Mp(1,2));
    rp=M21p/M11p;
    tp=1/M11p;
       
    
    Rp=(abs(rp))^2;
    RP(i)=Rp;
    
    ni=sqrt(eps1); %incident reflectivity constant
    nt=sqrt(eps9); %final relfectivity constant
    anglt=asin((ni*sin(angl))/(nt)); %final angle
       
    Tp=(abs(tp))^2*((nt*cos(anglt))/(ni*cos(angl)));
    TP(i)=Tp;
    
    % absorbacen of s polarized light
    AP(i)=(1-Tp-Rp);

end

% var2={epsper4,epspll4,epsper4xepspll4,sqepsper4xepspll4};

end

