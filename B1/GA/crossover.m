function [y1, y2] = crossover(x1, x2)
c_length = length(x1);
c_point = randi([1, c_length-1]);
y1 = [x1(1:c_point) x2(c_point+1:end)];
y2 = [x2(1:c_point) x1(c_point+1:end)];

end