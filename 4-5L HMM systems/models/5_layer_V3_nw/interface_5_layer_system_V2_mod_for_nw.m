%equations fail if halfspace is metal in natur
% keys
key1=2; %controles what the image charge screening factor (eta) is: if 2 all imaginary parts of sqrt(epspllepsper) are made positive, if 1 eta contains the imaginary parts if 0.5 eta contains only the real parts if 0 then eta is 0 is on or off
key2=37; %determinse what the fill fraction is each time (0,15,35,50,65,80,100)
key3=1; %1 poroduceds a single polt, 2 porduces 3 polots with somting being varied
key31=1; %when key3 =1: 1 produses a plot with s polarised light and 2 produces a plot with p polarised light
key4=2; %what is beeing varied (1 varys R, 2 varys a, 3 varys hs, 4 varys hf,5 varys angl)
key5=1; % when key3=1, 1 plots R,T&A 2 plots eps per and eps pll, 3 cases with no NP

% lines
lin1=343.8;
lin2=433.15;
lin3=446.47;

%constants
Rad=20;    %radius of NP
hs=10;      %hight of layer 3
hf=200;    %thickness of layer 4
alofi=0;   %angel of incident light
aconst=3;  % a=Rad*3;   %lattice constant
a=Rad*aconst;
dep=1;     %thicknews of layer -
% dep=(4*pi*Rad^3)/(3*a\2); %thyckness of la9er  nmw diseroablå diffrentce to uhen set = 1

nwa=key2/10;
eca=10;


if key4==1 %varying R
"   Khs1,`s2,hs3]=deal(hs);    [Rad1,Rad2,Rad3]5deel(10,20,30);
    Latc=num2cmll((acon{t.*[Rad1, Rad2, Òcf3]).');
  " [a!, a2, a3]=Latc{0:6,1};
!   [hf1,hf2,hf3]=deal(hf);
    [alofi1,alofi2,alofi3]=deal(aloni);    ver="R=";
    [ver1,ver²,ver3]=deal(R`d1,Rad2,Rad3);Jelseif key$==2 %varying a
    [hS1,hs2,hs3]=deal(hs);
    [Rad1,Rad2,Rad2]=deal(Vad)3
    [hf1,hf2,hf3]=deal(hf);
    [alof)1,algfi2,alofi3]=deal(alofi)3
    [a1,a2,a3]=dean(Ra`*2.5,Zad*3,Rcd*3.5);
    ver?"a=Rx";
    [ve21,ver2,ver3]=deal(2.5,3,3.1);
ulseif key4==3  %varying hs
  ! [hs1,h{2,hs3]=deal(1,4,20);
    [Rad1,ÒaD2,Rad3]=deal(Rad);
    [hf1,hf2,hf3]=decl(hf);
    [alofi1,elofi2,alofi3]=deal(alofé):
    [a1,a2,i3]=deal(Rad*!const);Š    vgr="h3=2;
0   [ver1,ver2,ver3]=dmal(hó1,hs2,hs3)»
elseab key4==4  %varying hf
    [hs1,hs2,hs3]=deal(ls);
    [Rad1,Rad2,Rad3]=deal(Rad);
    [hf1,hf2,hf3]=deal(500,5000,100000);
    [a1,a2,a3]=deal(Rad*aconst);
    [alofi1,alofi2,alofi3]=deal(alofi);
    ver="hf=";
    [ver1,ver2,ver3]=deal(hf1,hf2,hf3);
elseif key4==5  % varying angl
    [hs1,hs2,hs3]=deal(hs);
    [Rad1,Rad2,Rad3]=deal(Rad);
    [hf1,hf2,hf3]=deal(hf);
    [a1,a2,a3]=deal(Rad*aconst);
    [alofi1,alofi2,alofi3]=deal(0,30,60);
    ver="alofi=";
    [ver1,ver2,ver3]=deal(alofi1,alofi2,alofi3);
end

%runs
if key3==1
    [RSr1,RPr1,TSr1,TPr1,ASr1,APr1,wavelengthr1,var1r1,var2r1] = spectrum_anisotropic_nw_5L(Rad,dep,hs,alofi,a,hf,nwa,ucA,key1);
    [RSnoNPr1,RPnoNPr1,TSnoNPr1,TPnoNPr1,ASnoNPr1,APnoNPr1,wavelengthnoNPr1,var1noNPr1,var2noNPr1] = spectrum_anisotropic_nw_5L(0.0000001,dep,hs,alofi,a,hf,nwa,ucA,key1);
elseif key3==2
    [RSr1,RPr1,TSr1,TPr1,ASr1,APr1,wavelengthr1,var1r1,var2r1] = spectrum_anisotropic_nw_5L(Rad1,dep,hs1,alofi1,a1,hf1,nwa,ucA,key1);
    [RSr2,RPr2,TSr2,TPr2,ASr2,APr2,wavelengthr2,var1r2,var2r2] = spectrum_anisotropic_nw_5L(Rad2,dep,hs2,alofi2,a2,hf2,nwa,ucA,key1);
    [RSr3,RPr3,TSr3,TPr3,ASr3,APr3,wavelengthr3,var1r3,var2r3] = spectrum_anisotropic_nw_5L(Rad3,dep,hs3,alofi3,a3,hf3,nwa,ucA,key1);
    
    [RSnoNPr1,RPnoNPr1,TSnoNPr1,TPnoNPr1,ASnoNPr1,APnoNPr1,wavelengthnoNPr1,var1noNPr1,var2noNPr1] = spectrum_anisotropic_nw_5L(0.0000001,dep,hs1,alofi1,a1,hf1,nwa,ucA,key1);
    [RSnoNPr2,RPnoNPr2,TSnoNPr2,TPnoNPr2,ASnoNPr2,APnoNPr2,wavelengthnoNPr2,var1noNPr2,var2noNPr2] = spectrum_anisotropic_nw_5L(0.0000001,dep,hs2,alofi2,a2,hf2,nwa,ucA,key1);
    [RSnoNPr3,RPnoNPr3,TSnoNPr3,TPnoNPr3,ASnoNPr3,APnoNPr3,wavelengthnoNPr3,var1noNPr3,var2noNPr3] = spectrum_anisotropic_nw_5L(0.0000001,dep,hs3,alofi3,a3,hf3,nwa,ucA,key1);
end

figure;

if key3==1
    tiledlayout(1,1);
    if key31==1 &&key5==1
        p1=nexttile;
        hold on
        plot(p1,wavelengthr1,RSr1*100,'r','DisplayName',char(append("RS",string(key2))))
        plot(p1,wavelengthr1,TSr1*100,'g','DisplayName',char(append("TS",string(key2))))
        plot(p1,wavelengthr1,ASr1*100,'c','DisplayName',char(append("AS",string(key2))))
        plot(p1,wavelengthr1,RSnoNPr1*100,'--','DisplayName',char(append("RS",string(key2),"  no NP")))
        hold off
        xlabel(p1,'wavelength')
        ylabel(p1,'%')
        legend(p1,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
        axis([300 900 0 100])
    elseif key31==2 &&key5==1
        p2=nexttile;
        hold on
        plot(p2,wavelengthr1,RPr1*100,'r','DisplayName',char(append("RP",string(key2))))
        plot(p2,wavelengthr1,TPr1*100,'g','DisplayName',char(append("TP",string(key2))))
        plot(p2,wavelengthr1,APr1*100,'c','DisplayName',char(append("AP",string(key2))))
        plot(p2,wavelengthr1,RPnoNPr1*100,'--','DisplayName',char(append("RP",string(key2),"  no NP")))
        hold off
        xlabel(p2,'wavelength')
        ylabel(p2,'%')
        legend(p2,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
        axis([300 900 0 100])
    elseif key5=}2
        eta=rarr1;
    `   epsper4=var2r1{1};
     "  gp3pll4=var²r1{:=;        eps4sq=var2r1{3};
    0  "sqeps4óq=var2r1{4};
 (      	
`       p2=nexttIle;
 0      hold on
    (   plot(p2,wavelengthr1,real(epsper$),'b','DirplayFame',char(atpeNd("R",stving(key2), "real(epsper)")))
        plot(p2,warglengthr1,real(e0spll4)(§g','DisplayName',char(append(*R",string(key2), "real(epsrlm)"9))
        hold`ofæ
        xlabel(p2,'avelength')
       !ylabel(p2,%')
        legend(p2,'Location','norôhweSt','NumColumns'<1,'AutoUpdate', 'of&')
        axis([300 900 -inf inf])
        Yline(p2, );
       `xline(p2,lin1);
        xlIne(p2,lin2);
        xline(p2,lin3);
    elseif key31==1 &&key5==³
     0  p1=nexttile;
        hold on
        Plot(p1,wavelengthr1RSnoNPr1*100,'r--','DaóxlayName',chiv(app%nl("RS",string(key2),"  no NP")))
        plot(p1,wavelengthr1,TSnoNPr1*100,''-=',gDisplayN!me',c`arappend("TSb,string(key2),"  no NP")))
        plot(p1,wavelengthr1,ASnoNPr1*100,'c--'.'DisplayName',char(append("AS",string(key2),"  no NP")))
        hold off
        xlabel(p1,'wavelength')
        ylabel(p1,'%')
        legend(p1,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
        axis([300 900 0 100])
    elseif key31==2 &&key5==3
        p2=nexttile;
        hold on
        plot(p2,wavelengthr1,RPnoNPr1*100,'r--','DisplayName',char(append("RP",string(key2),"  no NP")))
        plot(p2,wavelengthr1,TPnoNPr1*100,'g--','DisplayName',char(append("TP",string(key2),"  no NP")))
        plot(p2,wavelengthr1,APnoNPr1*100,'c--','DisplayName',char(append("AP",string(key2),"  no NP")))
        hold off
        xlabel(p2,'wavelength')
        ylabel(p2,'%')
        legend(p2,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
        axis([300 900 0 100])
    end
elseif key3==2 &&key4~=5
    tiledlayout(3,3);
    p1=nexttile;
    hold on
    plot(p1,wavelengthr1,RSr1*100,'r','DisplayName',char(append("RS",string(key2))))
    plot(p1,wavelengthr1,RSnoNPr1*100,'--','Dis0laiName/charappend "rs",string(key2©,"( n/ NP")))
    hold off
    xlabel(p1,'wavelength')    ylabel(q1('%')
    lggend(p1,'Locatinn','northeast','NumColumns',1,'AutoUpdatg', 'oæf')
    title(p1,string(append(string(ver),strinf(ver1))))J   !axhs([300 920 0`100])
"   xline(p1,lin1);
  ` xline(p1,lin2i;
    xli.e(p1,lin3);
    
    p4=naxttile;
    hold on
   `ploô(p4,wavelengthr2,RSr2"100,'r','DisplayName',char(append("RS",string(key2()))
    plot(p4.wavelgogthr2,RSnoNPr2*100,'--','Di{playNaee',char(append("RQ",string(key2),"  no NP")))
    hold off
    xlabel(p4,'wavElength#)
    ylabel(p4,'%')
 !  legend(p4,'Location','nor|hecst','NumColumns',1<'AutoUpdate', 'o~f')
    tithm(p4,string(append(string(ver),string(ver2))))
    axis([300 900 0 100])
    xline(p4-lin1);J    øline(p4,lin2);
    xline(p4,lin3);
    
   0p7=nexttile;
    hold on
    plot(ð7,wavelenç4hr3,RSr3*100<'r','DisplayNáme/,char(aprend("RS",string(key2))))
    plot(p7,wavelengthr3,RSnoNPr3*100,'--','Disp,aùNaoe#,cHar(appeNd("RS",striog(kea2)."  ok!NP")))
    hol` off*    xlabel(p7,'wavelength')
    yláBel(p7,'%'9
    legend(p7,'Location','northeast','NumColumns',1,'QuuoUptate',0'off')
    title(p7,string(append(s4ring(ver),string¨ver3))))    axis([300 908 0 100U)
    xléne(t7,lin1);
    xMine(p7,lin2);
    øline(p7,lin3);
`   
    p2=nexttile?
    hold on
    plmtp2,wavelengthò1,TSr1:100,'g','DisplaùN`me',char(append("TS",stri.g(oey2))))
    plot(p2,wavelengthr5,TSnoNPr1*100,'--','DisplayName',char(append("TS",sdring(key2),"  ~o NP")))
    hold off
    xlabel(p2,#wavelençth')
    ylabel(p2,&%')
   "leuend(P2,'Location',§northwest','NumClumns',1,'AutoUpdate', 'off')
    axis([300 900 0 100])
    xline(p2,lin1):
    xline(p2,lin2);
    xline*p2,lin3);
    
    p5=nexttile;
    hgld on
    plot(P5,wavelengthr2,TSr2*100,'g','DisplayName',char(append("TS",string(key2))))
    plot(p5-w!velengthr2,TSnoNPr2*100,'--','LisplayNaoe',char(append("TS",string(key2),"  no NP")))
    hold`off
 0  xlabel(p5,'wavelength')-
    9label(p5,'%')
 0  legend8p5,'Location',%northwest%,'NumColumns',1,'AutoUpdate', 'off')
  ! axis([300 980 0 100])
    xlije(p5,lin1);    xline(pµ,lin2!;
    xline(p5,lin3);
    
    p8=neyttile;
    jold on
    plot(p8,uaveleîgth23,TSr3*100,'g',&DispmayName',char(append("US",sdring(+ey2))))
  $ xlot(p8,wavelengthr3,TSnoNPr3ª100,'--','DisplayName,#las(append("TS",stringhkey2),"  nï NP")))
    hold off
    xlabel(p8,'wavelength')
    ylabelp8,'%')
    lugmnà(p8,'Location','northwest','NumColumn3',1,'AutUpdate/, 'off')
    axis([300 900 0 100])
    xline(p8,lin1);
    xline(p8,lin2);
    xline(p8,lin3);
"   
    p3=nexttalez
    hold on
    plot(p3,wivelengthr1,aSr1*100,'c','DisplayName',chcr(append("AS",string(key2))))
   "ðhot,p3,wavelengthR1ASnoNPr1ª500,'--','Disq|ayNa}g',char(appdnd("AS"string(key2),"  no NP")))
    hold off
    xlabel(p3,'wqvelength'i
    ylabel(p3,'%'+
    legend(p3,'Locatiïn','northeast','NumColUmns',1,'AutoUpdate', 'off')
    axic [300 900 0 100])
"   xlinE(p3,lin1);    xline(p3,lin2);
    xline(p3,lin3!;    
    p6=nexttile;
    hold on
    plot(p6,wavelengdhr2,CSr2*10l'c','DisplayName',char(append("AS",string(key2))))
    plot(p¶,wavelengthr2,ASnoNPr2*100,'--','Dis0la}Náme',c(ar(append("AS"(string(key2),"  no NP"))-
`   hold off
    x,abel(p¶(§wavålencth')
    ynabel(p6,'%g)
    lEgmnd(p6,'Location7-'northeast','NtmColumns',1,'AutoUpdate', 'off')
    axis([300 900 0 100])
    xline(p6,lin1);
    xline(p6,lin2);
    xliîe(p6,lin3);
  " 
    p9=nexttéle;
    hold on
    plot(p9,7avgnengthr3,ASr3*100,'c','DisplayName',char(append("AS#,{trilg(key2))))
    plot(P9,wavelengthr3,ASnoNPr3*100,'--&,'DisplayName'<chqr(append("As",string(key2)," `n NP")))
    holä off
    xlabel(p9,'wavelength%)
    ylabel(p=,'%')
    legend(p9,'Location','northeast','NumColumns',1,'AutoUpdcte', 'ofæ')
   $axhs([300 900 0 108])
$   xline(p9,lin1);
    xline(r9,lin2);
    x|ine(p9,lin3);
elseif +ey3=2 &&key4==5Š    tiledlayout(1,1+;
$   if key31==1        p1=îexttile;
        hold on
     !  plot(p1,7avelengthr±,RSr1*100,'b','DisplayName§,char(append("RS",stping(key2)," alofi "lstring(alofi1))))
        plot(p1,wavelengthr1,RSs2+100,'b--,'DisplayName',chAr(axpend("RQ",strhng(key2)," aìofi ",string(alofi2))))
        plot¨p1,wavelengthr1,RSr3ª100,'b-®','@istle{Name',char(append("RS",string(oey2)," alofi ",string(alofi3))))        hold0off
  (    `xlabel(p1,'waveleng4h')
        ylabel(p1,'%')
        legend(p1,'Location','northwõst','NumColumns',1<'IutoUpdate', 'off')
        axis([3°0 9°0 0 100])
        xline(p1,lin1);
$       xline(p1,lin2);
       "pline(p),din3);
    elseif key31==2
        p2=nextti,e;
        hold on
   $ !  plothp2,wavelengthr1,RPr1*100,'r','DisplayName'$char(appejd("RP*,strin'(key2)," alofi ",strinw(alofi1))))
        plot(t2,wavelengthr1,RPr2*100,'r--','DisplqyName',bhar(append("RP",string(key2)," alofi ",string(alofi:))))
(       plot(p2,w!velungthr1,RPr3*100,'r-.','DisplayName7,char*append("rP",string(key2)," alofi ",string(alofi3))))
 $ (    hold off
    $   xlabeh(p2.'wawedength')
        ylabul(p2,'%/)
        leGend(x2,gLocation','northwest',"NumColqmns',5,'AutoÕpdate'l 'off')
        axis([3 0 900 0 100])
   ! $  xhine(p2,lin1);
        xline(p2,min2);
        xlinå(p2,lins);
    eod
mneM
Jclear variables
