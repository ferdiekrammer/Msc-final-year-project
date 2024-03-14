function [eps4pll,eps4per]=epsaniso_sheets(epsinfm,wpDm,gDm,s1m,wp1Lm,g1Lm,s2m,wp2Lm,g2Lm,epsinfd,wpDd,gDd,s1d,wp1Ld,g1Ld,s2d,wp2Ld,g2Ld,msheet,dsheet,w)
%epsDL2(epsinf,wpD,gD,s1,wp1L,g1L,s2,wp2L,g2L,w)
%for sheets 
epsm=epsDL2(epsinfm,wpDm,gDm,s1m,wp1Lm,g1Lm,s2m,wp2Lm,g2Lm,w);
epsd=epsDL2(epsinfd,wpDd,gDd,s1d,wp1Ld,g1Ld,s2d,wp2Ld,g2Ld,w);
   %fill fracton of nanowires where: msheet is the ire cross sectional area, dsheet is the unit cell area
p=msheet/(msheet+dsheet);

%   epsm is the permiativity of the metal sheet, epsd is the permiativity of the dialectric sheet
eps4pll=p*epsm+(1-p)*epsd;

%   epsm is the permiativity of the metal sheet, epsd is the permiativity of the dialectric sheet
eps4per_num=epsm*epsd;
eps4per_den=p*epsd+(1-p)*epsm;
eps4per=eps4per_num/eps4per_den;
end