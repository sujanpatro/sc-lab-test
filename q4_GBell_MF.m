clc
clear
close all;

x = 0:100;
mf = BELL_MF(x,16,20,50);

plot(x,mf)