function t23p=t23p(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3)
k2er=k1per(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3);
k3er=k2(eps3,eps1,angl,w);
e2=epspll(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl);
e3=eps1;
num=2*sqrt(e2)*sqrt(e3)*k2er;
den=e2*k3er+e3*k2er;
t23p=num/den;
end