function eps = epsSE(B1,B2,B3,C1,C2,C3,w)
    % epsinf = the dielectric constant of medium at infinity
    L=lambda(w)*10^-3;
    eps = 1+B1*L^2/(L^2-C1)+B2*L^2/(L^2-C2)+B3*L^2/(L^2-C3);
end 


% eps equation normaly is 
%eps=epsinf
