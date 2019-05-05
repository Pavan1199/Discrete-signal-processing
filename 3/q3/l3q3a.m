clc
clear all

x=0:5;
n=x;
N=8;
w=0:N-1;
[X]=dft(N,x)
stem(w,abs(X))
title('DFT of signal');
xlabel('frequency(w)');
ylabel('amplitude(|X(w)|)');
[xr,n1]=idtft(X,N);
figure()
stem(n1,xr)
title('Reconstructed signal');
xlabel('time(n)');
ylabel('xr(n)');