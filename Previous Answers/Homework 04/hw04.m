%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : <Ben Coordes>
% GT Email     : <bcoordes3@gatech.edu>
% Homework     : HW04
%
% Collaboration: <"I worked on the homework assignment alone, using
%                  only course materials."
%                 
% Files provided with this homework:
%   - hw04.m
%   - ABCs_conditionals.m
%   - ABCs_etest.m
%   - ABCs_pretest_hw04.p
%   - CS1371 ETestTutorial.pdf
%
% Files to Submit:
%   - hw04.m
%   - ABCs_conditionals.m
%   - ABCs_etest.m
%   - balanceGrades.m
%   - isMagic.m
%   - arrayUnfold.m
%   - arrayReplace.m
%   - eq2coeff.m
%   - phoneConvert.m
%   - caesar.m
%
% Instructions:
%   1) Follow the directions for each problem very carefully or you will
%   lose points.
%   2) Make sure you name variables exactly as described in the problems or
%   you will not receive credit.
%   3) Read the announcements! Any clarifications and/or updates will be
%   announced on T-Square. Check the T-Square announcements at least once
%   a day.
%   4) You should not use any of the following functions in any file that 
%   you submit to T-Square:
%       a) clear
%       b) clc
%       c) solve
%		d) input  
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%==========================================================================
% PART 1.  ABC Problems
%--------------------------------------------------------------------------
%
% Part of this homework are two m-files called ABCs_conditionals and
% ABCs_etest. Open this file in MATLAB and complete it according to the
% directions contained within. Since the ABCs cover upcoming topics for the
% next homework, it is suggested you complete them last. 
%
% Files to Complete: 
%       - ABCs_conditionals.m
%       - ABCs_etest.m
% ABCs File Testing:
%       - Run ABCs_pretest_hw04.p: ABCs_pretest_hw04()
%
%==========================================================================
% PART 2.  Drill Problems
%--------------------------------------------------------------------------
% The drill problems cover the following major topic:
%       - Arrays
%       - Strings
%
% Follow the directions carefully and make sure files names as well as
% function headers are written exactly as described in the problem text. If
% your function headers are not written as specified, then you will receive
% an automatic zero for the problem.
%
% All drill problems must be functions (i.e. contain valid function
% headers). Any scripts turned in will be given a 0 automatically.
%
%==========================================================================
% Homework Video of the Week
%--------------------------------------------------------------------------
% http://www.youtube.com/watch?v=44wy5rWhUCI
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% **IMPORTANT, PLEASE READ** 
%   Even though you are learning conditionals, do not use them or iteration
%   on this homework. Every problem can be completed without them and they
%   generally will not be allowed on your test. Doing so can result in a
%   reduction of your grade on this homework.
%==========================================================================
% PROBLEM 1. Ride the Curve
%--------------------------------------------------------------------------
%
% Function Name: balanceGrades
% Inputs  (2): - (double) An array
%              - (double) A new target average
% Outputs (1): - (double) The curved array with the new average
%
% Function Description:
%   Given an array of grades and a target average, write a function named
%   "balanceGrades" that will adjust the grades up or down such that the
%   average of the adjusted matrix is the new target average. Each grade in
%   the matrix should be adjusted by the same amount. Grades above 100 are
%   acceptable.
%   
% Hints:
%	- To start, try adding numbers to an array and seeing how it changes
%	  the overall average. 
%   - You may find the mean() function useful. 
%
% Test Cases:
%	x1 = [90 84 73 67 
%         99 92 75 86 
%         66 58 93 90 
%         45 97 88 79];
%
%	x2 = [75 77 91 59
%         70 89 94 80
%         78 99 81 67
%         95 49 87 73]; 
%
%   a = balanceGrades(x1,91)
%   a => [100.875  94.875   83.875   77.875
%         109.875  102.875  85.875   96.875 
%	      76.875   68.875   103.875  100.875 
%         55.875   107.875  98.875   89.875]
%
%   b = balanceGrades(x2,75)
%	b => [71   73   87   55
%         66   85   90   76
%         74   95   77   63
%         91   45   83   69]
%
%==========================================================================
% PROBLEM 2.  Every Little Thing She Does is Magic
%--------------------------------------------------------------------------
%
% Function Name: isMagic
% Inputs  (1): - (double)  A NxN array
% Outputs (1): - (logical) A logical value representing whether the array
%                          is a magic square or not
% Function Description:
%   Write a function called "isMagic" that takes an NxN array and returns a 
%   a logical value on whether the array is a magic square or not. By
%   definition a magic square is an array where all the columns, rows, and
%   diagonals add up to the magic constant, defined by:
%
%                           M = N(N^2 + 1)
%                               ----------
%                                    2
%
%   Where N is the number of rows/columns. In addition, a magic square
%   contains all the integers from 1 to N^2. This function should check for
%   for all these properties, and then return a logical true/false on
%   whether or not the array satisfies these conditions.
%
% Constraints:
%   - You may not use conditionals to solve this problem. Instead,
%     think of which vector and logical operations you may use instead.
%
% Hints:
%   - You may find the diag(), sort(), and all() functions useful.
%
% Test Cases:
%   arr1 = [8     1     6
%           3     5     7
%           4     9     2];
%   out1 = isMagic(arr1);
%   out1 => true
%
%   arr2 = [17     2     3    13
%            5    12    10     8
%            9     7     8    12
%            4    14    15    16];
%   out2 = isMagic(arr2);
%   out2 => false;
%
%==========================================================================
% PROBLEM 3.  Origami
%--------------------------------------------------------------------------
%
% Function Name: arrayUnfold
% Inputs  (1): - (double) An array
% Outputs (1): - (double) The same array unfolded
%
% Function Description:
%	Write a function called "arrayUnfold" that takes in a numerical array
%	and "unfolds" it in the following way:
%
%     1. The array should first be unfolded to the right, meaning that
%        the unfolded array should be a mirror image of the original from
%        left to right.
%     2. The unfolded array generated from step 1 that is now directly to
%        the right of the original array should be unfolded directly
%        downwards and should be a mirror image of the recently
%        generated array from step 1 from top to bottom.
%     3. The unfolded array generated from step 2 that is now directly
%        below the array from step 2 should be unfolded one last time
%        directly to the left and should be a mirror image of the
%        unfolded array generated from step 2 from right to left.
%
%   In order to facilitate understanding of the unfolding criteria, a 
%   pictoral description is provided below:
%
%    ------       -------------       -------------       -------------
%   |   >  |     |   >  |  <   |     |   >  |  <   |     |   >  |  <   |
%   |  <   | --> |  <   |   >  | --> |  <   |   >  | --> |  <   |   >  |
%   |   o  |     |   o  |  o   |     |   o  |  o   |     |   o  |  o   |
%    ------       -------------       -------------|     |-------------|
%                                           |  o   |     |   o  |  o   |
%                                           |   >  |     |  <   |   >  |
%                                  	        |  <   |     |   >  |  <   |
%                                     	     ------       -------------
% Hints:
%   - This problem can be greatly simplified by noticing the relationship
%     between the second and fourth images in the pictorial
%     representation above.
%
% Constraints:
%   - You may NOT use fliplr(), flipud(), horzcat(), vertcat(), or rot90().
%
% Test Cases:
%   test1 = arrayUnfold([1 0; 0 1]);
%       test1 => [1 0 0 1
%                 0 1 1 0
%                 0 1 1 0
%                 1 0 0 1]
%
%   test2 = arrayUnfold([1 2 3]);
%       test2 => [1 2 3 3 2 1
%                 1 2 3 3 2 1]
%
%   test3 = arrayUnfold([]);
%       test3 => []
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
% PROBLEM 5. Finding Coefficients
%--------------------------------------------------------------------------
% 
% Function Name: eq2coeff
% Input   (1): (char)   A string representing a two-variable equation in the
%                       form of of Ax + By = C
% Outputs (3): (double) The numerical value of the coefficient A 
%              (double) The numerical value of the coefficient B
%              (double) The numerical value of the coefficient C 
%
% Function Description:
%   The function takes in a string that is an equation in the form of 
%   'Ax + By = C', and then returns the numerical values for A, B, and C. 
%
% Notes:
%   - You might find the str2num() and strtok() functions useful for
%     this problem. 
%   - To find the value of the coefficients, think about where they occur
%     in respect to terms that will always be in the equation.
%     Specifically, think about where each of the numbers are in terms of
%     the 'x', 'y', '+', and '=' characters. 
%   - The equation will always be of the form 'Ax + By = C'. We will not
%     give a case of 'By + Ax = C'. 
%   - The x and y terms are guaranteed to have a numerical value before 
%     them. Essentially, we would never test your code with the case 
%     'x + y = C'. Instead, we would write it as '1x + 1y = C'.
%   - There may be any number of spaces between the coeffecient and
%     operator, though you can always assume there will be at least one
%     space between the first coeffecient and the operator and between the
%     operator and the second coefficient.
%
% Test Cases:
%   [A B C] = eq2coeff('2x + 4y = 8');
%   A -> 2
%   B -> 4
%   C -> 8
%
%   [A B C] = eq2coeff('3x + -4y = 5');
%   A -> 3
%   B -> -4
%   C -> 5
%
%   [A B C] = eq2coeff('-1x + 1y = 0');
%   A => -1
%   B => 1
%   C => 0
%
%   [A B C] = eq2coeff('3x     +      4y   =     0');
%   A => 3
%   B => 4
%   C => 0
%
%==========================================================================
% PROBLEM 6.  Hello, You Have Reached 1-800-BUYATREE
%--------------------------------------------------------------------------
%
% Function Name: phoneConvert
% Inputs  (1): - (char) A string representing a phone number that contains
%						letters 
% Outputs (1): - (char) The same telephone number with all letters
%						converted to their corresponding numbers (as found
%						on a telephone)
% 
% Function Description:
%   If you have seen phone numbers that contain letters instead of numbers,
%	you may have thought "I wish I could know the numbers that correspond
%	to those letters so I can dial the number!" With the help of MATLAB,
%	now you can! Write a function called "phoneConvert" that takes in a
%	string containing a phone number and returns a string that contains the
%	same telephone number in a different format. The instructions and
%	formatting for the inputs and outputs can be found below:
%
%   Input Format:
%     - The input will start with an "area code" in the format "###-" or
%       "1-###-" (where the # character is used here to denote any number
%       between 0 and 9, inclusive)
%     - The remainder of the input string will contain AT LEAST 7 UPPERCASE
%       LETTERS
%     - An example of an input is '1-800-BUYATREE'
%
%   Specifics:
%     - Convert all letters to their respective numbers (as found on a
%       telephone keypad)
%     - Retain only the first 7 numbers which will later be inserted after
%       the area code
%     - Place a hyphen between the 3rd and 4th number (of the 7 given in
%       the previous instruction)
%     - Replace all letters in the phone number with these new numbers
%
%   OUTPUT FORMAT:
%     - The output string should look like either '1-###-###-####' or
%       '###-###-####' (where the # character is used here to denote any
%       number between 0 and 9, inclusive)
%     - For a listing of which letters correspond to which numbers, you
%       should consult the following website or the nearest telephone 
%       keypad:
%
% http://upload.wikimedia.org/wikipedia/commons/4/43/Telephone-keypad.svg
%
% Hints:
% 	- You may find the strtok() or strfind() functions useful
%
% Test Cases:
%   pn1 = phoneConvert('1-800-BUYATREE');
%       pn1 => '1-800-289-2873'
%
%   pn2 = phoneConvert('229-EVERYDAYIMSHUFFLIN');
%       pn2 => '229-383-7932'
%
%	pn3 = phoneConvert('1-900-YOURHAT');
%       pn3 => '1-900-968-7428'
%
%==========================================================================
% PROBLEM 7. Cryptography
%--------------------------------------------------------------------------
%
% Function Name: caesar
% Inputs  (2): - (char) a string of unknown length
%              - (double) an integer describing the shift
% Outputs (1): - (char) a coded string using the Caesar cipher
%
% Caeser Cipher Information:
% 	The Caesar cipher is named after Julius Caesar, who, according to 
% 	Suetonius, used it with a shift of three to protect messages of 
% 	military significance. It is unknown how effective the Caesar cipher
% 	was at the time, but it is likely to have been reasonably secure, not
% 	least because most of Caesar's enemies would have been illiterate and
% 	others would have assumed that the messages were written in an unknown 
%   foreign language.
% 
%   Caesar ciphers can still be found today in children's toys such as
%   secret decoder rings. A Caesar shift of thirteen is also performed in
%   the ROT13 algorithm, a simple method of often used to obscure text
%   such as joke punchlines and spoilers online.
%
%	In the Caesar cipher, each letter is shifted by the specified amount.
%	For example, if the shift is 3, then the letter 'a' would be coded as
%	the letter 'd'. 
%
% Function Description:
%	The function takes in a string and then uses the Caesar cipher to 
%	encode it. Only letters (both upper case and lower case) should be
%	encoded using the Caesar cipher. Any other characters such as spaces,
%	periods, etc., should not be encoded.
%
% Notes:
%   - The Caesar cipher should work for both positive and negative integers
%     that indicate the shift as given by the second input.
%   - There is no limit to the value of the shift number in the second 
%     input.
% 
% Hints:
%   - The mod() function and its effect on both positive and
%     negative numbers may be useful.
%
% Test Cases:
%	coded1 = caesar('Are we there yet?', 3);
%       coded1 => 'Duh zh wkhuh bhw?'
%
%   coded2 = caesar('Duh zh wkhuh bhw?', -3);
%       coded2 => 'Are we there yet?'
%
%   coded3 = caesar('Actually, I don''t know what this does!', -26);
%       coded3 => 'Actually, I don''t know what this does!'
%
%   coded4 = caesar('Hello World.',79);
%       coded4 => 'Ifmmp Xpsme.'
%
%==========================================================================
% FINISHED!
%--------------------------------------------------------------------------
% 
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
