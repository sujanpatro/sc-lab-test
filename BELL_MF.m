%Generalised Bell Membership Function
function [ y ] = BELL_MF( x,a,b,c )

y = 1./(1+(abs((x-c)./a).^(2*b)));
end
