clc
clear all

n=0:15
a=2
b=3
N=length(n)
w1=[0:2*pi/16:2*pi-(2*pi/16)]
s1=cos(6*pi*n/N)
t=1:5
s2=[t zeros(1,11)]
figure()
[S1,w]=dtft(N,s1)
plot(w,S1)
hold on
k1=dft(N,s1)
stem(w1,k1)
figure()
[S2,w]=dtft(N,s2)
plot(w,S2)
hold on
k2=dft(N,s2)
stem(w1,k2)
figure()
S3=a*S1+b*S2
plot(w,S3)
s=a*s1+b*s2
S4=dtft(N,s)
figure()
plot(w,S4)
if (round(S3,2)-round(S4,2)==0)
    disp("Linear")
else
    disp("Non-Linear")
end
