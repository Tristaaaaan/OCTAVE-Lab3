clc;
%clf;
clear all;
close all;
pkg load signal;

%Prob 1
n=[-3:4];
x=[3,-2,5,0,1,2,-2,3];

%Prob 2
[x1,n1]=ups(x,-3,4,2)


%Prob 3
[x2,n2]=downs(x,-3,4,3);
[x2,n2]=fold(x2,n2);

%Prob 4
[x3,n3]=shift(x,n,-5);

%Plots
subplot(2,2,1),stem(n,x),title('x[n]');
subplot(2,2,2),stem(n1,x1),title('x[n/2]');
subplot(2,2,3),stem(n2,x2),title('x[-3n]');
subplot(2,2,4),stem(n3,x3),title('x[n+5]');

