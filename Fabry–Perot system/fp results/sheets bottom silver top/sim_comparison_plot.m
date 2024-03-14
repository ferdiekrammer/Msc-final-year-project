
    fileIDtheory=fopen('theory_sheets_HMMhf=200nm_tophf=50nm_ff50_NP_R=1e-08_a=3R_h=6_d=4.6542e-09L=500nm.txt','r');
    formatSpecA = '%s %s %s %s %s %s %s';
    sizeA = [7 1];
    formatSpecB = '%f %f %f %f %f %f %f';
    sizeB = [7 Inf];
    theoryA=fscanf(fileIDtheory,formatSpecA,sizeA);
    theoryB=fscanf(fileIDtheory,formatSpecB,sizeB);
    % a=textscan(fileIDtheory,'%f','headerlines',1,'delimiter','');
    fclose(fileIDtheory);
  
    
    fileIDsim=fopen('dd,dm=5_HMMhf=200_Aghf=50_L=500_noNP_Agfirst.txt','r');
    simformatSpecA = '%s %s %s';
    simsizeA = [6 7];
    simformatSpecB = '%f %f %f';
    simsizeB = [6 Inf];
    simA=fscanf(fileIDsim,simformatSpecA,simsizeA);
    simB=fscanf(fileIDsim,simformatSpecB,simsizeB);
    
    fclose(fileIDsim);
       
    simB(2,:)
    figure;
    plot(theoryB(1,:),theoryB(2,:));
    hold on
    plot(simB(1,:),simB(2,:),'r--');
    hold off
    axis([300 800 0 100])
clear variables