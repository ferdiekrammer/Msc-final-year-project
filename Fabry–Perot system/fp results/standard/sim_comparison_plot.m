
    fileIDtheory=fopen('theory_fp_hf=30nm_ff50_NP_R=1e-06_a=3R_h=2_d=4.6542e-07_L=1000.txt','r');
    formatSpecA = '%s %s %s %s %s %s %s';
    sizeA = [7 1];
    formatSpecB = '%f %f %f %f %f %f %f';
    sizeB = [7 Inf];
    theoryA=fscanf(fileIDtheory,formatSpecA,sizeA);
    theoryB=fscanf(fileIDtheory,formatSpecB,sizeB);
    % a=textscan(fileIDtheory,'%f','headerlines',1,'delimiter','');
    fclose(fileIDtheory);
  
    
    fileIDsim=fopen('L=1000_hf=30.txt','r');
    simformatSpecA = '%s %s %s';
    simsizeA = [1 3];
    simformatSpecB = '%f %f %f';
    simsizeB = [3 Inf];
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