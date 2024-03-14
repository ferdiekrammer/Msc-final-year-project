%equations fail if halfspace is metal in natur
%electric permiativity for layer 1
e1=2.25;
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

% einf2=5.9752;
% eo2=8.8667;
% ed2=0.03799;
% emod2=1;
%electric permiativity for layer 3
e3=2.25;

%electric permiativity for layer 4
%gold sheets

% einf4=5.9752;
ew_pD4=8.8667;
eg_D4=0.03799;
es14=1.76;
ew_p1L4=3.6;
eg_1L4=1.3;
es24=0.952;
ew_p2L4=2.8;
eg_2L4=0.737;
einf4=5.9752;

% einf4=6.67;
% ew_pD4=0;
% eg_D4=0;
% es14=0;
% ew_p1L4=0;
% eg_1L4=0;
% es24=0;
% ew_p2L4=0;
% eg_2L4=0;


% electric permiativity of layer 5 
% dialectric sheet
einf5=1.78;
ew_pD5=0;
eg_D5=0;
es15=0;
ew_p1L5=0;
eg_1L5=0;
es25=0;
ew_p2L5=0;
eg_2L5=0;

w=1.377:0.001:3.099;
%w=1.9;
Ka=11.031;
%NP radi
R=8;
%hight of layer 3
hs=2;
h=R+hs;
%lattice constant
a=3*R;
%NP layer thickness (layer 2)
d=1;
% hight of layer 4
hf=30;

p=2*h/a;

angl=0*(pi/180);

fn=fn_hex(p);
g1n=g1n_hex(p);
g2n=g2n_hex(p);
wavelength=zeros(1,length(w));
RS=zeros(1,length(w));
TS=zeros(1,length(w));
AS=zeros(1,length(w));
RP=zeros(1,length(w));
TP=zeros(1,length(w));
for i=1:length(w)
    wavelength(i)=lambda(w(i));
    
    %define the permiativity of the NP individual
%     epsNP=epsDL(einf2,eo2,ed2,w(i),emod2);
    epsNP=epsDL2(einf2,ew_pD2,eg_D2,es12,ew_p1L2,eg_1L2,es22,ew_p2L2,eg_2L2,w(i));
    
    %define the permiativity of layer 4
    eps4=epsDL2(einf4,ew_pD4,eg_D4,es14,ew_p1L4,eg_1L4,es24,ew_p2L4,eg_2L4,w(i));
    %permiativity of layer 5
    e5=epsDL2(einf5,ew_pD5,eg_D5,es15,ew_p1L5,eg_1L5,es25,ew_p2L5,eg_2L5,w(i));
    % dipole aproximation 
    chi=e3*(R^3)*((epsNP-e3)/(epsNP+2*e3));
%     eps4=sqrt(eps4^2)
    % the image-charge screening factor
    eta=(e3-sqrt(eps4^2))/(e3+sqrt(eps4^2));
%     eta=(e3-eps4)/(e3+eps4);
    
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
    k4=(w(i)/197.4)*sqrt(eps4-e1*((sin(angl))^2));
    k5=(w(i)/197.4)*sqrt(e5-e1*((sin(angl))^2));
    
    %phase factors
    s2pll=exp(2*sqrt(-1)*k2pll*d);
    s2per=exp(2*sqrt(-1)*k2per*d);
    s3=exp(2*sqrt(-1)*k3*(h-(d/2)));
    s4=exp(2*sqrt(-1)*k4*hf);
    %reflectance paramiters (s polarised light)
    r12s=(k1-k2pll)/(k1+k2pll);
    r23s=(k2pll-k3)/(k2pll+k3);
    r34s=(k3-k4)/(k3+k4);
    r45s=(k4-k5)/(k4+k5);
    
    %result of the transfer matrix (s polarised light)
    rs_num=r12s+r12s*r34s*r45s*s4+r12s*r23s*r34s*s3+r12s*r23s*r45s*s3*s4+r23s*s2pll+r23s*r34s*r45s*s2pll*s4+r34s*s2pll*s3+r45s*s2pll*s3*s4;
    rs_den=1+r34s*r45s*s4+r23s*r34s*s3+r23s*r45s*s3*s4+r12s*r23s*s2pll+r12s*r23s*r34s*r45s*s2pll*s4+r12s*r34s*s2pll*s3+r12s*r45s*s2pll*s3*s4;
    
    rs=rs_num/rs_den;
    
    Rs=(abs(rs))^2;
    RS(i)=Rs;
    
    %reflectance paramiters (p polarised light)
    r12p=(e1*k2per-eps2pll*k1)/(e1*k2per+eps2pll*k1);
    r23p=(eps2pll*k3-e3*k2per)/(eps2pll*k3+e3*k2per);
    r34p=(e3*k4-eps4*k3)/(e3*k4+eps4*k3);
    r45p=(eps4*k5-e5*k4)/(eps4*k5+e5*k4);
    %result of the transfer matrix (p polarised light)
    rp_num=r12p+r12p*r34p*r45p*s4+r12p*r23p*r34p*s3+r12p*r23p*r45p*s3*s4+r23p*s2pll+r23p*r34p*r45p*s2pll*s4+r34p*s2pll*s3+r45p*s2pll*s3*s4;
    rp_den=1+r34p*r45p*s4+r23p*r34p*s3+r23p*r45p*s3*s4+r12p*r23p*s2pll+r12p*r23p*r34p*r45p*s2pll*s4+r12p*r34p*s2pll*s3+r12p*r45p*s2pll*s3*s4;
    
    rp=rp_num/rp_den;
    
    Rp=(abs(rp))^2;
    RP(i)=Rp;
    
    ni=sqrt(e1); %incident reflectivity constant
    nt=sqrt(e5); %final relfectivity constant
    anglt=asin((ni*sin(angl))/(nt)); %final angle
    
    %transmitance paramiters (s polarised light)
    t12s=(2*k1)/(k1+k2pll);
    t23s=(2*k2pll)/(k2pll+k3);
    t34s=(2*k3)/(k3+k4);
    t45s=(2*k4)/(k4+k5);
    %result of the transfer matrix (s polarised light)
    ts_num=t12s*t23s*t34s*t45s*sqrt(s2pll*s3*s4);
    ts_den=1+r34s*r45s*s4+r23s*r34s*s3+r23s*r45s*s3*s4+r12s*r23s*s2pll+r12s*r23s*r34s*r45s*s2pll*s4+r12s*r34s*s2pll*s3+r12s*r45s*s2pll*s3*s4;
    
    ts=(ts_num/ts_den);
    
    Ts=(abs(ts))^2*((nt*cos(anglt))/(ni*cos(angl)));
    TS(i)=Ts;
    
    % absorbacen of s polarized light
    AS(i)=(1-Ts-Rs)*100;
    
    %transmitance paramiters (p polarised light)
    t12p=(2*sqrt(e1)*sqrt(eps2pll)*k1)/(e1*k2per+eps2pll*k1);
    t23p=(2*sqrt(eps2pll)*sqrt(e3)*k2per)/(eps2pll*k3+e3*k2per);
    t34p=(2*sqrt(e3)*sqrt(eps4)*k3)/(e3*k4+eps4*k3);
    t45p=(2*sqrt(eps4)*sqrt(e5)*k4)/(eps4*k5+e5*k4);
    
    %result of the transfer matrix (p polarised light)
    tp_num=t12p*t23p*t34p*t45p*sqrt(s2per*s3*s4);
    tp_den=1+r34p*r45p*s4+r23p*r34p*s3+r23p*r45p*s3*s4+r12p*r23p*s2pll+r12p*r23p*r34p*r45p*s2pll*s4+r12p*r34p*s2pll*s3+r12p*r45p*s2pll*s3*s4;
    
    tp=tp_num/tp_den*((nt*cos(anglt))/(ni*cos(angl)));
    
    Tp=(abs(tp))^2;
    TP(i)=Tp;
end

figure;
plot(wavelength,RS*100,'r')
hold on
plot(wavelength,TS*100,'g')
plot(wavelength,AS,'x')
% plot(wavelength,TP*100,'x')
hold off