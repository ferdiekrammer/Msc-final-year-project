function [Mn] = Mn2(rij,tij,dj)
%transfer matix for two layers where n is i and n+1 is j
%   tij is the transmition corficient for layers i,j
%   rij is the relfectance coeficcient for layers i,j
%   dj is the phase shift
Mn=[exp(-1i*dj) rij*exp(1i*dj);rij*exp(-1i*dj) exp(1i*dj)];
end
