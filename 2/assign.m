clc
clear

t=[-10:.01:10]
x=exp(-t.^2);

figure()
plot(t,x)

s=.01
h=exp(-(t.^2)/s^2);

y=conv(x,h,'same')

figure()

plot(t,y)

s=.1
h=exp(-(t.^2)/s^2);

y=conv(x,h,'same')

figure()

plot(t,y)

s=1
h=exp(-(t.^2)/s^2)/pi^.5;

y=conv(x,h,'same')

figure()

plot(t,y)

s=10
h=exp(-(t.^2)/s^2);

y=conv(x,h,'same')

figure()

plot(t,y)
