function r34p = r34p(eps3, eps1,epsinf4,o4,d4,mod4,angl,w)
%   Detailed explanation goes here
num=eps1*k3(eps3,epsinf4,o4,d4,mod4,w,angl)-espDL(epsinf4,o4,d4,w,mod4)*k2(eps3,eps1,angl,w);
den=eps1*k3(eps3,epsinf4,o4,d4,mod4,w,angl)+espDL(epsinf4,o4,d4,w,mod4)*k2(eps3,eps1,angl,w);
r34p=num/den;
end
