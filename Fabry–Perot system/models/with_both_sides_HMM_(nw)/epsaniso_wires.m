function [eps4pll,eps4per]=epsaniso_wires(epsinfm,wpDm,gDm,s1m,wp1Lm,g1Lm,s2m,wp2Lm,g2Lm,epsinfd,wpDd,gDd,s1d,wp1Ld,g1Ld,s2d,wp2Ld,g2Ld,nwa,ucA,w)
%epsDL2(epsinf,wpD,gD,s1,wp1L,g1L,s2,wp2L,g2L,w)
%for sheets 
epsm=epsDL2(epsinfm,wpDm,gDm,s1m,wp1Lm,g1Lm,s2m,wp2Lm,g2Lm,w);
epsd=epsDL2(epsinfd,wpDd,gDd,s1d,wp1Ld,g1Ld,s2d,wp2Ld,g2Ld,w);
   %fill fracton of nanowires where: nwa is the nanowire cross sectional area, ucA is the unit cell area
p=nwa/ucA;
%   epsm is the permiativity of the nanorodes, epsd is the permiativity of the dialectric hoset
eps4pll_num=(1+p)*epsm*epsd+(1-p)*epsd^2;
eps4pll_den=(1+p)*epsd+(1-p)*epsm;
eps4pll=eps4pll_num/eps4pll_den;
%   epsm is the permiativity of the nanorodes, epsd is the permiativity of the dialectric hoset
eps4per=p*epsm+(1-p)*epsd;
end