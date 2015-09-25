%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : <Your Name>
% GT Email     : <Your GT Email Address>
% Homework     : hw13
% Section      : <Your Section>
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
% Files provided with this homework:  
%   - hw13.m
%   - ABCs_pretest_hw13.m
%   - ABCs_pretest_hw13.p
%   - UBF_solution_1.png
%   - UBF_solution_2.png
%   - UBF_solution_3.png
%   - t_table.xls
%   - compDiffInt.m
%   - heartrate1.fig
%   - heartrate1.xls
%   - heartrate2.fig
%   - heartrate2.xls
%   - ABCs_numerical_methods.m
%
% Files to submit:
%   - hw13.m
%   - ABCs_numerical_methods.m
%   - speedReport.m
%   - quidditchWorldCup.m
%   - uniqueBestFit.m
%   - t_test.m
%   - rootFinder.m
%   - findHeartRate.m
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
%
% http://www.youtube.com/watch?v=7N5OhNplEd4
%==========================================================================
% PART 1.  ABC Problems
%--------------------------------------------------------------------------
%
% Part of this homework is an m-file called "ABCs_<topic>" 
% Open this file in MATLAB and complete it according to the
% directions contained within. Since the ABCs cover upcoming topics for the
% next homework, it is suggested you complete them last. 
%
% Files to Complete: 
%       - ABCs_numerical_methods.m
% ABCs File Testing:
%  >> ABCs_pretest_hw13
%
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic(s):
%   - Numerical Methods
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
% PROBLEM 1.  Calculus...MATLAB Style!
%--------------------------------------------------------------------------
%
% Function Name: speedReport
% Inputs  (2): - (double) A vector containing the coefficients of a
%                         polynomial for a car's velocity at any time (sec)
%              - (double) A number representing time (sec)
% Outputs (3): - (double) The position of the car at the input time (m)
%              - (double) The velocity of the car at the input time (m/s)
%              - (double) The acceleration of the car at the input time
%                         (m/s^2)
%
% Function Description:
%   Given a vector containing the coefficients of a polynomial that
%   describes a super car's velocity at any time (in seconds) as well as a
%   desired time in seconds, write a function called "speedReport" that
%   outputs the position, velocity, and acceleration of the car at that
%   time.
%
%   In context of the problem, the derivative of the velocity is the
%   acceleration of the car at any time, while the integral is the
%   position.  The first part of solving this problem in your function is
%   determining the vector of coefficients for these two equations.
%   Afterwards, evaluate these equations using the input time. Ignore the
%   constant that appears when taking the integral of a polynomial.
%
% Notes:
%   - You are *not* allowed to use the built-in functions polyder() or
%     polyint().
%   - The input time can be a negative number.
%   - The position, velocity, and acceleration of the car at a desired time 
%     can be negative.
%
% Hints:
%   - You might find the polyval() function useful for this problem.
%
% Test Cases:
%    vel_coef = [2, 85, 840];
%
% [pos1, vel1, acc1] = speedReport(vel_coef, 500);
%   pos1   => 9.438e+007
%   vel1   => 543340
%   acc1   => 2085
%
% [pos2, vel2, acc2] = speedReport(vel_coef, 0);
%   pos2   => 0
%   vel2   => 840
%   acc2   => 85
%   
% [pos3, vel3, acc3] = speedReport(vel_coef, -5);
%   pos3   => -3.2208e+003
%   vel3   => 465
%   acc3   => 65
%
% [pos4, vel4, acc4] = speedReport(vel_coef, 3);
%   pos4   => 2.9205e+003
%   vel4   => 1113
%   acc4   => 97
%
% =========================================================================
% PROBLEM 2.   "Which Witch Watches?"
% -------------------------------------------------------------------------
% 
% Function Name: quidditchWorldCup
% Inputs  (4): - (double) A vector of years
%              - (double) A vector of the number of spectators
%              - (double) A vector of revenues
%              - (double) A year
% Outputs (2): - (double) The estimated number of spectators for the given
%                         year
%              - (double) The estimated revenue for the given year
% 
% Function Description:
%   The Quidditch world cup is the most popular event in the wizarding
%   world. It is so popular that it is the only event tracked by the
%   Wizarding Watching Committee, or WWC.
%
%   To help the WWC project future revenue and spectators, write a function
%   called "quidditchWorldCup" that takes in three vectors: one that
%   containing the years in which the data was recorded, one that contains
%   the number of spectators, and one that contains the revenues of each
%   Quidditch World Cup. Using these values, estimate the revenue and
%   number of spectators in a future year, given as a fourth input.
%
%   The way you will be estimating the data is through one of two methods:
%       1) If the year to estimate lies outside of the given years, use
%          linear extrapolation to estimate the outputs. The interp1()
%          may be useful.
%       2) If the year to estimate lies inside the given years, 
%          use the spline method to estimate the outputs. The spline()
%          function may be useful. 
%
% Example (Linear Extrap):
%   Lets say you are given:
%       years = [1750, 1758, 1766];
%       specs = [1000000, 4000000, 9000000];
%       revenue = [10000000, 40000000, 90000000];
%       futureYear = 1774;
%
%   That means in 1750, there were 1000000 spectators and produced a
%   revenue of 10000000.
%   
%   Since 1774 is in the future (for our dataset) we would then use the
%   interp1 extrap mode to estimate the outputs.  The estimated spectators
%   and revenue for the year 1774 would be:
%
%       estSpec = 14000000;
%       estRev = 140000000;
%
% Example(Spline):
%   Given the data:
%       years = [1750, 1758, 1766];
%       specs = [1000000, 4000000, 9000000];
%       revenue = [10000000, 40000000, 90000000];
%       futureYear = 1752;
%
%   Since 1752 is within out dataset, we would then use the spline function
%   to estimate the outputs.  THe estimated spectators and revenue for the
%   year 1752 would be:
%
%       estSpec = 1562500
%       estRev = 15625000
%
% Notes:
%   - The vectors are guaranteed to be the same length.
%   
% Test Cases:
%   years1 = [1750, 1758, 1766];
%   specs1 = [1000000, 4000000, 9000000];
%   revenue1 = [10000000, 40000000, 90000000];
%   futureYear1 = 1774;
%   [estSpec1, estRev1] = quidditchWorldCup(years1, specs1, revenue1, ...
%                                       futureYear1);
%       estSpec1 => 14000000
%       estRev1 => 140000000
%
%   years2 = [1378, 1489, 1625, 1901];
%   specs2 = [1245, 10567, 234782, 4567122];
%   revenue2 = [10178, 205999, 15402878, 245689577];
%   futureYear2 = 1753;
%   [estSpec2, estRev2] = quidditchWorldCup(years2, specs2, revenue2, ...
%                                       futureYear2);
%       estSpec2 => 1.3326e+006
%       estRev2 => 7.6461e+007
%
%==========================================================================
% PROBLEM 3.  If The Data Fit... 
%--------------------------------------------------------------------------
%
% Function Name: uniqueBestFit
% Inputs  (2): - (double) x-data
%              - (double) y-data 
% Outputs (0): - None
% Output Plots (1): Plot of the different subplots leading to a unique fit
%
% Function Description:
%   Write a function called "uniqueBestFit" that takes in x and y data and
%   creates a plot of all of the polynomial fits until the average absolute
%   difference between the input data and the fit is less than 0.75.
%	Each unique fit will be its own subplot, with two subplots per row.
%
%   Specifics:
%   - For each fit, you should calculate the average absolute difference
%	  (AAD) between the y-values obtained from evaluating the fitted curve
%	  at the original x-values and the original y values.
%   - Plot all of the data with the original points in red "x"s. Plot 
%     the lowest order fit curve with an average absolute difference
%     less than 0.75 with a blue line and all other fits with a black line.
%   - Use 100 linearly spaced points between the smallest and largest x 
%     value for new x values when you are plotting the polynomial fit
%     curves.
%   - The title of the fitted plots should read '__ Order Fit', where the
%     blank is the ordinal number of the fit. Example, a first order fit
%     should read '1st Order Fit', while second order fit will read '2nd
%     Order Fit' and so on. 
%   - x-values are not guaranteed to be in any particular order, but the
%     1st x-value will correspond to the 1st y-value and so on.
%   - There is not guaranteed to be a fit with average absolute difference
%     strictly less than 0.75.
%   - You should continue plotting until you have reached the last *UNIQUE*
%     polynomial, even after you have found the first polynomial with AAD
%     less than 0.75.
%
% Constraints:
%   - You may assume that you are to begin with a 1st order fit, i.e. that
%     the input vector is a length of at least 2. Note that even though
%     only one plot will exist when the input vector is of length 2, you
%     must still adhere to the rule that there are to be enough space for
%     two subplots per row.
%   - You may assume that the input vectors are the same size.
%
% Test Cases:
%   uniqueBestFit(0:4, [2 10 13 12 10]);
%       => should look like UBF_solution_1.png
%
%   uniqueBestFit([1 9 2 8 -3 -2], [0 -2 2 2 -3 -1]);
%       => should look like UBF_solution_2.png
%
%   uniqueBestFit([0.6 0.8 0.7 0.9 1.3 1.1 1.4 1.2 1], ...
%                   [0.07 0.32 0.16 0.59 3.71 1.61 5.37 2.48 1]);
%       => should look like UBF_solution_3.png
%
%==========================================================================
% PROBLEM 4. T-test
%--------------------------------------------------------------------------
%
% Function Name: t_test
% Inputs (1): - (double) vector of data points from one sample population
%             - (double) vector of data points from another sample population
% Outputs(2): - (double) calculated t-statistic 
%             - (char)   string describing the level of significance
%                        predicted by the t-statistic
%
% Function Description:
%   In statistics, a t-test is a method used to determine if there is a 
%   significant difference between the means of two groups, or samples,
%   which are typically subject to different treatments in a study. Your 
%   task is to create a function called "t_test" that takes in two vectors,
%   each containing a set of data points from a different sample and 
%   performs a two-tailed student's t-test. Specifically, the function 
%   should output the calculated t-statistic as well as a string describing
%   how significant the difference between the means of the two samples is.
%
%   Although there are many types of student's t-tests, for the purposes of
%   this problem, you should calculate your t-statistic based on the 
%   Welch's t-test, whose formula for the t-statistic is as follows:
%
%                  t = abs(x1_bar - x2_bar)/SEM
%
%   where x1_bar is the mean of the first sample, x2_bar is the mean of the
%   second sample, and SEM is the standard error of the mean calculated as
%   follows:
%
%                  SEM = sqrt(var1/n1 + var2/n2)
%
%   Here n1 and n2 are the number of data points in the first and second
%   samples, respectively. Similarly, var1 and var2 represent the variance
%   (or standard deviation squared) of both samples.
%       
%   To perform the t-test after calculating the t-statistic, one needs to
%   consult a t-table, which has been given to you in the file
%   't_table.xls'. To read a t-table, first locate the row corresponding to
%   the correct degrees of freedom (equal to n1 - 1) given in the first 
%   column. The remaining three values within that row are p-values, which 
%   when compared to the t-statistic represent the probability that the 
%   difference between the two samples is entirely due to chance. 
%   Therefore, if the calculated t-statistic is greater than or equal to 
%   the last and highest of the three values, your output string should be 
%   'The difference in the means is very highly significant.' because this 
%   would mean the probability of the difference arising by chance is less
%   than 1%. If the calculated t-statistic is only greater than or equal to
%   the second value, your output string should be 'The difference in the 
%   means is highly significant.'. If the calculated t-statistic is only 
%   greater than or equal to the first value, your output string should be 
%   'The difference in the means is significant.'. Finally, if your 
%   t-statistic is less than all the p-values, your output string should be
%   'The difference in the means is not significant.'
%
% Notes:
%   - The sample sizes of both populations is guaranteed to be the same.
%   - The desired degrees of freedom is guaranteed to be given in the 
%   't_table.xls' file
%   - The same t-table file should be used for comparing all t-statistics.
%
% Test Cases:
% [tstat1 str1] = t_test([420 360 460 470], [130 170 150 180])
%   tstat1 => 9.8865
%   str1  => The difference in the means is very highly significant.  
% 
% [tstat2 str2] = t_test([250 230 350 220 370 280], [330 370 250 280 360
% 250])
%   tstat2 => 0.6884
%   str2  => The difference in the means is not significant.
%
%==========================================================================
% PROBLEM 5.  Back In My Day We Didn't Have Fancy Calculators and MATLAB!
%--------------------------------------------------------------------------
%
% Function Name: rootFinder
% Inputs  (2): - (double) A vector representing the coefficients of a
%                         polynomial.
%              - (double) An initial guess.
% Outputs (1): - (double) An x-intercept of the polynomial
%
% Function Description:
%   Back in our day, we had to calculate the roots of an equation the
%   old-fashioned way - by hand. On the way to school we would write 15
%   pages of work, uphill both ways, in the snow, alone, only to find out
%   we forgot to carry a one somewhere. The horror! But now you have
%   something we didn't: MATLAB. 
%
%   Write a function called "rootFinder" that given the coefficients of
%   a polynomial and a number representing an initial guess finds a point
%   where the function equals zero (an x-intercept) using Newton-Raphson's
%   method.
%
%   The Newton-Raphson formula is a useful way to find the solution to a
%   function that would normally be unsolvable:
%
%                                  f(x_n)
%                 x_(n+1) = x_n - --------
%                                  f'(x_n)
%
%   where f is the function, f' is the derivative of the formula, and x_n
%   is an initial guess. After each iteration, a better guess is found for
%   the zero, in this case x_(n+1). After performing some iterations,
%   f(x_n) will approach zero to an infinitesimal degree. However, if there
%   is more than one zero, there is no way to tell ahead of time which zero
%   it will converge to. It could be that, given a bad initial guess, the
%   function will not converge.
%
%   Suggested Method:
%   - Evaluate Newton-Raphon's method to evaluate the polynomial at the
%     initial guess.
%   - If the value of the polynomial is within 10^-10 of zero, return the
%     x_value. 
%   - If the value of the polynomial is more than 10^-10 away from zero,
%     run Newton-Raphson again, with your guess being the answer to the
%     Newton-Raphson formula.
%   - If you have run it for more than 200 times without getting an answer,
%     return the string 'Function does not converge.'
%
%   Notes:
%   - While you only have to account for polynomials in this code,
%     Newton-Raphson works for almost any mathematical function. You may
%     discover this if you go on to take more Numerical Methods classes.
%   - This code can be solved iteratively OR recursively.
%   - Do NOT just find the zero's of the function using some other method.
%     As you can see from test case 2 and 3, Newton-Raphson can fail given
%     the wrong initial guess.
%
%   Hints:
%   - You may find the function polyval() and how you found
%     derivative coeffecients in "speedReport" useful.
%
% Test Cases:
%  x1 = rootFinder([1 6 9], 1)
%     x1 => -3
%
%  x2 = rootFinder([-1 0 1], 0)
%     x2 => 'Function does not converge.'
%
%  x3 = rootFinder([-1 0 1], 2)
%     x3 => 1
%
%  x4 = rootFinder([8 7 6 5 4 3 2 1], 2000)
%     x4 => -0.7145
%
%==========================================================================
% PROBLEM 6. Find the Heart Rate 
%--------------------------------------------------------------------------
%
% Function Name: findHeartRate
% Inputs  (2): - (char)     A filename of an Excel file 
%              - (double)   A threshold number
% Outputs (1): - (double)   The heart rate gathered from the data in beats
%                           per minute
%
% Output Plot (1): - A plot of the data and peaks highlighted
% 
% Function Description:
%   Graduation is upon you, but some lab work stands between you and your
%   diploma. In your senior research lab, you have taken some EKG
%   (Electrocardiogram) data from a patient and recorded it to an excel
%   spread sheet, but your professor needs it in an easy-to-read format
%   with the relevant data highlighted as well the heart rate. For more
%   information about EKGs, visit
%   http://en.wikipedia.org/wiki/Electrocardiography.  Your plot needs to
%   contain the following features:
%
%       1) A plot of the data with a blue line 
%       2) Green circles at the local maxima above the given threshold
%  
%   The Excel spread sheet has two columns, and an varying number of rows
%   depending on how many samples you took during your experiment. The
%   first column is time you are working with in seconds, and the second
%   column is the electrical activity of the heart measured at that
%   particular time. Your X-axis will be the time in seconds, and the
%   Y-axis will be the values measured at those times.
%
%   Local maxima are where the value at a particular time is
%   greater than both the time prior to it, and the time
%   immediately following it. At these times, you want to plot a
%   green circle at each value (or each local maximum). 
%
%   To find the heart rate you need to:
%       1) Divide the total number of local maxima over the given threshold
%          by the total amount of time that the data was collected from the
%          first heart beat to the last heart beat.
%
%       2) Convert this number into beats per minute
%
%           Example: If you found 30 local maxima above the given threshold
%           and the samples were taken over 30 seconds, the
%           heart rate would be 60 beats per minute. 
%
%   Notes: 
%   - The first and last index cannot be a local max and should not
%     be considered for a maximum.
%   - Time will be given in seconds 
%   - When looking at your plots keep in mind that the data you are using 
%     came from a messy signal without filtering and will not look like the
%     PQRS wave you may be expecting if you have taken a Physiology class
%     before. However, in future classes you may learn filtering methods
%     for this type of data, or take an EKG signal yourself, which is
%     pretty cool. 
%
%  Test Cases:
%   threshold1=50
%   threshold2=40
%
%   hr1=findHeartRate('heartrate1.xls', threshold1)
%       => Plot should look like heartrate1.fig
%   hr1=20
%   
%   hr2=findHeartRate('heartrate2.xls', threshold2)
%       => Plot should look like heartrate2.fig
%   hr2=67.5630
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.