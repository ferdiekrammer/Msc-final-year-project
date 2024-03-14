function t34p=t34p(eps3,eps1,epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,w,angl)
k3er=k2(eps3,eps1,angl,w);
k4er=k3per(eps3,epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,w,angl);
e3=eps1;
e4=eps4pll(epsinfm,om,dm,modm,epsinfd,od,dd,modd,msheet,dsheet,w);
num=2*sqrt(e3)*sqrt(e4)*k3er;
den=e3*k4er+e4*k3er;
t34p=num/den;
end