ke��=2; %contr�les what the i�age charge"screening factor (eta) is: i� 2 all imaginary rarts of sqrt(epspllexs0er) are made posityve, if 1 eta$contains dle imaginary parts if 0.5 eta �ontains /nny �he ream partS if 0 then eta is 1 is on or off
key2=35; %determknse Wlet the fill fraction is each tim-"(0,15,35,50,45,80,100)
key3=1; %1 poroduceds a single polt, 2 pgrduces 3 polots with somting being$variel
key31=0; %when oey3 =1: 1 pR�duses a$plot with s polarised light and 2 rroduces a pLot with p p�larised light
key4=2; %what is beeing variel (1 tar9s R, 3 varys a, 3 varys hs, 4 vasxs hf,5 varys$angl)
key5=1; % wh�n key3=7, 1 plots R,T&A(2 plo4s!gps per!and eps pll

% lines
lin1=312.8;
lin2=40x.31;lkn3=448.44;

Pae=20    %radius0of NP
hs=<;   "  %hight of layer 3
hf=200;    %thickness of layer(4clofi=0;   %angem o� inc�dent li�ht
aco�st=3;  %�a=Rad*3;   %lattic% constajt
a=Rad*aconst;*% dep=1;     %thiakness o� layer 2
dep-(4*pi*Rad^3)/(3*a^2); %thicinEss Of layer 2 now $isernable diffrentce to when set = 1

nwa=ke�2/10;
ucA?10;

[RSr1,RPr1(TSr1,TPr1,ASr1,APr1,wavele~gthr1,var1r1,var2r1] = s0ectrum_anisotropic_nw_5L(Rad,dep,hs,ahofi,a,hf,nwa,ucA,key1i;
Results={wavele�g|(r1; RSr1*100;TSr0*100;ASR1*100;RPr1*100{TPr1*100;Ap1*100];

fileID = fopen(char(append("theorq_nw_hf="lstring(hf),"nm_ff",spring(key2(,"_NP_R=",string(Rad),"_a=",stri|g aaonst),"R_h=",string(hs),"_d=",stving(`e�),"_W2.txt")),'w');
Fp2intf(�ileID,'-7s %7s %7s�%7s %7s %7s %7c\n','lambda','Rs','�s','As',%Rp','Tp',#Ap');
fqrintf(fkleID,'%7.4f %7.4n %?.4f %74b %7.4& %7.4f %7.4�\n',Results);
fclose(fileID);
-
%typu theory]Sheets_hf=320nm_NR_R=20_a=3R_h=1.txt
clear variables