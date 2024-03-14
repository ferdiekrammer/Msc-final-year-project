key1=2; %controles what the image charge screening factor (eta) is: if 2 all imaginary parts of sqrt(epspllepsper) are made positive, if 1 eta contains the imaginary parts if 0.5 eta contains only the real parts if 0 then eta is 0 is on or off
key2=50; %determinse what the fill fraction is each time (0,15,35,50,65,80,100)


% lines
lin1=312.8;
lin2=448.31;
lin3=448.44;

hs=6;      %hight of layer 3
hf=200;    %thickness of layer 4 (standard is 320nm)
alofi=0;   %angel of incident light
aconst=3;  % a=Rad*3;   %lattice constant

% dep=1;

md=key2/100;
dd=1-md;

if key1==1
    Rad=0.00000001;    %radius of NP
    a=Rad*aconst;
    dep=(4*pi*Rad^3)/(3*a^2);    %thickness of layer 2
    [RSr1,RPr1,TSr1,TPr1,ASr1,APr1,wavelengthr1,var1r1,var2r1] = spectrum_anisotropic_sheets_5L(Rad,dep,hs,alofi,a,hf,md,dd,key1);
     
    fileIDsim=fopen('sim_sheets_hf=200nm_ff50.txt','r'); %un coment for no NP set dielec const for np in spectrum_anisortropic_sheets_5L to 1
    
    simformatSpecA = '%s %s %s';
    simsizeA = [3 1];
    simformatSpecB = '%f %f %f';
    simsizeB = [3 Inf];
    simA=fscanf(fileIDsim,simformatSpecA,simsizeA);
    simB=fscanf(fileIDsim,simformatSpecB,simsizeB);
    fclose(fileIDsim);

    figure;
    plot(wavelengthr1,RSr1*100,'r','DisplayName',char(append("Theory")))
    hold on
    plot(simB(1,:),simB(2,:),'b--','DisplayName','COMSOL');
    hold off
    xlabel('wavelength (nm)')
    ylabel('Reflectance %')
    legend('Location','northwest','NumColumns',1,'AutoUpdate', 'off')

    axis([300 800 0 100])
elseif key1==2
    Rad=20;    %radius of NP
    a=Rad*aconst;
    dep=(4*pi*Rad^3)/(3*a^2);    %thickness of layer 2
    [RSr1,RPr1,TSr1,TPr1,ASr1,APr1,wavelengthr1,var1r1,var2r1] = spectrum_anisotropic_sheets_5L(Rad,dep,hs,alofi,a,hf,md,dd,key1);
     
    fileIDsim=fopen('nwh=200_npr=20_a=3_h=6_Ag_first.txt','r'); %uncoment for figure A set constants above as Rad=20,hs=6,hf=200,aconst=3
    simformatSpecA = '%s %s %s';
    simsizeA = [3 1];
    simformatSpecB = '%f %f %f';
    simsizeB = [3 Inf];
    simA=fscanf(fileIDsim,simformatSpecA,simsizeA);
    simB=fscanf(fileIDsim,simformatSpecB,simsizeB);
    fclose(fileIDsim);

    fileIDsim2=fopen('nwh=200_npr=20_a=3_h=6_TiO_first.txt','r'); %uncoment for figure B set constants above as Rad=20,hs=6,hf=200,aconst=3
    simformatSpecA2 = '%s %s %s';
    simsizeA2 = [3 1];
    simformatSpecB2 = '%f %f %f';
    simsizeB2 = [3 Inf];
    simA2=fscanf(fileIDsim2,simformatSpecA2,simsizeA2);
    simB2=fscanf(fileIDsim2,simformatSpecB2,simsizeB2);
    fclose(fileIDsim2);

    figure;
    tiledlayout(1,2);
    p1=nexttile;
    plot(p1,wavelengthr1,RSr1*100,'r','DisplayName',char(append("Theory")))
    hold on
    plot(p1,simB(1,:),simB(2,:),'b--','DisplayName','COMSOL');
    hold off
    xlabel(p1,'wavelength (nm)')
    ylabel(p1,'Reflectance %')
    legend('Location','northwest','NumColumns',1,'AutoUpdate', 'off')
    axis(p1,[300 800 0 100])
    p2=nexttile;
    plot(p2,wavelengthr1,RSr1*100,'r','DisplayName',char(append("Theory")))
    hold on
    plot(p2,simB2(1,:),simB2(2,:),'b--','DisplayName','COMSOL');
    hold off
    xlabel(p2,'wavelength (nm)')
    ylabel(p2,'Reflectance %')
    legend('Location','northwest','NumColumns',1,'AutoUpdate', 'off')

    axis(p2,[300 800 0 100])
end
clear variables