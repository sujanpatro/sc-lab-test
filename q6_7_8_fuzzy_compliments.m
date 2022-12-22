close all
clear
%Classical compliment
a=(0:0.02:1);
c=1-a;
plot(a,c)
title('Classical Complement');
xlabel('X = a');
ylabel('N(a)');

%Sugeno's Compliment
s=[20 2 0 -0.7 -0.95];
sc=[];
for i = 1:length(s)
    comp = (1-a)./(1+s(i)*a);
    sc = [sc;comp];
end
figure
plot(a,sc)
title('Sugeno''s Complement');
legend({'s=20','s=2','s=0','s=-0.7','s=-0.95'})

%Yager's Compliment
w=[10 2 7 0.7 0.95];
yc=[];
for i = 1:length(w)
    comp = (1-a.^w(i)).^(1/w(i));
    yc = [yc;comp];
end
figure
plot(a,yc)
title('Yager''s Complement');
legend({'w=10','w=2','w=7','w=0.7','w=0.95'})