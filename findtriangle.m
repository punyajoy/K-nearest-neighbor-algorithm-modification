function x= findtriangle(a,b)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
   theta=atan2d(a(2)-b(2),a(1)-b(1));
   if theta<0
       theta=360+theta;
   end    
   x(1,1)=a(1);
   x(1,2)=a(2);
   mini=sqrt((a(1)-b(1))^2+(a(2)-b(2))^2);
   theta2=120+theta;
   theta3=240+theta;
   x(2,1)=b(1)+mini*cosd(theta2);
   x(2,2)=b(2)+mini*sind(theta2);
   x(3,1)=b(1)+mini*cosd(theta3);
   x(3,2)=b(2)+mini*sind(theta3);
   plot(a(1),a(2),'ro');
   hold on;
   plot(b(1),b(2),'ro');
   hold on;
   plot(x(2,1),x(2,2),'ro');
   hold on;
   plot(x(3,1),x(3,2),'ro');
   hold off;
end

