clear
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
% eo2=0;
% ed2=0;
% emod2=0;
%electric permiativity for layer 3
e3=1.78;

%electric permiativity for layer 4
%gold sheets
% einf4=5.0896;
% ew_pD4=9.0271;
% eg_D4=0.0760;
% es14=1.4288;
% ew_p1L4=2.9530;
% eg_1L4=0.9541;
% es24=1.8465;
% ew_p2L4=4.0616;
% eg_2L4=1.5639;

% electric permiativity of layer 4 
% dialectric sheet

einf4=3;
ew_pD4=0;
eg_D4=0;
es14=0;
ew_p1L4=0;
eg_1L4=0;
es24=0;
ew_p2L4=0;
eg_2L4=0;

R=10;

w=1.377:0.001:3.099;
%w=1.9;

Ka=11.031;

hs=1;
h=R+hs;

a=3*R;

d=1;

p=2*h/a;

angl=60*(pi/180);

fn=fn_hex(p);
g1n=g1n_hex(p);
g2n=g2n_hex(p);
wavelength=zeros(1,length(w));
RS=zeros(1,length(w));
TS=zeros(1,length(w));
AS=zeros(1,length(w));
RP=zeros(1,length(w));
TP=zeros(1,length(w));
etasum=zeros(1,length(w));
alp=zeros(1,length(w));
vaer=zeros(1,length(w));
vr=zeros(1,length(w));
for i=1:length(w)
    wavelength(i)=lambda(w(i));
    
    %define the permiativity of the NP individual
    %epsNP=epsDL(einf2,eo2,ed2,w(i),emod2);
    epsNP=epsDL2(einf2,ew_pD2,eg_D2,es12,ew_p1L2,eg_1L2,es22,ew_p2L2,eg_2L2,w(i));
    %define the permiativity of layer 4
    eps4=epsDL2(einf4,ew_pD4,eg_D4,es14,ew_p1L4,eg_1L4,es24,ew_p2L4,eg_2L4,w(i));
    
    % dipole aproximation 
    chi=e3*(R^3)*((epsNP-e3)/(epsNP+2*e3));
    alp(i)=chi;
    % the image-charge screening factor
    %eta=(e3-eps4)/(e3+eps4);
     eta=0;
    %etasum(i)=eta1-eta;
    %effectiv quasi-static polarisability (parallel to plane)
    betapll=chi/(1+(chi/e3)*((-Ka/(2*a^3))+eta*((fn/a^3)-(3/2)*(g1n/(a^3))+1/(8*h^3))));
    %effectiv quasi-static polarisability (perpendicular to plane)
    betaper=chi/(1+(chi/e3)*((Ka/(a^3))-eta*((fn/(a^3))-(12)*(((h^2)*g2n)/(a^5))-1/(4*(h^3)))));
    vr(i)=((chi/e3)*((-Ka/(2*a^3))+eta*((fn/a^3)-(3/2)*(g1n/(a^3))+1/(8*h^3))));

    %tests
    %((fn/(a^3))-(12)*(((h^2)*g2n)/(a^5))-1/(4*(h^3)))
    vaer(i)=(1+(chi/e3)*((Ka/(a^3))-eta*((fn/(a^3))-(12)*(((h^2)*g2n)/(a^5))-1/(4*(h^3)))));
    %fn,h,a,g2n,g1n
    
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
    
    %phase factors
    s2pll=exp(2*sqrt(-1)*k2pll*d);
    s2per=exp(2*sqrt(-1)*k2per*d);
    s3=exp(2*sqrt(-1)*k3*(h-(d/2)));
    
    %reflectance paramiters (s polarised light)
    r12s=(k1-k2pll)/(k1+k2pll);
    r23s=(k2pll-k3)/(k2pll+k3);
    r34s=(k3-k4)/(k3+k4);
    
    %result of the transfer matrix (s polarised light)
    rs_num=r12s+r23s*s2pll+r34s*s2pll*s3+r12s*r23s*r34s*s3;
    rs_den=1+r12s*r23s*s2pll+r23s*r34s*s3+r12s*r34s*s2pll*s3;
    
    rs=rs_num/rs_den;
    
    Rs=(abs(rs))^2;
    RS(i)=Rs;
    
    %reflectance paramiters (p polarised light)
    r12p=(e1*k2per-eps2pll*k1)/(e1*k2per+eps2pll*k1);
    r23p=(eps2pll*k3-e3*k2per)/(eps2pll*k3+e3*k2per);
    r34p=(e3*k4-eps4*k3)/(e3*k4+eps4*k3);
    
    %result of the transfer matrix (p polarised light)
    rp_num=r12p+r23p*s2per+r34p*s2per*s3+r12p*r23p*r34p*s3;
    rp_den=1+r12p*r23p*s2per+r23p*r34p*s3+r12p*r34p*s2per*s3;
    
    rp=rp_num/rp_den;
    
    Rp=(abs(rp))^2;
    RP(i)=Rp;
    
    ni=sqrt(e1); %incident reflectivity constant
    nt=sqrt(eps4); %final relfectivity constant
    anglt=asin((ni*sin(angl))/(nt)); %final angle
    
    %transmitance paramiters (s polarised light)
    t12s=(2*k1)/(k1+k2pll);
    t23s=(2*k2pll)/(k2pll+k3);
    t34s=(2*k3)/(k3+k4);
    %result of the transfer matrix (s polarised light)
    ts_num=t12s*t23s*t34s*sqrt(s2pll)*sqrt(s3);
    ts_den=1+r12s*r23s*s2pll+r23s*r34s*s3+r12s*r34s*s2pll*s3;
    
    ts=(ts_num/ts_den);
    
    Ts=(abs(ts))^2*((nt*cos(anglt))/(ni*cos(angl)));
    TS(i)=Ts;
    
    % absorbacen of s polarized light
    AS(i)=(1-Ts-Rs)*100;
    
%     %transmitance paramiters (p polarised light)
%     t12p=(2*sqrt(e1)*sqrt(eps2pll)*k1)/(e1*k2per+eps2pll*k1);
%     t23p=(2*sqrt(eps2pll)*sqrt(e3)*k2per)/(eps2pll*k3+e3*k2per);
%     t34p=(2*sqrt(e3)*sqrt(eps4)*k3)/(e3*k4+eps4*k3);
%     %result of the transfer matrix (p polarised light)
%     tp_num=t12p*t23p*t34p*sqrt(s2per)*sqrt(s3);
%     tp_den=1+r12p*r23p*s2per+r23p*r34p*s3+r12p*r34p*s2per*s3;
%     
%     tp=tp_num/tp_den;
%     
%     Tp=(abs(tp))^2;
%     TP(i)=Tp;
end

figure;
plot(wavelength,vr);
% plot(wavelength,RS*100,'r');
% hold on
% plot(wavelength,TS*100,'g');
% plot(wavelength,AS,'c');
% plot(wavelength,RP*100);
% hold off
%axis([400 900 -0.0001 0.0001])
% legend('Rs','Ts','As')
xlabel('wavelength')
% ylabel('%')

% clear variables