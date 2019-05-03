clear all
clc
f=1
t=-1:.01:1;
x=sin(2*pi*f*t)


fs=4
fc=2
ts=1/fs
N=2
n=-N:N
x1=sin(2*pi*f*n*ts);

y=zeros(1,length(t));

for j=1:length(t)
   
    for k=1:length(n)
        y(j)=y(j)+2*(fc/fs)*x1(k)*sinc(2*fc*(t(j)-n(k)*ts));
        
    end
    
end

subplot(311)
plot(t,y)
title('a');
xlabel('time(t)');
ylabel('y(t)');

fs=16
fc=8
ts=1/fs
N=16
n=-N:N
x1=sin(2*pi*f*n*ts);

y=zeros(1,length(t));

for j=1:length(t)
   
    for k=1:length(n)
        y(j)=y(j)+2*(fc/fs)*x1(k)*sinc(2*fc*(t(j)-n(k)*ts));
        
    end
    
end

subplot(312)
plot(t,y)
title('b');
xlabel('time(t)');
ylabel('y(t)');

fs=8
fc=4
ts=1/fs
N=4
n=-N:N
x1=sin(2*pi*f*n*ts);

y=zeros(1,length(t));

for j=1:length(t)
   
    for k=1:length(n)
        y(j)=y(j)+2*(fc/fs)*x1(k)*sinc(2*fc*(t(j)-n(k)*ts));
        
    end
    
end

subplot(313)
plot(t,y)
title('c');
xlabel('time(t)');
ylabel('y(t)');



