   
    fileIDtheory=fopen('theory_nw_hf=30nm_ff100_NP_R=1e-07_a=3R_h=5_d=4.6542e-08_V1.txt','r');
    formatSpecA = '%s %s %s %s %s %s %s';
    sizeA = [7 1];
    formatSpecB = '%f %f %f %f %f %f %f';
    sizeB = [7 Inf];
    theoryA=fscanf(fileIDtheory,formatSpecA,sizeA);
    theoryB=fscanf(fileIDtheory,formatSpecB,sizeB);
    % a=textscan(fileIDtheory,'%f','headerlines',1,'delimiter','');
    fclose(fileIDtheory);
  
    
    fileIDtheory2=fopen('theory_sheets_HMMhf=30nm_ff100_NP_R=1e-06_a=3R_h=5_d=4.6542e-07L=500nm.txt','r');
    formatSpecA2 = '%s %s %s %s %s %s %s';
    sizeA2 = [7 1];
    formatSpecB2 = '%f %f %f %f %f %f %f';
    sizeB2 = [7 Inf];
    theoryA2=fscanf(fileIDtheory2,formatSpecA2,sizeA2);
    theoryB2=fscanf(fileIDtheory2,formatSpecB2,sizeB2);
    % a=textscan(fileIDtheory,'%f','headerlines',1,'delimiter','');
    fclose(fileIDtheory);
    
    fileIDsim=fopen('L500_hf30_r2.txt','r');
    simformatSpecA = '%s %s %s';
    simsizeA = [3 1];
    simformatSpecB = '%f %f %f';
    simsizeB = [3 Inf];
    simA=fscanf(fileIDsim,simformatSpecA,simsizeA);
    simB=fscanf(fileIDsim,simformatSpecB,simsizeB);
    
    fclose(fileIDsim);
       
    
    figure;
    tiledlayout(1,2);
    p1=nexttile;
    hold on
    plot(p1,theoryB(1,:),theoryB(2,:),'r','DisplayName','Nanowire theory','LineWidth',1.5);
    plot(p1,theoryB2(1,:),theoryB2(2,:),'b--','DisplayName','Multi-Layer theory','LineWidth',1.5);
    plot(p1,simB(1,:),simB(2,:),'k x','DisplayName','COMSOL sim','LineWidth',1.5);
    hold off
    axis([300 800 0 100])
    xlabel(p1,'wavelength (nm)')
    ylabel(p1,'Reflection %')
    % title(p1,'Reflectance with out NP')
    axis([300 800 0 100])
    legend(p1,'Location','northwest','NumColumns',1)
p2=nexttile;
    hold on
    plot(p2,theoryB(1,:),theoryB(3,:),'r','DisplayName','Nanowire theory','LineWidth',1.5);
    plot(p2,theoryB2(1,:),theoryB2(3,:),'b--','DisplayName','Multi-Layer theory','LineWidth',1.5);
    plot(p2,simB(1,:),simB(3,:),'k x','DisplayName','COMSOL sim','LineWidth',1.5);
    hold off
    axis([300 800 0 100])
    xlabel(p2,'wavelength (nm)')
    ylabel(p2,'Transmition %')
    % title(p2,'Reflectance with out NP')
    axis([300 800 0 100])
    legend(p2,'Location','northwest','NumColumns',1)
    p3=nexttile;
    hold on
    plot(p3,theoryB(1,:),theoryB(4,:),'r','DisplayName','Nanowire theory','LineWidth',1.5);
    plot(p3,theoryB2(1,:),theoryB2(4,:),'b--','DisplayName','Multi-Layer theory','LineWidth',1.5);
    plot(p3,simB(1,:),100-simB(2,:)-simB(3,:),'k .','DisplayName','COMSOL sim','LineWidth',1.5);
    hold off
    axis([300 800 0 100])
    xlabel(p3,'wavelength (nm)')
    ylabel(p3,'Reflection %')
    % title(p3,'Reflectance with out NP')
    axis([300 800 0 100])
    legend(p3,'Location','northwest','NumColumns',1)
    
clear variables