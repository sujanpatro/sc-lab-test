y1=[]; 
y2=[]; 
y3=[]; 
y4=[]; 

for x=0:0.1:17 
    t1=GAUSS_MF(x,[5,10]); 
    t2=TRI_MF(x,[5,10,12]); 
    y1(end+1)=snormdrasticsum(t1,t2); 
    y2(end+1)=snormmaximum(t1,t2); 
    y3(end+1)=snormboundedsum(t1,t2); 
    y4(end+1)=snormsum(t1,t2); 
end 

x1=0:0.1:17 
x2=0:0.1:17 
x3=0:0.1:17 
x4=0:0.1:17 
subplot(221) 
plot(x1,y1,'c') 
title('Snorm 190310410') 
subplot(222) 
plot(x2,y2,'g') 
title('Snorm 190310410') 
subplot(223) 
plot(x3,y3,'b') 
title('Snorm 190310410') 
subplot(224) 
plot(x4,y4,'r') 
title('Snorm 190310410') 

function value=snormmaximum(a,b) 
    value = max(a,b) 
end 

function value=snormsum(a,b) 
    value = a+b-(a*b) 
end 

function value=snormboundedsum(a,b) 
    value = min(1,(a+b)) 
end 

function value=snormdrasticsum(a,b) 
    if (b==0) 
        value=a 
    elseif (a==0) 
        value=b 
    else	 
        value=1 
    end 
end 

function [y] = GAUSS_MF(x,param) 
    c=param(1) 
    s=param(2) 
    temp=(x-c)/s 
    y=exp((-temp.*temp)/2) 
end 

function [y] = TRI_MF(x,param) 
    a=param(1) 
    b=param(2) 
    c=param(3) 
    temp1=(x-a)/(b-a); 
    temp2=(c-x)/(c-b); 
    temp3=min(temp1,temp2); 
    y=max(temp3,0) 
end