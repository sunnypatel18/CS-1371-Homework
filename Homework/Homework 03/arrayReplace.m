function [orgarray] = arrayReplace(arr1,arr2,anum)

% Inputs  (3): arr1 = (double) A MxN array 
%              arr2 = (double) A MxN array
%              anum = (double) A number  
% Outputs (1): orgarray = (double) The original array with the replacements made


arr1(arr1==anum(:))= arr2(arr1==anum(:)); 
%use the logical indexing syntax to search array 1 for the number
%specified and then find the place of the element and equal it to array 2
%sorresponding it to the same place of the element but in vector 2. this
%will replace the element value of array 1 with the element value in the
%same place in array 2. 


orgarray= arr1;

%simply show the original array (arr1) with the replacements made with
%vector 2(vec2)


end