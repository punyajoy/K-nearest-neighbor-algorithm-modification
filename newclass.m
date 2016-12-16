function class = newclass(data)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
       x=tabulate(data);
       ctr=0;
       xsize=size(x);
       [maximum,ind]=max(x(:,2));
       
       for i=1:xsize(1)
           if(x(i,2)==maximum)
               ctr=ctr+1;
           end
       end
       if ctr>1
           class=-5;
       else
           class=x(ind,1);
       end
end

