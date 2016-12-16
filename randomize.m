function newdata = randomize(data)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
      sizedata=size(data)
      x=randperm(sizedata(1));
      for v=1:sizedata(2)
          newdata(:,v)=data(x,v);
          
      end

end