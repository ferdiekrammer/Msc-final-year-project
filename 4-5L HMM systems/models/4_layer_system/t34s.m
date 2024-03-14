function t34s=t34s(eps3,eps1,epsinf4,o4,d4,mod4,w,angl)
k3ll=k2(eps3,eps1,angl,w);
k4ll=k3(eps3,epsinf4,o4,d4,mod4,w,angl);
t34s=(2*k3ll)/(k3ll+k4ll);
end