close all;
clear all;
clc;
load ('ecg.mat');
signal=ecg(1001:2000);
figure(1)
plot(signal);
% 信号与处理
n = 8;
imf = emd_n(signal,n);

% [m,n]=size(imf);
for i=1:n
    figure(i+1)
    plot(imf(i,:));
end