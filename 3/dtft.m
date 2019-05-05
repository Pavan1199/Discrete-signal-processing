function [X]=dtft(N,x,w)
n1=0:N-1
X=zeros(1,length(w))
for k=1:length(w)
    for n=1:N
        X(k)=X(k)+x(n)*exp(-j*w(k)*n1(n));
    end
end

    