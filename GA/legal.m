function m = legal(x,xl,xu,n)
val = xl + ((xu-xl)/(pow2(n)-1))*x;
m = ceil(val);
end