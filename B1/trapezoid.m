function membership = trapezoid(a,b,c,d,x)
if ((x<=a) || (x>=d))
    membership = 0;
elseif ((x>a) && (x<b))
    membership = (x-a)/(b-a);
elseif ((x>=b) && (x<=c))
    membership = 1;
elseif ((x>c) && (x<d))
    membership = (d-x)/(d-c);
end
end
    