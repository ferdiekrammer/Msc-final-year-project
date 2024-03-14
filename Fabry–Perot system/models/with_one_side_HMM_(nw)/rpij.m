function [rpij] = rpij(kiper,kjper,epsipll,epsjpll)
%reflection coeficient for p polarised light between layers i and j
%   kiper is the wave vector for layer i
%   kjper is the wave vector for layer j
%   epsipll is the parallel component for the dielectric constant for layer i
%   epsjpll is the parallel component for the dielectric constant for layer j
rpij=(epsipll*kjper-epsjpll*kiper)/(epsipll*kjper+epsjpll*kiper);
end
