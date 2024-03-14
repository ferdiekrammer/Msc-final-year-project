function k1pll=k1pll(eps1,epsinf2,o2,d2,mod2,w, epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,a,Ka,R,h,dep,angl,eps3)
%eps1 is for layer 3, eps2 is for layre 2, eps3 is for layer 1,eps 4 is for
%layer 4
%epspll(eps1,epsinf2,o2,d2,mod2,w,epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,a,Ka,R,h,dep,angl)-(sin(angl))^2*eps3;
k1pll=(w/197.4)*sqrt(epspll(eps1,epsinf2,o2,d2,mod2,w,epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,a,Ka,R,h,dep,angl)-(sin(angl))^2*eps3);
end

