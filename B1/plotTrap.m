y = [];
for x=1:0.1:15
    y(end+1) = trapezoid(3,5,8,12,x);
end
x = 1:0.1:15;
plot(x,y);