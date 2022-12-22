%Sigmoidal Membership Function
function [ y ] = SIGMOD_MF( x,a,c )

y = 1./(1 + exp(-(x-c)/a));
end
