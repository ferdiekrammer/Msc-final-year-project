function eps4per=eps4per(epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,w)
%for nanowire system 
epsm=espDL(epsinfm,om,dm,w,modm);
epsd=espDL(epsinfd,od,dd,w,modd);
   %fill fracton of nanowires where: nwa is the nanowire cross sectional area, ucA is the unit cell area 
p=nwa/ucA;
%   epsm is the permiativity of the nanorodes, epsd is the permiativity of the dialectric hoset
eps4per=p*epsm+(1-p)*epsd;
end