function t12p=t12p(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3)
k1er=k1per(eps1,epsinf2,o2,d2,mod2,w, epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3);
k2er=k2(eps3,eps1,angl,w);
e1=epsper(eps1,epsinf2,o2,d2,mod2,w, epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl);
e2=eps1;
num=2*sqrt(e1)*sqrt(e2)*k1er;
den=e1*k2er+e2*k1er;
t12p=num/den;
end