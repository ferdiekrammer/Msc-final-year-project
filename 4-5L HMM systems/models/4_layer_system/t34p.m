function t34p=t34p(eps3,eps1,epsinf4,o4,d4,mod4,w,angl)
k3er=k2(eps3,eps1,angl,w);
k4er=k3(eps3,epsinf4,o4,d4,mod4,w,angl);
e3=eps1;
e4=espDL(epsinf4,o4,d4,w,mod4);
num=2*sqrt(e3)*sqrt(e4)*k3er;
den=e3*k4er+e4*k3er;
t34p=num/den;
end