%Triangular Membership Function
function [ y ] = TRI_MF( x, parameter )

a = parameter(1);
b = parameter(2);
c = parameter(3);

if a>b
    error('illegal parameter');
elseif b>c
    error('illegal parameter');
end

y = max(min(((x-a)/(b-a)),((c-x)/(c-b))),0);

end
