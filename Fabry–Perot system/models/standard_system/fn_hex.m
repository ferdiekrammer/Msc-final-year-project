function fn_hex = fn_hex(p)
%empirical fit for sum of lattice function (speeds up the calculations)
% fn_hex=0.02274*p^7-0.3762*p^6+2.545*p^5-8.99*p^4+17.27*p^3-15.85*p^2+0.6402*p+11.03;
fn_hex=0;
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

