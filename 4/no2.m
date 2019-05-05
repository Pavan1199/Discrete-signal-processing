n=[0:4];
shift=3;
x=[1,2,3,4,5];
w=[0:(2*pi)/1000:2*pi];
[n1,w,y1]=dtftshif(x,n,w,shift) ;
n=[0:4];
 
[n2,w,y2]=dtftshif(x,n,w,0) ;
k=round(abs(exp(-1j*w*shift).*(y2)));
l=round(abs(y1));
subplot(2,1,1)
plot(w,(k));
 
 
grid on
title(" Time shifting property ")
xlabel("Function values")
ylabel("Frequency values")
 
subplot(2,1,2)
plot(w,(l));
grid on
 
xlabel("Function values")
ylabel("Frequency values")
 
if(k==l)
    fprintf("Time shifting property hold true");
else
    fprintf("Time shifting property does not hold true");
        
end
