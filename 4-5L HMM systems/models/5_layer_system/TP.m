function TP = TP(eps3,eps1,epsinf2,o2,d2,mod2,epsinf4,o4,d4,mod4,epsinf5,o5,d5,mod5,a,Ka,R,h,dep,angl,hf,w)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
s1pern=s1per(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3);
s2n=s2(eps3,eps1,angl,w,h,dep);
s3n=s3(eps3,epsinf4,o4,d4,mod4,w,angl,hf);
t01pn=t01p(eps1,epsinf2,o2,d2,mod2,w, epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3);
t12pn=t12p(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3);
t23pn=t23p(eps3,eps1,epsinf4,o4,d4,mod4,w,angl);
t34pn=t34p(eps3,epsinf4,o4,d4,mod4,epsinf5,o5,d5,mod5,w,angl);
r34pn=r34s(eps3,epsinf4,o4,d4,mod4,epsinf5,o5,d5,mod5,angl,w);
r23pn=r23s(eps3,eps1,epsinf4,o4,d4,mod4,angl,w);
r12pn=r12s(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3);
r01pn=r01s(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3);
TP_num=t01pn*t12pn*t23pn*t34pn*s1pern*s2n*s3n;
TP_den=1+r23pn*r34pn*s3n+r12pn*r23pn*s2n+r12pn*r34pn*s2n*s3n+r01pn*r12pn*s1pern+r01pn*r12pn*r23pn*r34pn*s1pern*s3n+r01pn*r23pn*s1pern*s2n+r01pn*r34pn*s1pern*s2n*s3n;
TP=(abs(TP_num/TP_den))^2;
end