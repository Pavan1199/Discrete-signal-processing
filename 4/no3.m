n1=0;
n2=10;
n3=0;
n4=4;
r1=[n1:n2];
x2=cos((pi*r1)/3);
 
r2=[n3:n4];
x1=[1,2,3,4,5];
w=[0:(2*pi)/1000:2*pi];
[y,n]=convol(x1,x2,n1,n2,n3,n4);
[w,y1]=dtftfunc(y,n,w) ;
[w,y2]=dtftfunc(x2,r1,w) ;
[w,y3]=dtftfunc(x1,r2,w) ;
y4=y3.*y2;
subplot(2,1,1)
b=round(abs(y4));
c=round(abs(y1));
plot(w,b)
grid on
title(" convolution property ")
xlabel("Function values")
ylabel("Frequency values")
subplot(2,1,2)
plot(w,c)
grid on
xlabel("Function values")
ylabel("Frequency values")
if(c==b)
    fprintf("Covolution property hold true ,Covolution in timedomain corresponds to multiplication in frequencydomain");
else
    fprintf("Covolution property does not  hold true ,Covolution in timedomain doesn't corresponds to multiplication in frequencydomain");
end
