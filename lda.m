clc;
c1 = [1 2 3 4 5;2 3 3 5 5];
c2 = [1 2 3 3 5 6;0 1 1 2 3 5];
c =[c1 c2]
%[c,claslimits] = generatematrix();
%disp(c);
%c1 = c(:,[1:claslimits(1)]);
%c2 = c(:,[claslimits(1)+1:end]);%
plotxc1 = c1(1,:);
plotyc1 = c1(2,:);
plotxc2 = c2(1,:);
plotyc2 = c2(2,:);
plot(plotxc1,plotyc1,'*');hold on;
plot(plotxc2,plotyc2,'*');
disp('cluster of class1 matrix');
disp('-------------------------------------------------');
disp(c1);
disp('-------------------------------------------------');
disp('cluster of class2 matrix');
disp('-------------------------------------------------');
disp(c2);
disp('-------------------------------------------------');
%caluclating mean for class 1 %
mean1 = [mean(c1(1,:)) mean(c1(2,:))];
%caluclating mean for class 2 %
mean2 = [mean(c2(1,:)) mean(c2(2,:))];


disp('Mean of class-1');
disp('-------------------------------------------------');
disp(mean1);
disp('Mean of class-2');
disp('-------------------------------------------------');
disp(mean2);
disp('----------------------------------------------------');



disp('computing covariance of two classes');
%calculating covariance vector for two classes%
coc1= cov(c1');
coc2 = cov(c2');
disp('-------------------------------------------------');
disp('Variance matrix for class1');
disp(coc1);
disp('-------------------------------------------------');
disp('Variance matrix for class2');
disp(coc2);
disp('-----------------------------------------------------');

%computing with in class matrix%
disp('computing within class matrix');
sw = coc1 + coc2;
disp(sw);
disp('----------------------------------------------');
disp('computing inverse of a matrix');
swinv = inv(sw);
disp(swinv);
disp('-----------------------------------------------------');

%function call to find optimal projection vector%
v = optimalprojection(swinv,mean1,mean2);
disp('optimal projection vector for give data set using fishers lDA');
disp(v);
disp('ploting optimal projection vector');
plotv(v);
disp('-----------------------------------------------');

disp('-----------------------------------------------------------');
disp('projected points on the line for line c1');
%function call to find one dimensional projected points%
pc1 = projectedpoints(v,c1);

disp(pc1);
disp('-----------------------------------------------------------');
disp('projected points on the line for line c2');
pc2 = projectedpoints(v,c2);

disp(pc2);
disp(pc2);
