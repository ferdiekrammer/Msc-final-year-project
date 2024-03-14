function etsum = et1sumper(eta1,eta2,a,h,L)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
etsum=0;
for n=0:200
% for n=0
    d=L*(n+1)+h;
    p=2*d/a;
    
    newnum=((eta1*eta2)^n)*(fn_hex(p)/(a^3)-12*g2n_hex(p)/(a^5)-1/(4*d^3));
%     newnum=((eta1*eta2)^n)*(fn1pll(d,a)-12*gn2per(d,a)/(a^5)-1/(4*d^3));
   
    
    etsum=etsum+newnum;
end
    
    
end

