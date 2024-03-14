function t34s=t34s(eps3,epsinf4,o4,d4,mod4,epsinf5,o5,d5,mod5,w,angl)
k3ll=k3(eps3,epsinf4,o4,d4,mod4,w,angl);
k4ll=k4(eps3,epsinf5,o5,d5,mod5,w,angl);
t34s=(2*k3ll)/(k3ll+k4ll);
end