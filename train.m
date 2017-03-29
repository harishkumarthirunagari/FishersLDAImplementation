function [wn] = train(w,x,d,y)


k =0.01*((d-y)*x);
disp(k)
wn = w + k;

disp('value of new wn');
disp(wn);




end