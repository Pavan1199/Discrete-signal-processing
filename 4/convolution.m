function[y,n]=convolution(x,a,n1,n2,n3,n4)
y=conv(x,a)
n=[(n1+n3):(n2+n4)];
