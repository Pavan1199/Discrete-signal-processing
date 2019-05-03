clear all
clc

t=0:.001:.5;
f=50;
a=1;
y1=a*sin(2*pi*f*t);
subplot(4,1,1)

plot(t,y1);
title('Signal y1(t)')
xlabel('time(t)');
ylabel('y1(t)');
fs=8000;
n=0:319;
ts=1/fs;
y2=a*sin(2*pi*f*n*ts);
subplot(4,1,2)

stem(n*ts,y2);
title('Sampled Signal y2(t)')
xlabel('time(t)');
ylabel('y2(t)');
f=1000;
a=1;
fs=8000;
n=0:319;
ts=1/fs;
y3=a*sin(2*pi*f*n*ts);
subplot(4,1,3)
stem(n*ts,y3);
title('Second Sampled Signal y3(t)')
xlabel('time(t)');
ylabel('y3(t)');
z=y2.*y3;
subplot(4,1,4)
stem(n*ts,z);
title('Multiplied Signal z(t)')
xlabel('time(t)');
ylabel('z(t)');