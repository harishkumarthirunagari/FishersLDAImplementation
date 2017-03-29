clc;
w = [ -1230 -30 100];
x =[1 121 16.8;1 114 15.2;1 210 9.4;1 195 8.1];
class = [1 1 -1 -1];


disp('                                              PERCEPTORN ALGORITHM                          ');
disp('                                                  X1                        X2')
disp('DATA SET:');
disp(x);
disp('------------------------------------------------');
disp('ASSUMED values for w');
disp(w);
plot(x(:,2),x(:,3),'*');hold on;

for i = 1:size(x,1)
    disp(strcat('Training our model on data set:',int2str(i))); 
    disp(' ')
    d = decision(w,x(i,:));
    if class(i) == d
       disp(strcat('No need to train values of W when trained with data set:',int2str(i)));
       disp(' ')
       disp('current values of w:');
       disp('--------------------------------------------------------');
       disp(' ')
       disp(w);
       disp(' ')
        disp('--------------------------------------------------------');
    else 
        disp('Calucalting new values for wn');
        disp(' ')
        w = train(w,x(i,:),class(i),d);
               
    end
    
    
    
    
end
disp('Final values of Wn after training using data set');
disp(w);

disp('enter any point that should be texted using our model');
x1 = input('enter value of x1:');
x2 = input('enter value of x2:');
pp = 1;

value = w * [x1 x2 pp]';
if value < 0
    disp('Given point belong to class1');
else
    disp('Given point belong to class2');

end


