n = 10;
xl= 0;
xu = 31;
binary_size = ceil(log2(xu-xl+1));

in_pop = round(rand(n,binary_size));
d_vals = [];
for i=1:1:n
    power = 1;
    value = 0;
    for j=binary_size:-1:1
        value = value + (in_pop(i,j)*power);
        power = power*2;
    end
    d_vals(end+1) = value;
end
legal_values = [];
for i=1:1:n
    legal_values(end+1) = legal(d_vals(i),xl,xu,binary_size);
end
fitness_values = [];
total = 0;
for i=1:1:n
    f = fitness(legal_values(i));
    fitness_values(end+1) = f;
    total = total+f;
end
prob = [];
for i=1:1:n
    prob(end+1) = fitness_values(i)/total;
end
com_prob = [];
com_prob(end+1) = prob(1);
for i=2:1:n
    com_prob(end+1) = com_prob(i-1)+prob(i);
end
sel_pop = zeros(1,n);
new_pop = zeros(n,binary_size);
for i=1:1:n
    random_value = rand;
    index = 1;
    for j=1:1:n
        if random_value <= com_prob(j)
            index = j;
            break;
        end
    end
    sel_pop(i) = d_vals(index);
    for k=1:1:binary_size
        new_pop(i,k) = in_pop(index,k);
    end
end
%disp(com_prob);
%disp(in_pop);
%disp(d_vals);
%disp(new_pop);
%disp(sel_pop);

%Crossover
cross_percent = rand*(100);
cross_freq = round((cross_percent * n)/100);
for i=1:cross_freq
    row1 = randi([1,n]);
    row2 = 0;
    while 1
        row2 = randi([1,n]);
        if row1 ~= row2
            break;
        end
    end
    [n1, n2] = crossover(new_pop(row1,:),new_pop(row2,:));
    new_pop(row1,:) = n1;
    new_pop(row2,:) = n2;
end

disp(new_pop);

%Mutation
Pm = 0.001;
new_pop = mutation(new_pop, n, binary_size, Pm);
disp(new_pop);

%%%%
fit_answer = fitness(xl);
fit = xl;
for i=1:1:n
    calculated = 0;
    mul = 1;
    for j=binary_size:-1:1
        calculated = calculated + (new_pop(i,j) * mul);
        mul = mul*2;
    end
    value = legal(calculated,xl,xu,binary_size);
    if fitness(value) > fit_answer
        fit_answer = fitness(value);
        fit = value;
    end
end
disp(fit);