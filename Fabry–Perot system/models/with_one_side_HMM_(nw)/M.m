function [M] = M(M1,M2,M3,M4,M5,M6,M7,rij,tij)
%total transfer matix 
%   M1-M8 tranfer matixices for individual transitions
%   tij is the transmition corficient for final transiton 
%   rij is the relfectance coeficcient for final transiton
M9=(1/tij)*[1 rij;rij 1];
M=M1*M2*M3*M4*M5*M6*M7*M9;
end
