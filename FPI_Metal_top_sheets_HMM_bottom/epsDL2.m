function eps2 = epsDL2(epsinf,wpD,gD,s1,wp1L,g1L,s2,wp2L,g2L,w)
    % epsinf = the dielectric constant of medium at infinity
    i = sqrt(-1);
    a1=epsinf;
    a2=(wpD^2)/(w^2+i*gD*w);
    a3=(s1*wp1L^2)/((w^2-wp1L^2)+i*g1L*w);
    a4=(s2*wp2L^2)/((w^2-wp2L^2)+i*g2L*w);
    eps2 =a1-a2-a3-a4;
end 

% eps equation normaly is 
%eps=epsinf
