clc;
clf;
clear all;
close all;
pkg load signal;

range1=[-4:4];
x=[1,-2,3,-4,5,-6,7,-8,9];

range2=[-1:8];
y=[2,4,6,8,10,-1,-3,-5,-7,-9];

range3=[-6:3];
z=[1,2,4,6,5,6,2,-1,-2,-3];

%Equation 1
[x1,n1]=fold(x,range1);
[x1,n1]=shift(x1,n1,3);

%Equation 2
[x2,n2]=fold(y,range2);
[x2,n2]=shift(x2,n2,-4);

%Equation 3
[x3,n3]=fold(z,range3);
[x3,n3]=shift(x3,n3,2);

%Whole Equation
%[x4,n4]=sigmult(x1,n1,x2,n2);
%[x5,n5]=mult(x4,n4,x3,n3);

%Plots
subplot(4,1,1),stem(n1,x1),title('x[-n+3]'),grid on;
subplot(4,1,2),stem(n2,x2),title('2y[n+5]'),grid on;
subplot(4,1,3),stem(n3,x3),title('2z[n-1]'),grid on;
%subplot(4,1,4),stem(n4,x4),title('x[n-2]+2y[n+5]+2z[n-1]'),grid on;
