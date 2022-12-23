function mvalue = gaussian(a,sig,x)
mvalue = exp(-0.5*power((x-a)/sig,2));
end
