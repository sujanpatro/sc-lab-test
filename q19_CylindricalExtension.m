clc
clear
close all
xx = (0:1:20)';
yy = (0:1:20)';
bell_x = GAUSS_MF(xx, [4, 2, 10]);
[x,y] = meshgrid(bell_x, yy);
plot(xx, bell_x);
surf(xx, yy, x);
title("Cylinderical Extension");
xlabel('X = a');
ylabel('Membership Grades');


function [y] = GAUSS_MF(x,param)
c=param(1);
s=param(2);
temp=(x-c)/s;
y=exp((-temp.*temp)/2);
end
