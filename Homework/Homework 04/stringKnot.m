function [unfold2,string] = stringKnot(arr)

[row1,col1] = size(arr);
% find the size of the array and store the number of columns and the number
% of rows
fliparr1 = zeros(row1,col1);
%create a new array with zeros respective to the number of rows and columns
%of the original array
fliparr1 = arr(:,end:-1:1);
%take all the rows of the array and flip the columns
unfold1 = [arr,fliparr1];
%concatenate the original array and the flipped column array
[row2,col2] = size(unfold1);
%finds the size of the new unfolded array and stores the rows and columns
fliparr2 = zeros(row2,col2);
%creates a new array of zeros with the number of rows and columns of the
%flipped column array
fliparr2 = unfold1(end:-1:1,:);
%take all the columns of the array and flip the rows
unfold2 = [unfold1;fliparr2];
%concatenate the flipped column array with the flipped row array
[row3,col3] = size(unfold2);
% find the size of the array
roundvec = [unfold2(1,:),unfold2(2:row3,col3)',unfold2(row3,(col3-1):-1:1),unfold2((row3-1):-1:2,1)'];
%finding all the vectors of the numbers on the circumference of the array 
string = char(roundvec);% displays the new string after char it 

end
