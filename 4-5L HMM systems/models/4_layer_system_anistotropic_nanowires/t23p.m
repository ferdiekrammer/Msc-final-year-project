function t23p=t23p(eps3,eps1,epsinf4,o4,d4,mod4,w,angl)
k2er=k2(eps3,eps1,angl,w);
k3er=k3(eps3,epsinf4,o4,d4,mod4,w,angl);
e2=eps1;
e3=espDL(epsinf4,o4,d4,w,mod4);
num=2*sqrt(e2)*sqrt(e3)*k2er;
den=e2*k3er+e3*k2er;
t23p=num/den;
end