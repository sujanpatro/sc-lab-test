y1 = [];
y2 = [];
w = 0.5;
for x=1:0.1:15
    a = gaussian(8,2,x);
    y1(end+1) = a;
    y2(end+1) = power(1-power(a,w),(1/w));
end

x = 1:0.1:15;
plot(x,y1,'--r');
hold on;
plot(x,y2,'g');

hold off;