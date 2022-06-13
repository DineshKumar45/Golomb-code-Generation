%MATLAB CODE:
clc;
close all;
clear all;
L=16;
c=2*pi/L;
for a=1:L
    phi(a)=(c*((a-1)/2)*a) %Phase modulation function of GOLOMB CODE
end;
phi
fc=100;
Tc=1/fc;
dur=5*Tc;
ts=0.0001;
t=0:ts:dur;
A=1;
x=[]
i=sqrt(-1);
for a=1:L
    %Transmitted Polyphase coded Radar signal
    s=A*(cos(2*pi*fc*t+phi(a))+i*sin(2*pi*fc*t+phi(a)));
    x=[x,s];
end;
subplot(2,2,1);
plot(real(x));
xlabel(&#39;t&#39;);
ylabel(&#39;s(t)&#39;);
title(&#39;Phases of real part of s(t)&#39;);
subplot(2,2,2);
plot(imag(x));
xlabel(&#39;t&#39;);
ylabel(&#39;s(t)&#39;);
title(&#39;phases of imaginary part of s(t)&#39;);
subplot(2,2,3);
plot(real(x),imag(x));
xlabel(&#39;t&#39;);
ylabel(&#39;s(t)&#39;);
title(&#39;Transitted polyphase coded Radar signal&#39;);
grid on;
