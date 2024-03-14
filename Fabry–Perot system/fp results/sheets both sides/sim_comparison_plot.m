
    fileIDtheory=fopen('theory_sheets_HMMhf=200nm_ff50_NP_R=20_a=3R_h=5_d=9.3084L=1000nm.txt','r');
    formatSpecA = '%s %s %s %s %s %s %s';
    sizeA = [7 1];
    formatSpecB = '%f %f %f %f %f %f %f';
    sizeB = [7 Inf];
    theoryA=fscanf(fileIDtheory,formatSpecA,sizeA);
    theoryB=fscanf(fileIDtheory,formatSpecB,sizeB);
    % a=textscan(fileIDtheory,'%f','headerlines',1,'delimiter','');
    fclose(fileIDtheory);
  
    
    fileIDsim=fopen('nwh=200_npr=20_a=3_h=5AgfirstL=1000.txt','r');
    simformatSpecA = '%s %s %s';
    simsizeA = [3 1];
    simformatSpecB = '%f %f %f';
    simsizeB = [3 Inf];
    simA=fscanf(fileIDsim,simformatSpecA,simsizeA);
    simB=fscanf(fileIDsim,simformatSpecB,simsizeB);
    
    fclose(fileIDsim);
       
    simB(1,:)
    figure;
    plot(theoryB(1,:),theoryB(2,:));
    hold on
    plot(simB(1,:),simB(2,:),'r--');
    hold off
    axis([300 800 0 100])
clear variables