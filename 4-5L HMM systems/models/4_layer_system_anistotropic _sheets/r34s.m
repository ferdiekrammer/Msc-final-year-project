function r34s=r34s(eps3,eps1,epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,angl,w)
num= k2(eps3,eps1,angl,w)-k3pll(eps3,epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,w,angl);
den= k2(eps3,eps1,angl,w)+k3pll(eps3,epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,w,angl);
r34s=num/den;
end
