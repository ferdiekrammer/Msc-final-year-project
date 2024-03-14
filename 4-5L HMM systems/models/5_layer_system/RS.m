function RS = RS(eps3,eps1,epsinf2,o2,d2,mod2,epsinf4,o4,d4,mod4,epsinf5,o5,d5,mod5,a,Ka,R,h,dep,angl,hf,w)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
s1plln=s1pll(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3);
s2n=s2(eps3,eps1,angl,w,h,dep);
s3n=s3(eps3,epsinf4,o4,d4,mod4,w,angl,hf);
r34sn=r34s(eps3,epsinf4,o4,d4,mod4,epsinf5,o5,d5,mod5,angl,w);
r23sn=r23s(eps3,eps1,epsinf4,o4,d4,mod4,angl,w);
r12sn=r12s(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3);
r01sn=r01s(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3);
RS_num=((r12sn*s1plln)/s2n+r01sn/(s1plln*s2n))/s3n+r34sn*(s3n*(s1plln*s2n+(r01sn*r12sn*s2n)/s1plln)+r23sn*s3n*(r12sn*(s1plln/s2n)+r01sn/(s1plln*s2n)))+r23sn*(s1plln*s2n+(r01sn*r12sn*s2n)/s1plln)/s3n;
%a=((r12sn*s1plln)/s2n+r01sn/(s1plln*s2n))/s3n;
%b=r34sn*(s3n*(s1plln*s2n+(r01sn*r12sn*s2n)/s1plln)+r23sn*s3n*(r12sn*(s1plln/s2n)+r01sn/(s1plln*s2n)));
%c=r23sn*(s1plln*s2n+(r01sn*r12sn*s2n)/s1plln)/s3n;

RS_den=(1/(s1plln*s2n)+(r01sn*r12sn*s1plln)/s2n)/s3n+r34sn*(s3n*(r12sn*s2n/s1plln+r01sn*s1plln*s2n)+r23sn*s3n*(1/(s1plln*s2n)+(r01sn*r12sn*s1plln)/s2n))+r23sn*(r12sn*(s2n/s1plln)+r01sn*s1plln*s2n)/s3n;
RS=(abs(RS_num/RS_den))^2;

end

