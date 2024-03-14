function [kGenpll] = kGenpll(eps1,epsxpll,epsxper,angl,w)
%out puts the parallel wave vector beyond the first layer
    %epsxpll is the dielectric constant for that layer
    %eps1 is the dielectric constant for the first layer
    %angl is the angl of incident light on the first layer
kGenpll=(w/197.4)*sqrt(epsxpll-eps1*((sin(angl))^2));
end
