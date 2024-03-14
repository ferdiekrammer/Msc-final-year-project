function k3=k3(eps3,epsinf4,o4,d4,mod4,w,angl)
%wave constant
%eps3 is layer 1, eps4 is layer 4

sqrt(espDL(epsinf4,o4,d4,w,mod4)-eps3*(sin(angl))^2);

k3=(w/197.4)*sqrt(espDL(epsinf4,o4,d4,w,mod4)-eps3*(sin(angl))^2);
end
