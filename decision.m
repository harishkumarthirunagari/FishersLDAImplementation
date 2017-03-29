function [y] =decision(w,x) 

  y = tansig(w*x');
  if y < 0
      y = -1;
  else
      y = 1;
  end
 
end