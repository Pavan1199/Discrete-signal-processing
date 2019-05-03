clear all
clc

t=0:.001:1;
f=10;
a=5;
y=a*sin(2*pi*f*t);
subplot(2,1,1)
plot(t,y);
title('5sin(10*pi*t)');
xlabel('time(t)');
ylabel('amplitude(y(t))');
fs=25;
n=0:79;
ts=1/fs;
y=a*sin(2*pi*f*n*ts);
subplot(2,1,2)
stem(n*ts,y);
title('5sin(10*pi*n*ts)');
xlabel('time(n)');
ylabel('amplitude(y(n))');
