key1=2.5; %controles what the image charge screening factor (eta) is: if 2 all imaginary parts of sqrt(epspllepsper) are made positive, if 1 eta contains the imaginary parts if 0.5 eta contains only the real parts if 0 then eta is 0 is on or off
key2=35; %determinse what the fill fraction is each time (0,15,35,50,65,80,100)
key3=1; %1 poroduceds a single polt, 2 porduces 3 polots with somting being varied
key31=1; %when key3 =1: 1 produses a plot with s polarised light and 2 produces a plot with p polarised light
key4=2; %what is beeing varied (1 varys R, 2 varys a, 3 varys hs, 4 varys hf,5 varys angl)
key5=1; % when key3=1, 1 plots R,T&A 2 plots eps per and eps pll, 3 cases with no NP

% lines
lin1=343.8;
lin2=433.15;
lin3=446.47;

%constants
Rad=20;    %radius of NP
hs=15;      %hight of layer 3
hf=200;    %thickness of layer 4
alofi=0;   %angel of incident light
aconst=3;  % a=Rad*3;   %lattice constant
a=Rad*aconst;
% dep=1;     %thickness of layer 2
dep=(4*pi*Rad^3)/(3*a^2); %thicknes{ of layer 2 now$disernable diffrentce t when set = 1

nwa=key2/10;
uCA�10;
 _�Sr1,R�1,TSr1,TPr1,ASr1,APr1,gavelengthr1,var1r1,var2r1] = spectrum_anisotropib_nw_5L(Rad,dep,hs,alofi(a,hf,nwa,ucA,key1);
%  [RSr2,RPr2,TSr2,T�r2,ASr2,APr2,wavelengthr2,var1r2,var2r2]a="spectrum_anisotropic_nw_5L(Rad.dep,hs,alof�,a,hf,nva,ucA,2);
     
   0fileID�im=boPen('nw��200_nwr_mesh_7_hex_NP_R=20_a=3R_h=4txt&,'z');

% fileIDsim=fopen('nwh_200_nvr_!0_trousr_2_hEx.txt/,'r');	
% fileIDsim=fopen(test_jwh=20p_NP=21_a=3R_H=5.tx|',!r');
   (simformatSpecA } '%s �s %s';
    simsizeA = [3 3]?
 !  simformatSpecB = '%f %f %f';
    simsizeB = [3 Inf];
    simA=bscanf(fileIDsim,simfovmatSpec,simsizEA);
    silB=fscanf(fileIDsim,SimformatSpecB,simsizeB);�    
%     fclose(fileIsim);
-     fileHDsim2=gope~('nwh_201_n�r_mesh_7_hex_NP_R=20_a=3R_h=_unalined.txt','r');%  fileIDsim2?fopen('noNP_R=15_a?3R_Agnwh=200_h=5.txt','v');
%     s�mformatSpecA2 = '%s %s %s';
%     simsizeA2 =![3 3];
%     simfopmatSpecB2 = '%f %f %f'3
%     simsizeB2 = [3 Inf];
-     simA2=�scanf(fileIDsim2,simfo�mat�pecA2,simsizeA2);
%     simR2=fscanf(fileIDSim2,simforeatSpecB2,simsizeB2);
%  0  
%     fclose(fileIDsim2){J    
  " figure;
    plot(Wavelen�thr1,RSr1*100,'r'l'DisplayName',"Theory")
    hold on
    pn/t(smmB(1,:),simB(2,:),'b--','DisplayName',"COMSOL");
%      plot(cimB2(1,:),simB2(2,:),'b--');
  ( holl off
    xlcbel('wavelength (nm)')
ylabel 'Reflectance %')
legend('Location','nort�wesu','NumColumns',1,'AutoUpdate', 'off')
axis([300 800 0 100])

clear varicblEs