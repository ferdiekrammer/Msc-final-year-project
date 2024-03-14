function g1n_hex = g1n_hex(p)
%empirical fit for sum of lattice function (speeds up the calculations)
% g1n_hex=-0.01828*p^8+0.3437*p^7-2.714*p^6+11.63*p^5-29.12*p^4+41.9*p^3-29.63*p^2+1.369*p+11.03;
g1n_hex=0;
for i=0:length(2000)
    for j=0:length(2000)
        if i==0 && j==0
            g1n_hex=0;
        else
            g1n_hex=g1n_hex+(i^2+j^2)/(i^2+j^2-i*j+p^2)^(5/2);
        end
    end
end
end

