function xi = xi(eps1,epsinf4,o4,d4,mod4,w)
% image-charge screening factor
%   eps1=dielectric constant of bulk
%   epsDL=dielectric half space
xi_num=(eps1-espDL(epsinf4,o4,d4,w,mod4));
xi_den=(eps1+espDL(epsinf4,o4,d4,w,mod4));
xi=xi_num/xi_den;
end

