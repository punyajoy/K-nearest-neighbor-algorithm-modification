 %this is the project of using variable boundary(other than the conventional circle) for knn algorithm here the variable boundary is in a form of triangle 

data1=load(filename);
size1=size(data1);
if size1(2)>3
data1=pca(data1);
else
data1=meann(data1);
end
allclass=unique(data1(:,3));
classsize=size(allclass);
save('modified_data.dat','data1','-ASCII');
h=figure;
gscatter(data1(:,1),data1(:,2),data1(:,3));
saveas(h,sprintf('initialplot%d.png',1));

