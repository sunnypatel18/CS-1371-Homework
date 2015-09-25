%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : <Sunny Patel>
% GT Email     : <sunnypatel18@gatech.edu>
% Homework     : hw10
% Section      : <B05>
% Collaboration: <place here one of the following:
%                 "I worked on the homework assignment alone, using
%                  only course materials."
%                 >"
%
%
% Files provided with this homework:  
%   - hw10.m
%   - ABCs_plotting_soln.png
%   - clock1.png
%   - clock2.png
%   - showDate.m
%   - tikTok.zip
%   - coloredCampanile_testcase1.png
%   - coloredCampanile_testcase2.png
%   - coloredCampanile_testcase3.png
%   - ABCs_plotting.m
%   - ABCs_recursion.m
%   - ABCs_pretest_hw10.p
%
% Files to submit:
%   - hw10.m
%   - ABCs_plotting.m
%   - ABCs_recursion.m
%   - derangement.m
%   - hanoi.m
%   - typeDisadvantage.m
%   - tikTok.m
%   - coloredCampanile.m
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
% http://www.youtube.com/watch?v=xpvdAJYvofI
%==========================================================================
% PART 1.  ABC Problems
%--------------------------------------------------------------------------
%
% Part of this homework is an m-files called "ABCs_recursion" and
% "ABCs_plotting" Open this file in MATLAB and complete it according to the
% directions contained within. Since the ABCs cover upcoming topics for the
% next homework, it is suggested you complete them last. 
%
% Files to Complete: 
%       - ABCs_recursion.m
%       - ABCs_plotting.m
% ABCs File Testing:
%  >> ABCs_pretest_hw10
%     For ABCs_plotting, please run the test case provided at the bottom
%     and compare to the provided solution. 
%
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic(s):
%   - Recursion and Plotting
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
% PROBLEM 1  - Basic Probability
%--------------------------------------------------------------------------
%
% Function Name: derangement
% Inputs  (1):  - (double)      the amount of objects
% Outputs (1):  - (double/char) the number of possible derangements or
%                               'Invalid Input'
%
% Function Description: 
%   Write a function called "derangement" that calculates the amount of
%   possible derangements for n amount of given objects.
%
%   In probability, a derangement is defined as n objects orded 1...n,
%   mixed up and none of the objects are in the position they started in.
%   For example, if we had 3 objects 1,2,3 and mix them up. The sequence
%   1,3,2 would not be a derangement because the object numbered 1 is in
%   the same spot is started. However, the sequence 3,1,2 is a derangement
%   because all of the objects are in a different position from where they
%   started.
%
%   The notation for a derangement is !n
%
%   The formula for the amount of derangments is: 
%                       !n= (n-1) .* (!(n-1) + !(n-2))
%                          where !1 = 0 and !2 = 1
%   Notes:
%    - It is impossible to have a derangment if you don't have an object,
%      so if the input is 0 or less, output the string 'Invalid Input'
%    - You may assume the input will only be integers.
%    - You MUST use recursion to get any credit.
%
% Test Cases:
%   out1 = derangement(-1);
%       out1 => 'Invalid Input'
%
%   out2 = derangement(2)
%       out2 => 1
%
%   out3 = derangement(10)
%       out3 => 1334961
%
%==========================================================================
% PROBLEM 2.  Towers of Hanoi 
%--------------------------------------------------------------------------
%
% Function Name: hanoi
% Inputs  (1): - (double) The number of discs to be moved 
% Outputs (1): - (double) The number of movements fo move all the discs 
%
% Function Description:
%	Write a function called "hanoi" that recursively calculates the minimum
%	number  of movements necessary to move all the discs from the first
%	pole to the third pole. 
%
%   The Tower of Hanoi is a game with discs and three poles; the goal is to
%   move all the discs from the left-most pole to the right-most pole. At
%   the beginning of the game, the biggest disc is at the bottom-most, the
%   next big one is on the top of the biggest one, the third biggest one is
%   on the top of the second biggest one, and so on.
%
%   The rules are the following:
%       1. The sizes of discs are all different, and a smaller one can be
%       moved only to bigger one.
%       2. You can move only one disc at a time.
%
%   The following is the link to the game if you want to try it out:
%       http://www.mazeworks.com/hanoi/
%
% Constraints:
%	- You MUST use recursion to solve this problem.
%
% Hints:
%	Thanks to computer scientists and Mathematicians, we have a formula to
%	calculate the minimum number of movements as follows:
%
%           hanoi(0) = 0                      no disc to move
%           hanoi(n) = 2 * hanoi(n-1) + 1     otherwise n number of discs
%
% Test Cases:
%   a = hanoi(3);
%       a => 7
%
%	b = hanoi(10);
%		b => 1023;
%
%==========================================================================
% PROBLEM 3.  Pikachu, Aim For The Horn!
%--------------------------------------------------------------------------
%
% Function Name: typeDisadvantage
% Inputs  (2): - (struct) A structure array containing various Pokemon
%                         types, their weakness of interest, and nested 
%                         structures for their possible weaknesses
%              - (char)   A Pokemon type
% Outputs (1): - (cell)   A cell array of Pokemon types
%
% Function Description:
%   Hello, there! Professor Oak here again! How are you coming along in our
%   Pokemon research! I can see that you're making a great lab assistant. 
%   Are you ready to go deeper into helping me with our Pokemon research? 
%   Excellent! Of course, I will need to test your programming skills once
%   again.
%
%   While this world is filled with countless number of Pokemon, each one 
%   of them are unique from each other in many ways. Among these ways
%   include their typings. Pikachu, for instance, is an Electric-type
%   Pokemon. With the exception of one certain dual combination of types so 
%   far, all Pokemon types are "weak against" other types. In a Pokemon
%   battle, if one Pokemon's type is another Pokemon's type weakness, then
%   the latter has a type disadvantage against the former, and the former 
%   is more likely to be defeat the latter. Electric-type Pokemon are weak 
%   against Ground-type Pokemon, and Ground type, as expected, are weak 
%   against other types e.g. Ice.
%
%   I will give you a structure array containing two fields. One field,
%   "Type", contains a string representing a Pokemon type. The value of the
%   other field, "Weakness", is a string representing a Pokemon type that
%   the type listed in the Type field is weak against. Otherwise, the
%   Weakness field contains an empty string if that Pokemon type doesn't
%   have a type weakness. We'll only concern ourselves with singular types,
%   no dual types like Water/Ground. Here is an example of a structure in
%   the structure array that I would give you:
%
%   Type: 'Electric'
%   Weakness: 'Ground'
%
%   This structure pertains to the Electric type. As previously mentioned,
%   Electric type is weak against Ground type. Now let's look at another 
%   structure:
%
%   Type: 'Ice'
%   Weakness: ''
%
%   This structure pertains to the Ice type. While, officially speaking, 
%   Ice is weak to several Pokemon types (Fire, Rock, Steel, Fighting), for
%   this example, we will say that Ice is not weak to any Pokemon types,
%   represented by an empty string for the Weakness field.
%
%   Now, you are to write a function called "typeDisadvantage" that takes 
%   in a structure array of Pokemon types and a string representing a type
%   and returns a cell array of a "food chain" of Pokemon types that are
%   stronger than than the input type. The first cell must contain the type
%   weakness of the input Pokemon type. Every subsequent cell must contain
%   the type weakness of the Pokemon type in the previous cell, up to the
%   last cell, which would contain a type that does not have a type
%   weakness. If the input Pokemon type does not have a type weakness, then
%   the output should be an empty cell array.
%
% Notes:
%   - You *must* use recursion to receive any credit on this problem.
%   - The field names are guaranteed to be 'Type' and 'Weakness'.
%   - All type weaknesses are guaranteed to be values of Type fields of
%     other structures in the structure array. You may also assume that the
%     input Pokemon type can be found in the Type field of one structure in
%     the structure array.
%   - The Weakness field of any structure is guaranteed to contain at most
%     one type weakness.
%   - You may assume that no more than one structure will have the same
%     Pokemon type for the value of its Type field inside the structure 
%     array.
%
% Test Cases:
% types = struct('Type', {'Dragon','Poison','Electric','Bug','Water', ...
%     'Flying','Grass','Ground','Ice','Fire'}, 'Weakness', {'Ice', ...
%     'Ground','Ground','Fire','Electric','Electric','Bug','Ice','', ...
%     'Water'})
%
%     wk_chain1 = typeDisadvantage(types, 'Ground')
%         wk_chain1 => {'Ice'}
%
%     wk_chain2 = typeDisadvantage(types, 'Bug')
%         wk_chain2 => {'Fire', 'Water', 'Electric', 'Ground', 'Ice'}
%
%     wk_chain3 = typeDisadvantage(types, 'Ice')
%         wk_chain3 => {}
%
%==========================================================================
% PROBLEM 4.  Tick Tock On The Clock But The Coding Don't Stop
%--------------------------------------------------------------------------
%
% Function Name: tikTok 
%   Inputs  (2): - (char) a string containing the date
%                - (char) a string containing the time
%   Outputs (0): - none 
%
% Function Description:
%  Given a string containing the time in the standard 12-hr format (i.e.
%  2:30), and a string containing the date in mm-dd-yy format, write a
%  function called "tikTok" that create a plot in MATLAB that resembles a
%  circular clock with the hour and minute hands set to the specified time,
%  and the graph title containing the date and time. A visual example is
%  given as clock.jpg.
%
%  Notes: 
%   - The radius of the clock should be exactly 1 unit, like the unit circle
%   - Create the circle at the center of the clock by plotting a single
%     point at (0,0) as a black circle point type ('ko')
%   - The hour markers should correspond the correct locations on a normal
%     clock, where 12 o'clock is 90 degrees, and 6 o'clock is 270 degrees
%   - There should be a black circle at the center of the clock
%   - The length of the hour markers will .1 units, coming from the edge of
%     edge of the clock
%   - The length of the hour hand should be .6 units
%   - The length of the minute hand should be .9 units
%   - The clock and hour markers should be black
%   - The hour hand should be blue
%   - The minute hand should be red
%   - The title should read 'Today is <Month> <Day>, <Year>, and the Time is
%     <hh>:<mm>' with whatever date and time you are given.
%   - Set the axis to square.
%
% Constraints:
%  - Do not use the datenum(), datestr(), datevec(), or cosd()/sind() in your function. 
%
% Hints:
%  - Included in this homework is the function showDate.m. Feel free to use
%    it. If you use showDate, be sure to include it in your submission.  
%  - The hour hand should point to the actual hour marker, so you do not
%    need to account for how the hour hand shifts based on the minute time
%    in a real clock.
%
% Test Cases:
%  tikTok('03-14-2015', '09:23');
%       => should look like clock_1.jpg
%
%  tikTok('04-13-1991', '12:00')
%       => should look like clock_2.jpg
%
%==========================================================================
% PROBLEM 5. Recursive Plotting
%--------------------------------------------------------------------------
%
% Function Name: coloredCampanile
% Inputs (3):  - (double) the length of the sides of the bottom square
%              - (double) a rotation angle
%              - (char) a string of line colors
%
% Outputs (0): None
%
% Function Description:
%   Write a function called "coloredCampanile" that will draw a campanile
%   given the following parameters:
%   - The first input is the length of the sides of the base of your
%     campanile.
%   - The center of the base should be the origin (x = y = z = 0).
%   - The second input will be an angle in radians by which you should
%     rotate each square counter-clockwise.
%   - You will draw the campanile by drawing squares of decreasing size at
%     increasing heights. Each square will have a side length that is .9
%     times the side length of the square below it, and will be plotted at
%     a distance 1 above the square below it.
%   - You should stop plotting when the side length falls *below* 1.
%   - The third input is a string of color characters that you should
%     scroll through each time you plot a new square. For example, if the
%     string was 'rbk', then the first square should be red, the second
%     should be blue, the third should be black, the fourth should be red,
%     and so on, repeating until the plot ends.
%   - Your figure should have the title 'My Campanile', and the axes should
%   - be labeled as 'x-axis', 'y-axis' and 'z-axis' correspondingly.
%   - You must use axis equal.
%
% Notes:
%	- You *MUST* use recursion for this problem.
%   - The third input is guaranteed to only contain characters that
%     change the *color* of the lines (no stars, dashes, etc).
%   - The third input can have any number of characters and the
%     characters may repeat.
%
% EXTREMELY IMPORTANT NOTE:
%   - You *MUST* call "view(3)" at the BEGINNING of your function
%     or your plot may be incorrect. No regrades will be accepted for not
%     following this instructions. 
%
% Hints:
%   - You may find one or more helper functions extremely useful in solving
%     this problem.
%
% Test Cases:
%     coloredCampanile(10, 0, 'rkbgcym'); %No rotation, but colorful
%         => Your result should look like coloredCampanile_testcase1.png
%
%     coloredCampanile(10, pi/32, 'b');
%         => Your result should look like coloredCampanile_testcase2.png
%
%     coloredCampanile(15, pi/45, 'kg');
%         => Your result should look like coloredCampanile_testcase3.png
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
