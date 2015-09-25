%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : <Sunny Patel>
% GT Email     : <sunnypatel18@gatech.edu>
% Homework     : hw07
% Section      : <B05>
% Collaboration: <place here one of the following:
%                 "I worked on the homework assignment alone, using
%                  only course materials."
%                >"
%
% Files provided with this homework:  
%   - hw07.m
%   - ABCs_LowLevelFileIO
%   - math1.txt
%   - math2.txt
%   - math3.txt
%   - math4.txt
%   - math5.txt
%   - message1.txt
%   - message2.txt
%   - testcase1_solution.txt
%   - testcase2_solution.txt
%   - Shakespeare1.txt
%   - Shakespeare1_Solution.txt
%   - Shakespeare2.txt
%   - Shakespeare2_Solution.txt
%   - Shakespeare3.txt
%   - Shakespeare3_Solution.txt
%   - wordList.txt
%   - Wrap_test1.txt
%   - Wrap_test1_solution.txt
%   - Wrap_test2.txt
%   - Wrap_test2_solution.txt
%   - ABCs_LowLevelFileIO.m
%
% Files to submit:
%   - hw07.m
%   - ABCs_LowLevelFileIO.m
%   - mathProblem.m
%   - secretMessage.m
%   - Shakespeare.m
%   - wordWrap.m
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
% Homework Video of the Week
% http://www.youtube.com/watch?v=_yVPewAybZw
%==========================================================================
% PART 1.  ABC Problems
%--------------------------------------------------------------------------
%
% Part of this homework is an m-files called "ABCs_LowLevelFileIO" 
% Open this file in MATLAB and complete it according to the
% directions contained within. Since the ABCs cover upcoming topics for the
% next homework, it is suggested you complete them last. 
%
% Files to Complete: 
%       - ABCs_LowLevelFileIO.m
% ABCs File Testing:
%  >> ABCs_pretest_hw07
%
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic(s):
%   - Low Level File IO
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
% PROBLEM 1.   Elementary Math
%--------------------------------------------------------------------------
%
% Function Name: mathProblem
% Inputs  (2): - (char)   The name of the file containing directions
%              - (double) Starting number
% Outputs (1): - (double) Final number modified by the directions in the
%                         file
% Function Description:
%   Write a function called "mathProblem" that takes in a number and a file
%   containing directions and applies those directions to the input number.
%   An example file would be:
%
%               Add 5
%               Subtract 2
%               Divide 1
%               Multiply 5
%
%   According to this file, if the original number had been 3, the final
%   number would be 30. The only commands that can be asked are 
%   'Add', 'Subtract', 'Multiply', or 'Divide'. 
%
%   Notes:
%    - The only directions that will be asked are the four listed above.
%    - If the input file is empty, the function should return the
%      original number.
%    - There will only be one space between in the direction and the
%      number in the file.
%         
% Test Cases:
%   result1 = mathProblem('math1.txt',3);
%       result1 -> 30
%
%   result2 = mathProblem('math2.txt',2);
%       result2 -> 10.5625
%
%   result3 = mathProblem('math3.txt',9);
%       result3 -> 9
%
%==========================================================================
% PROBLEM 2.   Decode the Message
%--------------------------------------------------------------------------
%
% Function Name: secretMessage
% Inputs  (1): - (char) the name of a .txt file
% Outputs (0): - None
%
% Output files (1): a .txt file containing the decoded message
%
% Function Description:
%   So have you ever wanted to decipher a secret message? Well, now you
%   can! Your task is to decipher a message that one of your friends sent
%   you, so the two of you can talk without anyone being the wiser.
%  
%   Write a function called "secretMessage" that inputs the name of a .txt
%   file included in the Homework folder that contains a message and
%   outputs a new file that contains the decoded message. This message will
%   be decoded in the following way:
%  
%   Given the message contained in the .txt file, keep only the odd lines
%   starting with the first one (so lines 1, 3, 5, etc.) and write them to
%   a new file. This new file should be named '[old file name]_decoded'. So
%   if the inputed file name was 'message', the new file name would be
%   'message_decoded'.
%
%  Hints:
%   - You may find 'fprintf()' useful.
%   - '\n' is the new line character.
%   - Use the function 'fgets()' here instead of 'fgetl()'. 
%
%   Test Cases:
%   secretMessage('message1.txt') 
%       => file named 'message1_decoded.txt' and should look like
%          'testcase1_solution.txt'
%
%   secretMessage('message2.txt')
%       => file named 'message2_decoded.txt' and should look like
%          'testcase2_solution.txt'
%
%==========================================================================
% PROBLEM 3.   Shakespeare Translator
%--------------------------------------------------------------------------
%
% Function Name: Shakespeare
% Inputs  (2): - (char) The name of a text file containing a passage from
%                       one of Shakespeare's plays
%              - (char) the name of a text file containing a list of words
% Outputs (0): - None
%
% Output files (1): a text file containing the same passage, but translated
%                   into modern English
%
% Function Description:
%   William Shakespeare is an important figure in literature and in the
%   history of the English language. He helped reshape theater and coined
%   hundreds of words and phrases that we use in our daily lives. However,
%   a lot of people find the archaic language of Shakespeare's works
%   daunting to read and understand. Though, have heart! For thou,
%   forsooth, needest fret nomore! 
%
%   Write a function called "Shakespeare" that takes in a text file
%   containing a passage from one of Shakespeares plays and a second text
%   file containing a word list. Your function should open both files and,
%   line by line, search for key words/phrases in the passage and replace
%   them with their modern English equivalent.
%   
%   The key words will be found in the word list file, as well as their
%   replacement words.  The key word and its replacement will be on the
%   same line, but seperated by a comma and a space. The text will be
%   structured like so:
%
%                       word, replacement
%                       word2, replacement2
%                       ...
%
%   Instead of creating an output variable, create a new text file
%   containing the translated passage.  Name the file the same as the title
%   of the passage, which will be the play's name and location of the
%   passage in the play.  The title of the passage will be the first line
%   of the passage file.
%
%   For example:        King Lear-Act 3-Scene 1-Lines 4-14   
%           
%
%   Note: - There will be no empty lines between text in the passage file.
%         - There is only one word list.
%         - Be sure to close all open files at the end of your code
%
%   Hints:
%    - You may find fprintf() useful.  
%    - '\n' = new line character
%         
% Test Cases
%   Shakespeare('Shakespeare1.txt','wordList.txt')
%     => file named 'Hamlet_Act3_Scene1_Lines64-68.txt' and
%        should look like 'Shakespeare1_Solution.txt'
%
%   Shakespeare('Shakespeare2.txt','wordList.txt')
%     => file named 'A_Midsummer_Night's_Dream_Act3_Scene_2_Lines297-306.txt'
%        and should look like 'Shakespeare2_Solution.txt'
%
%==========================================================================
% PROBLEM 4.  Word Processing / Text Formatting
%--------------------------------------------------------------------------
%
% Function Name: wordWrap 
% Inputs  (3): - (char)   Input file name
%              - (char)   Output file name 
%              - (double) Number of words desired in one line
% Outputs (0): - none
%
% Output files (1): a text file containing the same text, but wrapped to
%                   fit the number of words per line
% 
% Function Description:
%  Have you ever tried copying a long article from Wikipedia into notepad?
%  You probably noticed that it gets copied as one really long line,
%  rendering it useless for reading purposes. In this problem, your job is
%  to make such text readable by using MATLAB to properly format it.
% 
%  Given a .txt file containing unformatted text, write a function called
%  "wordWrap" that formats the text given in the original file according to
%  the following rules, and writes this modified text to a file whose name
%  is specified by the 'Output file name' parameter.
%
%  Rules: 
%   1) You can assume that the INPUT file will contain one really long
%      line of text.
%
%   2) Characters such as ' -  ,  . ' aren't considered to be words,
%      therefore they shouldn't affect the word length of each line. So,
%      'really-long' is one word.
%
%   3) The last word of each line must have ONE space (' ')character
%      following it. This requirement ensures that if we unwrap the
%      paragraph, the original sentence structure will be preserved.
% 
%   4) You should write the output file and name it according to the output
%      file name supplied as an input to the function. 
%
%   5) If there are not enough words to complete the last line, just add
%      theremainders to the end.
%
%  Hints: 
%   - You may find the functions fprintf() and strtok() useful.
%   - Be sure to open the test case files within MATLAB's own text editor.
%     It is not advised to check it within Notepad, as there are extra
%     unseen characters in notepad that can affect your output. Don't
%     forget the space after the last word in each line and make sure
%     there is only ONE space!
%
% Test Cases:
%   filename_in  = 'Wrap_test1.txt';
%   filename_out  = 'out_Wrap_test1.txt'; 
%   n = 8;
%  
%   wordWrap(filename_in, filename_out, n); 
%       => "out_Wrap_test1.txt" looks like "Wrap_test1_solution.txt"
% 
%  filename_in2 = 'Wrap_test2.txt'; 
%  filename_out2 = 'out_Wrap_test2.txt'; 
%  n2 = 4;
% 
%  wordWrap(filename_in2, filename_out2, n2);
%       => "out_Wrap_test2.txt" looks like "Wrap_test2_solution.txt"
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.