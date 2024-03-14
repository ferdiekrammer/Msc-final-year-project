%electric permiativity for layer 1
e1=1.78;
%electric permiativity for layer 2 (NP)
einf2=5.9752;
eo2=8.8667;
ed2=0.03799;
emod2=1;
%electric permiativity for layer 3
e3=1.78;

%electric permiativity for layer 4
%gold sheets
einf4=5.9752;
eo4=8.8667;
ed4=0.03799;
emod4=1;

% electric permiativity of layer 4 
% dialectric sheet

einf6=1.78;
eo6=0;
ed6=0;
emod6=0;

R=20;

w=1.377:0.001:3.099;
%w=1.377;

Ka=11.031;

hs=4;
h=R+hs;

a=3*R;

dep=1;

angl=0*(pi/180);

%hf=30;
%for some reason if p is grater than 1 then at around 750 transmitance is
%grater than 100%


wavelength=[];
for i = 1:length(w)
    
    wavelength(i)=lambda(w(i));
    
end

Ts=[];
Rs=[];
Tsstand=[];
Rsstand=[];
As=[];
Asstand=[];
for i = 1:length(w)
    
    Rs(i)=RS(e1,e3,einf2,eo2,ed2,emod2,einf4,eo4,ed4,emod4,a,Ka,R,h,dep,angl,w(i)); 
    Rsstand(i)=RS(e1,e3,einf2,eo2,ed2,emod2,einf6,eo6,ed6,emod6,a,Ka,R,h,dep,angl,w(i));
    Ts(i)=TS(e1,e3,einf2,eo2,ed2,emod2,einf4,eo4,ed4,emod4,a,Ka,R,h,dep,angl,w(i));
    Tsstand(i)=TS(e1,e3,einf2,eo2,ed2,emod2,einf6,eo6,ed6,emod6,a,Ka,R,h,dep,angl,w(i));
    As(i)=1-Rs(i)-Ts(i);
    Asstand(i)=1-Rsstand(i)-Tsstand(i);

end

Tp=[];
Rp=[];
Tpstand=[];
Rpstand=[];
Ap=[];
Apstand=[];
for i = 1:length(w)
    
    Rp(i)=RP(e1,e3,einf2,eo2,ed2,emod2,einf4,eo4,ed4,emod4,a,Ka,R,h,dep,angl,w(i)); 
    Rpstand(i)=RP(e1,e3,einf2,eo2,ed2,emod2,einf6,eo6,ed6,emod6,a,Ka,R,h,dep,angl,w(i));
    Tp(i)=TP(e1,e3,einf2,eo2,ed2,emod2,einf4,eo4,ed4,emod4,a,Ka,R,h,dep,angl,w(i));
    Tpstand(i)=TP(e1,e3,einf2,eo2,ed2,emod2,einf6,eo6,ed6,emod6,a,Ka,R,h,dep,angl,w(i));
    Ap(i)=1-Rp(i)-Tp(i);
    Apstand(i)=1-Rpstand(i)-Tpstand(i);

end
figure;

plot(wavelength,Rsstand*100,'--')
hold on 
plot(wavelength,Rs*100,'--')

% plot(wavelength,Tsstand*100,':')
% plot(wavelength,Asstand*100)
hold off
axis([400 900 0 100])
xlabel('wavelength')
ylabel('%')

% tiledlayout(3,2);
% 
% p1=nexttile;
% plot(p1,wavelength,Rs*100,'--','linewidth',1)
% hold on
% plot(p1,wavelength,Rsstand*100,'-','linewidth',1)
% hold off
% axis(p1,[400 900 0 100])
% xlabel(p1,'wavelength')
% ylabel(p1,'reflectance')
% title(p1,'s polarized light')
% 
% p2=nexttile;
% plot(p2,wavelength,Rp*100,':','linewidth',1)
% hold on
% plot(p2,wavelength,Rpstand*100,'-','linewidth',1)
% hold off
% axis(p2,[400 900 0 100])
% xlabel(p2,'wavelength')
% ylabel(p2,'reflectance')
% title(p2,'p polarized light')
% 
% p3=nexttile;
% plot(p3,wavelength,Ts*100,'--','linewidth',1)
% hold on
% plot(p3,wavelength,Tsstand*100,'-','linewidth',1)
% hold off
% axis(p3,[400 900 0 200])
% xlabel(p3,'wavelength')
% ylabel(p3,'transmitance')
% title(p3,'s polarized light')
% 
% p4=nexttile;
% plot(p4,wavelength,Tp*100,':','linewidth',1)
% hold on
% plot(p4,wavelength,Tpstand*100,'-','linewidth',1)
% hold off
% axis(p4,[400 900 0 200])
% xlabel(p4,'wavelength')
% ylabel(p4,'transmitance')
% title(p4,'p polarized light')
% 
% p5=nexttile;
% plot(p5,wavelength,As*100,'--','linewidth',1)
% hold on
% plot(p5,wavelength,Asstand*100,'-','linewidth',1)
% hold off
% axis(p5,[400 900 -200 50])
% xlabel(p5,'wavelength')
% ylabel(p5,'Absorbance')
% title(p5,'s polarized light')
% 
% p6=nexttile;
% plot(p6,wavelength,Ap*100,':','linewidth',1)
% hold on
% plot(p6,wavelength,Apstand*100,'-','linewidth',1)
% hold off
% axis(p6,[400 900 -200 50])
% xlabel(p6,'wavelength')
% ylabel(p6,'absorbance')
% title(p6,'p polarized light')
% 

