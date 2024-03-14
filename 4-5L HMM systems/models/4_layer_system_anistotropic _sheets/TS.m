function TS = TS(eps3,eps1,epsinf2,o2,d2,mod2,epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,a,Ka,R,h,dep,angl,w)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
t12sn=t12s(eps1,epsinf2,o2,d2,mod2,w,epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,a,Ka,R,h,dep,angl,eps3);
t23sn=t23s(eps1,epsinf2,o2,d2,mod2,w,epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,a,Ka,R,h,dep,angl,eps3);
t34sn=t34s(eps3,eps1,epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,w,angl);

s2pern=s2per(eps1,epsinf2,o2,d2,mod2,w,epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,a,Ka,R,h,dep,angl,eps3);
s3n=s3(eps3,eps1,angl,w,h,dep);


r34sn=r34s(eps3,eps1,epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,angl,w);
r23sn=r23s(eps1,epsinf2,o2,d2,mod2,w,epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,a,Ka,R,h,dep,angl,eps3);
r12sn=r12s(eps1,epsinf2,o2,d2,mod2,w,epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,a,Ka,R,h,dep,angl,eps3);

TS_num=t12sn*t23sn*t34sn*sqrt(s2pern)*sqrt(s3n);
TS_den=1+r12sn*r23sn*s2pern+r23sn*r34sn*s3n+r12sn*r34sn*s2pern*s3n;
TS=(abs(TS_num/TS_den))^2;
end