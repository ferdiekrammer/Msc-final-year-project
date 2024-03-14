function betaper = betaper(eps1, epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h,angl)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
ch=chi(eps1,epsinf2,o2,d2,w,mod2,R,angl);
e1=eps1;
ua=UA(a,Ka);
xin=xi(eps1,epsinf4,o4,d4,mod4,w);
num=ch;
ha=(2*h)/a;
fn=fn_hex(ha);
g2n=g2n_hex(ha);
dev =(1+ch*(1/e1)*((1)*ua-xin*((fn/a^3)-(12*(h^2)*g2n)/a^5-1/(4*h^3))));
betaper=num/dev;
end

