function g2n_hex=g2n_hex(p)
%empirical fit for sum of lattice function (speeds up the calculations)
% g2n_hex=-0.01946*p^8+0.3636*p^7-2.846*p^6+12.06*p^5-29.67*p^4+41.54*p^3-28*p^2+1.33*p+6.749;
g2n_hex=0;
for i=0:length(2000)
    for j=0:length(2000)
        if i==0 && j==0
            g2n_hex=0;
        else
            g2n_hex=g2n_hex+1/(i^2+j^2-i*j+p^2)^(5/2);
        end
    end
end
end
