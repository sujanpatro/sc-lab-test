y = [];
for x=1:0.1:15
    y(end+1) = triangle(3,6,8,x);
end
x = 1:0.1:15;
plot(x,y);