%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : <Ben Coordes>
% GT Email     : <bcoordes3@gatech.edu>
% Homework     : hw10
% Section      : <C02>
% Collaboration: <I worked on the homework assignment alone, using
%                  only course materials.>
%
%
% Files provided with this homework:  
%   - hw10.m
%   - connect1.png
%   - connect2.png
%   - connect3.png
%   - createTree.p
%   - portal_solution1.png
%   - portal_solution2.png
%   - portal_solution3.png
%   - rotateLines.p
%
% Files to submit:
%   - hw10.m
%   - connect.m
%   - reversePascal.m
%   - countProgeny.m
%   - ringSum.m
%   - portal.m
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
%==========================================================================
% COMMENTING
%--------------------------------------------------------------------------
%
% Whenever you program, it is always a good idea to comment your code.
% Commenting helps you keep track of what you are attempting to code, and 
% it helps others in understanding why you wrote various lines of code.  
% Since the AutoGrader does not give partial credit for attempting a 
% problem, we have added a commenting system to give some incentive to at 
% least attempt each problem. From now on, when you write a solution to a
% problem, you should comment your code and explain what you were 
% attempting to code. Some good places to comment would be sections of your
% code that directly relate with your algorithm. However, don't comment
% every line of code. Instead comment the lines of code that are either  
% difficult to understand or are important to solving the problem. 
%
% Commenting will purely be for extra-credit purposes, so if you don't want
% to comment your code, you don't have to. Your Section TA will grade the
% comments from each Homework and will keep track of your commenting points
% throughout the semester. Commenting points will not change the score you
% receive on a homework assignment, but they will be factored into your
% homework average at the end of the semester. 
%
% Finally, if you come to help desk, you are expected to have your code
% commented. If a TA sees that your code is not commented, he or she will
% move on to another student until you comment your code.
%
%==========================================================================
% PART 1. Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic(s):
%   11.1 Line Plots
%   9.  Recursion
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
% PROBLEM 1 - Connect the Dots
%--------------------------------------------------------------------------
% 
% Function Name: connect
% Inputs  (3): - (double) 2xN array of numbers where each column represents
%                         an [x;y] point pair
%              - (double) 1xM vector which represents the order the points
%                         should be connected
%              - (char)   The color the vector should be plotted in
% Outputs (0): 
%       - None
%
% Output Plots (1): -  A 2-dimensional connect the dots plot in the 
%                      specified color
%
% Function Description:
%   The function takes in an 2xN array of numbers where each column
%   represents an [x; y] point pair. The second input to the function is a
%   vector the specifies the order the points should be connected.
%   Essentially, this function simulates the connect-the-dots games.
%   Imagine the each point in the array is identified by the column it is
%   in. If the second input vector were then [1 3 2], the function would
%   start at the first point, draw a line to the third point, and then
%   draw a line to second point. If the second input vector were [1 3 2 1],
%   the function would repeat the same process, but at the end it would
%   draw a line from the second point to the first point. When plotting the
%   points, the function will plot the lines in the color specified by the
%   third input. 
%
%   The color may specified as one of the following strings:
%
%                           - blue
%                           - green
%                           - red
%                           - cyan
%                           - magenta
%                           - yellow
%                           - black
%                           - white     
% Notes:
%   - No iteration is required to solve this problem. 
%   - When identifying the color to plot in, instead of dealing with all
%     the cases, think of how most of them correspond to the style 
%     character in a specific way, and then deal with the few exceptions.
%
% Test Cases:
%   points = [1 1 3 3; 1 3 1 3];
%   connect(points, [1 3 4 2 1], 'black');
%   axis([0 4 0 4]);
%       => Plot should look like connect1.png
%
%   points = [1 1 3 3; 1 3 1 3];
%   connect(points, [1 3 4 2 1 4 2 3], 'blue');
%   axis([0 4 0 4]);
%       => Plot should look like connect2.png
%
%   points = [1 9 5 3 5 7; 1 1 9 5 1 5];
%   connect(points, [3 4 1 5 4 6 5 2 6 3], 'yellow');
%   axis([0 10 0 10]);
%       => Plot should look like connect3.png
%
%==========================================================================
% PROBLEM 2.  Reverse Binomial Expansion
%--------------------------------------------------------------------------
%
% Function Name: reversePascal
% Inputs  (1): - (double) A vector of polynomial coefficients.
% Outputs (1): - (double) A vector of binomial coefficients.
%              - (double) The exponent of the binomial.
%
% Function Description:
%   Write a function called "reversePascal" that takes the coefficients to
%   an arbitrarily long polynomial and condenses it into the form (ax+b)^n,
%   or binomial form. The function should return [a b] as its first output,
%   and n as its second. You MUST use recursion to solve this problem.
%
%   Example: The polynomial x^2 + 2x + 1 has coefficients [1 2 1]. It can
%   also be written as (x+1)^2. reversePascal() would take in [1 2 1] and
%   return [1 1], 2. Similarly, the polynomial x^4+8x^3+18x^2+16x+5 can be
%   rewritten as (x+5)^4.
%
%   While there are many ways to do this problem, the recommended method
%   outlined below involves reversing Pascal's Triangle. For more
%   information about Pascal's Triangle, go to
%
%           http://en.wikipedia.org/wiki/Pascal%27s_triangle
%
%   Recommended Method:
%   Each instance of the function should check if the input is already a
%   binomial. If it is, it should return the appropiate values. If it is
%   not, the function should step through the binomial left to right and
%   subtract the previous index from the current index.
%   
%   Example: x^4+8x^3+18x^2+16x+5
%
%   [1 8 18 16 5]   <-- subtract 0 from 1
%   [1 7 18 16 5]   <-- subtract 1 from 8
%   [1 7 11 16 5]   <-- subtract 7 from 18
%   [1 7 11 5  5]   <-- subtract 11 from 16
%   [1 7 11 5  0]   <-- subtract 5 from 5
%
%   At this point, the function should remove the zero from the end of the
%   vector and then call itself on this new vector.
%
% Constraints: 
%   - You MUST use recursion to solve this problem.
%
% Notes:
%   - The input polynomial will always be reducible into a binomial.
%
% Test Cases:
%
%   [vec1 n1] = reversePascal([1 8 18 16 5]);
%       vec1 => [1 5]
%       n1 => 4
%
%   [vec2 n2] = reversePascal([5 16 18 8 1]);
%       vec2 => [5 1]
%       n2 => 4
%
%   [vec3 n3] = reversePascal([-1 -2 2 8 7 2]);
%       vec3 => [-1 2]
%       n3 => 5
%
%   [vec4 n4] = reversePascal([-2 -2]);
%       vec3 => [-2 -2]
%       n3 => 1
%
%==========================================================================
% PROBLEM 3.  It's All Relatives
%--------------------------------------------------------------------------
%
% Function Name: countProgeny
% Inputs  (1): - (struct) A family tree as described below 
% Outputs (1): - (double) The number of people in the given family tree 
%
% Function Description:
%   Given a family tree as described below, write a function named
%   countProgeny that will return the number of people in the family tree.
%   If there is no one in the tree at all, return zero.
%
%   The family tree will be represented as nested structures with two
%   fields: name and children. The name field contains the name of the
%   family member, and the children field contains a structure array of
%   that family member's children. 
%
%   We have included a createTree.p file to create test cases with. This
%   function takes in a list of names and the names of their parents, and
%   then creates a nested structure representing a family tree.
%   
%
% Constraints:
%	- You MUST use recursion for this problem.
%
% Hints:
%   - When a family member doesn't have any children, it's children field
%     will be an 1x0 (empty) structure.
%
% Test Cases:
%   t1 = createTree({'me' 'ma' 'gramma' 'bro' 'sis'}, {'ma', 'gramma', [],
%   'ma', 'ma'});
%   t2 = createTree({'John' 'Carol' 'Alice' 'Bob'}, {'Carol', [], 'John',
%   'Carol'});
%
%   c1 = countProgeny(t1)
%       c1 => 5
%
%	c2 = countProgeny(t2)
%       c2 => 4
%
%==========================================================================
% Problem 4. One RingSum to Rule Them All, One RingSum to Find Them
%--------------------------------------------------------------------------
%
% Function Name: ringSum
% Inputs  (1): - (double) an array of numbers
% Outputs (1): - (double) a vector containing the sums of the "rings" of
%                         the array
%
% Function Description:
%   Write a function called "ringSum" that takes in an array of doubles and
%   recursively finds the sums of the "rings" of the array. The function
%   should output a vector containing these sums, with the outermost sum
%   first. Consider the following array:
%
%   ex1 = [1 1 1 1 1 1 1
%          1 5 5 5 5 5 1
%          1 5 2 2 2 5 1
%          1 5 5 5 5 5 1
%          1 1 1 1 1 1 1]
%
%   "ex1" has three rings (the outer ring of 1's, the second ring of 5's,
%   and the inner ring of 2's), so the output vector should have 3 elements
%   and should contain the sum of the 1's in the first index, the sum of
%   the 5's in the second index, and the sum of the 2's in the third index.
%
%   If the input is a vector (including a vector of length 1), then the
%	function should simply return the sum of the vector. If the input
%   is empty, then the function should return an empty vector.
%   
% Notes:
%   - You may ONLY use the following built-in functions: size(), sum(),
%     isempty(), or length().  
%   - You MUST use recursion to receive any credit for your solution.
%
% Test Cases:
%   Rsum1 = ringSum([4 1 4; 3 2 2; 5 0 1]);
%       Rsum1 => [20 2]
%   
%   Rsum2 = ringSum([7 7 7 7; 7 11 10 7; 7 7 6 7; 7 7 7 7]);
%       Rsum2 => [84 34]
%
%   Rsum3 = ringSum([6, log(8), pi, exp(2)]);
%       Rsum3 => 18.6101
%
%   Rsum4 = ringSum([]);
%       Rsum4 = [];
%
%
%==========================================================================
% PROBLEM 5.  Into The Portal
%--------------------------------------------------------------------------
% Function Name: portal
% Inputs  (3): - (double) length of the starting square 
%              - (double) percent change (decimal form)
%              - (double) change in radians
% Outputs (0): None
%
% Output Plot (1): - Plot of a portal on the XY plane
%
% Function Description:
%   Write a function called "portal" that creates a plot representing a
%   portal using multiple nested squares. The function will take in a
%   starting side length, a reduction percentage, and an angle of rotation,
%   and plot rotated and reduced squares within squares until it the length
%   of the side of the square becomes less than one. The squares will also
%   alternate in colors between green and cyan, where the first and every
%   other square will be green and the others will be cyan.
%
% Constraints:
%   - You MUST use recursion.
%
%
% Notes: 
%   - The first square will be green and not rotated.
%   - To plot a square, plot the four points that comprise the corners.
%     MATLAB will automatically fill in the line. To close the square, you
%     will need to plot the first point twice.
%   - The center of the base should be at the origin (x = y = z = 0)
%   - A rotation function is given to you in a p-file called rotateLines.
%       - This function will rotate your points and return their values
%         if given x and y coordinates as a vector and a radian angle
%         measurement.
%       - To call this function:
%           - [newx newy] = rotateLines(x,y,angle)
%       - Angle must be in radians!   
% Hints:
%   - To plot in the correct color, adding another input that would keep
%     count of the number of squares already plotted to helper function may
%     prove useful.
%
% Test Cases:
%   portal(10,0.50, pi/4)
%       => Look like portal_solution1.png
%
%   portal(100,0.90,pi/2.1)
%       => Look like portal_solution2.png
%
%   portal(10,0.98,1)
%       => Look like portal_solution3.png
%
%==========================================================================
% FINISHED!!! HAPPY SPRING BREAK!!!
%--------------------------------------------------------------------------
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.