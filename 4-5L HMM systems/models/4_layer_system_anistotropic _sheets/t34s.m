function t34s=t34s(eps3,eps1,epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,w,angl)
k3ll=k2(eps3,eps1,angl,w);
k4ll=k3pll(eps3,epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,w,angl);
t34s=(2*k3ll)/(k3ll+k4ll);
end