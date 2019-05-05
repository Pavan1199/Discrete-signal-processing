function [x,n1]=idtft(X,N)
n1=0:N-1
x=zeros(1,length(n1))
for n=1:length(n1)
    for k=1:N
        x(n)=x(n)+X(k)*exp(j*2*pi*(k-1)*n1(n)/N);
    end
end
x=x/N