function [X]=dft(N,x)
n1=0:N-1
k1=0:length(x)-1
X=zeros(1,length(n1))
for n=1:N
    for k=1:length(x)
        X(n)=X(n)+x(k)*exp((-1i*2*pi*n1(n)*k1(k))/N);
    end
end