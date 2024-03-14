function fn_hex = fn1pll(h,a)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
p=2*h/a;
for i=0:length(2000)
    for j=0:length(2000)
        if i==0 && j==0
            fn_hex=0;
        else
            fn_hex=fn_hex+1/(i^2+j^2-i*j+p^2)^(3/2);
        end
    end
end

end

