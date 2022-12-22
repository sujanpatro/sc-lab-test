clc
clear
close all;

x = -100:100;
mf = SIGMOD_MF(x,1,-5);

plot(x,mf)
xlim([-100 100])