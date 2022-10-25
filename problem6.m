clc;
%clf;
clear all;
close all;

range1=[-4:4];
x=[1,-2,3,-4,5,-6,7,-8,9];

range2=[-1:8];
y=[2,4,6,8,10,-1,-3,-5,-7,-9];

range3=[-6:3];
z=[1,2,4,6,5,6,2,-1,-3,-2];

%Equation 1
x1=2*x;

%Equation 2
[x2,n2]=fold((3*y),range2);

%Equation 3
[x3,n3]=shift(z,range3,-2);

%Whole Equation
[x4,n4]=multis(x2,n2,x3,n3);
[x5,n5]=adds(x1,range1,x4,n4);

%Plot
subplot(1,1,1),stem(n5,x5),title('2x[n]+3y[-n]*z[n+2]'),grid on;
