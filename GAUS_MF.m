%Gaussian Membership Function

function y = GAUS_MF( x,a,b )

y = exp(-(0.5)*((x-a)/b).^2);

end
