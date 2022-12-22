clc
clear
close all
xx = -10:10;
yy = -10:10;
title("Projection");
[x,y] = meshgrid(xx, yy);
z = exp(-x.*x/30 - y.*y/30);
[m,n] = size(z);
subplot(131);
surf(x, y, z)
[maximum, index]=max(z);
for i=1:m,
    for j=1:n,
        proj_x(i,j) = maximum(j);
    end
end
subplot(132);
surf(x, y, proj_x);
[maximum, index]=max(z);
for i=1:m,
    for j=1:n,
        proj_y(i,j) = maximum(i);
    end
end
subplot(133);
surf(x, y, proj_y);