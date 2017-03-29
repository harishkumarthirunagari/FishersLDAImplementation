function [v] = optimalprojection(swinv,mean1,mean2)

v = swinv*(mean1 - mean2)';


end