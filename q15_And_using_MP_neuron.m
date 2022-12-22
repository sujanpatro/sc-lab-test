disp('Enter the weights')
w1=input('Weight w1-');
w2=input('Weight w2-');
threshold=0.4;
x1=[0 0 1 1]
x2=[0 1 0 1]
Y=zeros([1 4]);
for i=1:4
    res=(x1(i)*w1) + (x2(i)*w2);
    if(res >= threshold)
        Y(i)=1;
    else
        Y(i)=0;
    end
end
Y