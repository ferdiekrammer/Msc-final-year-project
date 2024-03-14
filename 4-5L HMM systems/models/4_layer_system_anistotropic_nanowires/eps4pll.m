function eps4pll=eps4pll(epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,w)
%for nanowire system 
epsm=espDL(epsinfm,om,dm,w,modm);
epsd=espDL(epsinfd,od,dd,w,modd);
   %fill fracton of nanowires where: nwa is the nanowire cross sectional area, ucA is the unit cell area
p=nwa/ucA;
%   epsm is the permiativity of the nanorodes, epsd is the permiativity of the dialectric hoset
eps4pll_num=(1+p)*epsm*epsd+(1-p)*epsd^2;
eps4pll_den=(1+p)*epsd+(1-p)*epsm;
eps4pll=eps4pll_num/eps4pll_den;
end