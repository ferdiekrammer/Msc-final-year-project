function TS = TS(eps3,eps1,epsinf2,o2,d2,mod2,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,w)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
t12sn=t12s(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3);
t23sn=t23s(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3);
t34sn=t34s(eps3,eps1,epsinf4,o4,d4,mod4,w,angl);

s2plln=s2pll(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3);
s3n=s3(eps3,eps1,angl,w,h,dep);


r34sn=r34s(eps3,eps1,epsinf4,o4,d4,mod4,angl,w);
r23sn=r23s(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3);
r12sn=r12s(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3);

TS_num=t12sn*t23sn*t34sn*sqrt(s2plln)*sqrt(s3n);
TS_den=1+r12sn*r23sn*s2plln+r23sn*r34sn*s3n+r12sn*r34sn*s2plln*s3n;

TS=(abs(TS_num/TS_den))^2;
end