%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : <Ben Coordes>
% GT Email     : <bcoordes3@gmail.com>
% Homework     : hw05
% Section      : <C02>
% Collaboration: <"I worked on the homework assignment alone, using
%                  only course materials.">
%
%
% Files provided with this homework:  
%   - hw05.m
%   - ABCs_iteration.m
%
% Files to submit:
%   - hw05.m
%   - ABCs_iteration.m
%   - chuckTesta.m
%   - iChooseYou.m
%   - switchCase.m
%   - passwordStrength.m
%   - loveCalculator.m
%   - dateMagic.m
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
% Part of this homework are two m-files called ABCs_conditionals and
% ABCs_etest. Open this file in MATLAB and complete it according to the
% directions contained within. Since the ABCs cover upcoming topics for the
% next homework, it is suggested you complete them last. 
%
% Files to Complete: 
%       - ABCs_iteration.m
% ABCs File Testing:
%  >> ABCs_pretest_hw05, Run: ABCs_pretest_hw05.p
%
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic(s):
%   4.5 Conditionals
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
% PROBLEM 1.  Nope, Chuck Testa
%--------------------------------------------------------------------------
%
% Function Name: chuckTesta
% Inputs  (1): - (char) a string containing the animal that you thought was
%					    alive
% Outputs (1): - (char) a string telling whether the animal was actually
%						alive based on what the animal was
%
% Function Description:
%	You have just seen an animal running around the woods, but because of
%	Chuck Testa's recent arrival onto the taxadermy scene, you are not
%	sure if the animal was alive or not. Fortunately, MATLAB can help you
%	figure it out!
%
%   Write a function called "chuckTesta" that takes in a string containing
%	the animal that you saw and returns a string telling whether the
%	animal was alive based on the following criteria:
%
%	1. If the animal was a 'deer', 'coyote', or 'pheasant', then the
%	   function should return the string 
%           => 'Nope, Chuck Testa.'
%	2. If the animal was a 'cat', 'dog', 'hamster', or 'fish', then the
%	   function should return the string 
%           => 'Chuck Testa does not taxadermize pets.'
%	3. If the animal was any other animal, then the function should return
%	   the string 
%           => 'The animal was alive!'
%
% Hint:
%   - You may find switch-statements easier than if-statements here.
%
% Test Cases:
%   CT1 = chuckTesta('deer');
%		CT1 => 'Nope, Chuck Testa.'
%
%   CT2 = chuckTesta('fish');
%		CT2 => 'Chuck Testa does not taxadermize pets.'
%
%    CT3 = chuckTesta('tiger');
%		CT3 => 'The animal was alive!'
%
%==========================================================================
% PROBLEM 2.  Battles with Starter Pokemon
%--------------------------------------------------------------------------
%
% Function Name: iChooseYou
% Inputs  (2): - (char) a string containing the Pokemon that you are using
%              - (char) a string containing the Pokemon that your rival is
%                       using
% Outputs (1): - (char) a string telling which player has the type
%                       advantage
%
% Function Description:
%	You have just chosen a starter Pokemon, and now your rival wants to
%	battle! You want to determine which of your Pokemon has the type
%	advantage over the other, so you use MATLAB to help you in this
%	endeavor.
%
%   Write a function called "iChooseYou" that takes in a string containing
%   the Pokemon that you are using and a string containing the Pokemon that
%   your rival is using. The strings will only contain 'Charmander',
%   'Squirtle', or 'Bulbasaur'. The function should then output a string
%   describing which person has the type advantage. If you have the type
%   advantage, then the function should return 'No sweat!', but if your
%   rival has the type advantage, then the string should say 'This will be
%   difficult...'
%
%   For those who are unfamiliar with Pokemon, the type advantages are as
%   follows:
%
%   - Charmander has a type advantage over Bulbasaur
%   - Bulbasaur has a type advantage over Squirtle
%   - Squirtle has a type advantage over Charmander
%
% Notes:
%   - You and your rival will never have the same Pokemon, i.e. the inputs
%     will never be the same string.
%
% Test Cases:
%
%   poke1 = iChooseYou('Squirtle', 'Bulbasaur');
%       poke1 => 'This will be difficult...'
%
%   poke2 = iChooseYou('Charmander', 'Bulbasaur');
%       poke2 => 'No sweat!'
%
%==========================================================================
% PROBLEM 3.  aLl MiXeD uP
%--------------------------------------------------------------------------
%
% Function Name: switchCase
% Inputs  (2): - (char) a string containg a word or phrase
%              - (char) a string determining how to modify the previous
%                 input
% Outputs (1): - (char) the modified string
%
% Function Description:
%   Write a function called "switchCase" that takes in a string containing
%   a word or phrase and another string containing directions, and outputs
%   the modified word or phrase based on the directions. There can be 4
%   different ways of modifying the string:
%
%           - 'Title Case' -> Capitalizes the first letter of every word.
%                             Everything else is lowercase. 
%           - 'Camel Case' -> Capitalizes the first letter of every word
%                             EXCEPT the first one. Everything else is
%                             lowercase. All the spaces are removed.
%           - 'ROT13'      -> Shifts all the letters by 13 spaces. AKA, A
%                             becomes N, B becomes O, C becomes P, etc. 
%                             Consider using caesar() from HW4
%           - 'Da Vinci'   -> Reverses the string.
%
% Notes:
%   - If you decide to use caesar from Homework 04, you must resubmit it
%     with the rest of your files!
%
% Test Cases:
%   new_string = switchCase('the end', 'Title Case');
%       new_string => 'The End'
%
%   new_string = switchCase('What do you use to store large quadrupeds?',...
%   'Camel Case');
%       new_string => 'whatDoYouUseToStoreLargeQuadrupeds?'
%
%   new_string = switchCase('You can't read this.', 'ROT13');
%       new_string => 'Lbh pna'g ernq guvf.'
%
%   new_string = switchCase('racecars', 'Da Vinci');
%       new string => 'sracecar'
%
%==========================================================================
% PROBLEM 4.  How Hackable Are You?
%--------------------------------------------------------------------------
%
% Function Name: passwordStrength
% Inputs  (1): - (char) a string representing a password 
% Outputs (1): - (char) a string describing the password strength
%
% Function Description:
%   Given a string representing a password, write a function called
%   "passwordStrength" that outputs a string describing how strong that
%   password is on a scale from one to five. 
%
%   The function should first check to see the length of
%   the password exceeds 21 characters or is shorter than 5 characters. If
%   so, it should output 'Password must be at least 5 characters.' or
%   'Password must not exceed 21 characters.'
%   
%   Otherwise you should assign a strength to the password which will be
%   outputted as a string in the format 'Password has a strength of
%   <strength>.'. The strength is determined by calculating the base case
%   of the password minus a specific factor.
%   
%   The characters in the password can be seperated into four cases: 
%
%       - One or more numbers exist in the string. (0,1,2,3...9)
%       - One or more lower case letters exist (a,b,...,z)
%       - One or more upper case letters exist (A,B,...,Z)
%       - One or more of following symbols exists: @,#,$,_,-,%,(,)
%
%   If you have all four cases represented in your string your base case
%   will be 5. If you have two or three cases your base case is 3. If you
%   have one case, your base case is 2. 
%   
%   The factor is the the number of occurences of the
%   case with the most occurences (maximum value) divided by the total
%   length of the password rounded to the nearest integer.
%
%   Example: 
%   The password 'Abc%3f' has a base case of 5 because
%   there are four different types of cases. The most common
%   case is lowercase letters, which occurs 3 times. The factor is
%   therefore 3 divided by 6 (the length of the password)
%   which when rounded to the nearest integer. The result is then 1. 
%   So your strength would be 4. (Base case - factor)
%
% Test Cases:
%   out1=passwordStrength('helloWorld')
%       out1 =>'Password has a strength of 2.'
%
%   out2=passwordStrength('x')
%       out2 =>'Password must be at least 5 characters.'
%
%   out3=passwordStrength('CS1371isAbsolutelyAwesome')
%       out3 =>'Password must not exceed 21 characters.'
%
%   out4=passwordStrength('h3l7()WOrld')
%       out4 =>'Password has a strength of 5.'
%
%==========================================================================
% PROBLEM 5. Happy Valentine's Day!
%--------------------------------------------------------------------------
%
% Function Name: loveCalculator
% Inputs (2): - (char) string representing a name
%             - (char) string representing another name
% Outputs(1): - (double) calculated love potential score 
%
% Function Description:
%   Contrary to popular belief, many online love calculators do not simply
%   generate random numbers but rather quantify potential love using the 
%   same basic algorithm. In honor of Valentine's Day, your task is to 
%   write a function named "loveCalculator" that takes in two strings 
%   representing the names of two people and calculates their love
%   potential using the algorithm of many online love calculators described
%   below.
%
%   Firstly, if the two names are identical or if one of the names is
%   contained within the other (e.g. 'alexa' and 'alexander', 'jordan' and 
%   'dan'), the love potential score should be zero. Otherwise, calculate 
%   the love potential first by counting the number of l's, o's, v's, e's,
%   and s's present in both names.
%
%   Then, the letter totals are arranged (in order) as the digits of a
%   single number. For the example, if we have the names 
%   'ophelia' and 'hamlet', we would have the number 21020.
%   Finally, each digit of the number is added to the adjacent digit or
%   digits to form new totals. Here, we would calculate:
%
%               l+o      o+v      v+e      e+s
%               2+1 = 3, 1+0 = 1, 0+2 = 2, 2+0 = 2
%
%   These totals are again arranged as digits of a single number, and the
%   process is repeated until only two numbers remain. This is the final
%   love potential score. Carrying out the process for the example here:
%
%                 new number => 3122
%                 3+1 = 4, 1+2 = 3, 2+2 = 4,
%                 new number => 434
%                 4+3 = 7,  3+4 = 7
%                 new number => 77, 
%
%   so the love potential score output in this case is 77.
%
% Notes:
%   - The names are guaranteed to be all lowercase letters.
%
% Hints:
%   - You may find the function strfind(), str2num(), and num2str()
%     helpful.
%
% Test Cases:
%  score1 = loveCalculator('louis', 'louise')
%   score1 => 0 
%
%  score2 = loveCalculator('kiley fagan', 'channing tatum')
%   score2 => 23
% 
%  score3 = loveCalculator('tom cruise', 'katie holmes')
%   score3 = 1013

%==========================================================================
% PROBLEM 6.  You Snap Your Fingers and TADA!
%--------------------------------------------------------------------------
%
% Function Name: dateMagic
% Inputs  (2): - (char) A date in the format 'month/day/year'
%              - (char) The name of a company
% Outputs (1): - (char) Sentence containing the day the company was founded
%
% Function Description:
%   Here at Georgia Tech, we have some pretty cool websites that we are
%   sure you guys use (or will be using) very often. However, some of the
%   executives from these websites would like to remember what day of the
%	week their website went live. As an enterprising intern looking to move
%	up in the corporate world, you decide to solve the problem using
%	MATLAB. 
%
%   Write a function called "dateMagic" that takes a string containing the
%   date is mm/dd/yyyy format and a company, and returns a string that
%   says:
%
%           '<company name> was founded on a <day of the week>.'
%
%   There is a magic formula that you discovered that can help you
%   determine the day of the week given any date. The secret steps to this
%   magic are:
%
%   Given the date (2/12/1978, for example):
%
%   1. Drop the first two digits in the year (1978 => 78)
%
%   2. Divide this number by 4 and drop the remainder 
%      (78 / 4 = 19  with a remainder of 2) 
%
%   3. Add this answer to last two digits of the year  (19 + 78 = 97)
%
%   4. Add the day of the month to this total (97 + 12 = 109)
%
%   5. From List 1 below, add the value of corresponding to the month 
%      (February = 3,  109 + 3 = 112)
%
%   6. If the year is in the 2000s, subtract 1, if the year is in the
%      1900s, do nothing. (112)
%
%   7. Divide this total by 7 (112 / 7 = 16 with a remainder of 0)
%
%   8. Compare the remainder with List 2 to see which day it is. 
%
%   List 1: Months
%       Jan: 0 
%       Feb: 3
%       Mar: 3 
%       Apr: 6 
%       May: 1
%       Jun: 4 
%       Jul: 6 
%       Aug: 2
%       Sep: 5 
%       Oct: 0
%       Nov: 3 
%       Dec: 5
%
%   List 2: Remainders
%        0: Sunday
%        1: Monday
%        2: Tuesday
%        3: Wednesday
%        4: Thursday
%        5: Friday
%        6: Saturday
%
% Test Case 1:
%	date = '2/8/2011'
%   company = 'www.swarmbooks.com'
%	day = dateMagic(date,company)
%	day -> 'www.swarmbooks.com was founded on a Tuesday.'
%
% Test Case 2:
%	date = '1/3/1975'
%   company = 'www.onlyattech.net'
%	day = dateMagic(date,company)
%	day -> 'www.onlyattech.net was founded on a Friday.'
%
% Test Case 3:
%	date = '4/16/2008'
%   company = 'www.campuscarriers.com'
%	day = dateMagic(date,company)
%	day -> 'www.campuscarriers.com was founded on a Wednesday.'
%
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
