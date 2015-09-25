%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : <Sunny Patel>
% GT Email     : <sunnypatel18@gatech.edu>
% Homework     : hw06
% Section      : <B05>
% Collaboration: <place here one of the following:
%                 "I worked on the homework assignment alone, using
%                  only course materials."
%                 >"
%
%
% Files provided with this homework:  
%   - hw06.m
%   - ABCs_pretest_hw05.p
%   - getSpin.m
%   - ABCs_iteration.m
%
% Files to submit:
%   - hw06.m
%   - ABCs_iteration.m
%   - multiTable.m
%   - weakestLink.m
%   - bouncyHouse.m
%   - wheelOfFortune.m
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
% http://www.youtube.com/watch?v=7YLy4j8EZIk
%==========================================================================
% PART 1.  ABC Problems
%--------------------------------------------------------------------------
%
% Part of this homework is an m-files called "ABCs_iteration" 
% Open this file in MATLAB and complete it according to the
% directions contained within. Since the ABCs cover upcoming topics for the
% next homework, it is suggested you complete them last. 
%
% Files to Complete: 
%       - ABCs_iteration.m
% ABCs File Testing:
%  >> ABCs_pretest_hw06
%
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic(s):
%   -Iteration
%
% Follow the directions carefully and make sure files names as well as
% function headers are written exactly as described in the problem text. If
% your function headers are not written as specified, then you will recieve
% an automatic zero for the problem.
%
% All drill problems must be functions (i.e. contain valid function
% headers).  Any scripts turned in will be given a 0 automatically.
%
% ==========================================================================
% PROBLEM 1.   "Instant Math. Just Add Matlab."
% --------------------------------------------------------------------------
% 
% Function Name: multiTable
% Inputs  (1): - (double) a number to create a multiplication table for
% Outputs (1): - (double) an array representing the multiplication table
% 
% Function Description:
%
%  You are now in advanced Calculus here at cheery Georgia Tech.  Thrust
%  into the world of vector theory and Taylor Polynomials, you find
%  yourself forgetting the easy methods to multiplication. Luckily, you
%  decide that, with the help of your favorite computer program, you can
%  create multiplication chart for any given number and won't have to be
%  bothered with multiplication again. 
% 
%  Create a function called "mulitTable" that takes in an integer, and
%  creates a multiplication table (an array) for all integers up to the
%  given number.  The first row and column will represent the numbers being
%  multiplied together.
%
%  For example, if the given number is 4, then the output array will be
%
%                    0     1     2     3     4
%                    1     1     2     3     4
%                    2     2     4     6     8
%                    3     3     6     9    12
%                    4     4     8    12    16
%
% Now, we can visually see all the mulitples of the integers 1 to 4.
%
% Hint:
% - There is no need to iterate more than once (i.e. you only need one
%   loop to solve this problem).
% 
% Test Cases:
%   five = multiTable(5)
%       five => [0 1 2 3 4 5;1 1 2 3 4 5;2 2 4 6 8 10;3 3 6 9 12 15;...
%              4 4 8 12 16 20;5 5 10 15 20 25]
%
%   zero = multiTable(0)
%       zero => 0
%
%   three = multiTable(3)
%       three => [0 1 2 3;1 1 2 3;2 2 4 6;3 3 6 9]
%
% =========================================================================
% PROBLEM 2. Whee!!!
% -------------------------------------------------------------------------
%
% Function Name: bouncyHouse
% Inputs  (1): - (char) a string array that represents your backyard
% Outputs (1): - (char) a string indicating which size bouncy house will
%                       fit
%
% Function Description:
%   It’s your birthday! And this year, you're going to have the best party
%   in school. You'll show up that know-it-all Susie and her pony. Because
%   this year, you're getting a bouncy house!
%
%   Write a function called 'bouncyHouse' that takes in a char array
%   representing the layout of your backyard and returns a string
%   indicating the largest size bouncy house that will fit. 
% 
%   Your input is a char array describing the layout of your backyard.
% 
%   The input array will represent your yard (meter by meter), with each
%   index containing a letter representing either grass ('g'), trees ('t'),
%   your house's edge ('h') and the fence ('f'). Obviously, you can’t put a
%   bouncy house on top of your house, the fence, or any trees. So you need
%   to find the largest open area of grass on which to place the bouncy
%   house.
% 
%   All of the bouncy houses are square and the size options are as
%   follows:
%                   Small  = 4x4 meters 
%                   Medium = 5x5 meters 
%                   Large  = 6x6 meters
% 
%   We need to know what size bouncy house will fit. And, you (of course)
%   want the biggest bouncy house possible!
% 
%   To figure out how to solve the problem, let’s look at the algorithm for
%   finding the largest possible square area of grass on a smaller level.
% 
%   If you were given:
% 
%                   f	f	f	f
%                   f	g	g	f 
%                   f	g	g	f
%                   h	h	h	h
% 
%   you would easily be able to see that the biggest square of grass is
%   2x2. How could the computer see this?
% 
%   First, set all the spots without grass to zeros:
%
%                   0	0	0	0
%                   0	g	g	0 
%                   0	g	g	0
%                   0	0	0	0 
% 
%   Then, for every spot of grass, look at the minimum number from the
%   right, upwards diagonal, and above the spot and add one. For example,
%   for the “g” in row 2, column 2, we would look at the 3 numbers
%   surrounding it to its upper left (at positions <2,1>, <1,1>, and
%   <1,2>). This time, each of these numbers are 0, so the minimum is 0. We
%   take the minimum plus 1, so where 'g' was, we have 1:
% 
%                   0	0	0	0
%                   0	1	g	0 
%                   0	g	g	0
%                   0	0	0	0 
% 
%   Following this pattern, you would get:
% 
%                   0	0	0	0
%                   0	1	1	0 
%                   0	1	2	0 
%                   0	0	0	0
% 
%   The value at an arbitrary (i,j) index is essentially the bottom right
%   corner of an <array(i,j)> by <array(i,j)> open square of grass.
% 
%   Once you have the array formed, you can find your overall answer by
%   finding the maximum number within the array. Your function should
%   output either 'Small', 'Medium', 'Large', or 'Sorry. There's not enough
%   room for a bouncy house.' depending on the results of the function. 
%
% Test Cases:
%  yd =['f'	'f'	'f'	'f'	'f' 'f'	'f'	'f'
%       'f'	'g' 'g'	'g'	'g'	'g'	'g'	'f'
%       'f'	'g'	'g'	'g'	'g'	'g'	'g'	'f'
%       'f'	'g'	'g' 'g'	'g'	'g'	'g'	'f'
%       'f'	'g'	'g'	'g' 'g'	'g'	'g'	'f'
%       'f' 'g' 'g' 'g' 'g' 'g' 'g' 'f'
%       'f' 'g' 'g' 'g' 'g' 'g' 'g' 'f'
%       'h'	'h' 'h'	'h'	'h'	'h'	'h'	'h']
% 
%   out1=bouncyHouse(yd);
%       out1 => 'Large'
% 
%   yd(6,6)='t';
%   out2 = bouncyHouse(yd);
%       out2 => 'Small'
% 
%   yd(5,2)='t';
%   yd(2,4)='t';
%   yd(4,6)='t';
%   out3 = bouncyHouse(yd);
%       out3 => 'Sorry. There''s not enough room for a bouncy house.'
%
% =========================================================================
% PROBLEM 3.   "You are the Weakest Link... Goodbye!"
% -------------------------------------------------------------------------
% 
% Function Name: weakestLink
% Inputs  (2): - (double)  A vector representing each players confidence
%                          level
%              - (logical) A vector of trues and falses denoting if the
%                          questions were answered correctly or not
% Outputs (2): - (double)  The amount of money banked in the round
%              - (char)    The name of the player who was kicked off the 
%                          game
% 
% Function Description:
%   Amy, Brad, Chris, Daisy, Erica, and Fred are contestants on the popular
%   game show, "The Weakest Link". This is said to be the smartest team in
%   the history of the game! However, they are not the most confident in
%   themselves. Each of them has a different confidence level, and
%   therefore take different amounts of risks.
%
%   Before we get to the confidence levels, lets explain how the game is
%   played. The first question answered correctly earns the team $250.
%   Every subsequent question answered correctly doubles that value.  So
%   the money increases like so:
%
%                 $250 -> $500 -> $1000 -> $2000 -> $4000 -> etc.
%
%   The formula looks like this:
%
%                               $250 .* (2 .^ n-1), 
%
%   where n is the total number of correct answers in a row.  
%   **NOTE: n must be greater than zero for this formula**
%   
%   Any wrong answers results in a loss of the accumulated money up to that
%   point. However, a contestant can 'bank' the accumulated money before
%   their question is asked. After banking the money however, the question
%   value resets back to $250.
%
%   Now back to the confidence levels. The first input will be the
%   confidence levels for Amy, Brad, Chris, Daisy, Erica, and Fred
%   respectively. They feel confident up to a certain number of correct
%   answers in a row and will bank the money. For instance, if Daisy has a
%   confidence level of 6, if it gets to be her turn, and there have been 6
%   or more questions answered correctly, she will bank that money.
%
%   Write a function called "weakestLink" that takes in a vector of the
%   players' confidence levels and a vector of trues and falses that denote
%   whether or not the questions were answered correctly and outputs the
%   total amount of money earned in the round.  You will then give the name
%   of the player who gets voted out of the game.
%
%   A player that gets voted out is defined as the "weakest link", that is
%   the player who is the biggest hinderance to the team.  In this problem,
%   we will define that as the player who gets the most questions wrong.
%   In case of a tie, the player who who comes first alphabetically will be
%   voted out.
% 
% Guarantees:
%   - Game play will always start with Amy.  The order will always be:
%     Amy -> Brad -> Chris -> Daisy -> Erica -> Fred -> Amy -> etc.
%   - A confidence level will never be lower than 1
%
% Notes: 
%   - Banking of the money occurs BEFORE the question is answered.  That
%     is, if Daisy has a confidence level of 6 and she gets asked a
%     question when there have been 6 or more correct answers in a row, she
%     will bank the money REGARDLESS of if she answered correctly or not.
% 
% Test Cases:
%   conf1 = [4 5 4 4 3 5];
%   answers1 = [true true false true true true true true true true true ...
%               true true true false true true true false true ...
%               true true true true true true true true true true true ...
%               false true true true true false false false true true ...
%               false true true true true];
% 
%   conf2 = [5 6 6 8 5 6];
%   answers2 = [false true true true false true true true true true ...
%               true true true true true false false false true true ...
%               true true true true true true true true true true false ...
%               true true false true true true true true true true true ...
%               false true true true true false];
%
%   [bank1 wLink1] = weakestLink(conf1, answers1);
%       bank1 => 13000
%       wLink1 => 'Chris'
%   [bank2 wLink2] = weakestLink(conf2, answers2);
%       bank2 => 28000
%       wLink2 => 'Amy'
%
% =========================================================================
% PROBLEM 4.  "Vanna, is there a T?"
% -------------------------------------------------------------------------
% 
% Function Name: wheelOfFortune
% Inputs  (4): - (char)   the phrase of the puzzle
%              - (char)   board to fill in as the puzzle is played
%              - (char)   string of the letters guessed in order for the
%                         puzzle
%              - (double) the seed for the spin function
% Outputs (3): - (char)   the player who won the puzzle
%              - (double) total number of spins in the puzzle
%              - (double) the vector of the amount of money earned by all
%                         three players
% 
% Function Description:
%
%   This function is very long, but it is advised that you read all of it
%   before you begin. 
%
%   Wheel of Fortune -- The gameshow where you can win or lose.  The big
%   wheel in the... black box of the given getSpin function... decides the
%   fate of the "mysterious" players (who shall remain nameless).  Who will
%   win the big bucks, and who will go home with nothing?
%   
%   Wheel of Fortune is a game where a phrase is selected to be discovered
%   during a game play. During the puzzle, the wheel is spun and a space on
%   the wheel denotes what the spin is worth. Sometimes it is a monetary
%   value, sometimes it is a bankrupt (where the player loses their turn
%   and lose all the money in their bank), or lose-a-turn (where the player
%   just loses their turn). The players can then guess a letter to see if
%   it's on the board. Money is earned if the spin is a monetary value. The
%   way to calculate the winnings from a guess is to multiply the money
%   from the spin by the number of that letter that exists in the puzzle.
%
%       Ex: Spin was $500, letter guessed was a 't', there are 3 't's, so
%           that player would earn $1500.
% 
%   Given the phrase of the puzzle, a blank board that you will fill in as
%   the puzzle plays out, a string of the letters that were guessed in the
%   puzzle (in order that they were guessed), write a function called
%   "wheelOfFortune" that will play out the puzzle, filling in the board as
%   the puzzle progresses. You will also keep up with the total number of
%   spins in the puzzle as well as the money values for each of the three
%   players in the game.
%
%   The string representing the winner needs to be formatted as below:
%
%       'Player#' - where # is replaced by the number of the player that
%                   won, either 1, 2, or 3.
%
%   You are given a function, getSpin, that takes in the seed number and
%   the spin index, and returns a string representing what the value of the
%   spin is.
%
%   However, when a vowel comes up (That is any of 'AEIOU') instead of
%   spinning the wheel, the player pays $150 (or loses $150 from his bank)
%   and does not earn any money for that turn.  It is possible for a player
%   to go negative.
%
%   A player keeps spinning as long as they continue to guess letters that
%   are in the puzzle. If a letter guessed does not exist in the phrase, it
%   is like a lose turn, and game play moves to the next player. If a
%   player buys a vowel and it is not in the puzzle, they still lose the
%   $150.
%
%   The player who wins is the player who completes the puzzle. 
% 
% Guarantees:
%   - The phrase will never be empty.
%   - Play will always start with Player1.
%   - There are 3 players total.
%   - You will always have enough letters (will never index out of bounds).
%   - The getSpin function returns a string in one of the following
%     formats:
%           - '1500' (or another monetary value'
%           - 'bankrupt'
%           - 'lose-a-turn'
%   - The puzzle board will originally be periods ('.') and spaces
%     (' '). The spaces seperate words, and periods are blank letters. As
%     you go along, then you will replace periods with letters.
%   - All the letters will be capital letters.
%
% Approach:
%   - This problem is a little bit more involved than what you have seen
%     before. You will want to approach this problem a little bit at a
%     time. Think about what you are trying to accomplish in the problem
%     and that will give you some places to start at. Break it up into
%     small sections and test those sections first.
%
% Hints:
%   - There are 3 players, if Player 3 loses his turn, the next person to 
%     play is Player 1
%   - Lose-a-turn skips the current player without guessing a letter
%   - You may find the any() function useful. 
%   - If a player guesses a letter and it exists in the puzzle, their turn
%     continues.  The ways the turn goes to the next player are:
%            - Guessing a letter that doesn't exist in the puzzle
%            - Spinning 'lose-a turn'
%            - Spinning 'bankrupt'
%
% Notes: 
%   - The function 'getSpin' is given to you in order to get the spin.
%     Everything is set up in that function, so you do not have to change
%     anything. It is given to you in a '.m' format for you to see what
%     is going on.  Again, you don't need to edit that code at all, or
%     really understand what it is doing.  It is only for those who are
%     interested.
% 
% Test Cases:
%   phrase1 = 'A BIRD IN THE HAND IS WORTH TWO IN THE BUSH';
%   puzzle1 = '. .... .. ... .... .. ..... ... .. ... ....';
%   letters1 = 'NDUJAMOKRBZCHSIZYWTEQ';
%   seed1 = 53;
% 
%   phrase2 = 'DO NOT PROCRASTINATE ON THIS HOMEWORK';
%   puzzle2 = '.. ... ............. .. .... ........';
%   letters2 = 'HGDQTJUFRYSKMZOWVEANICPBL';
%   seed2 = 98;
%
%   seed3 = 105;
%
%   [winner1,spins1,bank1] = wheelOfFortune(phrase1,puzzle1,letters1,seed1)
%       winner1 => 'Player2'
%       spins1 => 21
%       bank1 => [1650, 2000, 9800]
%
%   [winner2,spins2,bank2] = wheelOfFortune(phrase2,puzzle2,letters2,seed2)
%       winner2 => 'Player1'
%       spins2 => 19
%       bank2 => [9350, 4250, 750]
%
%   [winner3,spins3,bank3] = wheelOfFortune(phrase2,puzzle2,letters2,seed3)
%       winner2 => 'Player1'
%       spins2 => 31
%       bank2 => [2700, 2750, 6750]
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
% Congratulations, you've finished this homework assignment!  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
