r = [0.5 0.1; 0.2 0.9; 0.8 0.6];
s = [0.6 0.4 0.7; 0.5 0.8 0.9];
max_min = zeros(3,3);
max_prod = zeros(3,3);
max_avg = zeros(3,3);
for i=1:1:3
    for j=1:1:3
        mini = [];
        prod = [];
        avg = [];
        for k=1:1:2
            mini(end+1) = min(r(i, k), s(k,j));
            prod(end+1) = r(i, k)* s(k,j);
            avg(end+1) = (r(i, k)+ s(k,j))/2;
        end
        max_min(i, j) = max(mini);
        max_prod(i, j) = max(prod);
        max_avg(i, j) = max(avg);
    end
end
disp(max_min);
disp(max_prod);
disp(max_avg);