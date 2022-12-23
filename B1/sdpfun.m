function m = sdpfun(a,b)
if (b==0)
        m = a;
    elseif (a==0)
        m = b;
    else
        m = 1;
end
end