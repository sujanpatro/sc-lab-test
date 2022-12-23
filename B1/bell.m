function mvalue = bell(a,b,c,x)
mvalue = 1/(1+power(abs((x-c)/a),(2*b)));
end
