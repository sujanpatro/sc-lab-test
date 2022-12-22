clc;
close all;
clear;

x = 0:100;
mfg = GAUS_MF(x, 50, 20);
mfint = INT(mfg);
plot(x,mfg,'-',x,mfint,'-')
legend('{mfg}','{mfint}')