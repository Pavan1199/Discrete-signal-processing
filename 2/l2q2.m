clc
clear

a=[2 -1 13.4 -7.7 9]% roots(a)
b=[4 7.2 2 -.8 8]% roots(b)
[z,p]=tf2zp(a,b)
zplane(z,p)