function [rsij] = rsij(kipll,kjpll)
%reflection coeficient for s polarised light between layers i and j
%   kipll is the wave vector for layer i
%   kjpll is the wave vector for layer j
rsij=(kipll-kjpll)/(kipll+kjpll);
end
