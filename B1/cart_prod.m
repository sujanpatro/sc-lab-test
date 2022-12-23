A = [0.7,0.6,0.5,0.4,0.7];
B = [0.2,0.68,0.4,0.35];
cp = zeros(5,4);

for i=1:1:5
    for j=1:1:4
        cp(i, j) = min(A(i),B(j));
    end
end
disp(cp);