smax = [];
sap = [];
sbp = [];
sdp = [];
ya = [0.3,0.7,0.8,0.63];
xa = [4,5,6,7];
yb = [0.6, 0.4,0.2,0.33];
xb = [4,5,6,7];
for i=1:1:4
    smax(end+1) = smaxfun(ya(i),yb(i));
    sap(end+1) = sapfun(ya(i),yb(i));
    sbp(end+1) = sbpfun(ya(i),yb(i));
    sdp(end+1) = sdpfun(ya(i), yb(i));   
end

plot(xa,smax,'--b');
hold on
plot(xa, sap, 'r');
plot(xa, sbp, 'g');
plot(xa, sdp)
hold off