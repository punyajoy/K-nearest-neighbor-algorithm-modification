function[knownarea,calarea]= isinside(a,x)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    d=0;
    area1=area(a,x(1,:),x(2,:));
    area2=area(a,x(2,:),x(3,:));
    area3=area(a,x(1,:),x(3,:));
    knownarea=area(x(1,:),x(2,:),x(3,:));
    
    calarea=area1+area2+area3;
end
