%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : <Sunny Patel>
% GT Email     : <sunnypatel18@gatech.edu>
% Homework     : hw04
% Section      : <B05>
% Collaboration: <place here one of the following:
%                 "I worked on the homework assignment alone, using
%                  only course materials."
%                 "
%
%
% Files provided with this homework:  
%   - hw04.m
%   - ABCs_strings.m
%   - ABCs_pretest_hw04.m
%
% Files to submit:
%   - hw04.m
%   - ABCs_strings.m
%   - disemvowel.m
%   - phoneConvert.m
%   - interweave.m
%   - stringKnot.m
%   - caesar.m
%   - ottendorf.m
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
% Part of this homework is an m-files called "ABCs_" 
% Open this file in MATLAB and complete it according to the
% directions contained within. Since the ABCs cover upcoming topics for the
% next homework, it is suggested you complete them last. 
%
% Files to Complete: 
%       - ABCs_iteration.m
% ABCs File Testing:
%  >> ABCs_pretest_hw04
%
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic(s):
%   - Strings
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
% PROBLEM 1.  Pls Hlp
%--------------------------------------------------------------------------
%
% Function Name: disemvowel
% Inputs  (2): - (char) A string
%              - (char) A vowel
% Outputs (1): - (char) The original string without occurences of the vowel
%
% Function Description:
%   Write a function called "disemvowel" that takes in a string and a vowel
%   character and returns the same string except with all occurences of
%   that vowel removed from it. If the string does not contain the vowel,
%   then the function should just return the original string with no
%   changes.
%
% Notes:
%   - The vowel character will always be given as a lowercase letter.
%   - Uppercase vowel occurences must also be removed, e.g. the function
%     should return 'Mcfee' if the inputs are 'McAfee' and 'a'.
%
% Test Cases:
%   str1 = disemvowel('Boring evil courses', 'o');
%       str1 => 'Bring evil curses'
%
%   str2 = disemvowel('HeeeeeeeeEEEEEEEEEELP!', 'e');
%       str2 => 'HLP!'
%
%   str3 = disemvowel('Nothing should be removed here, nope.', 'a');
%       str3 => 'Nothing should be removed here, nope.'
%
%==========================================================================
% PROBLEM 2.  Hello, You Have Reached 1-800-BUYATREE
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
% Notes:
%   - You do not need conditionals or iteration to solve this problem.
%
% Hints:
% 	- You may find the strtok() or strfind() functions useful
%
% Test Cases:
%   pn1 = phoneConvert('1-800-BUYATREE');
%       pn1 => '1-800-289-2873'
%
%   pn2 = phoneConvert('229-OPPANGANGNAMSTYLE');
%       pn2 => '229-677-2642'
%
%	pn3 = phoneConvert('1-900-YOURHAT');
%       pn3 => '1-900-968-7428'
%
%==========================================================================
% PROBLEM 3 - Underwater Basketweaving 202
%--------------------------------------------------------------------------
%
% Function Name: interweave
% Inputs  (2): - (char) A string of length M
%              - (char) A string of length N
% Outputs (1): - (char) A string of the two vectors mixed together
% 
% Function Description:
%   Write a function called "interweave" that takes in two strings then
%   intertwines them based off the following steps:
%
%   1. The first string will be placed in all the odd indices
%      For example, 'hello' becomes 'h_e_l_l_o_'. (The underscores will be
%      refered to as spaces.)
%
%   2. The second string will be reversed and placed into each of the 
%      spaces. For example, if the second string is 'WORLD' you would
%      reverse 'WORLD' and start placing the string 'DLROW' into the
%      spaces.  The resulting string would be 'hDeLlRlOoW'
%
%   3. Fill any extra spaces with hyphens ('-')
%
%   3. Return the resulting string.
%   
% Notes:
%   - The length of the final vector should be twice the length of the
%     longest vector.
%   - You may find the creating a temporary placeholder string helpful.
%   - The char() function may be useful.
%
% Test Cases:
%   mixed1 = interweave('yellow' , 'jacket');
%       mixed1 => 'yteelklcoawj'
%
%   mixed2 = interweave('JUMBO','shrimp');
%       mixed2 => 'JpUmMiBrOh-s'
%
%   mixed2 = interweave('engineer', '');
%       mixed3 => 'e-n-g-i-n-e-e-r-'
%
%==========================================================================
% PROBLEM 4.  Don't Be Knotty
%--------------------------------------------------------------------------
%
% Function Name: stringKnot
% Inputs  (1): - (double)  A M x N array
% Outputs (2): - (double)  The original array unfolded
%              - (char) The string formed by the edge values
%
% Function Description:
%   Create a function called "stringKnot" that takes in a given an array of 
%   numbers and "unfolds" the array in the following way:
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
%
%   Finally, take the outer ring of the entire unfolder array, and convert
%   it into vector form, with the first index being the left-most corner of
%   the array.
%
%   Convert this vector into a string of letters (assume the numbers in the
%   vector are ASCII values). Return both the unfolded array and the string
%   found from the outside ring. 
%
% Hints:
%   - This problem can be greatly simplified by noticing the relationship
%     between the second and fourth images in the pictorial
%     representation above.
%
% Constraints:
%   - You may NOT use fliplr(), flipud(), horzcat(), vertcat(), or rot90().
%
% Test Cases:
%
%   a = [67 70 74; 70 72 68; 70 72 75; 67 80 87];
%   b = [66 111; 111 75];
%   c = [109   105   115; 112   105   112];
%
%   [out1 out2] = stringKnot(a)
%       out1 =>  [67    70    74    74    70    67
%                 70    72    68    68    72    70
%                 70    72    75    75    72    70
%                 67    80    87    87    80    67
%                 67    80    87    87    80    67
%                 70    72    75    75    72    70
%                 70    72    68    68    72    70
%                 67    70    74    74    70    67]
%       out2 => 'CFJJFCFFCCFFCFJJFCFFCCFF'
%
%   [out3 out4] = stringKnot(b)
%       out3 => [ 66  111   111   66
%                111   75    75  111
%                111   75    75  111
%                 66  111   111   66]
%       out4 => 'BooBooBooBoo' 
%
%   [out5 out6] = stringKnot(c)
%       out5 => [109   105   115   115   105   109
%                112   105   112   112   105   112
%                112   105   112   112   105   112
%                109   105   115   115   105   109]
%       out6 => 'missimppmissimpp'
%
%==========================================================================
% PROBLEM 5. Cryptography
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
% 	was at the time, but it is likely to have been reasonably secure
%   because most of Caesar's enemies would have been illiterate and
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
%     that indicate the shift given by the second input.
%   - There is no limit to the value of the shift number in the second 
%     input.
% 
% Hints:
%   - The mod() function may be useful.
%
% Test Cases:
%	coded1 = caesar('Are we there yet?', 3);
%       coded1 => 'Duh zh wkhuh bhw?'
%
%   coded2 = caesar('Duh zh wkhuh bhw?', -3);
%       coded2 => 'Are we there yet?'
%
%   coded3 = caesar('Actually, I don''t know what this does!', -26);
%       coded3 => 'Actually, I don't know what this does!'
%
%   coded4 = caesar('Hello World.',79);
%       coded4 => 'Ifmmp Xpsme.'
%
%==========================================================================
% PROBLEM 6.   "Otten... dork?"
%--------------------------------------------------------------------------
%
% Function Name: ottendorf
% Inputs  (3): - (char)   A N x N character array consisting of the excerpt
%                         in which the secret message is hidden
%              - (double) A vector denoting the rows of secret message
%              - (double) A vector denoting the columns of secret message
% Outputs (1): - (char)   A string that has the hidden message
%
% Function Description:
%   Do you remember when you would pass notes in class?  And then the most
%   embarassing thing would happen... your teacher would catch you and read
%   your note in front of the whole class! Well, in order to prevent
%   people from ever reading your notes again, you are now going to encode
%   your message in an Ottendorf Cipher.
%
%   The Ottendorf Cipher is most notably recognized from the movie
%   "National Treasure". The original cipher has hidden message that is
%   encoded using a piece of literature (magazine, article, letter, etc.).
%   Usually the cipher is series of 3 numbers that correspond to the page,
%   the line, and the character in that line respectively. In our case, we
%   are looking at one page documents, so we only have the line numbers,
%   and the character in that line.
%
%   Given an array that contains the piece of literature that our message
%   is encoded in, the line positions of each letter, and the characters in
%   those designated lines, write a function called "ottendorf" that
%   decodes the secret message.  
%
%   The array will always be square, and there will be spaces at the end of
%   the lines to make sure every line is the same amount of characters.
%   This will not affect your coding of your solution.  You merely
%   only need to use the row positions and column positions to index out
%   the secret message.
%
%   Once you have indexed out the secret message, the last thing you want
%   to do is to make every letter lowercase.
%
% Hints:
%	- Think about how you can index an array with a single number, instead of
%     a row and column. 
%
% Test Cases:
%
%   NOTE: The variable 'passage' is the actual passage so that you can look
%   at it and be able to read it normally. 'pass' is the same passage, but
%   it is formatted for you so that you can easily copy and paste it into
%   the command window. Follow the directions below:
%
%       1) Highlight the entire pass variable
%       2) On the top menu bar: Text -> uncomment, or use CTRL+T
%       3) Copy the text
%       4) Paste the text into the command window.
%          Alternatively, after you uncomment the text you can press F9.
%
%   Doing this will ensure that the formatting is correct for you.
%
%	passage = 'It is a curious thing, Harry, but perhaps those who are  
%              best suited to power are those who have never sought it.
%              Those who, like you, have leadership thrust upon them,  
%              and take up the mantle because they must, and find to   
%              their own surprise that they wear it well.              ';
% 
% 	pass = ['It is a curious thing, Harry, but perhaps those who are ' ... 
%          ;'best suited to power are those who have never sought it.' ...
%          ;'Those who, like you, have leadership thrust upon them,  ' ...
%          ;'and take up the mantle because they must, and find to   ' ...
%          ;'their own surprise that they wear it well.              '];
%
%   rows1 = [1, 1, 2, 5, 3, 3, 4, 5, 2, 1, 4, 4, 4, 3, 5, 1, 2, 4, 1,...
%            2, 3, 1, 2, 5];
%   cols1 = [2, 24, 54, 11, 6, 13, 29, 24, 22, 8, 33, 48, 45, 30, 18,...
%            20, 35, 17, 55, 3, 4, 7, 50, 31];
%   rows2 = [1, 4, 3, 4, 5, 2, 3, 3, 2, 4, 1, 4, 2];
%   cols2 = [9, 53, 48, 47, 12, 3, 15, 30, 25, 17, 10, 26, 36];
%
%   decoded1 = ottendorf(pass, rows1, cols1);
%		decoded1 => 'this is a hidden message'
%
%	decoded2 = ottendorf(pass, rows2, cols2);
%		decoded2 => 'confused much'
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
