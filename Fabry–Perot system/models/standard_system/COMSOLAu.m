function eps = COMSOLAu(w)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
ein=5.9752;
o=8.8667;
d=0.03799;
eps=ein-(o^2)/(w*(w+1i*d))+1.76*(3.6^2)/((3.6^2)-w^2-1.3*w*1i)+0.952*(2.8^2)/((2.8^2)-w^2-0.737*w*1i);
end

