clc;
%clf;
clear all;
close all;
pkg load signal;

%Prob 1
n=[-4:2];
x=[4,-3,2,-1,2,-7,2];

%Prob 2
[x1,n1]=downs(x,-4,2,2);
[x1,n1]=shift(x1,n1,2);

%Prob 3
[x2,n2]=fold(x,n);

%Prob 4
[x3,n3]=fold(x,n);
[x3,n3]=shift(x3,n3,-2);

%Plots
subplot(2,2,1),stem(n,x),title('x[n]'),grid on;
subplot(2,2,2),stem(n1,x1),title('x[2n-2]'),grid on;
subplot(2,2,3),stem(n2,x2),title('x[-n]'),grid on;
subplot(2,2,4),stem(n3,x3),title('x[-n+2]'),grid on;

