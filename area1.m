function [ area ] = area( a,b,c )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    X=[a(1),b(1),c(1)];
    Y=[a(2),b(2),c(2)];
    area=polyarea(X,Y)
end

