
filename=input('give the name of the file:- ','s');
y=input('no of times you want to iterate:- ');
initialplot;
k=input('give value of k(if do not want to give then give zero):- ');
if k==0
    k=classsize(1)+2;
else
    k=k+1;
end

for z=1:y
    
    data1=randomize(data1);
    
    knn_algo_general;
    succeses(1,z)=successpercent;
    ambiguitys(1,z)=ambiguitypercent;
    failures(1,z)=failurepercent;
    clearvars -except succeses ambiguitys failures z filename y k data1;
      
    variableknn_algo_tri;
    succeses(2,z)=successpercent;
    ambiguitys(2,z)=ambiguitypercent;
    failures(2,z)=failurepercent;
     clearvars -except succeses ambiguitys failures z filename y k data1;
     
    knn_general_circle;
    succeses(3,z)=successpercent;
    ambiguitys(3,z)=ambiguitypercent;
    failures(3,z)=failurepercent;
     clearvars -except succeses ambiguitys failures z filename y k data1;
     
end

avgktsuccess=sum(succeses(1,:))/y;
avgktfailure=sum(failures(1,:))/y;
avgktambiguity=sum(ambiguitys(1,:))/y;
avgvktsuccess=sum(succeses(2,:))/y;
avgvktfailure=sum(failures(2,:))/y;
avgvktambiguity=sum(ambiguitys(2,:))/y;
avgkcsuccess=sum(succeses(3,:))/y;
avgkcfailure=sum(failures(3,:))/y;
avgkcambiguity=sum(ambiguitys(3,:))/y;
