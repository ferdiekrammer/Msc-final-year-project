function [tpij] = tpij(kiper,kjper,epsipll,epsjpll)
%reflection coeficient for p polarised light between layers i and j
%   kiper is the wave vector for layer i
%   kjper is the wave vector for layer j
%   epsipll is the parallel compondent of the dielectric component for layer i
%   epsjpll is the parallel component for the dielectric constant for layer j
tpij=(2*sqrt(epsipll)*sqrt(epsjpll)*kiper)/(epsipll*kjper+epsjpll*kiper);
end
