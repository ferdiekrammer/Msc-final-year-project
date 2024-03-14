function r01p=r01p(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3)
num=eps3*k1per(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3)-epspll(eps1,epsinf2,o2,d2,mod2,w, epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl)*ko(eps3,angl,w);
den=eps3*k1per(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3)+epspll(eps1,epsinf2,o2,d2,mod2,w, epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl)*ko(eps3,angl,w);
r01p=num/den;
end

