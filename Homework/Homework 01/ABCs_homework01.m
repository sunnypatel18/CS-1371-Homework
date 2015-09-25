% DO NOT CHANGE THIS LINE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [A B C D E F G H I J K L M N O P Q R] = ABCs_homework01(a, b, c)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Part 1: CS 1371 Homework Guide
%
% 1. Read the CS 1371 HW Guide. Failure to follow the guidelines set
%    forth in the guide will result in a loss of points on your assignment 
%    and a forfeiture of your right to request a regrade.
%
% 2. Answer the following statements by setting the variables immediately
%    following the questions to either 'true' or 'false'. Note that these
%    words are reserve words in MATLAB and must be written exactly as
%    shown.

% EXAMPLE 1.  CS 1371 is a course taught at Georgia Tech.
% example1 = true; 
%
% EXAMPLE 2. CS 1371 teaches students how to program in C++.
% example2 = false;

% 1. I have read the CS 1371 HW Guide and I understand the guidelines for
% completing and submitting assignments.
A = true;

% 2. When I am doing a homework problem, I should follow the directions
% carefully and always make sure that I am correctly naming variables,
% files, and functions. Also, case and spelling matter when naming
% variables, files, and functions.
B = true;

% 3. It is OK if my code has errors in it.
C = false;

% 4. Testing my code won't help me complete the assignment.
D = false;

% 3. I should use the workspace window, not the command window, to ensure 
% that my variables have the correct values.
E = true;

% 4. After I submit my assignment I should always check to see if I
% received a confirmation e-mail. If I didn't, that means my assignment
% wasn't submitted properly. 
F = true;

% 5. If I have a bad homework grade, I should automatically e-mail the HW 
% STA and ask him or her to change it.
G = false;

% 6. After a homework assignment is graded, I have 1 week to appeal my 
% grade to my TA. If they do not respond, I have an additional week to 
% contact the HW STA.
H = true;

% 7. If T-square crashes, I should e-mail my code to my TA.
I = false;

% 8. If I am confused by the directions on a homework assignment, I should
% just make a guess on what the homework wants me to do.  
J = false;

% 9. I don't expect to always get feedback before the Resubmission due
% date. Getting feedback is just a privilege, not a guarantee.
K = true;

% 10. I am required to turn in something for the second submission.
L = false;

%--------------------------------------------------------------------------
% Part 2: Common Functions

% Use the correct built-in function based on the description below. 

% The variables 'a', 'b', and 'c' contain random numbers. 

% 11. The variable 'a' contains a decimal number. Round this number using
% standard conventions, i.e. anything less than .5 rounds down, while
% anything over rounds up.
M = round(a);

% 12. Round the number contained in the variable 'a' down to the next
% closest integer.
N = floor(a);

% 13. Now round the number contained in the variable 'a' up the next 
% closest integer.
O = ceil(a);

% 14. Take the absolute value of the number in variable 'b'.
P = abs(b);

% 15. Take the cosine value of the number in variable 'b'.
Q = cos(b);

% 16. Take the modulus after division of the numbers contained in variables
% 'b' and 'c', in that order.
R = mod (b,c);

end