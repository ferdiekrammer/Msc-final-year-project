%spectrum_anisotropic_nw_V2(R,d,hs,alofi,nwa,ucA)
%keys
key1=2; %controles what the image charge screening factor (eta) is: if 1 eta contains the imaginary parts if 0.5 eta contains only the real parts if 0 then eta is 0 is on or off 
key2=2; %determines what is being varies in each run (1 is for R, 2 is for a, 3 is for hs)
key3=35; %determinse what the fill fraction is each time (0,15,35,50,65,80,100)
key4=1; %controles the graphs ploted: 1 all RS plots at 0 degrees one one plot (if 0.5 only plots 3 in the middle for a), 2 gives either the plots for the first half or second half of the variables for aloi=0,20,60 
key5=1; %for first half we use 1 for second we use 2
key6=0; %location of the ledgend (0: topleft, 1: topright 2: bottomright)
%constants
Rad=20;    %radius of NP
dep=1;     %thickness of layer 2
hs=1;      %hight of layer 3
% alofi=0;   %angel of incident light
a=Rad*3;   %lattice constant

if key2==1 %varying R
    [hs1,hs2,hs3,hs4,hs5,hs6]=deal(hs);
    [Rad1,Rad2,Rad3,Rad4,Rad5,Rad6]=deal(5,10,15,20,25,30);
    Latc=num2cell((3.*[Rad1, Rad2, Rad3, Rad4, Rad5, Rad6]).');
    [a1, a2, a3, a4, a5, a6]=Latc{1:6,1};
    ver="R=";
    [ver1,ver2,ver3,ver4,ver5,ver6]=deal(Rad1,Rad2,Rad3,Rad4,Rad5,Rad6);
elseif key2==2 %varying a
    [hs1,hs2,hs3,hs4,hs5,hs6]=deal(hs);
    [Rad1,Rad2,Rad3,Rad4,Rad5,Rad6]=deal(Rad);
    [a1,a2,a3,a4,a5,a6]=deal(Rad*2.2,Rad*2.5,Rad*2.7,Rad*3,Rad*5,Rad*3.5);
    ver="a=Rx";
    [ver1,ver2,ver3,ver4,ver5,ver6]=deal(2.2,2.5,2.7,3,5,3.5);
elseif key2==3
    [hs1,hs2,hs3,hs4,hs5,hs6]=deal(1,2,5,10,15,20);
    [Rad1,Rad2,Rad3,Rad4,Rad5,Rad6]=deal(Rad);
    [a1,a2,a3,a4,a5,a6]=deal(Rad*3);
    ver="hs=";
    [ver1,ver2,ver3,ver4,ver5,ver6]=deal(1,2,5,10,15,20);
end
% fill fraction determination 
nwa=key3/10;
ucA=10;
RS=append("RS",string(key3));
RP=append("RP",string(key3));

alofi1=0;
alofi2=20;
alofi3=60;

%plot data key1=1
%angli=0
[RSr11,RPr11,wavelength0r11,epsper0r11,epspll0r11]=spectrum_anisotropic_nw_V2(Rad1,dep,hs1,alofi1,a1,nwa,ucA,key1);
[RSr21,RPr21,wavelength0r21,epsper0r21,epspll0r21]=spectrum_anisotropic_nw_V2(Rad2,dep,hs2,alofi1,a2,nwa,ucA,key1);
[RSr31,RPr31,wavelength0r31,epsper0r31,epspll0r31]=spectrum_anisotropic_nw_V2(Rad3,dep,hs3,alofi1,a3,nwa,ucA,key1);
[RSr41,RPr41,wavelength0r41,epsper0r41,epspll0r41]=spectrum_anisotropic_nw_V2(Rad4,dep,hs4,alofi1,a4,nwa,ucA,key1);
[RSr51,RPr51,wavelength0r51,epsper0r51,epspll0r51]=spectrum_anisotropic_nw_V2(Rad5,dep,hs5,alofi1,a5,nwa,ucA,key1);
[RSr61,RPr61,wavelength0r61,epsper0r61,epspll0r61]=spectrum_anisotropic_nw_V2(Rad6,dep,hs6,alofi1,a6,nwa,ucA,key1);
%angli=20
[RSr12,RPr12,wavelength0r12,epsper0r12,epspll0r12]=spectrum_anisotropic_nw_V2(Rad1,dep,hs1,alofi2,a1,nwa,ucA,key1);
[RSr22,RPr22,wavelength0r22,epsper0r22,epspll0r22]=spectrum_anisotropic_nw_V2(Rad2,dep,hs2,alofi2,a2,nwa,ucA,key1);
[RSr32,RPr32,wavelength0r32,epsper0r32,epspll0r32]=spectrum_anisotropic_nw_V2(Rad3,dep,hs3,alofi2,a3,nwa,ucA,key1);
[RSr42,RPr42,wavelength0r42,epsper0r42,epspll0r42]=spectrum_anisotropic_nw_V2(Rad4,dep,hs4,alofi2,a4,nwa,ucA,key1);
[RSr52,RPr52,wavelength0r52,epsper0r52,epspll0r52]=spectrum_anisotropic_nw_V2(Rad5,dep,hs5,alofi2,a5,nwa,ucA,key1);
[RSr62,RPr62,wavelength0r62,epsper0r62,epspll0r62]=spectrum_anisotropic_nw_V2(Rad6,dep,hs6,alofi2,a6,nwa,ucA,key1);
%angli=60
[RSr13,RPr13,wavelength0r13,epsper0r13,epspll0r13]=spectrum_anisotropic_nw_V2(Rad1,dep,hs1,alofi3,a1,nwa,ucA,key1);
[RSr23,RPr23,wavelength0r23,epsper0r23,epspll0r23]=spectrum_anisotropic_nw_V2(Rad2,dep,hs2,alofi3,a2,nwa,ucA,key1);
[RSr33,RPr33,wavelength0r33,epsper0r33,epspll0r33]=spectrum_anisotropic_nw_V2(Rad3,dep,hs3,alofi3,a3,nwa,ucA,key1);
[RSr43,RPr43,wavelength0r43,epsper0r43,epspll0r43]=spectrum_anisotropic_nw_V2(Rad4,dep,hs4,alofi3,a4,nwa,ucA,key1);
[RSr53,RPr53,wavelength0r53,epsper0r53,epspll0r53]=spectrum_anisotropic_nw_V2(Rad5,dep,hs5,alofi3,a5,nwa,ucA,key1);
[RSr63,RPr63,wavelength0r63,epsper0r63,epspll0r63]=spectrum_anisotropic_nw_V2(Rad6,dep,hs6,alofi3,a6,nwa,ucA,key1);

[RSrnoNP,RPrnoNP,wavelength0rnoNP,epsper0rnoNP,epspll0rnoNP]=spectrum_anisotropic_nw_V2(0.000001,dep,hs,alofi1,a,nwa,ucA,key1);

figure;
if key4==1 || key4==0.5
    tiledlayout(1,1);
else
    tiledlayout(3,3);
end
p1=nexttile;
hold on
if key4==1
    plot(p1,wavelength0r11,RSr11*100,'DisplayName',char(append(RS,', ',ver,string(ver1))));
    plot(p1,wavelength0r21,RSr21*100,'DisplayName',char(append(RS,', ',ver,string(ver2))));
    plot(p1,wavelength0r31,RSr31*100,'DisplayName',char(append(RS,', ',ver,string(ver3))));
    plot(p1,wavelength0r41,RSr41*100,'DisplayName',char(append(RS,', ',ver,string(ver4))));
    plot(p1,wavelength0r51,RSr51*100,'DisplayName',char(append(RS,', ',ver,string(ver5))));
%     plot(p1,wavelength0r61,RSr61*100,'DisplayName',char(append(RS,', ',ver,string(ver6))));
    %no NP curve
    plot(p1,wavelength0rnoNP,RSrnoNP*100,'--','DisplayName',char(append(RS,', no NP')));
elseif key4==0.5
    plot(p1,wavelength0r31,RSr31*100,'DisplayName',char(append(RS,', ',ver,string(ver3))));
    plot(p1,wavelength0r41,RSr41*100,'DisplayName',char(append(RS,', ',ver,string(ver4))));
    plot(p1,wavelength0r51,RSr51*100,'DisplayName',char(append(RS,', ',ver,string(ver5))));
else
    if key5==1
        plot(p1,wavelength0r11,RSr11*100,'DisplayName',char(append(RS,', ',ver,string(ver1))));
        plot(p1,wavelength0r11,RPr11*100,'DisplayName',char(append(RP,', ',ver,string(ver1))));
    elseif key5==2
        plot(p1,wavelength0r41,RSr41*100,'DisplayName',char(append(RS,', ',ver,string(ver4))));
        plot(p1,wavelength0r41,RPr41*100,'DisplayName',char(append(RP,', ',ver,string(ver4))));
    end
end
hold off
xlabel(p1,'wavelength (nm)')
ylabel(p1,'Reflectance %')

if key6==0
    legend(p1,'Location','northwest','NumColumns',1,'AutoUpdate', 'off')
elseif key6==1
    legend(p1,'Location','northeast','NumColumns',1,'AutoUpdate', 'off')
elseif key6==2
    legend(p1,'Location','southeast','NumColumns',1,'AutoUpdate', 'off')
end 
xline(p1,370)
xline(p1,517.5)
xline(p1,541)
axis(p1,[300 900 0 100])

if key4==2
    p2=nexttile;
    hold on
    if key5==1
        plot(p2,wavelength0r21,RSr21*100,'DisplayName',char(append(RS,', ',ver,string(ver2))));
        plot(p2,wavelength0r21,RPr21*100,'DisplayName',char(append(RP,', ',ver,string(ver2))));
    elseif key5==2
        plot(p2,wavelength0r51,RSr51*100,'DisplayName',char(append(RS,', ',ver,string(ver5))));
        plot(p2,wavelength0r51,RPr51*100,'DisplayName',char(append(RP,', ',ver,string(ver5))));
    end
    hold off
    xlabel(p2,'wavelength')
    ylabel(p2,'%')
    legend(p2,'Location','southeast','NumColumns',1)
    axis(p2,[300 900 -1 101])
    
    p3=nexttile;
    hold on
    if key5==1
        plot(p3,wavelength0r31,RSr31*100,'DisplayName',char(append(RS,', ',ver,string(ver3))));
        plot(p3,wavelength0r31,RPr31*100,'DisplayName',char(append(RP,', ',ver,string(ver3))));
    elseif key5==2
        plot(p3,wavelength0r41,RSr61*100,'DisplayName',char(append(RS,', ',ver,string(ver6))));
        plot(p3,wavelength0r41,RPr61*100,'DisplayName',char(append(RP,', ',ver,string(ver6))));
    end
    hold off
    xlabel(p3,'wavelength')
    ylabel(p3,'%')
    legend(p3,'Location','northwest','NumColumns',1)
    axis(p3,[300 900 -1 101])
    
    p4=nexttile;
    hold on
    if key5==1
        plot(p4,wavelength0r12,RSr12*100,'DisplayName',char(append(RS,', ',ver,string(ver1))));
        plot(p4,wavelength0r12,RPr12*100,'DisplayName',char(append(RP,', ',ver,string(ver1))));
    elseif key5==2
        plot(p4,wavelength0r12,RSr42*100,'DisplayName',char(append(RS,', ',ver,string(ver4))));
        plot(p4,wavelength0r12,RPr42*100,'DisplayName',char(append(RP,', ',ver,string(ver4))));
    end
    hold off
    title(p4,'alofi=20')
    xlabel(p4,'wavelength')
    ylabel(p4,'%')
    legend(p4,'Location','southeast','NumColumns',1)
    axis(p4,[300 900 -1 101])
    
    p5=nexttile;
    hold on
    if key5==1
        plot(p5,wavelength0r22,RSr22*100,'DisplayName',char(append(RS,', ',ver,string(ver2))));
        plot(p5,wavelength0r22,RPr22*100,'DisplayName',char(append(RP,', ',ver,string(ver2))));
    elseif key5==2
        plot(p5,wavelength0r52,RSr52*100,'DisplayName',char(append(RS,', ',ver,string(ver5))));
        plot(p5,wavelength0r52,RPr52*100,'DisplayName',char(append(RP,', ',ver,string(ver5))));
    end
    hold off
    title(p5,'alofi=20')
    xlabel(p5,'wavelength')
    ylabel(p5,'%')
    legend(p5,'Location','northwest','NumColumns',1)
    axis(p5,[300 900 -1 101])
    
    p6=nexttile;
    hold on
    if key5==1
        plot(p6,wavelength0r32,RSr32*100,'DisplayName',char(append(RS,', ',ver,string(ver3))));
        plot(p6,wavelength0r32,RPr32*100,'DisplayName',char(append(RP,', ',ver,string(ver3))));
    elseif key5==2
        plot(p6,wavelength0r62,RSr62*100,'DisplayName',char(append(RS,', ',ver,string(ver6))));
        plot(p6,wavelength0r62,RPr62*100,'DisplayName',char(append(RP,', ',ver,string(ver6))));
    end
    hold off
    title(p6,'alofi=20')
    xlabel(p6,'wavelength')
    ylabel(p6,'%')
    legend(p6,'Location','northwest','NumColumns',1)
    axis(p6,[300 900 -1 101])
    
    p7=nexttile;
    hold on
    if key5==1
        plot(p7,wavelength0r13,RSr13*100,'DisplayName',char(append(RS,', ',ver,string(ver1))));
        plot(p7,wavelength0r13,RPr13*100,'DisplayName',char(append(RP,', ',ver,string(ver1))));
    elseif key5==2
        plot(p7,wavelength0r43,RSr43*100,'DisplayName',char(append(RS,', ',ver,string(ver4))));
        plot(p7,wavelength0r43,RPr43*100,'DisplayName',char(append(RP,', ',ver,string(ver4))));
    end
    hold off
    title(p7,'alofi=60')
    xlabel(p7,'wavelength')
    ylabel(p7,'%')
    legend(p7,'Location','southeast','NumColumns',1)
    axis(p7,[300 900 -1 101])
    
    p8=nexttile;
    hold on
    if key5==1
        plot(p8,wavelength0r23,RSr23*100,'DisplayName',char(append(RS,', ',ver,string(ver2))));
        plot(p8,wavelength0r23,RPr23*100,'DisplayName',char(append(RP,', ',ver,string(ver2))));
    elseif key5==2
        plot(p8,wavelength0r53,RSr53*100,'DisplayName',char(append(RS,', ',ver,string(ver5))));
        plot(p8,wavelength0r53,RPr53*100,'DisplayName',char(append(RP,', ',ver,string(ver5))));
    end
    hold off
    title(p8,'alofi=60')
    xlabel(p8,'wavelength')
    ylabel(p8,'%')
    legend(p8,'Location','southeast','NumColumns',1)
    axis(p8,[300 900 -1 101])
    
    p9=nexttile;
    hold on
    if key5==1
        plot(p9,wavelength0r33,RSr33*100,'DisplayName',char(append(RS,', ',ver,string(ver3))));
        plot(p9,wavelength0r33,RPr33*100,'DisplayName',char(append(RP,', ',ver,string(ver3))));
    elseif key5==2
        plot(p9,wavelength0r43,RSr63*100,'DisplayName',char(append(RS,', ',ver,string(ver6))));
        plot(p9,wavelength0r43,RPr63*100,'DisplayName',char(append(RP,', ',ver,string(ver6))));
    end
    hold off
    title(p9,'alofi=60')
    xlabel(p9,'wavelength')
    ylabel(p9,'%')
    legend(p9,'Location','northwest','NumColumns',1)
    axis(p9,[300 900 -1 101])
else
end

clear variables