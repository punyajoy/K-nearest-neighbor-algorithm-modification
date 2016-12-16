function [ a] = findarea( a,b,c )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
z=[a;b;c];
x(:,1)=ones(3,1);
x(:,2)=z(:,1);
x(:,3)=z(:,2);
y=det(x);
a=abs(y)/2;

end

