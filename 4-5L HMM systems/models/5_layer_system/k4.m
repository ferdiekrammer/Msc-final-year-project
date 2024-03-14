function k4=k4(eps3,epsinf5,o5,d5,mod5,w,angl)
%wave constant
%eps3 is layer 1, eps5 is layer 5
e1=eps3;
e5=espDL(epsinf5,o5,d5,w,mod5);
k4=(w/197.4)*sqrt(e1)*sqrt((e5/e1)-(sin(angl))^2);
end