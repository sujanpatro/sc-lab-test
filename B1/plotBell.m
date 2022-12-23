y = [];
y1 = [];
for x=1:0.1:15
    y(end+1) = bell(2,4,8,x);
    y1(end+1) = 1;
end
x = 1:0.1:15;
plot(x,y1,'b');
hold on
plot(x,y,'--r');
hold off