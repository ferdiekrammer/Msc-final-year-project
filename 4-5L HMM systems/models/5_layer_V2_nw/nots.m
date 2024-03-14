w=1.377:0.001:5;
wve=zeros(length(w));
eps=zeros(length(w));
for i=1:length(w)
        wve(i)=lambda(w(i));
        eps(i)=5.913+0.2441/(wve(i)^2-0.0803);
end

plot(wve,eps)
