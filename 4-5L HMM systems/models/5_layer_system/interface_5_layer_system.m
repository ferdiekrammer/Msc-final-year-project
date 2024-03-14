e1=1.78;

einf2=5.9752;
eo2=8.8667;
ed2=0.03799;
emod2=1;

% einf4=2.25;
% eo4=0;
% ed4=0;
% emod4=0;


e3=1.78;

% einf4=5.9752;
% eo4=8.8667;
% ed4=0.03799;
% emod4=1;
% 
% einf5=5.9752;
% eo5=8.8667;
% ed5=0.03799;
% emod5=1;

einf4= 2.25;
eo4=0;
ed4=0;
emod4=0;

einf5=2.25;
eo5=0;
ed5=0;
emod5=0;

R=10;

w=1.377:0.001:3.099;
%w=1.377;

Ka=11.03354;

hs=1;
h=R+hs;

a=3*R;

dep=1;

angl=0;

hf=0;


%s1plln=s1pll(e1,einf2,eo2,ed2,emod2,w,einf4,eo4,ed4,emod4,a,Ka,R,h,dep,angl,e3);
%s2n=s2(e3,e1,angl,w,h,dep);
%s3n=s3(e3,einf4,eo4,ed4,emod4,w,angl,hf);
%r34sn=r34s(e3,einf4,eo4,ed4,emod4,einf5,eo5,ed5,emod5,angl,w);
%r23sn=r23s(e3,e1,einf4,eo4,ed4,emod4,angl,w);
%r12sn=r12s(e1,einf2,eo2,ed2,emod2,w,einf4,eo4,ed4,emod4,a,Ka,R,h,dep,angl,e3);
%r01sn=r01s(e1,einf2,eo2,ed2,emod2,w,einf4,eo4,ed4,emod4,a,Ka,R,h,dep,angl,e3);
%test=betapll(e3,einf2,eo2,ed2,emod2,w,einf4,eo4,ed4,emod4,a,Ka,R,h,angl)
%look over along with form there on
%epsper(e1,einf2,eo2,ed2,emod2,w,einf4,eo4,ed4,emod4,a,Ka,R,h,dep,angl)
%test=RS(e3,e1,einf2,eo2,ed2,emod2,einf4,eo4,ed4,emod4,einf5,eo5,ed5,emod5,a,Ka,R,h,dep,angl,hf,w)

wavelength=[];
for i = 1:length(w)
    
    wavelenth(i)=lambda(w(i));
    
end

Rs=[];
Ts=[];
As=[];
for i = 1:length(w)
   Rs(i)=RS(e1,e3,einf2,eo2,ed2,emod2,einf4,eo4,ed4,emod4,einf5,eo5,ed5,emod5,a,Ka,R,h,dep,angl,hf,w(i));
   Ts(i)=TS(e1,e3,einf2,eo2,ed2,emod2,einf4,eo4,ed4,emod4,einf5,eo5,ed5,emod5,a,Ka,R,h,dep,angl,hf,w(i)); 
   As(i)=1-Ts(i)-Rs(i);
end


figure;
plot(wavelenth,Rs*100,'g')
hold on

plot(wavelenth,Ts*100,'b')
plot(wavelenth,As*100,'m')
hold off
axis([400 900 0 100])
xlabel('wavelength')
ylabel('reflectance')



