clc
clear all

X=[6 -2+2j -2 -2-2j]
N=length(X)
[x,n]=idtft(X,N)
stem(n,x)
title('IDFT of signal');
xlabel('time(n)');
ylabel('x(n)');