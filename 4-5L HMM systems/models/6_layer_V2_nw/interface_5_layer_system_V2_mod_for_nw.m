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
dep=1;     %thickness of layer 2
% dep=(4*pi*Rad^3)/(3*a^2); %thickness of layer 2 now disernable diffrentce to when set = 1

nwa=key2/10;
ucA=10;


if key4==1 %varying R
    [hs1,hs2,hs3]=deal(hs);
    [Rad1,Rad2,Rad3]=deal(10,20,30);
    Latc=num2cell((aconst.*[Rad1, Rad2, Rad3]).');
    [a1, a2, a3]=Latc{1:6,1};
    [hf1,hf2,hf3]=deal(hf);
    [alofi1,alofi2,alofi3]=deal(alofi);
    ver="R=";
    [ver1,ver2,ver3]=deal(Rad1,Rad2,Rad3);
elseif key4==2 %varying a
    [hs1,hs2,hs3]=deal(hs);
    [Rad1,Rad2,Rad3]=deal(Rad);
    [hf1,hf2,hf3]=deal(hf);
    [alofi1,alofi2,alofi3]=deal(alofi);
    [a1,a2,a3]=deal(Rad*2.5,Rad*3,Rad*3.5);
    ver="a=Rx";
    [ver1,ver2,ver3]=deal(2.5,3,3.5);
elseif key4==3  %varying hs
    [hs1,hs2,hs3]=deal(1,4,20);
    [Rad1,Rad2,Rad3]=deal(Rad);
    [hf1,hf2,hf3]=deal(hf);
    [alofi1,alofi2,alofi3]=deal(alofi);
    [a1,a2,a3]=deal(Rad*aconst);
    ver="hs=";
    [ver1,ver2,ver3]=deal(hs1,hs2,hs3);
elseif key4==4  %varying hf
    [hs1,hs2,hs3]=deal(hs);
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
    elseif key5==2
        eta=var1r1;
        epsper4=var2r1{1};
        epspll4=var2r1{2};
        eps4sq=var2r1{3};
        sqeps4sq=var2r1{4};
        
        p2=nexttile;
        hold on
        plot(p2,wavelengthr1,real(epsper4),'r','DisplayName',char(append("R",string(key2), "real(epsper)")))
        plot(p2,wavelengthr1,real(epspll4),'g','DisplayName',char(append("R",string(key2), "real(epspll)")))
        hold off
        xlabel(p2,'wavelength')
        ylabel(p2,'%')
        legend(p2,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
        axis([300 900 -inf inf])
        yline(p2,0);
        xline(p2,lin1);
        xline(p2,lin2);
        xline(p2,lin3);
    elseif key31==1 &&key5==3
        p1=nexttile;
        hold on
        plot(p1,wavelengthr1,RSnoNPr1*100,'r--','DisplayName',char(append("RS",string(key2),"  no NP")))
        plot(p1,wavelengthr1,TSnoNPr1*100,'g--','DisplayName',char(append("TS",string(key2),"  no NP")))
        plot(p1,wavelengthr1,ASnoNPr1*100,'c--','DisplayName',char(append("AS",string(key2),"  no NP")))
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
    plot(p1,wavelengthr1,RSnoNPr1*100,'--','DisplayName',char(append("RS",string(key2),"  no NP")))
    hold off
    xlabel(p1,'wavelength')
    ylabel(p1,'%')
    legend(p1,'Location','northeast','NumColumns',1,'AutoUpdate', 'off')
    title(p1,string(append(string(ver),string(ver1))))
    axis([300 900 0 100])
    xline(p1,lin1);
    xline(p1,lin2);
    xline(p1,lin3);
    
    p4=nexttile;
    hold on
    plot(p4,wavelengthr2,RSr2*100,'r','DisplayName',char(append("RS",string(key2))))
    plot(p4,wavelengthr2,RSnoNPr2*100,'--','DisplayName',char(append("RS",string(key2),"  no NP")))
    hold off
    xlabel(p4,'wavelength')
    ylabel(p4,'%')
    legend(p4,'Location','northeast','NumColumns',1,'AutoUpdate', 'off')
    title(p4,string(append(string(ver),string(ver2))))
    axis([300 900 0 100])
    xline(p4,lin1);
    xline(p4,lin2);
    xline(p4,lin3);
    
    p7=nexttile;
    hold on
    plot(p7,wavelengthr3,RSr3*100,'r','DisplayName',char(append("RS",string(key2))))
    plot(p7,wavelengthr3,RSnoNPr3*100,'--','DisplayName/,char(ap`end("RS"(st2ing(kdy2	," "fo NP")))
    hold /gf
    xlabel(p7,wavelength')
    ylabel(p7,'%&)
    lege.d(p7,'Locatiof','nobtheast','NumColu-ns',1,'AutoUpdate',$'off'i    title(p7,string(append(string(ver),string(ver3!	()
    axis*[300 900 0 100])
    tline(p7,lin1);
    xline(p7,lin2);
    xline(p7,lin3);
    
    q2=nexttile;
    hold on
    plot(p,savelengthr1-TSr1*100,'g'<'DisplayName',Char(append("TS",string(key2))))
0   plot(p2,wawelengthr1,TSnoNPr1*100,'--','ÄisplayName',chav(append("TS",string(key2), "no NÐ")))
    hold off
    xlabel(p2,'waveltngth§)
    ylabel(p2,'%')
    legend(p",'Lncation','northwest','NqmColumns',1,'AutoUpdate', 'off')
    axis(Û300 900 0 100])
 (  ønine(p2-lin1);
$   xline(p2,lin2);
    xline(p6,din3);
    
    p55nextthlm;
    hold on
    plov(p5,wavelengthr2,TSr2*100,'g','DisplayName',cher*appe~d("TS‚,stri.gikey2))))    plot(p5,wavelengthr2,TSnoNPr2*100,'--','DisplayName',char(appEnd("TS",string(key2),"  nm NP")))
    hold o&f
    xlabel(p5,'wavelength')
    ylabel(p5,'%')
    legend(p5,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
    axis([300 900 0 100])
    xline(p5,lin1);
    xline(p5,lin2);
    xline(p5,lin3);
    
    p8=nexttile;
    hold on
    plot(p8,wavelengthr3,TSr3*100,'g','DisplayName',char(append("TS",string(key2))))
    plot(p8,wavelengthr3,TSnoNPr3*100,'--','DisplayName',char(append("TS",string(key2),"  no NP")))
    hold off
    xlabel(p8,'wavelength')
    ylabel(p8,'%')
    legend(p8,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
    axis([300 900 0 100])
    xline(p8,lin1);
    xline(p8,lin2);
    xline(p8,lin3);
    
    p3=nexttile;
    hold on
    plot(p3,wavelengthr1,ASr1*100,'c','DisplayName',char(append("AS",string(key2))))
    plot(p3,wavelengthr1,ASnoNPr1*100,'--','DisplayName',char(append("AS",string(key2),"  no NP")))
    hold off
    xlabel(p3,'wavelength')
    ylabel(p3,'%')
    legend(p3,'Location','northeast','NumColumns',1,'AutoUpdate', 'off')
    axis([300 900 0 100])
    xline(p3,lin1);
    xline(p3,lin2);
    xline(p3,lin3);
    
    p6=nexttile;
    hold on
    plot(p6,wavelengthr2,ASr2*100,'c','DisplayName',char(append("AS",string(key2))))
    plot(p6,wavelengthr2,ASnoNPr2*100,'--','DisplayName',char(append("AS",string(key2),"  no NP")))
    hold off
    xlabel(p6,'wavelength')
    ylabel(p6,'%')
    legend(p6,'Location','northeast','NumColumns',1,'AutoUpdate', 'off')
    axis([300 900 0 100])
    xline(p6,lin1);
    xline(p6,lin2);
    xline(p6,lin3);
    
    p9=nexttile;
    hold on
    plot(p9,wavelengthr3,ASr3*100,'c','DisplayName',char(append("AS",string(key2))))
    plot(p9,wavelengthr3,ASnoNPr3*100,'--','DisplayName',char(append("AS",string(key2),"  no NP")))
    hold off
    xlabel(p9,'wavelength')
    ylabel(p9,'%')
    legend(p9,'Location','northeast','NumColumns',1,'AutoUpdate', 'off')
    axis([300 900 0 100])
    xline(p9,lin1);
    xline(p9,lin2);
    xline(p9,lin3);
elseif key3==2 &&key4==5
    tiledlayout(1,1);
    if key31==1
        p1=nexttile;
        hold on
        plot(p1,wavelengthr1,RSr1*100,'b','DisplayName',char(append("RS",string(key2)," alofi ",string(alofi1))))
        plot(p1,wavelengthr1,RSr2*100,'b--','DisplayName',char(append("RS",string(key2)," alofi ",string(alofi2))))
        plot(p1,wavelengthr1,RSr3*100,'b-.','DisplayName',char(append("RS",string(key2)," alofi ",string(alofi3))))
        hold off
        xlabel(p1,'wavelength')
        ylabel(p1,'%')
        legend(p1,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
        axis([300 900 0 100])
        xline(p1,lin1);
        xline(p1,lin2);
        xline(p1,lin3);
    elseif key31==2
        p2=nexttile;
        hold on
        plot(p2,wavelengthr1,RPr1*100,'r','DisplayName',char(append("RP",string(key2)," alofi ",string(alofi1))))
        plot(p2,wavelengthr1,RPr2*100,'r--','DisplayName',char(append("RP",string(key2)," alofi ",string(alofi2))))
        plot(p2,wavelengthr1,RPr3*100,'r-.','DisplayName',char(append("RP",string(key2)," alofi ",string(alofi3))))
        hold off
        xlabel(p2,'wavelength')
        ylabel(p2,'%')
        legend(p2,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
        axis([300 900 0 100])
        xline(p2,lin1);
        xline(p2,lin2);
        xline(p2,lin3);
    end
end

clear variables
