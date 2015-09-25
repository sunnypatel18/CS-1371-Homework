%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : <Ben Coordes>
% GT Email     : <bcoordes3@gatech.edu>
% Homework     : hw06
% Section      : <C02>
% Collaboration: <"I worked on the homework assignment alone, using
%                  only course materials.">
%
%
% Files provided with this homework:  
%	- ABCs_cell_arrays.m
%	- ABCs_structures.m
%
% Files to submit:
%	- ABCs_cell_arrays.m
%	- ABCs_structures.m
%	- multiTable.m
%	- myReshape.m
%	- pigLatin.m
%	- matchParens.m
%	- lcs.m
%	- vectorBingo.m
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
%==========================================================================
% PART 1.  ABC Problems
%--------------------------------------------------------------------------
%
% Part of this homework is in an m-file starting with ABCs_.  Open this
% file in MATLAB and complete it according to the directions contained
% within.
%
% There is also a p-file available for testing purposes. To run it please
% either type 'ABCs_hw06_pretest' into the command window or right-click on
% the file and select 'Run'. 
%
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic(s):
%	- Iteration
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
% PROBLEM 1.  UGA Mathematics 
%--------------------------------------------------------------------------
%
% Function Name: multiTable
% Inputs  (1): - (double) A number 
% Outputs (1): - (double) Multiplication tables up to that number
%
% Function Description: 
%	Reports have been coming in from U[sic]GA that they have been having
% 	issues with their math homework. They are willing to pay a significant
% 	amount of money to have access to different multiplication tables.
%	Being a savvy entrepreneur, you decide to provide these multiplication
%	tables. But being an engineer, you decide that you will write a
%	function in MATLAB to do it for you! 
%
% 	Write a function called "multiTable" that takes in a number and
% 	produces an array that represents the multiplication table for that
% 	number. A multiplication table is a NxN array where the first row and
% 	column of the array are the numbers from 0 to N inclusive. The rest of
% 	the table is comprised of the products between that row number and that
% 	column number. For example, if the number is 4, the multiplication
% 	table would look like this:
%
%                           [0, 1, 2, 3, 4
%                            1, 1, 2, 3, 4
%                            2, 2, 4, 6, 8
%                            3, 3, 6, 9, 12
%                            4, 4, 8, 12,16] 
% Notes:
% 	- The input is guaranteed to be an integer greater than 0. UGA math
% 	  classes haven't dealt with negative numbers yet. 
%   - Look at the relationship between the rows to try to program this
%     without using two loops for a more effecient algorithm. 
%
% Test Cases:
%	table1 = multiTable(5);
%		table1 => 
%		  [0 1 2  3  4  5
% 		   1 1 2  3  4  5
% 		   2 2 4  6  8  10
% 		   3 3 6  9  12 15
% 		   4 4 8  12 16 20
%		   5 5 10 15 20 25]
%
%	table2 = multiTable(3);
%		table2 => 
%		  [0 1 2 3
% 		   1 1 2 3
% 		   2 2 4 6
% 		   3 3 6 9]
%
%==========================================================================
% PROBLEM 2. Shape Up! 
%--------------------------------------------------------------------------
%
% Function Name: myReshape
% Inputs  (3): - (double) An array of doubles
%              - (double) An integer describing how many rows the new array 
%                         will have
%              - (double) An integer describing how many columns the new 
%                         array will have
% Outputs (2): - (double) The same array with the new dimensions
%
% Function Description:
%   Given an array of integers, write a function called "myReshape" that
%   will take in an array of doubles and two numbers describing the new
%   number of rows and columns of the array and return a new array
%   'reshaped' to those new dimensions. Take the elements row-wise from the
%   original array and place them column-wise in the new array. For
%   example:
%     
%               arr = [1 2  3  4
%                      5 6  7  8
%                      9 10 11 12]
%
%               ret = myReshape(arr, 2, 6);
%
%               ret => [1 3 5 7 9  11
%                       2 4 6 8 10 12]
%
%   If the input is an empty array, return an empty array.
%   
% Constraints:
%   - Do *not* use the reshape() function. The reshape() function takes
%     elements column-wise from the original array and places them
%     column-wise in the new array, so it wouldn't be too helpful anyway. 
%   - You must use iteration to solve this problem.
% 
% Notes:
%   - The total number of elements in the original and the new array
%     are guaranteed to match. That is a 4x3 array cannot be reshaped into
%     a 2x5 array, because the number of elements (12 vs. 10) do not match.
%     It can only be reshaped into a 1x12, 2x6, 3x4, 4x3, 6x2, 12x1.
%
% Hints:
%	- You will most likely have to use nested for loops to solve this. It
%	  might help to keep track of how many elements you've iterated
%     through.
%   - You might find size() and mod() helpful.
%
% Test Cases:
%   arr1 = myReshape([6 2 4 5 0 1], 3, 2);
%       arr1 => [6 5 
%                2 0  
%                4 1]
%
%   arr2 = myReshape([1 2 3 4; 5 6 7 8; 9 10 11 12], 2, 6);
%       arr2 => [1 3 5 7  9 11
%                2 4 6 8 10 12]
%
%   arr3 = myReshape([1 2 3 4; 5 6 7 8; 9 10 11 12], 3, 4);
%       arr3 => [1 4 7 10
%                2 5 8 11
%                3 6 9 12] 
%
%==========================================================================
% PROBLEM 3.  Igpay Atinlay 
%--------------------------------------------------------------------------
%
% Function Name: pigLatin
% Inputs  (1): - (char) A word or phrase to be translated into Pig Latin            
% Outputs (1): - (char) The translated word or phrase
%
% Function Description:
%   Pig Latin is a language game of word alterations that has existed in
%   some form since the late 1800s. Modern Pig Latin is a simple encodement
%   of words created by rearranging and adding specific syllables to the 
%   end of English words. Write a function called "pigLatin" that takes in
%   a string containing a word or phrase and returns the same string
%   translated into Pig Latin.
%
%   The rules for translating into Pig Latin are as follows:
%
%   1. In words that begin with a consonant sound, the initial consonant or
%      group of consonants is moved to the end of the word, and the
%      syllable "ay" is added. A hyphen is placed before the moved
%      consonants for clarity in transcribing back to English. For example:
%
%                   "computer" -> "omputer-cay"
%                   "stranded" -> "anded-stray"
%
%   2. In words that begin with a vowel, the syllable "way" is added to the
%      end of the word and is preceded by a hyphen. For example:
%
%                   "almond" -> "almond-way"
%                   "under" -> "under-way"
%
%   Notes:
%    - The input string may be a single word or a phrase containing
%      several words separated by spaces.
%    - The input string is guaranteed to contain only lowercase letters.
%    - For this function, "y" counts as a consonant.
%
%   Hints:
%    - You may find the strtok() and isempty() functions useful.
%
% Test Cases:
%	out1 = pigLatin('orange')
%       out1 => orange-way
%
%   out2 = pigLatin('rome was not built in one day')
%       out2 => ome-ray as-way ot-nay uilt-bay in-way one-way ay-day
%
%   out3 = pigLatin('do not count your chickens before they hatch')
%       out3 => o-day ot-nay ount-cay our-yay ickens-chay efore-bay ...
%               ey-thay atch-hay
%
%==========================================================================
% PROBLEM 4.  Validity of Expressions
%--------------------------------------------------------------------------
%
% Function Name: matchParens
% Inputs  (1): - (char)    A string including some number of parentheses 
%                          (and possibly other characters)
% Outputs (2): - (logical) True if the parentheses are not unbalanced at
%                          ANY point in the string, and false otherwise
%                (double)  A double representing the imbalance in
%                          parentheses 
%
% Function Description:
%   Write a function called "matchParens" that takes in a string that has
%   some number of parentheses and determines whether or not
%   the expression is valid as well as the total imbalance of the string.
%
%   An expression is valid if it contains the same number of open and
%   closed parentheses while containing no open parentheses which have no
%   matching closed parentheses and vice versa. The total imbalance of the
%   expression is then defined as the number of open parentheses minus the
%   number of closed parentheses.
%
%   For example: '(())', '()()()', and '((())((())))' are all valid strings
%   that should return true and an imbalance of 0.
%
%
%   However: '()))'  is unbalanced and should return false and -2
%
%            '(((((' is unbalanced and should return false and 5
%
%            '())('  is unbalanced and should return false and 0
%
%   Be careful of strings that have the same number of open and closing
%   parentheses but are imbalanced at some point in the string,
%   like in the last example.
%
%   Additionally, do not assume that an input string is composed entirely
%   of parentheses. Any character that is not '(' or ')' should have no 
%   bearing on the outputs of your function.
%
% Constraints:
%	- Do not use the sum(), strfind(), findstr(), find(), or any other
%	  similar functions. They will most likely overcomplicate the problem
%	  anyway.
%   - You must use iteration to solve this problem.
%
%
% Test Cases:
%
%   str1 = '(())())))(())'
%   str2 = '(k((vx)((z/)))7)'
%
%   [log1 imbalance1] = matchParens(str1);
%       log1 => false
%       imbalance1 => -3
%
%	[log2 imbalance2] = matchParens(str2);
%		log2 => true
%		imbalance2 => 0
%
%   In addition it may be useful to use the test cases provided in the
%   examples above.
%
%==========================================================================
% PROBLEM 5.  Longest Common Substring
%--------------------------------------------------------------------------
%
% Function Name: lcs
% Inputs  (2): - (char) a string
%                (char) another string
% Outputs (1): - (double) the length of the longest common substring   
%
% Function Description:
%   Given two strings, we can define the 'longest common substring' as the
%   longest string of consecutive characters that appear in both strings.
%   For example, the longest common substring between 'world' and
%   'wolly' would be 'wo', of length 2.  A common method of finding this
%   substring is by using a table-filling approach.  The algorithm is as
%   follows:
%
%    1. Set up an array of size length(string 1) by length(string 2),
%       filled with zeros.  We can imagine that the ith row in the array
%       corresponds to the ith character in string 1, and the jth column in
%       the array corresponds to the jth character in the second string.
%       Taking our example above, we get something like this:
%
%              w  o  l  l  y
%          w   0  0  0  0  0        
%          o   0  0  0  0  0
%          r   0  0  0  0  0
%          l   0  0  0  0  0
%          d   0  0  0  0  0
%
%    2. Now, take each element in the array, going left-to-right,
%       top-to-bottom, and check the corresponding letters in the two
%       strings. If they are the same, set the value at that point, call
%       it array(i, j), to 1 + array(i-1, j-1), or just 1 if i-1 or j-1 is
%       0. For example:
%
%       After doing the first two rows:
%
%              w  o  l  l  y
%          w   1  0  0  0  0        
%          o   0  2  0  0  0
%          r   0  0  0  0  0
%          l   0  0  0  0  0
%          d   0  0  0  0  0
%
%       We got a 1 at array(1, 1) because str1(1) == str2(1).  Then, we got
%       a 2 at array(2, 2) because str1(2) == str2(2), and array(1, 1) was
%       1, so we set array(2, 2) = 1 + array(1, 1).
%
%       After doing the rest:
%              w  o  l  l  y
%          w   1  0  0  0  0        
%          o   0  2  0  0  0
%          r   0  0  0  0  0
%          l   0  0  1  1  0
%          d   0  0  0  0  0
%
%       3.  Then, the length of the longest common substring can be found
%           by simply taking the max element in the array, which in our 
%           example is 2, as expected.       
%
% Notes:
%	- Case does matter, so 'H' ~= 'h'.
%   - You don't have to actually find the longest common substring, just
%     its length. 
%   - You are guaranteed that both strings will have at least one
%     character.
%
% Hints: 
%   - You may find the max() function useful. 
%
% Test Cases:
%	l1 = lcs('hello, world', 'hey there')
%       l1 => 2
%
%   l2 = lcs('Need a good string?', 'Why not Zoidberg?')
%       l2 => 2
%   
%   l3 = lcs('aeiou', 'bcd')
%       l3 => 0
%
%==========================================================================
% PROBLEM 6.  And Bingo was His Name-O!
%--------------------------------------------------------------------------
%
% Function Name: vectorBingo
% Inputs  (2): - (double) an array of size NxN
%              - (double) a row vector of 1XN
% Outputs (3): - (logical) if there is a bingo or not          
%              - (char) the direction of bingo found 
%              - (double) the location of the bingo
%
% Function Description:
%   Write a function called "vectorBingo" that takes in an array of size
%   NxN and a vector of 1xN. The function will determine if the array
%   contains a continuous group of numbers in a straight line which is
%   identical to the elements in the vector. If so, then the function 
%   should also find the location and direction of the bingo group.
%
%	For those unfamiliar with Bingo, an example is included below:
%	If array looks like this:
%
%	array = [ 1 18 39 60 74
%			 10 21 45 47 63
%			  2 27 41 54 61
%			 14 24 42 59 70
%			  5 25 35 46 75];
%
%	Then the vector [2 27 41 54 61] is a valid bingo group, because all of
%	the numbers match one continuous row, column, or diagonal (the third
%	row in this case). However, the vector [60 47 54 59 70] is not a valid
%	bingo group because although four of the numbers are in a single
%	column, the fifth number is from a different column.
%
%   The location of the bingo is the number of the row or column at which
%   bingo is found. If bingo is found on the first row then the location is
%   1. If it is found on the third column, then the location is 3. If bingo
%   is found on a diagonal then the function should follow the
%   specifications below: 
%
%    - If bingo is found on the major diagonal (top left to bottom right),
%	   then the location should be 1.
%    - If bingo is found on the minor diagonal (top right to bottom left),
%	   then the location should be 2.
%    - Finally, if no bingo is found then the location should be 0.
%
%	The rules for bingo direction are as follows:
%
%   - If bingo is found on a row vector, then the direction output should
%	  be 'across'.
%   - If bingo is found on a column vector, then the direction output 
%     should be 'down'.
%   - If it is found on a diagonal, then the direction output should be
%     'diagonal'.
%   - If no bingo is found, then the direction should be 'no bingo'.
%
% Note:
%	- The elements in the array may not necessarily be in the same order as
%	  the bingo group, but as long as the same elements are present, then
%	  it should be counted as bingo.
%
% Hints:
%   - There will be no duplicate bingo vectors on the array.
%   - You may find the sort() function useful in solving this problem.
%
% Test Cases:
%   arr1 = [17 24  1  8 15;
%           23  5  7 14 16;
%            4  6 13 20 22;
%           10 12 19 21  3;
%           11 18 25  2  9];
%
%   arr2 = [19  4  1  8;
%           19 18  2 24;
%           10  1 21  1;
%           16  7 17 11];
% 
%   vec1 = [17 24  1  8 15];
%   vec2 = [5  17 13  9 21];
%   vec3 = [21 14  2  8 20];
%   vec4 = [8 1  2 16];
%   vec5 = [2 6 16  3];
%
%   [bingo1 dir1 loc1] = vectorBingo(arr1, vec1);
%     bingo1 => true
% 	  dir1 => 'across'
% 	  loc1 =>  1
%
%   [bingo2 dir2 loc2] = vectorBingo(arr1, vec2);
%     bingo2 => true
% 	  dir2 => 'diagonal'
% 	  loc2 =>  1
%
%   [bingo3 dir3 loc3] = vectorBingo(arr1, vec3);
% 	  bingo3 => true
% 	  dir3 => 'down'
% 	  loc3 =>  4
%
%   [bingo4 dir4 loc4] = vectorBingo(arr2, vec4);
%     bingo4 => true
% 	  dir4 => 'diagonal'
% 	  loc4 =>  2
%
%   [bingo5 dir5 loc5] = vectorBingo(arr2, vec5);
% 	  bingo5 => false
% 	  dir5 => 'no bingo'
% 	  loc5 =>  0
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
