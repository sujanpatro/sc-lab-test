function mux = triangle(a,b,c,x)
if (x<=a) || (x>=c)
    mux = 0;
elseif ((x>a) && (x<=b))
    mux = (x-a)/(b-a);
elseif ((x>b) && (x<c))
    mux = (c-x)/(c-b);
end
end