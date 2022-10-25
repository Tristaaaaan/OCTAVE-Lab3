clc;
%clf;
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
[x1,n1]=shift(x,range1,2);

%Equation 2
[x2,n2]=shift((y*2),range2,-5);

%Equation 3
[x3,n3]=shift((z*2),range3,1);

%Whole Equation
[x4,n4]=adds(x1,n1,x2,n2);
%[x5,n5]=add(x4,n4,x3,n3);

subplot(3,1,1),stem(n1,x1),title('x[n-2]'),grid on;
subplot(3,1,2),stem(n2,x2),title('2y[n+5]'),grid on;
subplot(3,1,3),stem(n3,x3),title('2z[n-1]'),grid on;
subplot(4,1,4),stem(n5,x5),title('x[n-2]+2y[n+5]+2z[n-1]'),grid on;


