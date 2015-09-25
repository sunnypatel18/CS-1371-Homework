% PROBLEM 4.  Do a Barrel Roll! 
%--------------------------------------------------------------------------
function[resultVec] = barrelShift(vec1, num)
    len = length(vec1);
    % Finds the value of the shift if very large
    realShift = mod(num, len);
    % Creates an index vector of vec1
    indx = 1:len;
    % Creates an index vector for the desired indicies  of resultVec
    shiftIndx = indx - realShift;
    temp = shiftIndx < 1;
    shiftTemp = shiftIndx(temp);
    A = len + shiftTemp;
    clearIndx = ~temp;
    clearTemp = shiftIndx(clearIndx);
    resultVecIndx = [A clearTemp];
    resultVec = vec1(resultVecIndx);
end
% Function Name: barrelShift
% Inputs  (2): - (double) a row or column vector
%              - (double) the number of times to shift the vector
% Outputs (1): - (double) the shifted row or column vector
%
% Function Description:
%   Write a function called "barrelShift" that takes in a vector and the 
%   number of times the vector is shifted and outputs the vector shifted by
%   the number of times indicated by the second input.
%
%   Example:
%	If you have a vector [1 2 3 4 5], it will look like this after you
%	barrel shift it:
%
%                           1 time:  [5 1 2 3 4]
%                           2 times: [4 5 1 2 3]
%                           3 times: [3 4 5 1 2]
%                           4 times: [2 3 4 5 1]
%                           5 times: [1 2 3 4 5]
% 
%   Basically, every time you do one barrel shift the vector is shifted to
%   the right and the number at the end is moved to the front. This process
%   is repeated for the number of shifts specified. If the number of shifts
%   is negative, then the vector should be barrel shifted to the left
%   instead of the right. 
%
% Notes:
%   - Both row and column vectors can be inputs to this function.
%   - If the number of shifts is zero, then the function should return 
%     the original vector. 
%
% Hints: 
%   - Remember, if you try to index out of a vector's length or index with
%     a negative number, it will produce an error.
%   - You may find the mod() function useful. 
%
% Test Cases:
%   out = barrelShift([6; 9; 15; -2; 11; 0; 8], 3);
%       out => [11
%                0
%                8
%                6
%                9
%               15
%               -2]
%
%   out = barrelShift([2 9 15 0], 5);
%       out => [0 2 9 15]
%
%   out = barrelShift([11 -34 6 19 10], -2);
%       out => [6 19 10 11 -34]
%
%   out = barrelShift([5; 15; 19; 91], 0);                    
%       out => [5 
%               15 
%               19 
%               91]