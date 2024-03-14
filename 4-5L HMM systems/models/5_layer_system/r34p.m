function r34p=r34p(eps3,epsinf4,o4,d4,mod4,epsinf5,o5,d5,mod5,angl,w)
%UNTITLED14 Summary of this function goes here
%   Detailed explanation goes here
num=espDL(epsinf4,o4,d4,mod4,w)*k4(eps3,epsinf5,p5,d5,mod5,w,angl)-espDL(epsinf5,o5,d5,mod5,w)*k3(eps3,epsinf4,o4,d4,mod4,w,angl);
den=espDL(epsinf4,o4,d4,mod4,w)*k4(eps3,epsinf5,p5,d5,mod5,w,angl)+espDL(epsinf5,o5,d5,mod5,w)*k3(eps3,epsinf4,o4,d4,mod4,w,angl);
r34p=num/den;
end

