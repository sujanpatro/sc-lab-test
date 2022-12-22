clc
clear
close all
% Defining fuzzy set A
mfa=[0.15 0.27 0.47 0.57];
a=[1 2 3 4];
% Defining fuzzy set B
mfb=[0.35 0.48 0.58 0.69];
b=[1 2 4 5];

i=1;j=1;k=1;
intersect=[];
newd=[];
%Intersection =  min(mfa,mfb)
while(or((i<length(a)),(j<length(b))))
    if(a(i)<b(j))
        i=i+1;
    elseif(a(i)>b(j))
        j=j+1;
    else
        intersect(k) = min(mfa(i),mfb(j));
        newd(k) = a(i);
        i=i+1;
        j=j+1;
        k=k+1;
    end
end
newd
intersect
stem(newd, intersect,'*');
axis([-1 5 0 1]);
xlabel('X-->');
ylabel('Membership Grades');
title('Intersection of Set A & B');