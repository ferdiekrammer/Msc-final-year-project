function [esp] = espDL(epsinf,o,d,w,mod)
    % epsinf = the dielectric constant of medium at infinity
    i = sqrt(-1);
    esp = epsinf - (o)^2/(w*(w+i*d))+mod*(1.76*((3.6)^2)/((3.6^2)-(w^2)-(i*1.3*w))+0.952*(2.8^2)/((2.8^2)-(w^2)-(i*0.737*w)));
end 


% eps equation normaly is 
%eps=epsinf
