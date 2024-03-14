function [Mn] = Mn(rij,tij,dj)
%transfer matix for two layers where n is i and n+1 is j
%   tij is the transmition corficient for layers i,j
%   rij is the relfectance coeficcient for layers i,j
%   dj is the phase shift
Mn=(1/tij)*[exp(-sqrt(-1)*dj) rij*exp(sqrt(-1)*dj);rij*exp(-sqrt(-1)*dj) exp(sqrt(-1)*dj)];
end
