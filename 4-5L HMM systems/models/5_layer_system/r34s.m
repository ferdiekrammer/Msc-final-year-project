function r34s = r34s(eps3,epsinf4,o4,d4,mod4,epsinf5,o5,d5,mod5,angl,w)
%   Detailed explanation goes here
num= k3(eps3,epsinf4,o4,d4,mod4,w,angl)-k4(eps3,epsinf5,o5,d5,mod5,w,angl);
den= k3(eps3,epsinf4,o4,d4,mod4,w,angl)+k4(eps3,epsinf5,o5,d5,mod5,w,angl);
r34s=num/den; 
end

