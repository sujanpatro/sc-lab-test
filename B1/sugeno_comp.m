y1 = [];
y2 = [];
s = 0.5;
for x=1:0.1:15
    a = gaussian(6,3,x);
    y1(end+1) = a;
    y2(end+1) = (1-a)/(1+a*s);
end

x = 1:0.1:15;
plot(x,y1,'--r');
hold on;
plot(x,y2,'--g');

hold off;