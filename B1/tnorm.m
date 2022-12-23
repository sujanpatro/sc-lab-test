tmin = [];
tap = [];
tbp = [];
tdp = [];
ya = [0,0.7,0.5,0.63];
xa = [4,5,6,7];
yb = [0.6, 0.4,0.2,0.33];
xb = [4,5,6,7];
for i=1:1:4
    tmin(end+1) = tminfun(ya(i),yb(i));
    tap(end+1) = tapfun(ya(i),yb(i));
    tbp(end+1) = tbpfun(ya(i),yb(i));
    tdp(end+1) = tdpfun(ya(i),yb(i));
end

plot(xa,tmin,'--b');
hold on
plot(xa, tap, 'r');
plot(xa, tbp, 'g');
plot(xa, tdp)
hold off