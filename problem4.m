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
z=[1,2,4,6,5,6,2,-1,-3,-2];

%Equation 1
[x1,n1]=sigshift(x,range1,2);

%Equation 2
[x2,n2]=sigshift((2*y),range2,-5);

%Equation 3
[x3,n3]=sigshift((2*z),range3,1);

%Whole Equation
[x4,n4]=sigadd(x1,n1,x2,n2);
[x4,n4]=sigadd(x4,n4,x3,n3);

%Plot
subplot(1,1,1),stem(n4,x4),title('x[n-2]+2y[n+5]+2z[n-1]'),grid on;

