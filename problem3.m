clc;
%clf;
clear all;
close all;
pkg load signal;

%Prob 1
n=[-2:6];
x=[5,-1,4,-7,8,2,1,0,-2];

%Prob 2
[x1,n1]=ups(x,-2,6,2);
[x1,n1]=fold(x1,n1);
[x1,n1]=shift(x1,n1,-2);

%Prob 3
[x2,n2]=fold(x,n);
[x2,n2]=shift(x2,n2,1);

%Prob 4
[x3,n3]=shift((3*x),n,2);

%Plots
subplot(2,2,1),stem(n,x),title('x[n]'),grid on;
subplot(2,2,2),stem(n1,x1),title('x[(-n-2)/2'),grid on;
subplot(2,2,3),stem(n2,x2),title('x[-n-1]'),grid on;
subplot(2,2,4),stem(n3,x3),title('3x[n-2]'),grid on;
