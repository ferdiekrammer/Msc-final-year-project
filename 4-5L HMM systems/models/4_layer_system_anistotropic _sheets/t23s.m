function t23s=t23s(eps1,epsinf2,o2,d2,mod2,w,epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,a,Ka,R,h,dep,angl,eps3)
k2ll=k1pll(eps1,epsinf2,o2,d2,mod2,w,epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,a,Ka,R,h,dep,angl,eps3);
k3ll=k2(eps3,eps1,angl,w);
t23s=(2*k2ll)/(k2ll+k3ll);
end