function difference = myDiff(vec)


% Inputs  (1): - (double) A 1xN vector of numbers
% Outputs (1): - (double) A 1xN-1 vector of the differences between vector
%                         elements

difference = vec(2:end)-vec(1:end-1);
%to find the difference to the adjacent element in the vector we have to
%start with the second element. and we have to subract the first element
%from the second element. so i used a colon operator starting with 2 until
%the end of the vector and i subtracted it from the first element with an
%end on (end-1). the end-1 will leave the last element unused just how we
%left the first element untouched. 

end