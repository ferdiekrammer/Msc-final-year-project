function epsTiO = epsTiO(w)
%dielectric function for TiO2
 L=lambda(w)*10^-3;
epsTiO=5.913+(0.2441)/(L^2-0.0803);
end
