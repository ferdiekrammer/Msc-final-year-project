function t01s=t01s(eps1,epsinf2,o2,d2,mod2,w, epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3)
k0ll=ko(eps1,angl,w);
k1ll=k1pll(eps1,epsinf2,o2,d2,mod2,w, epsinf4,o4,d4,mod4,a,Ka,R,h,dep,angl,eps3);
t01s=(2*k0ll)/(k0ll+k1ll);
end