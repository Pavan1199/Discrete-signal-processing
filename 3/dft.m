function [X]=dft(N,x)
n1=0:N-1
X=zeros(1,length(n1))
for k=1:N
    for n=1:N
        X(k)=X(k)+x(n)*exp(-j*2*pi*(k-1)*n1(n)/N);
    end
end

    