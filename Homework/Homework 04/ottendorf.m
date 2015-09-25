function [decoded] = ottendorf(pass,rowpos,colpos)

[row,col] = size(pass);
%finds the number of rows and columns of the given array
colpos1 = (colpos-1).*row;
%colpos1 is the actual value in the array minus row position is always
%increments of the number of rows. so what i did was take the column
%position and subtract one and times it by the numbers rows to find the
%increment. 
singlenumindex = rowpos+colpos1;
%position is equal to the row position added to the column position 
decoded = pass(singlenumindex);
%find the hidden message within the passage by indexing the number
mask = double(decoded)>=65&double(decoded)<=90;
%any value that is from capital A to capital Z
decoded(mask) = decoded(mask)+32;
% displays the code but adding 32 will make the ASCII value lowercase.
end
