function [matrix,claslimits] = generatematrix()
clc;
dimmensions = input('enter number of dimmensions');
classes = input('enter number of classes');
c =zeros(10,1);
claslimits = zeros(10,1);
k=0;

for i =1:classes
    x = input(strcat('enter number of examples in class',int2str(i)));
   
    for j= 1:x
        k = k+1;
        c(k)=i;      
    end   
    claslimits(i)= k;
end
matrix = randi([1,30],k,dimmensions);

c = c(1:k);
finalmatrix = [matrix c];
matrix =matrix';
disp(matrix);
disp(finalmatrix);

end
