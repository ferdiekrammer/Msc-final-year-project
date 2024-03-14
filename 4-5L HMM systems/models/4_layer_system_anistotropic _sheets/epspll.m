function epspll = epspll(eps1,epsinf2,o2,d2,mod2,w,epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,a,Ka,R,h,dep,angl)
f=1.732/2;
%for hexagonal array, sqaure array  f=1
epspll =eps1+4*pi*betapll(eps1,epsinf2,o2,d2,mod2,w,epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,a,Ka,R,h,angl)*(1/(f*dep*a^2));

end


