%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : <your name>
% GT Username  : <your GT email address>
% Section      : <Your Section (Can be found on Oscar)>
% Homework     : HW01
%
% Collaboration: <place here one of the following:
%                 "I worked on the homework assignment alone, using
%                  only course materials."
%                 OR
%                 "I worked on this homework with <give the names of the
%                  people you worked with>, used solutions or partial
%                  solutions provided by <name the people or other
%                  sources>, and referred to <cite any texts, web sites, or
%                  other materials not provided as course materials for CS
%                  1371.>"
%
%
% Files provided with this homework:
%   - hw01.m
%   - CS 1371 HW Guide.pdf
%   - ABCs_homework.m
%   - ABCs_pretest_hw01.p
%
% Files to Submit:
%   - hw01.m
%   - ABCs_homework01.m
%   - compareTips.m
%   - roadTrip.m
%   - quadratic.m
%
% Instructions:
%   1) Follow the directions for each problem very carefully or you will
%   lose points.
%   2) Make sure you name variables exactly as described in the problems or
%   you will not receive credit.
%   3) Read the announcements! Any clarifications and/or updates will be
%   announced on T-Square. Check the T-Square announcements at least once
%   a day.
%   4) You should not use any of the following commands in files that 
%   will be graded:
%       a) clear
%       b) clc
%       c) solve
%		d) input  
%
%  If you want to use this file for testing your work, remove the comment
%  charcacters from the clear and clc lines below
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This section is dedicated to weekly random
% functions/videos/pictures/quotes that your CS 1371 TAs find cool or
% interesting. Enjoy!
%
% MATLAB Function of the Week: why()
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%==========================================================================
% PART 1.  ABC Problems
%--------------------------------------------------------------------------
%
% Part of this homework is a m-file called ABCs_homework01.m. Open this
% file in MATLAB and complete it according to the directions contained
% within.
%
% Once you are done, you can test your ABC file by running 
% ABCs_pretest_hw01() in the command window. Alternatively, you can 
% right-click the file in the Current Directory window and click 
% "Run File".  You cannot run or open the file by double clicking it. If 
% you have problems running ABCs_pretest_hw01.p, then you probably need a 
% newer version of MATLAB. The pretests are guaranteed to run on any
% Georgia Tech Campus Computers, specifically the ones located in the CS
% 1371 Help Desk. 
%
% Files to Complete: 
%       - ABCs_homework01.m
% ABCs File Testing:
%       - Run ABCs_pretest_hw01.p: ABCs_pretest_hw01()
%
%% ========================================================================
% PART 2.  Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic:
%   1. Scripts
%
% Follow the directions carefully and make sure files names as well as
% function headers are written exactly as described in the problem text. If
% your function headers are not written as specified, then you will receive
% an automatic zero for the problem.
%
% In this assignment, the drill problems will consist of simple 
% math/logic problems. All calculations should be done using MATLAB code.
% Do not compute any answer outside of MATLAB and then manually set the
% variable to the solution value. 
%
%% ========================================================================
% PROBLEM 1.  Tip Before Tax or After?
%--------------------------------------------------------------------------
%
% Script Name: compareTips
% Script Outputs (3): - tipBefore  (double) the tip amount before tax
%                     - tipAfter   (double) the tip amount after tax
%                     - difference (double) the absolute difference between
%                                           the two
% Script Description:
%   Several TAs went to dinner and were having a discussion about whether
%   its better to tip before tax or after, and what the actual difference
%   in the amount paid is. Given their subtotal of the meal, the sales tax
%   percentage, and the percentage of the tip, write a script called
%   "compareTips" that computes the tip before sales tax is applied, after
%   sales tax is applied, and the difference between the two. Name your
%   variables "tipBefore", "tipAfter", and "difference" respectively. 
%
% Notes:
%   - You do not have to account for rounding to the nearest penny.
%
% Inputs:
%   - subtotal: $101.68
%   - sales tax percentage: 9.75%
%   - tip percentage: 20% 
%  
% Outputs:
%   - tipBefore  => 20.3360
%   - tipAfter   => 22.3188
%   - difference => 1.9828
%
%% ========================================================================
% PROBLEM 2.  Hit The Road!
%--------------------------------------------------------------------------
%
% Script Name: roadTrip           
% Script Outputs (1): cost (double) the cost of the amount of gas needed 
%                                   for the road trip
%
% Script Description:
%   Write a script named "roadTrip" that uses the number of miles a
%   car can travel with a specified number of gallons of gas, as well as 
%   the length of a road trip and the price of gas per gallon and
%   calculates the cost of the amount of gas needed for the trip. Name your
%   final output variable "cost". 
%
% Notes:
%   - Again, you do not have to account for rounding to the nearest penny.
%
% Inputs:
%   - tank size = 5.12 gallons
%   - distance traveled in one tank = 155.36 miles
%   - total distance of trip = 350 miles
%   - price per gallon = $3.84
%
% Outputs: 
%   - cost => 44.2925
%
%% ========================================================================
% PROBLEM 3. Quadratic Formula
%--------------------------------------------------------------------------
% 
% Script Name: quadratic 
% Script Outputs (2): plus_sol  (double) The plus solution from the 
%                                        quadratic formula
%                     minus_sol (double) The minus solution from the
%                                        quadratic equation
% Script Description:
%   Write a script called "quadratic" that uses the coefficients A, B, and
%   C of a quadratic equation in the form
%
%                              Ax^2 + Bx + C = 0
%
%   and then applies the quadratic formula to find the two solutions of the
%   equation. Name the first output from the 'plus' solution of the
%   plus-or-minus part of the equation "plus_sol", and name the second
%   output from the 'minus' solution "minus_sol".
%
% Inputs:
%   - A: 4
%   - B: -10
%   - C: 4
%
% Outputs:
%   - plus_sol: 2
%   - minus_sol: 0.5
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
% 
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
