clear all
clc

t=0:.001:.4;
f1=10;
f2=15;
a1=3;
a2=-2
y1=a1*cos(2*pi*f1*t)+a2*sin(2*pi*f2*t);
subplot(5,1,1)

plot(t,y1);
title('y1');
xlabel('time(t)');
ylabel('y1(t)');
fs=120
n=0:99
ts=1/fs;
y2=a1*cos(2*pi*f1*n*ts)+a2*sin(2*pi*f2*n*ts);
subplot(5,1,2)
stem(n*ts,y2);
title('y2');
xlabel('time(n)');
ylabel('y2(n)');
fs=60
n=0:99
ts=1/fs;
y3=a1*cos(2*pi*f1*n*ts)+a2*sin(2*pi*f2*n*ts);
subplot(5,1,3)
stem(n*ts,y3);
title('y3');
xlabel('time(n)');
ylabel('y3(n)');

fs=30
n=0:99
ts=1/fs;
y4=a1*cos(2*pi*f1*n*ts)+a2*sin(2*pi*f2*n*ts);
subplot(5,1,4)
stem(n*ts,y4);
title('y4');
xlabel('time(n)');
ylabel('y4(n)');
fs=15
n=0:99
ts=1/fs;
y5=a1*cos(2*pi*f1*n*ts)+a2*sin(2*pi*f2*n*ts);
subplot(5,1,5)
stem(n*ts,y5);
title('y5');
xlabel('time(n)');
ylabel('y5(n)');

