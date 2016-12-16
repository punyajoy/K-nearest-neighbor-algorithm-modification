function [in] = search(a,b,c)
%UNTITLED Summary of this function goes here
%Detailed explanation goes here
   n=length(b);
   for i=1:n
       if(b(i)==a)
           if c~=i
               in=i;  
             break;
           end
       end
   end
 
end

