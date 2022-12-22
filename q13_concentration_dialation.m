clc
clear
close all
% Defining fuzzy set A
mfa=[0.15 0.27 0.47 0.57];
a=[1 2 3 4];
% Defining fuzzy set B
mfb=[0.35 0.48 0.58 0.69];
b=[1 2 3 4];

concentration = 2;
dialation = 1/2;

concentrationA = mfa.^concentration
concentrationB = mfb.^concentration
dialationA = mfa.^dialation
dialationB = mfb.^dialation

plot(a, concentrationA,'-');
hold on
plot(a, dialationA,'-');
hold off
axis([0 5 0 1]);
xlabel('X-->');
ylabel('Membership Grades');
legend({'dialation','concentration'})
title('Concentration & Dialation of fuzzy set A');
figure
plot(b, concentrationB,'-');
hold on
plot(b, dialationB,'-');
hold off

axis([0 5 0 1]);
xlabel('X-->');
ylabel('Membership Grades');
legend({'dialation','concentration'})
title('Concentration & Dialation of fuzzy set B');
