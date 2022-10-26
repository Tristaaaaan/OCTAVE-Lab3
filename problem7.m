clc;
clf;
clear all;
close all;
pkg load signal;

n=[-3:4];
x=[2,4,6,-8,10,9,-8,7];

%Equation 1
[x1,n1]=ups(x,-3,4,2);
[x1,n1]=folding(x1,n1);
[x1,n1]=sigshift((2*x1),n1,5);

%Equation 2
[x2,n2]=downs(x,-3,4,3);
[x2,n2]=sigshift((3*x2),n2,1)

%Whole Equation
[x3,n3]=sigsub(x1,n1,x2,n2);

%Plot
subplot(1,1,1),stem(n3,x3),title('2x[(-n+5)/2)]-3x(3n-1)'),grid on;

