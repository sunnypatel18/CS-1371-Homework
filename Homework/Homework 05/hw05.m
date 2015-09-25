%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : <Sunny Patel>
% GT Email     : <sunnypatel18@gatech.edu>
% Homework     : hw05
% Section      : <B05>
% Collaboration: <place here one of the following:
%                 "I worked on the homework assignment alone, using
%                  only course materials."
%                 >"
%
%
% Files provided with this homework:  
%   - hw05.m
%   - ABCs_conditionals.m
%   - ABCs_pretest_hw05.p
%
% Files to submit:
%   - hw05.m
%   - ABCs_conditionals.m
%   - friendOrFoe.m
%   - leapYear.m
%   - sortingHat.m
%   - footballMath.m
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
% Homework Video of the Week:
% http://www.youtube.com/watch?v=y0Z5_wipT2o
%==========================================================================
% PART 1.  ABC Problems
%--------------------------------------------------------------------------
%
% Part of this homework is an m-file called "ABCs_conditionals" 
% Open this file in MATLAB and complete it according to the
% directions contained within. 
%
% Files to Complete: 
%       - ABCs_conditionals.m
% ABCs File Testing:
%  >> ABCs_pretest_hw05
%
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic(s):
%   - Conditionals
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
% PROBLEM 1.   "Will you go Friend...or FOE!?!"
%--------------------------------------------------------------------------
%
% Function Name: friendOrFoe
% Inputs  (3): - (char) A string containing Contestant A's name and vote
%              - (char) A string containing Contestant B's name and vote
%              - (char) A string denoting the team's winnings thus far
% Outputs (1): - (char) A string that contains the final result
%
% Function Description:
%   "Do you trust me?" That's the question at the root of the GSN 2-Season
%   smash, "Friend or Foe." The game consists of two parts: first,
%   contestants--paired up backstage--must work together to answer a series
%   of questions by each locking in the same answer and earn money for
%   their "trust fund" (up to $22,000). The team with the least amount of
%   money at the end of each round is eliminated and sent to the "trust
%   box" (where even the winners eventually end up after playing a bonus
%   round). There it is decided "whether they'll be giving each other
%   champagne kisses...or MALT-LIQUOR BELCHES!."(youtu.be/m10yGB1rOGw)
%
%   From here, the game becomes a classic 'prisoner's dilemma'--each
%   partner will plead his/her case at the "trust box" and then secretly
%   vote "Friend" or "Foe". If both players vote "Friend," they split the
%   money. If one player votes "Foe," he/she takes home the entire "trust
%   fund" leaving his/her partner with nothing, thus proving to be "a
%   horrible person...and the whole world will know."(youtu.be/13JYZNuxuqI)
%   However, if both partners choose "Foe," they each go home empty-handed.
%
%   Given the amount of money in a pair's "trust fund" and two strings
%   containing each partner's name and vote, write a function, friendOrFoe,
%   that outputs a string containing each person's winnings according to
%   the rules above.  The result string should be formatted as follows:
%
%   - Both 'Friend': "Congratulations! [Contestant A] and [Contestant B]
%                    will split the trust fund and each take home [$XXXX]!"
%
%   - 'Friend' and 'Foe': "Ouch! ['Foe' Contestant] stabs ['Friend'
%                         Contestant] in the back and takes home the whole
%                         [$XXXX]! For shame, ['Foe' Contestant], for
%                         shame!"
%
%   - Both 'Foe': "Oooh! [Contestant A] and [Contestant B] both turned foe
%                 and will leave with a whopping [$XXXX]."
%
% Notes: 
%   - The input strings will always be formatted as follows:
%               '[Name]-['Friend' or 'Foe']'
%               ex: 'Kurt-Friend' 
%                   'Baroness Scraeder-Foe'
%         
% Test Cases:
%   result1 = friendOrFoe('Sid-Foe','Nancy-Foe','$5500')
%       result1 -> 'Oooh! Sid and Nancy both turned foe and will leave
%                    with a whopping $0.'
% 
%   result2 = friendOrFoe('Professor Phillips-Friend',...
%                          'Professor Smith-Foe','$14000')
%       result2 -> 'Ouch! Professor Smith stabs Professor Phillips in the
%                    back and takes home the whole $14000! For shame,
%                    Professor Smith, for shame!'
% 
%   result3 = friendOrFoe('Professor Omojokun-Foe',...
%                          'Professor Smith-Friend','$16000')
%       result3 -> 'Ouch! Professor Omojokun stabs Professor Smith in the
%                    back and takes home the whole $16000! For shame,
%                    Professor Omojokun, for shame!'
%
%   result4 = friendOrFoe('The student-Friend','the TA-Friend','$20000')
%       result4 -> 'Congratulations! The student and the TA will split the
%                    trust fund and each take home $10000!'
%
%==========================================================================
% PROBLEM 2.   Look Before You Leap!
%--------------------------------------------------------------------------
%
% Function Name: leapYear
% Inputs  (1): - (double) A year
% Outputs (1): - (char)   A string that says whether it is a leap year or
%                         not
%
% Function Description:
%   A year is actually a little bit longer than 365 days, so to make sure
%   that we don't have Christmas in the July a few centuries later, we
%   implement leap years with one extra day at the end of February. Even
%   with this system, we will still be behind by one day in 8000 years!
%
%   A leap year occurs every 4 years (if the year is divisible by 4), but
%   years that are multiples of 100 are NOT leap years EXCEPT when that
%   year is also a multiples of 400 (i.e. 1900 was not a leap year but 2000
%   was a leap year). 
%
%   Write a function called "leapYear" that takes in a number representing
%   a year and outputs the string 'It is a leap year.' if the given year is
%   a leap year and outputs 'It is not a leap year.' if it is not a leap
%   year.
%
%   Notes:
%    - Do not forget the period at the end of the output! 
%
% Test Cases:
%   out1 = leapYear(1993)
%       out1 => 'It is not a leap year.'
%
%   out2 = leapYear(1600)
%       out2 => 'It is a leap year.'
%
%   out3 = leapYear(300)
%       out3 => 'It is not a leap year.'
%   
%   out4 = leapYear(2012)
%       out4 => 'It is a leap year.'
%
%==========================================================================
% PROBLEM 3.  "Yer a wizard Harry!"
%--------------------------------------------------------------------------
%
% Function Name: sortingHat
% Inputs  (2): - (char)   A name
%              - (double) A 1x4 vector representing your character traits
% Outputs (1): - (char)   The house that you have been sorted into
%
% Function Description:
%   "We are pleased to inform you that you have been accepted at Hogwarts
%   School of Witchcraft and Wizardry!"
% 
%   You have just arrived at Hogwarts, and it's time to be sorted into a
%   house! There are 4 choices: Gryffindor (The Brave Ones), Hufflepuff
%   (The Loyal Ones), Ravenclaw (The Intelligent Ones), and Slytherin (The
%   Cunning Ones). You, being a proactive student, decide to write a
%   function to tell you which house you would be sorted before it's time
%   to come up the Sorting Hat. 
% 
%   Write a function called "sortingHat" that takes in a name and a vector
%   representing your character traits and returns the house into which you
%   would be sorted. 
% 
%   The second input to this function is a vector which represents your
%   characteristics. The format is:
%
%                  [bravery, loyalty, intelligence, cunning]
%       
%   If your name contains a 'G' or a 'g', multiply your bravery rating by
%   the number of instances of G|g. For example, if your name is 'Olga
%   Guggenhiem', you would multiply your bravery score by 4. If your name
%   contains H or h, multiply your loyalty score by the number of H|h's.
%   The same goes for R|r and S|s (intelligence and cunning respectively).
%                                                                        
%   After the name calculations are complete, the maximum value is your
%   main characteristic. You should then output the name of the house that
%   best fits your personality.
%
% Test Cases:
%   house1 = sortingHat('Olga Guggenhiem', [10, 9, 8, 1]);
%       house1 => 'Gryffindor'
%
%   house2 = sortingHat('Snape.', [55, 40, 8, 200]);
%       house2 => 'Slytherin'
%
%==========================================================================
% PROBLEM 4.   4th and 6? GO FOR IT! 
%--------------------------------------------------------------------------
%
% Function Name: footballMath
% Inputs  (2): - (char)   A string that contains the current down and yards
%                         to go
%              - (double) The number of yards the play goes for
% Outputs (1): - (char)   Updated down and yards to go
%
% Function Description:
%   Nothing beats a lovely Saturday while at Historic Grant Field at Bobby
%   Dodd Stadium. It is just about kick off time and the Georgia Tech
%   Yellow Jackets (Hooray!) are playing the lowly U[sic]GA Bulldogs
%   (Boo!).
%
%   Because of the lack of intelligence on the u[sic]ga sideline they have
%   resorted to hiring a GT student (that's you) to help them in the
%   on-the-field game management. They have need you to help them 
%   figure out what down it is, and how many yards they need for a first
%   down.
%
%   Given a string that contains the down and how many yards to gain a
%   first down and the number of yards that the play gains, write a
%   function called "footballMath" that outputs the result after the play.
%   
%   The input string will be in the form of down&yards. Some examples are:
%
%                                    - 1&10
%                                    - 3&6
%                                    - 4&2
%
%   In order to get the output, you need to go to the next down and update
%   the yards. For instance, if it was 1&10 and the play went for 5 yards,
%   then the output would be 2&5
%
%   Rules for the output format:
%       - If the remaining yards are 0 or below, then the next down becomes
%         1 and the yards become 10, i.e. 1&10
%       - If next down is 5 or above and the remaining yards are greater
%         than 0, then the output should be 'turnover on downs'.
%       - Otherwise, it should follow in the same format as the original
%         input.
%
% Notes:
%   - The yards from the play can be either positive or negative.
%
% Test Cases:
%   updated1 = footballMath('1&10', 6);
%       updated1 => '2&4'
%
%   updated2 = footballMath('2&5', -3);
%       updated2 => '3&8'
%
%   updated3 = footballMath('3&3', 8);
%       updated3 => '1&10'
%
%   updated4 = footballMath('4&7', 2);
%       updated4 => 'turnover on downs'
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.