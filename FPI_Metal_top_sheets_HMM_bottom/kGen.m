function [kGen] = kGen(eps1,epsx,angl,w)
%out puts the wave vector for nom metamaterials beyond first layer
    %epsx is the dielectric constant for that layer
    %eps1 is the dielectric constant for the first layer
    %angl is the angl of incident light on the first layer
kGen=(w/197.4)*sqrt(epsx-eps1*((sin(angl))^2));
end
