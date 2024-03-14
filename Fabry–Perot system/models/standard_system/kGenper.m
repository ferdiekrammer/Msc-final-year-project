function [kGenper] = kGenper(eps1,epsxpll,epsxper,angl,w)
%out puts the perpendicular wave vector beyond the first layer
    %epsxpll is the dielectric constant for that layer
    %epsxper is the dielectric constant for that layer
    %eps1 is the dielectric constant for the first layer
    %angl is the angl of incident light on the first layer
kGenper=(w/197.4)*sqrt(epsxpll/epsxper)*sqrt(epsxper-eps1*((sin(angl))^2));
end
