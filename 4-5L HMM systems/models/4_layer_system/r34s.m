function r34s=r34s(eps3,eps1,epsinf4,o4,d4,mod4,angl,w)
num= k2(eps3,eps1,angl,w)-k3(eps3,epsinf4,o4,d4,mod4,w,angl);
den= k2(eps3,eps1,angl,w)+k3(eps3,epsinf4,o4,d4,mod4,w,angl);
r34s=num/den;
end