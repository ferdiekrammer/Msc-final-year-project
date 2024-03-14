   
    fileIDtheory=fopen('theory_sheets_hf=200nm_ff50_NP_R=20_a=3R_h=1_d=1.txt','r');
    formatSpecA = '%s %s %s %s %s %s %s';
    sizeA = [7 1];
    formatSpecB = '%f %f %f %f %f %f %f';
    sizeB = [7 Inf];
    theoryA=fscanf(fileIDtheory,formatSpecA,sizeA);
    theoryB=fscanf(fileIDtheory,formatSpecB,sizeB);
    % a=textscan(fileIDtheory,'%f','headerlines',1,'delimiter','');
    fclose(fileIDtheory);
  
    
    fileIDsim=fopen('nwh=200_npr=20_a=3_h=6_Ag_first.txt','r');
    simformatSpecA = '%s %s %s';
    simsizeA = [6 6];
    simformatSpecB = '%f %f %f';
    simsizeB = [6 Inf];
    simA=fscanf(fileIDsim,simformatSpecA,simsizeA);
    simB=fscanf(fileIDsim,simformatSpecB,simsizeB);
    
    fclose(fileIDsim);
       
    
    figure;
    plot(theoryB(1,:),theoryB(2,:));
    hold on
    plot(simB(3,:),simB(1,:),'r--');
    hold off
    axis([300 800 0 100])
% elseif key1==2
%     fileIDtheory=fopen('theory_sheets_hf=320nm_ff50_NP_R=20_a=2.5R_h=1_d=13.4041.txt','r');
%     formatSpecA = '%s %s %s %s %s %s %s';
%     sizeA = [7 1];
%     formatSpecB = '%f %f %f %f %f %f %f';
%     sizeB = [7 Inf];
%     theoryA=fscanf(fileIDtheory,formatSpecA,sizeA);
%     theoryB=fscanf(fileIDtheory,formatSpecB,sizeB);
%  
%     fclose(fileIDtheory);
%     
%     fileIDsim=fopen('sim_sheets_hf=320nm_ff50_NP_R=20_a=2.5R_h=1.txt','r');
%     simformatSpecA = '%s %s %s';
%     simsizeA = [6 6];
%     simformatSpecB = '%f %f %f';
%     simsizeB = [3 Inf];
%     simA=fscanf(fileIDsim,simformatSpecA,simsizeA);
%     simB=fscanf(fileIDsim,simformatSpecB,simsizeB);
%    
%     fclose(fileIDsim);
%     
%     figure;
%     plot(theoryB(1,:),theoryB(2,:));
%     hold on
%     plot(simB(1,:),simB(2,:))
%     hold off
%     axis([300 800 0 100])
% elseif key1==3
%     fileIDtheory=fopen('theory_sheets_hf=320nm_ff50_NP_R=20_a=3.5R_h=1_d=6.8388.txt','r');
%     formatSpecA = '%s %s %s %s %s %s %s';
%     sizeA = [7 1];
%     formatSpecB = '%f %f %f %f %f %f %f';
%     sizeB = [7 Inf];
%     theoryA=fscanf(fileIDtheory,formatSpecA,sizeA);
%     theoryB=fscanf(fileIDtheory,formatSpecB,sizeB);
%     % a=textscan(fileIDtheory,'%f','headerlines',1,'delimiter','');
%     fclose(fileIDtheory);
%     
%     fileIDsim=fopen('sim_sheets_hf=320nm_ff50_NP_R=20_a=3.5R_h=1.txt','r');
%     simformatSpecA = '%s %s %s';
%     simsizeA = [6 6];
%     simformatSpecB = '%f %f %f';
%     simsizeB = [3 Inf];
%     simA=fscanf(fileIDsim,simformatSpecA,simsizeA);
%     simB=fscanf(fileIDsim,simformatSpecB,simsizeB);
%     
%     fclose(fileIDsim);
%     
%     figure;
%     plot(theoryB(1,:),theoryB(2,:));
%     hold on
%     plot(simB(1,:),simB(2,:))
%     hold off
%     axis([300 800 0 100])
% elseif key1==4
%     fileIDtheory=fopen('theory_sheets_hf=200nm_ff50_NP_R=20_a=3R_h=1_d=1.txt','r');
%     formatSpecA = '%s %s %s %s %s %s %s';
%     sizeA = [7 1];
%     formatSpecB = '%f %f %f %f %f %f %f';
%     sizeB = [7 Inf];
%     theoryA=fscanf(fileIDtheory,formatSpecA,sizeA);
%     theoryB=fscanf(fileIDtheory,formatSpecB,sizeB);
%     % a=textscan(fileIDtheory,'%f','headerlines',1,'delimiter','');
%     fclose(fileIDtheory);
%     
%     fileIDsim=fopen('sim_sheets_hf=200nm_ff50_NP_R=20_a=3R_h=1_Ag_first.txt','r');
%     simformatSpecA = '%s %s %s';
%     simsizeA = [6 6];
%     simformatSpecB = '%f %f %f';
%     simsizeB = [6 Inf];
%     simA=fscanf(fileIDsim,simformatSpecA,simsizeA);
%     simB=fscanf(fileIDsim,simformatSpecB,simsizeB);
%     
%     fclose(fileIDsim);
%     simB(1,:)
% %     simB(2,:)
%     figure;
%     plot(theoryB(1,:),theoryB(2,:));
%     hold on
%     plot(simB(2,:),simB(3,:))
%     hold off
%     axis([300 800 0 100])
% end
clear variables