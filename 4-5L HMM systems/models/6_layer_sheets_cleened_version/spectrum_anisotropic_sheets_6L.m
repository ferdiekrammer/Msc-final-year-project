function [RS,RP,TS,TP,AS,AP,wavelength,var1,var2] = spectrum_anisotropic_sheets_6L(R,d,hs,alofi,a,hf,md,dd,L,key1)
% [RS,RP,wavelength,var1,var2] = spectrum_anisotropic_nw_V3(R,d,hs,alofi,a,nwa,ucA,key1)
%equations fail if halfspace is metal in natur
%electric permiativity for layer 1
%e1=1.78;
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
%e3=1.78;
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
% 
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
einf4m=3.718;
ew_pD4m=9.2093;
eg_D4m=0.02;
es14m=0.4242;
ew_p1L4m=4.284;
eg_1L4m=0.737;
es24m=0;
ew_p2L4m=0;
eg_2L4m=0;


% electric permiativity of layer 4 
% dialectric sheet

einf4d=6.6719;
ew_pD4d=0;
eg_D4d=0;
es14d=0;
ew_p1L4d=0;
eg_1L4d=0;
es24d=0;
ew_p2L4d=0;
eg_2L4d=0;

% einf4d=5.9752;
% ew_pD4d=8.8667;
% eg_D4d=0.03799;
% es14d=1.76;
% ew_p1L4d=3.6;
% eg_1L4d=1.3;
% es24d=0.952;
% ew_p2L4d=2.8;
% eg_2L4d=0.737;

% dsheet=8;
% electric permiativity of layer 5 
% dialectric sheet
einf5=2.25;
ew_pD5=0;
eg_D5=0;
es15=0;
ew_p1L5=0;
eg_1L5=0;
es25=0;
ew_p2L5=0;
eg_2L5=0;

%w=1.377:0.001:3.099;
w=1.377:0.001:4.133;
%w=3.444444;

sheet=10;
msheet=(md)*sheet;
dsheet=(dd)*sheet;

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
epsper4=zeros(1,length(w));
epspll4=zeros(1,length(w));
epsper4xepspll4=zeros(1,length(w));
sqepsper4xepspll4=zeros(1,length(w));

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
    %permiativity of layer 5
    
    e4=epsDL2(einf4d,ew_pD4d,eg_D4d,es14d,ew_p1L4d,eg_1L4d,es24d,ew_p2L4d,eg_2L4d,w(i));
%     e4=epsDL2(einf4m,ew_pD4m,eg_D4m,es14m,ew_p1L4m,eg_1L4m,es24m,ew_p2L4m,eg_2L4m,w(i));
    e5=epsDL2(einf5,ew_pD5,eg_D5,es15,ew_p1L5,eg_1L5,es25,ew_p2L5,eg_2L5,w(i));
    % dipole aproximation 
    chi=e3*(R^3)*((epsNP-e3)/(epsNP+2*e3));
    
%     eta=(e3-sqrt(eps4pll*eps4per))/(e3+sqrt(eps4pll*eps4per));
    % the image-charge screening factor
 
    if key1==1
        eta=(e3-sqrt(eps4pll*eps4per))/(e3+sqrt(eps4pll*eps4per));
        sqepsper4xepspll4(i)=sqrt(eps4pll*eps4per);
    elseif key1==2
        epsmix=sqrt(eps4pll*eps4per);
        epsmixreal=real(epsmix);
        epsmiximag=imag(epsmix);
        if epsmiximag<0
            epsmix=epsmixreal-sqrt(-1)*epsmiximag;
        end
        sqepsper4xepspll4(i)=epsmix;
        eta=(e3-epsmix)/(e3+epsmix);
    elseif key1==3
        epsmix=sqrt(eps4pll*eps4per);
        epsmixreal=real(epsmix);
        epsmiximag=imag(epsmix);
        if epsmiximag>0
            epsmix=epsmixreal-sqrt(-1)*epsmiximag;
        end
        sqepsper4xepspll4(i)=epsmix;
        eta=(e3-epsmix)/(e3+epsmix);
    elseif key1==0.5
        eta1=(e3-sqrt(eps4pll*eps4per))/(e3+sqrt(eps4pll*eps4per));
        eta=real(eta1);
        sqepsper4xepspll4(i)=sqrt(eps4pll*eps4per);
    elseif key1==0
        eta=0;
        sqepsper4xepspll4(i)=sqrt(eps4pll*eps4per);
    end 
    
%     sqepsper4xepspll4(i)=sqrt(eps4pll*eps4per);
%     e4=sqrt(eps4pll*eps4per);
% e4
% e4=sqrt(e4^2)
    eta1=(e3-sqrt(e4^2))/(sqrt(e4^2)+e3);
    eta2=(-sqrt(e4^2)+sqrt(eps4pll*eps4per))/(sqrt(e4^2)+sqrt(eps4pll*eps4per));
    
    var1(i)=eta1;
    var2(i)=eta2;
    betapll=chi/(1-(chi/(2*e3))*((Ka/(a^3)+eta2*et2sumpll(eta1,eta2,a,h,L)-eta1*et1sumpll(eta1,eta2,a,h,L))));
    betaper=chi/(1+(chi/(e3))*((Ka/(a^3)+eta2*et2sumper(eta1,eta2,a,h,L)-eta1*et1sumper(eta1,eta2,a,h,L))));
    %effectiv quasi-static polarisability (parallel to plane)
%     betapll=chi/(1+(chi/e3)*((-Ka/(2*a^3))+eta*((fn/a^3)-(3/2)*(g1n/(a^3))+1/(8*h^3))));
    betapll2=chi/(1+(chi/e3)*((-Ka/(2*a^3))+eta*((fn/a^3)-(3/2)*(g1n/(a^3))+1/(8*h^3))));
    %effectiv quasi-static polarisability (perpendicular to plane)
%     betaper=chi/(1+(chi/e3)*((Ka/(a^3))-eta*((fn/(a^3))-(12)*(((h^2)*g2n)/(a^5))-1/(4*(h^3)))));
    betaper2=chi/(1+(chi/e3)*((Ka/(a^3))-eta*((fn/(a^3))-(12)*(((h^2)*g2n)/(a^5))-1/(4*(h^3)))));
%     eta2*et2sumpll(eta1,eta2,a,h,L)
%     eta1*et1sumpll(eta1,eta2,a,h,L)
%     eta*((fn/a^3)-(3/2)*(g1n/(a^3))+1/(8*h^3))
%     % parallel component for NP inbeded in dielectric
%     eps2pll=e3+((8*pi)/(sqrt(3)*d*a^2))*betapll;
%     % perpendicula component for NP inbeded in dielectric
%     eps2per=((1/e3)-(1/e3^2)*((8*pi)/(sqrt(3)*d*(a^2)))*betaper)^(-1);
     
%     % parallel component for NP inbeded in dielectric
    eps2pll=e3+((4*pi)/(d*a^2))*betapll;
    eps2pll2=e3+((4*pi)/(d*a^2))*betapll2;
    % perpendicula component for NP inbeded in dielectric
    eps2per=((1/e3)-(1/e3^2)*((4*pi)/(d*(a^2)))*betaper)^(-1);
    eps2per2=((1/e3)-(1/e3^2)*((4*pi)/(d*(a^2)))*betaper2)^(-1);
    
     %wave vectors
    k1=(w(i)/197.4)*sqrt(e1)*cos(angl);
    k2per=kGenper(e1,eps2pll,eps2per,angl,w(i));
    k2pll=kGenpll(e1,eps2pll,eps2per,angl,w(i));
    k3=kGen(e1,e3,angl,w(i));
    k4=kGen(e1,e4,angl,w(i));
    k4per=kGenper(e1,eps4pll,eps4per,angl,w(i));
    k4pll=kGenpll(e1,eps4pll,eps4per,angl,w(i));
    k5=kGen(e1,e5,angl,w(i));
    
    %phase shifts
    del2pll=k2pll*d;
    del2per=k2per*d;
    del3=k3*(h-d/2);
    del4=k4*L;
    del4pll=k4pll*hf;
    del4per=k4per*hf;
    
    
    %reflectance paramiters (s polarised light)
    r12s=rsij(k1,k2pll);
    r23s=rsij(k2pll,k3);
    r34s=rsij(k3,k4);
    r45s=rsij(k4,k4pll);
    r56s=rsij(k4pll,k5);
    
   %transmitance paramiters (s polarised light)
    t12s=tsij(k1,k2pll);
    t23s=tsij(k2pll,k3);
    t34s=tsij(k3,k4);
    t45s=tsij(k4,k4pll);
    t56s=tsij(k4pll,k5);
    
    %result of the transfer matrix (s polarised light)
    M1s=Mn(r12s,t12s,del2pll);
    M2s=Mn(r23s,t23s,del3);
    M3s=Mn(r34s,t34s,del4);
    M4s=Mn(r45s,t45s,del4pll);
    
    Ms=M(M1s,M2s,M3s,M4s,r56s,t56s);
    [M11s,M21s]=deal(Ms(1,1),Ms(2,1));
    rs=M21s/M11s;
    ts=1/M11s;
       
    
    Rs=(abs(rs))^2;
    RS(i)=Rs;
    
    ni=sqrt(e1); %incident reflectivity constant
    nt=sqrt(e5); %final relfectivity constant
    anglt=asin((ni*sin(angl))/(nt)); %final angle
       
    Ts=(abs(ts))^2*((nt*cos(anglt))/(ni*cos(angl)));
    TS(i)=Ts;
    
    % absorbacen of s polarized light
    AS(i)=(1-Ts-Rs);
    
    %reflectance paramiters (p polarised light)
    
    k2per2=kGenper(e1,eps2pll2,eps2per2,angl,w(i));
    k2pll2=kGenpll(e1,eps2pll2,eps2per2,angl,w(i));
    del2pll2=k2pll2*d;
    del2per2=k2per2*d;
    
     %reflectance paramiters (s polarised light)
    r12p=rpij(k1,k2per,e1,eps2pll);
    r23p=rpij(k2per,k3,eps2pll,e3);
    r34p=rpij(k3,k4,e3,e4);
    r45p=rpij(k4,k4per,e4,eps4pll);
    r56p=rpij(k4per,k5,eps4pll,e5);
    
   %transmitance paramiters (s polarised light)
    t12p=tpij(k1,k2per,e1,eps2pll);
    t23p=tpij(k2per,k3,eps2pll,e3);
    t34p=tpij(k3,k4,e3,e4);
    t45p=tpij(k4,k4per,e4,eps4pll);
    t56p=tpij(k4per,k5,eps4pll,e5);
    
    %result of the transfer matrix (s polarised light)
    M1p=Mn(r12p,t12p,del2per2);
    M2p=Mn(r23p,t23p,del3);
    M3p=Mn(r34p,t34p,del4);
    M4p=Mn(r45p,t45p,del4per);    
    
    Mp=M(M1p,M2p,M3p,M4p,r56p,t56p);
    [M11p,M21p]=deal(Mp(1,1),Mp(2,1));
    rp=M21p/M11p;
    tp=1/M11p;
       
    
    Rp=(abs(rp))^2;
    RP(i)=Rp;
    
    ni=sqrt(e1); %incident reflectivity constant
    nt=sqrt(e5); %final relfectivity constant
    anglt=asin((ni*sin(angl))/(nt)); %final angle
       
    Tp=(abs(tp))^2*((nt*cos(anglt))/(ni*cos(angl)));
    TP(i)=Tp;
    
    % absorbacen of s polarized light
    AP(i)=(1-Tp-Rp);
    
end

% var2={epsper4,epspll4,epsper4xepspll4,sqepsper4xepspll4};

end

