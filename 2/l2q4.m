clc
clear

sym('z')
X=str2sym('(z*(z-2))/((z-.2)*(z-.6))')
x=iztrans(X)

a=[1 -2 0]
b=[1 -.8 .12]
figure()
impz(a,b)

sym('z')
X=str2sym('(z*(z+2))/(z*z+.4*z-.12)')
x=iztrans(X)

a=[1 2 0]
b=[1 .4 -.12]
figure()
impz(a,b)