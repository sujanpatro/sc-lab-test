y1 = [];
y2 = [];
y3 = [];
for x=1:0.1:15
    y1(end+1) = gaussian(6,3,x);
    y2(end+1) = trapezoid(3,6,8,10,x);
    temp1 = gaussian(6,3,x);
    temp2 = trapezoid(3,6,8,10,x);
    y3(end+1) = max(temp1,temp2);
end

x = 1:0.1:15;
plot(x,y1,'--r');
hold on
plot(x,y2,'--g');
plot(x,y3,'Color',[0,0,0]);
hold off
