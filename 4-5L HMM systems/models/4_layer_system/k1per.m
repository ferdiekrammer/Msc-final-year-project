function k1per=k1per(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3)
a1=sqrt(epspll(eps1,epsinf2,o2,d2,mod2,w, epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl)/epsper(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl));
a2=sqrt(epsper(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl)-(sin(angl))^2*eps3);
k1per=(w/197.4)*a1*a2;
end