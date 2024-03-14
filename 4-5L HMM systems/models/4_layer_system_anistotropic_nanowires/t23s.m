function t23s=t23s(eps3,eps1,epsinf4,o4,d4,mod4,w,angl)
k2ll=k2(eps3,eps1,angl,w);
k3ll=k3(eps3,epsinf4,o4,d4,mod4,w,angl);
t23s=(2*k2ll)/(k2ll+k3ll);
end