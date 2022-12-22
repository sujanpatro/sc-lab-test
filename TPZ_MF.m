%Trapezoidal Membership Function
function [ y ] = TPZ_MF( x, parameter )

a = parameter(1);
b = parameter(2);
c = parameter(3);
d = parameter(4);

if a>b
    error('illegal parameter');
elseif b>c
    error('illegal parameter');
elseif c>d
    error('illegal parameter');
end

y = max(min(min(((x-a)/(b-a)),((d-x)/(d-c))),1),0);

end