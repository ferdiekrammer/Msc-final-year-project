key1=1; %controles what the image charge screening factor (eta) is: if 2 all imaginary parts of sqrt(epspllepsper) are made positive, if 1 eta contains the imaginary parts if 0.5 eta contains only the real parts if 0 then eta is 0 is on or off
key2=35; %determinse what the fill fraction is each time (0,15,35,50,65,80,100)
key3=1; %1 poroduceds a single polt, 2 porduces 3 polots with somting being varied
key31=1; %when key3 =1: 1 produses a plot with s polarised light and 2 produces a plot with p polarised light
key4=2; %what is beeing varied (1 varys R, 2 varys a, 3 varys hs, 4 varys hf,5 varys angl)
key5=1; % when key3=1, 1 plots R,T&A 2 plots eps per and eps pll

% lines
lin1=312.8;
lin2=448.31;
lin3=448.44;

Rad=20;    %radius of NP
hs=10;      %hight of layer 3
hf=20;    %thickness of layer 4 (standard is 320nm)
alofi=0;   %angel of incident light
aconst=3;  % a=Rad*3;   %lattice constant
a=Rad*aconst;
% dep=100;     %thickness of layer 2
dep=(4*pi*Rad^3)/(3*a^2);    %thickness of layer 2
% dep=1;
L=5;

nwa=key2/10;
ucA=10;



[RSr1,RPr1,TSr1,TPr1,ASr1,APr1,wavelengthr1,var1r1,var2r1] = spectrum_anisotropic_nw_to_6L(Rad,dep,hs,alofi,a,hf,nwa,ucA,L,key1);
     
% fileIDsim=fopen('sim_sheets_hf=200nm_ff50_NP_R=20_a=3R_h=1_Ag_first.txt','r');
% fileIDsim=fopen('sim_sheets_hf=160nm_ff50_NP_R=20_a=3R_h=1.txt','r');
% fileIDsim=fopen('nwh=200_npr=20_a=3_h=6_TiO_first.txt','r');
fileIDsim=fopen('nwh_200_nwr_mesh_7_hex_NP_R=20_a=3R_h=3_unalined.txt','r');

simformatSpecA = '%s %s %s';
simsizeA = [3 1];
simformatSpecB = '%f %f %f';
simsizeB = [3 Inf];
simA=fscanf(fileIDsim,simformatSpecA,simsizeA);
simB=fscanf(fileIDsim,simformatSpecB,simsizeB);

fclose(fileIDsim);

figure;
tiledlayout(1,1);
p1=nexttile;
plot(p1,wavelengthr1,RSr1*100,'r','DisplayName',char(append("RS",string(key2),"with modified expresion")))
hold on
plot(p1,wavelengthr1,RPr1*100,'g','DisplayName',char(append("RP",string(key2),"without modified expresion")))
plot(p1,simB(1,:),simB(2,:))
hold off
axis([300 800 0 100])

% p2=nexttile;
% plot(p2,wavelengthr1,var1r1,'r','DisplayName',char(append("RS",string(key2))))
% hold on
% plot(p2,wavelengthr1,var2r1,'g--','DisplayName',char(append("RS",string(key2))))
% hold off
% legend(p2,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
% axis([300 800 -1 1])

clear variables 