function t12s=t12s(eps1,epsinf2,o2,d2,mod2,w,epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,a,Ka,R,h,dep,angl,eps3)
k1ll=ko(eps1,angl,w);
k2ll=k1pll(eps1,epsinf2,o2,d2,mod2,w,epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,a,Ka,R,h,dep,angl,eps3);
t12s=(2*k1ll)/(k1ll+k2ll);
end