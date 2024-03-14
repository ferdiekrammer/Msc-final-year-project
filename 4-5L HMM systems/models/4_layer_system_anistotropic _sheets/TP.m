function TP = TP(eps3,eps1,epsinf2,o2,d2,mod2,epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,a,Ka,R,h,dep,angl,w)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
t12pn=t12p(eps1,epsinf2,o2,d2,mod2,w,epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,a,Ka,R,h,dep,angl,eps3);
t23pn=t23p(eps1,epsinf2,o2,d2,mod2,w,epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,a,Ka,R,h,dep,angl,eps3);
t34pn=t34p(eps3,eps1,epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,w,angl);

s2pern=s2per(eps1,epsinf2,o2,d2,mod2,w,epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,a,Ka,R,h,dep,angl,eps3);
s3n=s3(eps3,eps1,angl,w,h,dep);


r34pn=r34p(eps3,eps1,epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,angl,w);
r23pn=r23p(eps1,epsinf2,o2,d2,mod2,w,epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,a,Ka,R,h,dep,angl,eps3);
r12pn=r12p(eps1,epsinf2,o2,d2,mod2,w,epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,a,Ka,R,h,dep,angl,eps3);

TP_num=t12pn*t23pn*t34pn*(s2pern)*(s3n);
TP_den=1+r12pn*r23pn*s2pern+r23pn*r34pn*s3n+r12pn*r34pn*s2pern*s3n;
TP=(abs(TP_num/TP_den))^2;
end