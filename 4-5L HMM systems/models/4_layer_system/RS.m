function RS = RS(eps3,eps1,epsinf2,o2,d2,mod2,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,w)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
s2plln=s2pll(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3);
s3n=s3(eps3,eps1,angl,w,h,dep);


r34sn=r34s(eps3,eps1,epsinf4,o4,d4,mod4,angl,w);
r23sn=r23s(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3);
r12sn=r12s(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3);

RS_num=r12sn+r23sn*s2plln+r34sn*s2plln*s3n+r12sn*r23sn*r34sn*s3n;
RS_den=1+r12sn*r23sn*s2plln+r23sn*r34sn*s3n+r12sn*r34sn*s2plln*s3n;

RS=(abs(RS_num/RS_den))^2;

end

