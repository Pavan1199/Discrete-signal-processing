clc
clear all

n=0:15;
N=16;
x=cos((6*pi*n)/N);
w=0:2*pi/1000:2*pi-(2*pi/1000);
[X]=dtft(N,x,w);
plot(w,abs(X))
title('DTFT and DFT of signal');
xlabel('frequency(w)');
ylabel('amplitude(|X(w)|)');
hold on
w1=[0:2*pi/16:2*pi-(2*pi/16)];
[X]=dft(N,x);
stem(w1,abs(X))