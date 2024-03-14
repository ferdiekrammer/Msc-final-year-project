function [tsij] = tsij(kipll,kjpll)
%reflection coeficient for s polarised light between layers i and j
%   kipll is the wave vector for layer i
%   kjpll is the wave vector for layer j
tsij=(2*kipll)/(kjpll+kipll);
end
