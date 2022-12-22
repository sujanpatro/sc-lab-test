disp('Enter the weights')
w11=input('Weight w11-');
w12=input('Weight w12-');
w21=input('Weight w21-');
w22=input('Weight w22-');
v1=input('Weight v1-');
v2=input('Weight v2-');
threshold=1;
x1=[0 0 1 1]
x2=[0 1 0 1]
z1=zeros([1 4]);
z2=zeros([1 4]);
Y=zeros([1 4]);
for i=1:4
    res=(x1(i)*w11) + (x2(i)*w21);
    if(res >= threshold)
        z1(i)=1;
    else
        z1(i)=0;
    end
end
for i=1:4
    res=(x1(i)*w12) + (x2(i)*w22);
    if(res >= threshold)
        z2(i)=1;
    else
        z2(i)=0;
    end
end
for i=1:4
    res=(z1(i)*v1) + (z2(i)*v2);
    if(res >= threshold)
        Y(i)=1;
    else
        Y(i)=0;
    end
end
Y