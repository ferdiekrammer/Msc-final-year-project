function t34p=t34p(eps3,epsinf4,o4,d4,mod4,epsinf5,o5,d5,mod5,w,angl)
k3er=k3(eps3,epsinf4,o4,d4,mod4,w,angl);
k4er=k4(eps3,epsinf5,o5,d5,mod5,w,angl);
e3=espDL(epsinf4,o4,d4,w,mod4);
e4=espDL(epsinf5,o5,d5,w,mod4);
num=2*sqrt(e3)*sqrt(e4)*k3er;
den=e3*k4er+e4*k3er;
t34p=num/den;
end