clc
clear all

x=0:5
n=x
% y=fft(x)
% stem(y)
N=8
w=0:2*pi/8:2*pi-(2*pi/8);
[X]=dtft(N,x,w)
plot(w,X)