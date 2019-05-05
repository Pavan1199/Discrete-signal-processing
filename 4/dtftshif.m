
function[n,w,y]=dtftshif(x,n,w,ns) 
 n=n-ns;
y=zeros(1,length(w)); 
for k=(1:length(w)) 
    for a=1:length(n) 
        y(k)=y(k)+x(a)*exp(-1i*w(k)*n(a)); 
    end 
end 