%electric permiativity for layer 1
e1=1.78;
%electric permiativity for layer 2 (NP)
einf2=5.9752;
eo2=8.8667;
ed2=0.03799;
emod2=1;
%electric permiativity for layer 3
e3=1.78;

%electric permiativity for layer 4 (nano wires)
% einf4=5.9752;
% eo4=8.8667;
% ed4=0.03799;
% emod4=1;
einf4=2.5;
eo4=0;
ed4=0;
emod4=0;
% electric permiativity of layer 4 (bulk dialectric)
einf5=2.5;
eo5=0;
ed5=0;
emod5=0;
% isortropic half space for layer 4
einf6=4;
eo6=0;
ed6=0;
emod6=0;

R=10;

w=1.377:0.001:3.099;
%w=1.377;

Ka=11.03354;

hs=1;
h=R+hs;

a=3*R;

dep=1;

angl=0*(pi/180);

%hf=30;
nwa=2.5;
ucA=10;

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

%RS(eps3,eps1,epsinf2,o2,d2,mod2,epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,a,ka,R,h,dep,angl,w)

Rs=[];

for i = 1:length(w)
    
   Rs(i)=RS(e1,e3,einf2,eo2,ed2,emod2,einf4,eo4,ed4,emod4,einf5,eo5,ed5,emod5,nwa,ucA,a,Ka,R,h,dep,angl,w(i));
    
end

Rp=[];
%RP(eps3,eps1,epsinf2,o2,d2,mod2,epsinfm,om,dm,modm,epsinfd,od,dd,modd,nwa,ucA,a,Ka,R,h,dep,angl,w)
for i = 1:length(w)
    
   Rp(i)=RP(e1,e3,einf2,eo2,ed2,emod2,einf4,eo4,ed4,emod4,einf5,eo5,ed5,emod5,nwa,ucA,a,Ka,R,h,dep,angl,w(i));
    
end
%for normal half space (layer 4)
Rsstand=[];
for i = 1:length(w)
    
   Rsstand(i)=RS(e1,e3,einf2,eo2,ed2,emod2,einf6,eo6,ed6,emod6,einf6,eo6,ed6,emod6,nwa,ucA,a,Ka,R,h,dep,angl,w(i));
    
end

% Ts=[];
% 
% for i = 1:length(w)
%     
%     Ts(i)=TS(e1,e3,einf2,eo2,ed2,emod2,einf4,eo4,ed4,emod4,einf5,eo5,ed5,emod5,a,Ka,R,h,dep,angl,hf,w(i));
%     
% end

plot(wavelenth,Rs*100,'--','linewidth',3)
hold on

plot(wavelenth,Rp*100,':','linewidth',2)

plot(wavelenth,Rsstand*100,'-','linewidth',2)
% 
% plot(wavelenth,Ts*100)
% 
hold off
axis([400 900 0 60])
xlabel('wavelength')
ylabel('reflectance')



