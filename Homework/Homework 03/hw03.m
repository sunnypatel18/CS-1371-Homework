%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : <Sunny Patel>
% GT Email     : <sunnypatel18@gatech.edu>
% Homework     : hw03
% Section      : <B05>
% Collaboration: <place here one of the following:
%                 "I worked on the homework assignment alone, using
%                  only course materials."
%                 >"
%
%
% Files provided with this homework:  
%   - hw03.m
%   - ABCs_vectors.m
%   - ABCs_arrays.m
%   - ABCs_pretest_hw03.p
%
% Files to submit:
%   - hw03.m
%   - ABCs_vectors.m
%   - ABCs_arrays.m
%   - divingScore.m
%   - myDiff.m
%   - interweave.m
%   - arrayReplace.m
%   - theRatio.m
%   - barrelShift.m
%
% Instructions:
%   1) Follow the directions for each problem very carefully or you will
%   lose points.
%   2) Make sure you name functions exactly as described in the problems or
%   you will not receive credit.
%   3) Read the announcements! Any clarifications and/or updates will be
%   announced on T-Square. Check the T-Square announcements at least once
%   a day.
%   4) You should not use any of the following functions in any file that 
%   you submit to T-Square:
%       a) clear
%       b) clc
%       c) solve
%       d) input
%       e) disp
%       f) close all
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
%==========================================================================
% PART 1.  ABC Problems
%--------------------------------------------------------------------------
%
% Part of this homework are m-files called "ABCs_vectors" and 
% "ABCs_arrays". Open these files in MATLAB and complete it according to
% the directions contained within. 
%
% Files to Complete: 
%       - ABCs_vectors.m
%       - ABCs_arrays.m
% ABCs File Testing:
%  >> ABCs_pretest_hw03
%
%==========================================================================
% Homework Video of the Week:
%
% http://www.youtube.com/watch?v=WiJczH3cr48
%
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic(s):
%   - Vectors
%   - Arrays
%
% Follow the directions carefully and make sure files names as well as
% function headers are written exactly as described in the problem text. If
% your function headers are not written as specified, then you will recieve
% an automatic zero for the problem.
%
% All drill problems must be functions (i.e. contain valid function
% headers).  Any scripts turned in will be given a 0 automatically.
%
%==========================================================================
% PROBLEM 1.   Faster, Higher, Stronger
%--------------------------------------------------------------------------
%
% Function Name: divingScore
% Inputs  (2): - (double) A vector of judge's scores for a single dive
%              - (double) the degree of difficulty of the dive performed
% Outputs (1): - (double) The final diving score
% 
% Function Description:
%	Write a function called "divingScore" that takes in a vector of scores
%	for an single Olympic dive and the degree of difficulty and computes
%	the overall score for the dive. In Olympic dive events, the highest and
%	lowest score for each dive is dropped. The rest of the scores are then
%	summed, and the result is multiplied by the degree of difficulty to 
%   produce the overall score for each dive. 
%
% Test Cases:
%   dive1 = [4.5 6.7 8.9 7.6 5.5 6.8];
%   dive2 = [5.6 7.3 8.6 8.4 7.4 6.6];
% 
%   overall1 = divingScore(dive1, 2.5);
%       overall1 => 66.5
%
%   overall2 = divingScore(dive2, 1.6);
%       overall2 => 47.52
%
%==========================================================================
% PROBLEM 2.  Making a Difference
%--------------------------------------------------------------------------
%
% Function Name: myDiff
% Inputs  (1): - (double) A 1xN vector of numbers
% Outputs (1): - (double) A 1xN-1 vector of the differences between vector
%                         elements
% 
% Function Description:
%   Write a function called "myDiff" that takes in a vector and returns a
%   vector of differences between each consecutive element in the vector,
%   starting with the last element. For example, say we have a
%   vector of numbers as follows:
%
%                           vec = [3 4 2 6 7]
%
%   the difference between the 5th element and the 4th element is 1, the
%   difference between the 4th element and the 3rd element is 4, and
%   so on until we reach the last element. The final result would be:
%
%                       differences = [1 -2 4 1]
%
% Notes:
%   - The length of the resultant vector will always be one less than the
%     original vector. 
%   - The differences are always calculated from right to left.
%   - You may *not* use the diff() function for this problem. 
%
% Test Cases:
%   diff1 = myDiff([1 2 3 4 5]);
%       diff1 => [1 1 1 1]
%
%   diff2 = myDiff([8 6 4 2 0]);
%       diff2 => [-2 -2 -2 -2]
%
%   diff3 = myDiff([8 6 7 5 3 0 9]);
%       diff33 => [-2 1 -2 -2 -3 9]
%
%==========================================================================
% PROBLEM 3.  Underwater Vector Basketweaving 101
%--------------------------------------------------------------------------
%
% Function Name: interweave
% Inputs  (2): - (double) A 1xN vector of numbers
%              - (double) A 1xN vector of numbers
% Outputs (1): - (double) A vector of the two vectors mixed together
% 
% Function Description:
%   Write a function called "interweave" that takes in two vectors and then
%   returns one larger vector where all of the elements at the odd indicies
%   contain the values from the first vector and all the elements at the
%   even indices contain the values from the second vector. If one vector
%   is longer than the other,the remaining indices should be filled with
%   zeros.  
%
% Hints:
%   - The length of the final vector should be twice the length of the
%     longest vector.
%   - You may find the max() and zeros() function useful. 
%
% Test Cases:
%   mixed1 = interweave([1 2 3 4 5],[6 7 8 9 10]);
%       mixed1 => [1 6 2 7 3 8 4 9 5 10]
%
%   mixed2 = interweave([5 1 5 9 1], [4 1 3]);
%       mixed2 => [5 4 1 1 5 3 9 0 1 0]
%
%   mixed3 = interweave([8 6 7], [5 3 0 9]);
%       mixed3 => [8 5 6 3 7 0 0 9]
%
%==========================================================================
% PROBLEM 4. Behind the Mask
%--------------------------------------------------------------------------
% 
% Function Name: arrayReplace
% Inputs  (3): - (double) A MxN array 
%              - (double) A MxN array
%              - (double) A number  
% Outputs (1): - (double) The original array with the replacements made
%
% Function Description:
%   Write a function called "arrayReplace" that takes two arrays and a
%   number and replaces all instances of that number in the first array
%   with the corresponding positions of the second array. If the number
%   does not exist in the array, it should just return the original array
%   with no changes. 
%
% Notes:
%   - You can assume the arrays will always be the same size. 
%
% Hints: 
%   - When you use logical indexing with an array, it returns an array of
%     logicals. This is called a "mask". See how you can use this to solve
%     the problem. 
%
% Test Cases:
%   arr1 = [7     7     7     7
%           7     4     4     7
%           7     4     4     7
%           7     7     7     7];
%
%   arr2 = [8     8     8     8
%           8     1     2     8
%           8     3     4     8
%           8     8     8     8];
%
%   out1 = arrayReplace(arr1, arr2, 4);
%       out1 => [7     7     7     7
%                7     1     2     7
%                7     3     4     7
%                7     7     7     7]
%
%   out2 = arrayReplace(arr1, arr2, 7);
%       out2 => [8     8     8     8
%                8     4     4     8
%                8     4     4     8
%                8     8     8     8]
%
%   out3 = arrayReplace(arr1, arr2, 6);
%       out3 => [ 7     7     7     7
%                 7     4     4     7
%                 7     4     4     7
%                 7     7     7     7]
%
%==========================================================================
% PROBLEM 5.   "And Put Her on The Campus To Raise THE RATIO!"
%--------------------------------------------------------------------------
%
% Function Name: theRatio
% Inputs  (1): - (double) A 3XN array of information of Tech demographics 
% Outputs (1): - (double) A vector of the time interval that saw the
%			              largest overall growth of women to total 
%			              population
%
% Function Description:
%	Everybody knows that when they walk around campus, they are walking
%	into the land of mystery. Nobody knows quite what they'll see, but
%	there's one thing for certain that they won't: Girls. 
%
%	Every year Georgia Tech states, "We have a record number of women
%	enrolled this year, up by...blah blah blah." No matter how many times
%	they say this, it still doesn't appear that "The Ratio" (that is number
%	of guys to girls) is getting better. Is this just some hoax Georgia
%	Tech is pulling on us?  We will let you be the judge.
%
%	Given an array of information of Tech demographics over the years,
%	write a function called 'theRatio' that will determine which time
%	interval saw the largest growth of females to the overall growth of the
%	Georgia Tech population.
%
%	The input array a 3xN array. The first row is the year, the second row
%	is the total number of students at Georgia Tech, and the third row is
%	the number of females at Georgia Tech. Each column represents the data
%	from a different year in ascending order. Two consecutive columns
%	represents one time interval.
%
%	The output will be a 1x2 vector of the time interval that saw the
%	largest overall positive growth of women to total population.
%
% Example:
%	In 1950, there were 6,745 students at Georgia Tech of which 745 were
%	girls and in 1965 there were 8,231 students of which 941 girls.  The
%	change in the ratio between this time interval would be:
%
%               (941 - 745) / (8,231 - 6,745), or 0.132
%
%	If this was the largest postive change, then the output would be [1950,
%	1965].
%
% Hints:
%	- You may find the function diff() or your recently written function
%	  myDiff() useful for this problem. 
%
% Test Cases:
%	A = [2006, 2007, 2008, 2009, 2010, 2011;
%		 17935, 18742, 19413, 20291, 20720, 20941;
%		 4969, 5316, 5518, 5772, 6055, 6283];
%
%	B = [1885, 1925, 1955, 1967, 1980, 1995;
%		 84, 723, 2334, 3784, 8123, 14172;
%		 0, 14, 156, 224, 829, 1171];
%
%   [interval1] = theRatio(A);
%		interval1 => [2010, 2011]
%
%	[interval2] = theRatio(B);
%		interval2 => [1967, 1980]
%
%==========================================================================
% PROBLEM 6.  Do a Barrel Roll!
%--------------------------------------------------------------------------
%
% Function Name: barrelShift 
% Inputs  (2): - (double) an array
%              - (double) the number of times to shift the array
% Outputs (1): - (double) the shifted array
%
% Function Description:
%   Write a function called "barrelShift" that takes in an array and the
%   number of times the array is shifted and outputs the array shifted by
%   the number of times indicated by the second input. Each time the array
%   is shifted, it snakes around by going down the columns. If a number is
%   on the last row of the column, it then shifts to the first row of the
%   next column. If it is the last row of the last column, it then shifts
%   to the first row of the first column. For example, if you have an array
%   that looks like this:
%
%                 arr =  [10 11 12 13
% 						  14 15 16 17
% 						  18 19 20 21]
%
%   it will look like this after you perform a barrel shift:
%
%                           1 time:  [21 18 19 20
%									  10 11 12 13 
%                                     14 15 16 17]

%                           2 times: [17 14 15 16
%									  21 18 19 20 
%                                     10 11 12 13]

%                           3 times: [13 10 11 12
%									  17 14 15 16 
%                                     21 18 19 20]

%                           4 times: [20 21 18 19
%									  13 10 11 12 
%                                     17 14 15 16]
% 
%   Basically, every time you do one barrel shift the array is shifted down
%   the rows and across the columns to the right. The number at the end is
%   moved to the front position. This process is repeated for the number of
%   shifts specified. If the number of shifts is negative, then the vector
%   should be barrel shifted to the left instead of the right.
%
% Notes:
%   - If the number of shifts is zero, then the function should return the
%     original array.
%
% Hints:
%   - Remember if you try to index out of an array's boundary or index 
%     with a negative number, it will produce an error.
%   - You may find the mod(), reshape(), and size() functions useful.
%
% Test Cases:
%	A = [1 2 3 4 5];
%   B = [1 2; 3 4; 5 6; 7 8];
%   C = [12 8 2 5; 10 3 9 1; 4 11 6 7];
%
%   shifted1 = barrelShift(A, 3);
%       shifted1 => [3 4 5 1 2]
%
%   shifted2 = barrelShift(B, 6);
%       shifted2 => [5 6; 7 8; 2 1; 4 3]
%
%   shifted3 = barrelShift(C, 38);
%       shifted3 => [1 10 3 9; 7 4 11 6; 12 8 2 5]
%
%   shifted4 = barrelShift(C, -3);
%       shifted4 => [8 2 5 12; 3 9 1 10; 11 6 7 4]
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
