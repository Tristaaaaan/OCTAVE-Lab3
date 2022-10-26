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
[x1,n1]=folding(x,range1);
[x1,n1]=sigshift(x1,n1,3);

%Equation 2
[x2,n2]=folding(y,range2);
[x2,n2]=sigshift(x2,n2,-4);

%Equation 3
[x3,n3]=folding(z,range3);
[x3,n3]=sigshift(x3,n3,2);

%Whole Equation
[x4,n4]=sigmult(x1,n1,x2,n2);
[x5,n5]=sigmult(x4,n4,x3,n3);

%Plot
subplot(4,1,4),stem(n5,x5),title('x[-n+3]*y[-n-4]*z[-n+2]'),grid on;
