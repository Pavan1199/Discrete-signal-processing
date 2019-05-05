function [X,w]=dtft(N,x)
n1=0:N-1
w=0:2*pi/1000:2*pi-(2*pi/1000);
X=zeros(1,length(w))
for k=1:length(w)
    for n=1:N
        X(k)=X(k)+x(n)*exp(-j*w(k)*n1(n));
    end
end

    