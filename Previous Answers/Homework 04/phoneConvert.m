% PROBLEM 6.  Hello, You Have Reached 1-800-BUYATREE
%--------------------------------------------------------------------------
function digits = phoneConvert(pNum)
    % Set all character values equal to the number pad values
    pNum( pNum ==  'A' |  pNum == 'B' |  pNum ==  'C' ) = '2';
    pNum( pNum ==  'D' |  pNum == 'E' |  pNum == 'F'  ) = '3';
    pNum( pNum ==  'G' |  pNum == 'H' |  pNum == 'I'  ) = '4';
    pNum( pNum ==  'J' |  pNum == 'K' |  pNum == 'L'  ) = '5';
    pNum( pNum ==  'M' |  pNum == 'N' |  pNum == 'O'  ) = '6';
    pNum( pNum ==  'P' |  pNum == 'Q' |  pNum == 'R' |  pNum == 'S'  ) = '7';
    pNum( pNum ==  'T' |  pNum == 'U' |  pNum == 'V'  ) = '8';
    pNum( pNum ==  'W' |  pNum == 'X' |  pNum == 'Y' |  pNum == 'Z'  ) = '9';

    

end
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