function TS = TS(eps3,eps1,epsinf2,o2,d2,mod2,epsinf4,o4,d4,mod4,epsinf5,o5,d5,mod5,a,Ka,R,h,dep,angl,hf,w)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
s1plln=s1pll(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3);
s2n=s2(eps3,eps1,angl,w,h,dep);
s3n=s3(eps3,epsinf4,o4,d4,mod4,w,angl,hf);
t01sn=t01s(eps1,epsinf2,o2,d2,mod2,w, epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3);
t12sn=t12s(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3);
t23sn=t23s(eps3,eps1,epsinf4,o4,d4,mod4,w,angl);
t34sn=t34s(eps3,epsinf4,o4,d4,mod4,epsinf5,o5,d5,mod5,w,angl);
r34sn=r34s(eps3,epsinf4,o4,d4,mod4,epsinf5,o5,d5,mod5,angl,w);
r23sn=r23s(eps3,eps1,epsinf4,o4,d4,mod4,angl,w);
r12sn=r12s(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3);
r01sn=r01s(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3);
TS_num=t01sn*t12sn*t23sn*t34sn*s1plln*s2n*s3n;
TS_den=1+r23sn*r34sn*s3n+r12sn*r23sn*s2n+r12sn*r34sn*s2n*s3n+r01sn*r12sn*s1plln+r01sn*r12sn*r23sn*r34sn*s1plln*s3n+r01sn*r23sn*s1plln*s2n+r01sn*r34sn*s1plln*s2n*s3n;
TS=(abs(TS_num/TS_den))^2;
end
