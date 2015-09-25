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