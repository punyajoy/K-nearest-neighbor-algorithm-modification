%this is the project of using variable boundary(other than the conventional circle) for knn algorithm here the variable boundary is in a form of triangle 
n=size(data1); 
allclass=unique(data1(:,3));
classsize=size(allclass);
m=floor(n(1)*0.7);      
tradata=data1(1:m ,:);  
test=data1(m+1:n,:);
testsize=size(test);
trasize=size(tradata);


p=1;
ambiguity=0;
success=0;
%k=input('give value of k(if do not want to give then give zero):- ');
h=figure;
gscatter(tradata(:,1),tradata(:,2),tradata(:,3));
saveas(h,sprintf('%dtrainingdata.png',z));
h=figure;
gscatter(test(:,1),test(:,2),test(:,3));
saveas(h,sprintf('%dtestdata.png',z));

for i=1:testsize(1)                      % this for loop is the main loop of the function that iterates over all the test values m+1 to n
                              
                                   %acccording to each point a value matrix is created which stores
      xcordinates=tradata(:,1)-test(i,1);                             %1.the other point x coordinates and y coordinates 
      ycordinates=tradata(:,2)-test(i,2);                              %2.the distance between test point and and this point
      distance=sqrt(xcordinates.^2+ycordinates.^2);                           %3.class of the point   
      analysis(:,1,p)=tradata(:,1);
      analysis(:,2,p)=tradata(:,2);
      analysis(:,3,p)=distance;
      analysis(:,4,p)=tradata(:,3);
      [analysis2,indexing]=sort(analysis(:,3,p));                                %this sorts the distance data in the ascending order  
      
     s=k;                                                                   %taking s=4 because we set k=3 
    flag=0;                                                            
   while s<m
       mini(p)=analysis2(s);    
        t=indexing(s);
     x=findtriangle(analysis(t,1:2,p),test(i,1:2));
     lessin=1;                                                          %lessin ,count ,w  are all variable explained later 
     
     w=0;
     
     while lessin<s  
         [a,b]=isinside(analysis(indexing(lessin),1:2,p),x);
        if(a==b)                                                       %it returns two areas if they are equal then we are increasing our count and storing the index values in a suitable matrix
           label(w+1)=indexing(lessin);
           w=w+1;
        end
           if(w==k-1)                                                  %if count reaches three then the iteration stops because k=3 
            flag=1;                                                      
            break;
          end
         lessin=lessin+1;
     end
     
     less(s,p)=lessin;
      if(flag==1)
          break;
      end
     s=s+1; 
     
                                                                % if three points does not lie inside the triangle then we go to next s'th minimum distance 
   end
     finallabel(i)=newclass(analysis(label(:),4,p));
     
   if(finallabel(i)==test(i,3))                                        % if final class matches the real class then we have a success
      success=success+1;
   elseif(finallabel(i)==-5)
      ambiguity=ambiguity+1; 
   end
   p=p+1;                                                           % moving to the next test point  
end

successpercent=success/testsize(1)*100;
ambiguitypercent=ambiguity/testsize(1)*100;
failurepercent=100-successpercent-ambiguitypercent;
    
 h=figure; 
 gscatter(test(:,1),test(:,2),finallabel(:));
 saveas(h,sprintf('%dknn_with_triangle.png',z));  
     

