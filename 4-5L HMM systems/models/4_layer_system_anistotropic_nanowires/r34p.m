function r34p = r34p(eps3, eps1,epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,angl,w)
%   Detailed explanation goes here
num=eps1*k3per(eps3,epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,w,angl)-eps4pll(epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,w)*k2(eps3,eps1,angl,w);
den=eps1*k3per(eps3,epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,w,angl)+eps4pll(epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,w)*k2(eps3,eps1,angl,w);
r34p=num/den;
end
