y = [];
for x=1:0.1:15
    y(end+1) = gaussian(6,3,x);
end
x = 1:0.1:15;
plot(x,y);