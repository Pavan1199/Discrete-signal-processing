N=16; 
n=[0:N-1]; 
n1=0; 
n2=2*pi*(1-(1/N)); 
n3=0; 
n4=2*pi*(1-(1/N)); 
  
x1=cos((6*pi*n)/N); 
x2=[1,2,3,4,5,zeros(1,11)]; 
w=[0:(2*pi)/1000:2*pi]; 
a=1; 
b=2; 
z1=a*x1; 
z2=b*x2; 
[w,y1]=dtftfunc(N,z1,n,w); 
[w,y2]=dtftfunc(N,z2,n,w); 
subplot(2,1,1) 
 
y=y1+y2; 
plot(w,abs(y)); 
grid on
title(" Linearity property  ")
xlabel("function values")
ylabel("frequency values")
 
z3=z1+z2; 
[w,y3]=dtftfunc(N,z3,n,w); 
subplot(2,1,2) 
plot(w,abs(y3)); 
grid on
 
xlabel("function values")
ylabel("frequency values")
 
if(round(y)==round(y3)) 
    fprintf(" Linearity property is proved ") 
else 
    fprintf(" Linearity property is not proved ") 
end 
