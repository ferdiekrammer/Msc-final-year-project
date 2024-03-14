%equations fail if halfspace is metal in natur
% keys
key1=2; %controles what the image charge screening factor (eta) is: if 2 all imaginary parts of sqrt(epspllepsper) are made positive, if 1 eta contains the imaginary parts if 0.5 eta contains only the real parts if 0 then eta is 0 is on or off
key2=35; %determinse what the fill fraction is each time (0,15,35,50,65,80,100)
key3=1; %1 poroduceds a single polt, 2 porduces 3 polots with somting being varied
key31=1; %when key3 =1: 1 produses a plot with s polarised light and 2 produces a plot with p polarised light
key4=5; %what is beeing varied (1 varys R, 2 varys a, 3 varys hs, 4 varys hf,5 varys angl)
key5=2; % when key3=1, 1 plots R,T&A 2 plots eps per and eps pll

% lines
lin1=312.8;
lin2=448.31;
lin3=448.44;

Rad=20;    %radius of NP
hs=3;      %hight of layer 3
hf=30;    %thickness of layer 4 (standard is 320nm)
alofi=0;   %angel of incident light
aconst=3;  % a=Rad*3;   %lattice constant
a=Rad*aconst;
L=500;     %cell size
L2=500;     %cell size

% dep=1;     %thickness of layer 2
dep=(4*pi*Rad^3)/(3*a^2); 

nwa=key2/10;
ucA=10;

[RSr1,RPr1,TSr1,TPr1,ASr1,APr1,wavelengthr1,var1r1,var2r1] = spectrum_anisotropic_fabryperot(Rad,dep,hs,alofi,a,hf,L2,key1);
[RSr1no,RPr1no,TSr1no,TPr1no,ASr1no,APr1no,wavelengthr1no,var1r1no,var2r1no] = spectrum_anisotropic_fabryperot(0.000000001,dep,hs,alofi,a,hf,L,key1);


% fileIDsim=fopen('L=1000_R20_hf=30_h=5_Ag.txt','r');
fileIDsim=fopen('FPI_500_hf30_NP_V3.txt','r');
% fileIDsim=fopen('L=1000nm_hf=30_R=20_h0=3.txt','r');
%     simformatSpecA = '%s %s %s %s';
%     simsizeA = [1 3];
    simformatSpecB = '%f %f %f %f';
    simsizeB = [4 Inf];
%     simA=fscanf(fileIDsim,simformatSpecA,simsizeA);
    simB=fscanf(fileIDsim,simformatSpecB,simsizeB);
    
%     simB(2,:)
%     fileIDsim2=fopen('L=1000_hf=30_Ag.txt','r');
fileIDsim2=fopen('L500_hf30_r2.txt','r');
% fileIDsim=fopen('L=1000nm_hf=30_R=20_h0=3.txt','r');
%     simformatSpecA = '%s %s %s %s';
%     simsizeA = [1 3];
    simformatSpecB2 = '%f %f %f %f';
    simsizeB2 = [3 Inf];
%     simA=fscanf(fileIDsim,simformatSpecA,simsizeA);
    simB2=fscanf(fileIDsim2,simformatSpecB2,simsizeB2);
    
%     simB(2,:)
figure;
tiledlayout(1,1);
p1=nexttile;
hold on
plot(p1,wavelengthr1,RSr1*100,'b','DisplayName',char(append("RS")))
% plot(p1,wavelengthr1,RPr1*100,'b--','DisplayName',char(append("RP without NP")))
% plot(p1,wavelengthr1,TSr1*100,'g','DisplayName',char(append("TS",string(key2))))
% plot(p1,wavelengthr1,ASr1*100,'c','DisplayName',char(append("AS",string(key2))))
% plot(p1,wavelengthr1,RSnoNPr1*100,'--','DisplayName',char(append("RS","  no NP")))
plot(p1,wavelengthr1,RSr1no*100,'k','DisplayName',char(append("RSno NP")))

plot(simB(1,:),simB(2,:),'r x');
plot(simB2(1,:),simB2(2,:),'o--');
hold off
xlabel(p1,'wavelength')
ylabel(p1,'%')
% legend(p1,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
axis([300 800 0 100])


clear variables
