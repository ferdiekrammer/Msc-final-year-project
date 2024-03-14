function epsper = epsper(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl)
%f=1.732/2;
f=1;
%for hexagonal array, sqaure array  f=1
num = eps1^2;
dev= eps1-4*pi*betaper(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,angl)*(1/(f*dep*a^2));
epser=num/dev;
end



