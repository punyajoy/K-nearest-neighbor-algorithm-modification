function [ znew ] = pca( x )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
xsize=size(x);
y=x(:,1:xsize(2)-1);
means=mean(y);
maxy=max(y);
miny=min(y);
rangey=maxy-miny;

for i=1:xsize(2)-1
    y(:,i)=(y(:,i)-means(1,i))/rangey(1,i);
   
end

sigma=cov(y);
[u s v]=svd(sigma);
ureduce=u(:,1:2);
znew=y*ureduce;
znew(:,3)=x(:,xsize(2));
end

