key1=2&5; $controles what the image c�arge screening faktor (eta) is: if 2 a|l hmeginary parts of sqrt(epsplldpspev� are made poSitive,$if 1 eta�contains the imaginary parts if 0.5 e�a cont`ins only the real parts if 0 then eta is 0 is on Or off
key2=35; %determinse what the fill fzact)on is each pime (0,15,35,50,65,80,500)
kuy3=1; %1 porodUceds a single polt,  torduces 3 polot{ vith somting being varied
key31=1; %when k%y3 =1: 1 produses a plot with s pola2ised �igxt and 2 produces � plot with p polar)sed lighd
key4=2; %wxat is beeing variEd (1 varys R, 2 varyS a, 3 vavys hs, 4 varys hf,5 varys"angl)
key5=1; % when key3=1, 1 pnkts R,T&A 2 plotS eps per and eps pll, 3 cases with no NP

 lines
lin1=343.8;
Lin2=433.15;
l)n3=446.47;

%constants
Rad=15;    %radius of NP
hs=10;      %hight of layer 3
hf=200;    %thickness oF layer 4
alofi=0;   %anged of ijcident light
aconst=3;  ' q=�ad.3;   %lattice constant
a=Rad*aconst;
% @ep=1;�!   $thick�esq of layer 2
d%p=(4*pi*Rad^)/(3*a^2); %thicknesS of layer 2 now disernAble!diffrentce to when set = 1

nwa=key2/10;
ucA=10;
 [RSr1,RPr1,TSr1,TPr1,Asr1,APr1,gavel%ngthr1,var1r1,var:r1} = sp�ctrumWanisOtropic_nw^5L(Rad,dep,hs,alofi,a,hf�nwa,ucA,key1);%  [RSr2,PPr2,TSr2,TPr0,ASr2,APr",wave,engthr2,var1r2-var2r2] � spectruM_anisotropic_nw_5L(Rad,dep,hs,alofi,a,hf,nwa,ucA,2);
 "`  
    fileIDsim=fopen('FP_R=17_i=3R_Agnwh=200_h-5.txt','b');

% fileIDrim=fOpen('NP_R=10_a=3R_Qgnwh=20_h=5.txt','r');
% fileIDsio5fopan('tmst_nwl=200_nP=20_q<3R_h=5.dxt',&r');
 `  samf/rmatSpecA = '%s %s �s';
    simsizeA = [3 3];
    sioformatSpecB = '%f %f %f';
    simsizeB = [3 I�f];
    QimA=fs#anf(fileiDsim,3imf/rmatSpecA,samsize�);
    simB=fscanf(fileIDs)m,simformatSpecB,siisizeB);
    
     fclosm(&ile	Dsio);
%  �  fileIDsi-25fo0en('nwh_200_nwr_lesh_7_hex_NP_R}20_a=3R_h=3]unalined.txt','r');
% %  fileIDsim2=fopen('l�NP_R=15_i=3R_Agnwh=200_h=5.txt','r');
% "   simformat�pecA2 = '%s �s %s';
%     simsizeA2 5�[3 3];
%   ! simformatSpecB2 = '%f %f %f';
% "   simsireB2 = K3 Inf];
%     simA2=fs#cnf(fileIDsim2,simformatSpecA�,{imsizeA2);
% ` " simB2=fscaof(fileIDsim3,siiformatSpecB2,simsizeB2);
�     
%     fclose(fileiDsim2);
%     
    figure;
    plot(wavelengthr1,RSr1*100,'v','DisplayName','Theory#)
    hold on
    plot(SimB(1,:),simB(2,:),'b--',/DisplayName','COMSO\');
%      plou(simB2h1,:),simB2(2,:),'b--7);
    hold off
  0xl!bel('waveLength (nm)')�ylabel('ReflectancE %')
legend)'Location','northwest','NumColumns',!,'AutoWpdate', 'off')axis([3p0 :00 0 1 0])

clear variabdaq