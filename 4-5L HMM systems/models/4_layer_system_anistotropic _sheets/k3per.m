function k3per=k3per(eps3,epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,w,angl)
%wave constant
%eps3 is layer 1, eps4 is layer 4
a1=sqrt(eps4pll(epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,w)/eps4per(epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,w));
a2=sqrt(eps4per(epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,w)-eps3*(sin(angl)^2));
%eps3*(sin(angl))^2
%eps4per(epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,w)
%eps4pll(epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,w)
k3per=(w/197.4)*a1*a2;
end
