clc;
clf;
clear all;
close all;
pkg load signal;

n=[-3:4];
x=[2,4,6,-8,10,9,-8,7];

%Equation 1
[x1,n1]=folding(x,n);
[x1,n1]=sigshift((2*x1),n1,3);

%Equation 2
x2=3*(stepseq(-1,-3,4));

%Equation 3
x3=x

%Equation 4
[x4,n4]=downs(x,-3,4,3);
[x4,n4]=folding(x4,n4);
[x4,n4]=sigshift(x4,n4,2);

%Whole Equation
[x5,n5]=sigadd(x1,n1,x2,n);
[x5,n5]=sigadd(x5,n5,x4,n4);
[x5,n5]=sigsub(x5,n5,x3,n);

%Plot
subplot(1,1,1),stem(n5,x5),title('2x[(-n+5)/2)]-3x(3n-1)'),grid on;



