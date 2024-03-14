function t01p=t01p(eps1,epsinf2,o2,d2,mod2,w, epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3)
k0er=ko(eps1,angl,w);
k1er=k1per(eps1,epsinf2,o2,d2,mod2,w, epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3);
e0=eps3;
e1=epsper(eps1,epsinf2,o2,d2,mod2,w, epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl);
num=2*sqrt(e0)*sqrt(e1)*k0er;
den=e0*k1er+e1*k0er;
t01p=num/den;
end