function t12p=t12p(eps1,epsinf2,o2,d2,mod2,w,epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,a,Ka,R,h,dep,angl,eps3)
k1er=ko(eps1,angl,w);
k2er=k1per(eps1,epsinf2,o2,d2,mod2,w,epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,a,Ka,R,h,dep,angl,eps3);
e1=eps3;
e2=epspll(eps1,epsinf2,o2,d2,mod2,w,epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,a,Ka,R,h,dep,angl);
num=2*sqrt(e1)*sqrt(e2)*k1er;
den=e1*k2er+e2*k1er;
t12p=num/den;
end