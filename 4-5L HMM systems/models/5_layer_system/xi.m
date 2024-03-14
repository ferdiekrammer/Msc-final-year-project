function xi = xi(eps1, epsinf4,o4,d4,mod4,w)
% image-charge screening factor
%   Detailed explanation goes here
xi=(eps1-espDL(epsinf4,o4,d4,w,mod4))/(eps1+espDL(epsinf4,o4,d4,w,mod4));

end

