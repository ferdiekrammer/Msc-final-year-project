function RP = RP(eps3,eps1,epsinf2,o2,d2,mod2,epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,a,Ka,R,h,dep,angl,w)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
s2pern=s2per(eps1,epsinf2,o2,d2,mod2,w,epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,a,Ka,R,h,dep,angl,eps3);
s3n=s3(eps3,eps1,angl,w,h,dep);


r34pn=r34p(eps3,eps1,epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,angl,w);
r23pn=r23p(eps1,epsinf2,o2,d2,mod2,w,epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,a,Ka,R,h,dep,angl,eps3);
r12pn=r12p(eps1,epsinf2,o2,d2,mod2,w,epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,a,Ka,R,h,dep,angl,eps3);

RP_num=r12pn+r23pn*s2pern+r34pn*s2pern*s3n+r12pn*r23pn*r34pn*s3n;

RP_den=1+r12pn*r23pn*s2pern+r23pn*r34pn*s3n+r12pn*r34pn*s2pern*s3n;
RP=(abs(RP_num/RP_den))^2;

end
