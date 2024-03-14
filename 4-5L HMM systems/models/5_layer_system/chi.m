function [chi] = chi(eps1,epsinf,o,d,w,mod,R,angl)
%UNTITLED3 Summary of this function goes here
i=sqrt(-1);
ch=chi1(eps1,epsinf,o,d,w,mod,R);
k0=ko(eps1,angl,w);
chinum=ch;
chiden=1-(ch*((k0^2)/R))-((2*i)/3)*ch*k0^3;
chi = chinum/chiden;
end

