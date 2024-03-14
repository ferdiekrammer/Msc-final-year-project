function k2 = k2(eps3,eps1,angl,w)
%UNTITLED4n goes here
%   eps3 is for layer 1, eps 1 is for layer 3
k2=(w/197.4)*sqrt(eps3)*sqrt((eps1/eps3)-(sin(angl))^2);
end

