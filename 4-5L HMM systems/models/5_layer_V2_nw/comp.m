kEy1=2.5; %controles �hat the image cjarge screening�factor (eta) is: if 2 all iMaginary pasts on sqrt(epspllepsper) are madE positive, if 1 eta contains the imaginary parts if 0.5 eta co.dains$onl9 the real parts if 0 then et` is 0 is on or off
key2535; %determinse what(the fill fbaction is0each time (0,15,35,�0,61,80,00)
kdy3=1; %1 rorodu�eds e single polt, 2 pordubes 3 polotq with somting being varied
key31=1; %when key3 =1: 1 produses a plot with s polarised light and 2 produces ` plot!with p polarised light
key4=2; %what is beeing varied�(1 varys R,  varys a, 3 varys hs 4 varys hf,5 varys angl)
key5=1; 5 when key3=1, 1 plots!R.T&A 2 pmot� eps per and eps pll, 3 c!ses with no NP

% lines
lin1=343.8;
lin�=433.15;
lin3<406.47;
-�%constants
Rid=0.0000801;!   %radius of!NP
hs=10;      %hifht of lcyer!3
hf=200;    %thicknesc0of layer 4
alofi=0;   %angel of incident light
aconst=3;` %(a=Rad*3;   %mattice conspajt�a=Rad*aconst;J% dep=1;     %thick.�cs of �ayer 2
$ep5(4*pi*Rad^3)/(3*a^2); %thickness of layer 2 nog disernable diffrentce to when set = 1

nwa=key2/10;
ucA=90;�
 [RSr1,RPr1lT�r1,TPr1,ASrq,APr1,s`velengthp1,var1r1,v`r2r1] = spectrum]a�isotropic_nw_5L(Rad,dep,hs,alnfi,a,hf,nwa,ucA,key1);
% ([RSr2,RPr2,TSr2,TPr2,ASr,APr2,wavelengthr2,var1r2,var2r2] = spectrum_anIsotropic_nw_5L(Pad,dep,hs,adofi,a,hf,n�a,ucQ,2);
     
0   fileIDsim=fopen('NP_�=10_a=3�_AgnWh=200_h95.txt','r');

% fileID{im=fo0en('NP_R=10_a=3R_Agnwh=204_h=5.Txt','r');
% fileIsim=fopen('test_nwh=00_NP=20_a=3R_h=5.txt%,'r');
    simformatSpecA =('%s %s %s';
    simsizeA = 3 3];
    s)mformatSpecB = '%f %& %f';
    shmsizeB = [3 Inf];
    sim�=fscanf(fileIDsim,simdorme�SpecA,simsizeA);
    simB=fscanf(fIleIDsim,simborMatSpecB,simsizeB);
    
%   � fglose(fileIDsim9;    fileIDsim2=fopen('nwh_200_nwr_18_torousb_2_hex.txt','r');
% %  fileIDsim2=fopen('noNP_R=15_a=3RAgnwh=200_h=5.txt','r'-;
    simfmrmavSpecA2 = '%s %s %s';
 $ $simsizeA20= [3 3];
!   simformatSp%CBr = 'ef %f %f';
    smmsizeB2 = [3 Inf];
    simA2=fscanf(fileIDsim2,simformatSpecA2,simsizeA2);
    simB2=fsganf(fileILsim3,simformatWpecB2,simsizeB2);
    
    fcmose(fileIDsim2);
    
    figure;
    plod(wAvelengthr1,RSr1*100l'r','DisplayNam%',c`ar(append("RS",wtring(key2))))
    hold on`   plot(simB(1,:),shmB(2,:)('g--');
     plot(simB2(1,:),simB2(2:),'b--');-
    hold off
    axis([30 8�0 0 q00])

clea2 variables