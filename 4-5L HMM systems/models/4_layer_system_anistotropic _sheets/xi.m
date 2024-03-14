function xi = xi(eps1,epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,w)
% image-charge screening factor
%   eps1=dielectric constant of bulk
%   eps4per=dielectric constant of anisotropic half space perpendicular to interface
%   eps4pll=dielectric cosntant of anisotropic half space paralell to interface
xi_num=(eps1-sqrt(eps4pll(epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,w)*eps4per(epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,w)));
xi_den=(eps1+sqrt(eps4pll(epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,w)*eps4per(epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,w)));
xi=xi_num/xi_den;
end

