function t12s=t12s(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3)
k1ll=k1pll(eps1,epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3);
k2ll=k2(eps3,eps1,angl,w);
t12s=(2*k1ll)/(k1ll+k2ll);
end