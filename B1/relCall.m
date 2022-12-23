x = [3,4,5];
y = [3,4,5,6,7];
r = zeros(3,5);
k = 1;
for j=1:1:5
    
    for i=1:1:3
        a = x(i);
        b = y(j);
        r(k) = relation(a,b);
        k = k+1;
    end
end
disp(r);