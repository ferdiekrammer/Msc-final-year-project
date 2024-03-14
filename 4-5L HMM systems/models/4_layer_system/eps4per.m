function eps4per=eps4per(epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,w)
%for sheets 
epsm=espDL(epsinfm,om,dm,w,modm);
epsd=espDL(epsinfd,od,dd,w,modd);
   %fill fracton of nanowires where: msheet is the nanowire cross sectional area, dsheet is the unit cell area
p=msheet/(msheet+dsheet);
%   epsm is the permiativity of the metal sheet, epsd is the permiativity of the dialectric sheet
eps4per_num=epsm*epsd;
eps4per_den=p*epsd+(1-p)*epsm;
eps4per=eps4per_num/eps4per_den;
end