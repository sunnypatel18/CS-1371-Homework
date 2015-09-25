function [timeinterval] = theRatio(A)
    

% Inputs  (1): techarray = (double) A 3XN array of information of Tech demographics 
% Outputs (1): timeinterval = (double) A vector of the time interval that saw the
%                             largest overall growth of women to total 
%                             population


D = diff(A(3,:))./diff(A(2,:));
% this finds the difference  of the adjacent number of girls at various years in the 3rd row of the array and divides
% it by th the difference of the adjacent number of students at Georgia
% Tech during various years in the 2nd row of the array. 

[num, indx] = max(D);

% this finds the max difference and indexes it in the first row of the cell

timeinterval = [A(1,indx),A(1,indx + 1)];


%to find the interval we used the first row of the main array and wherever
%the max index was found it would use that value and add 1 to display the
%range of years. 


end