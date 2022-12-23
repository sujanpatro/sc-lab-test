y = [];
for x=1:0.1:15
    y(end+1) = sigmoid(x);
end
x = 1:0.1:15;
plot(x,y);