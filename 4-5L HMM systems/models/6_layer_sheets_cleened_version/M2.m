function [M] = M2(M1,M2,M3,rij,tij)
%total transfer matix 
%   M1-M8 tranfer matixices for individual transitions
%   tij is the transmition corficient for final transiton 
%   rij is the relfectance coeficcient for final transiton
M5=(1/tij)*[1 rij;rij 1];
M=M1*M2*M3*M5;
end
