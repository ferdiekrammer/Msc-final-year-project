 function betapll = betapll(eps1, epsinf2,o2,d2,mod2,w,epsinf4,o4,d4,mod4,a,Ka,R,h, angl)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
ch=chi(eps1,epsinf2,o2,d2,w,mod2,R,angl);
e3=eps1;
xif=xi(eps1,epsinf4,o4,d4,mod4,w);
ha=(2*h)/a;
fn=fn_hex(ha);
g1n=g1n_hex(ha);
ua=UA(a,Ka);
betapll=ch/(1+ch*(1/e3)*((-1/2)*ua+xif*((fn/a^3)-1.5*g1n/a^3+1/(8*h^3))));
end

