clc;
clf;
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
[x2,n2]=folding((3*y),range2);

%Equation 3
[x3,n3]=sigshift(z,range3,-2);

%Whole Equation
[x4,n4]=sigmult(x2,n2,x3,n3);
[x4,n4]=sigadd(x1,range1,x4,n4);

%Plot
subplot(1,1,1),stem(n4,x4),title('2x[n]+3y[-n]*z[n+2]'),grid on;
