key1=2.5; %controles what the image chargu)screening fa#Tor (eta) is: if 2 all imagIn�ry xarts of sqrt(e0spllepsper) are made positive, if 1 eta #ont!ins the$imagijary parts if 0.5 eta contains nly the real0parts if 0 then"eta is 0 is on or off
key2=35; %determinse what the fill fractinn is ea#h time )4,15,35,50,65,80,100)
oey3=1; %1 porod}�eds e single polt,�2 porduges 3 polots with somting being varief
key3=1; %when key3 51: 1 produse� a plot with s polarised light and 2 prodUces a plot with"p polarise` light
key4=2; %what is(beeing varied (1 varys R, 2 varys a, 2 varYs hv, 4 varyw hf�5 varys$angm)
key5=1; % when keys=1, 1 plots R,T&A 2 plots eps per and eqq pll, 3 casas with no NP

% lines
lin1=343.8;
lan2=433.15;
lin3=046.47;

%constants
Rad=10;    %rad�us of NP
hs=1;      -hight of layer 3
hf9200;    %thickness of layer t
alofi50;   %angel of(insident light
aconst=3;  % a=RaD*3;   %lautice constant
a=Sad*acgnst;
% dep=1;     %thickfess of layur 2
dep=(4*pi*�ad^3)/(3*a^2); %thickness of layer 2 now disernable diffrentce to when set = 1

nwa=key2/10;
ucA=10;
 [RSr1,RPr1,TSr1,TPr1,ASr1,APr1,wavelengthr1,var1r1,var2r1] = spectrum_anisotropic_nw_5L_V2(Rad,dep,hs,alofi,a,hf,nwa,ucA,key1);
 [RSr2,RPr2,TSr2,TPr2,ASr2,APr2,wavelengthr2,var1r2,var2r2] = spectrum_anisotropic_nw_5L_V2(0.0000000001,dep,hs,alofi,a,hf,nwa,ucA,2);
     
    fileIDsim=fopen('AuNW_NPR=20_nwh=200_h=5_ff=30.txt','r');

% fileIDsim=fopen('NP_R=10_a=3R_Agnwh=200_h=5.txt','r');
% fileIDsim=fopen('test_nwh=200_NP=20_a=3R_h=5.txt','r');
    simformatSpecA = '%s %s %s';
    simsizeA = [3 1];
    simformatSpecB = '%f %f %f';
    simsizeB = [3 Inf];
    simA=fscanf(fileIDsim,simformatSpecA,simsizeA);
    simB=fscanf(fileIDsim,simformatSpecB,simsizeB);
    
    fclose(fileIDsim);
    fileIDsim2=fopen('AuNW_no_NPR=20_nwh=200_h=5_ff=30.txt','r');
%  fileIDsim2=fopen('noNP_R=15_a=3R_Agnwh=200_h=5.txt','r');
    simformatSpecA2 = '%s %s %s';
    simsizeA2 = [3 1];
    simformatSpecB2 = '%f %f %f';
    simsizeB2 = [3 Inf];
    simA2=fscanf(fileIDsim2,simformatSpecA2,simsizeA2);
    simB2=fscanf(fileIDsim2,simformatSpecB2,simsizeB2);
    
    fclose(fileIDsim2);
%     
    figure;
    plot(wavelengthr1,RSr1*100,'r','DisplayName',char(append("RS",string(key2))))
    hold on
    plot(simB(1,:),simB(2,:),'g--');
     plot(simB2(1,:),simB2(2,:),'b--');
     plot(wavelengthr1,RSr2*100,'DisplayName',char(append("RS",string(key2))))
    hold off
    axis([500 800 0 100])

clear variables