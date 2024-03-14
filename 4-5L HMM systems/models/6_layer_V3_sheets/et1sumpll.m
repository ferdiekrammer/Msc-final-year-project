function etsum = et1sumpll(eta1,eta2,a,h,L)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
etsum=0;
for n=0:200
% for n=0
    d=L*(1+n)+h;
    p=2*d/a;
    
    newnum=((eta1*eta2)^n)*((fn_hex(p)/a^3)-(3/2)*(g1n_hex(p)/(a^3))+1/(8*d^3));

%     newnum=((eta1*eta2)^n)*(fn1pll(d,a)-3*gn1pll(d,a)/(2*a^3)+1/(8*d^3));
    
    etsum=etsum+newnum;
end
    
    
end

