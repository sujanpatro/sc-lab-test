y1 = [];
y2 = [];

for x=1:0.1:15
    y1(end+1) = gaussian(6,3,x);
    y2(end+1) = 1-gaussian(6,3,x);
end

x = 1:0.1:15;
plot(x,y1,'--r');
hold on;
plot(x,y2,'--g');

hold off;
