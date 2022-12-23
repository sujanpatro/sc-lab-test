function new_pop = mutation(new_pop, n, binary_size, Pm)
for i=1:n
    for j=1:binary_size
        if rand<Pm
            new_pop(i, j) = rem(new_pop(i,j)+1, 2);
        end
    end
end
end