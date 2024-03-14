function eps4pll=eps4pll(epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,w)
%for sheets 
epsm=espDL(epsinfm,om,dm,w,modm);
epsd=espDL(epsinfd,od,dd,w,modd);
   %fill fracton of nanowires where: msheet is the nanowire cross sectional area, dsheet is the unit cell area
p=msheet/(msheet+dsheet);
%   epsm is the permiativity of the metal sheet, epsd is the permiativity of the dialectric sheet
eps4pll=p*epsm+(1-p)*epsd;
end