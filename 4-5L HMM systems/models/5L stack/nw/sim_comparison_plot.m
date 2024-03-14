   clear variables
%     fileIDtheory=fopen('theory_nw_hf=200nm_ff35_NP_R=20_a=3R_h=10_d=9.3084.txt','r');
    fileIDtheory=fopen('theory_nw_hf=200nm_ff35_NP_R=1e-06_a=3R_h=1_d=4.6542e-07.txt','r');
    formatSpecA = '%s %s %s %s %s %s %s';
    sizeA = [7 1];
    formatSpecB = '%f %f %f %f %f %f %f';
    sizeB = [7 Inf];
    theoryA=fscanf(fileIDtheory,formatSpecA,sizeA);
    theoryB=fscanf(fileIDtheory,formatSpecB,sizeB);
    % a=textscan(fileIDtheory,'%f','headerlines',1,'delimiter','');
    fclose(fileIDtheory);
  
    
    fileIDsim=fopen('nwh_200_nwr_10_torousr_2_cub.txt','r');
    simformatSpecA = '%s %s %s';
    simsizeA = [3 3];
    simformatSpecB = '%f %f %f';
    simsizeB = [3 Inf];
    simA=fscanf(fileIDsim,simformatSpecA,simsizeA);
    simB=fscanf(fileIDsim,simformatSpecB,simsizeB);
    
    fclose(fileIDsim);
%        
    
    figure;
    plot(theoryB(1,:),theoryB(2,:));
    hold on
    plot(simB(1,:),simB(2,:),'r--');
    hold off
    axis([300 800 0 100])

clear variables