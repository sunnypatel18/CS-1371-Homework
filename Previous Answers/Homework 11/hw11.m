%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : <Ben Coordes>
% GT Email     : <bcoordes3@gatech.edu>
% Homework     : hw11
% Section      : <C02>
% Collaboration: <"I worked on the homework assignment alone, using
%                 only course materials.">
%
% Files provided with this homework:  
%   - hw11.m
%   - ball1.fig
%   - ball2.fig
%   - ball3.fig
%   - ball4.fig
%   - ball5.fig
%   - TestCase1.fig
%   - TestCase2.fig
%   - TestCase3.fig
%   - FieldGoal.fig
%   - rotated1.fig
%   - rotated2.fig
%   - rotated3.fig
%   - scoreGoal.m
%   - scoreGoal_sample.p
%   - rubric.pdf
%
% Files to submit:
%   - scoreGoal.m
%   - makeBall.m *
%   - makeCylinder.m *
%   - makeGoal.m *
%   - moveBall.m *
%
%   * = optional unless used in scoreGoal.m
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
% Introduction:
%==========================================================================
%
%   This homework is different than the homeworks that you have done
%   before. Instead of having many problems to solve with different
%   funtions, you will be graded only on one function (Problem 5 -
%   scoreGoal), which will use bodies of rotation, surface plotting, and
%   rotations to animate a scene of a ball flying toward a
%   goal. 
%
%   Instead, problems 1-4 are designed to assist you in creating several
%   separate components (e.g. a ball, a goalpost) that will be used 
%   together in the scoreGoal animation function. These problems are not 
%   required in order to recieve full credit on this homework. However, it
%   is *highly recommended* that you utilize them in your scoreGoal 
%   function. They will be helpful in breaking down the final animation
%   into maneagable components, and they will also help organize your code.
%   In addition, if you correctly complete any of Problems 1-4, you will
%   recieve partial credit even if your scoreGoal function does not work
%   correctly.
%      
%   Grading Scheme:
%
%   Unlike previous homeworks, this homework will not be graded with the
%   autograder. Instead, the scoreGoal function will be hand-graded by
%   your section TAs using the rubric provided in the rubric.pdf file.
%   70% of your grade for this homework will come from this hand-graded
%   score.
%
%   The remaining 30% of your grade will be based on your ability to
%   demonstrate and explain how your scoreGoal function works to your
%   section TA during a demo. This demo will be done in recitation. The
%   exact date will be announced beforehand through T-Square. The demo
%   gives you a chance to boost your homework score, even if there were
%   some errors in your code when it was submitted. If you are able to
%   knowledgeably answer your TA's questions about how your code works or
%   explain any errors in your code, you will receive full credit on the
%   demo.
%
%   Extra Credit:
%
%   The animation aspect of this homework will give you an opportunity to 
%   be creative. If you go above and beyond what the problem statement
%   specifies, there is potential to recieve extra credit. Extra credit 
%   will be awarded by your TA based on how many creative additions you 
%   make to the animation. You *MUST* include a statement at the bottom of 
%   your scoreGoal file (below all of the code) detailing the additions 
%   that you made or that you did not make any additions. *The TAs are NOT
%   responsible for helping you to implement your extra credit!*
%   
%   Example Extra Credit Additions:
%   - Make a background, for example lines on the field, grass, or 
%     bleachers
%   - Make a ball or goal that is colored with a colormap other than the 
%     default
%   - Make another type of goal besides a field goal or a type of ball 
%     other than those given in the test cases
%   - Make  a stick figure person kicking the ball or standing in the
%     scene
%
%   Good Luck!
%
%==========================================================================
% PROBLEM 1.  Make a Ball
%--------------------------------------------------------------------------
%
% Function Name: makeBall
% Inputs  (3): - (double) x-data
%              - (double) y-data
%              - (double) vector of data representing your theta
% Outputs (3): - (double) xx-data
%              - (double) yy-data
%              - (double) zz-data
% Output Plots (1): Plot of the ball
%
% Function Description:
%   Write a function called "makeBall" that takes in x, y, and z data and
%   then creates a plot of a ball. To do this, use bodies of rotation to
%   make the 3-dimensional coordinates for the ball. You should name
%   your final x, y, and z-coordiates "xx", "yy", and "zz".
%
% Hints:
%   -You should perform your bodies of rotation around the x axis.
%   -Use axis equal to create correct dimensions
%   -You will find surf() useful in this problem
%
% Test Cases:
%
%   x = linspace(0,pi);
%   x1 = x(3:end-3);
%   y1 = sin(x1)
%   th1 = linspace(0,2.*pi) 
%   [xx1 yy1 zz1] = makeBall(x1,y1,th1);
%       => should look something like ball1.fig
% 
%   x2 = [0 1 1 0 0];
%   y2 = [0 0 1 1 0];
%   th2 = linspace(0,2.*pi)
%   [xx2 yy2 zz2] = makeBall(x2,y2,th2);
%       => should look something like ball2.fig
%   x3 = 1:5
%   y3 = [0 1 2 1 0]
%   th3 = linspace(0,2.*pi)
%   [xx3 yy3 zz3] = makeBall(x3,y3,th3);
%       => should look something like ball3.fig
%   x4 = 1:50
%   y4 = x4./2
%   th4 = linspace(0,2.*pi)
%   [xx4 yy4 zz4] = makeBall(x4,y4,th4);
%       => should look something like ball4.fig
%   x5 = -10:10
%   y5 = x5 
%   th5 = linspace(0,2.*pi)
%   [xx5 yy5 zz5] = makeBall(x5,y5,th5);
%       => should look something like ball5.fig
%
%==========================================================================
% PROBLEM 2.  Make a Cylinder
%--------------------------------------------------------------------------
%
% Function Name: makeCylinder
% Inputs  (3): - (double) length of cylinder
%              - (double) radius of cylinder
%              - (char)   the axis to rotate around
% Outputs (3): - (double) xx-data
%              - (double) yy-data
%              - (double) zz-data
% 
% Function Description:
%   Write a function called "makeCylinder" that takes in the length of a
%   cylinder, the radius of that cylinder and the axis to make a cylinder
%   around. The axis input will just be one letter 'x', 'y', or 'z', and
%   you should rotate a line around the corresponding axis to make a 
%   cylinder. You should use bodies of rotation to accomplish this. You may
%   NOT use cylinder().
%
% Hints:
%   - You will find meshgrid() and linspace() useful in this problem.
%   
% Test Cases:
% 
%   [X1,Y1,Z1] = makeCylinder(5,2,'x');
%   surf(X1,Y1,Z1); xlabel('x'); ylabel('y'); zlabel('z');
%       => should look something like 'TestCase1.fig'
%
%   [X2,Y2,Z2] = makeCylinder(5,2,'y');
%   surf(X2,Y2,Z2); xlabel('x'); ylabel('y'); zlabel('z');
%       => should look something like 'TestCase2.fig'
%
%   [X3,Y3,Z3] = makeCylinder(5,2,'z');
%   surf(X3,Y3,Z3); xlabel('x'); ylabel('y'); zlabel('z');
%       => should look something like 'TestCase3.fig'
% 
%==========================================================================
% PROBLEM 3.  Make a Goal
%--------------------------------------------------------------------------
%
% Function Name: makeGoal
% Inputs  (0)
% Outputs (0)
% Output Plots (1): Plot of the goal
% 
% Function Description:
%   Write a function called "makeGoal" that outputs a plot of a goal. You
%   are allowed to get creative with this one! Depending on which sport you
%   want to animate, make a goal for that sport. You may find you function
%   makeCylinder() useful for this problem.
%
% Hints:
%   - Hold on works with surf() just like it does with plot().
%
% Test cases:
%   There aren't really test cases for this problem, but look at
%   'FieldGoal.fig' for an idea of a basic goal. Remember you may have to
%   change the view or rotate around different axes to get the look you
%   want.
%
%==========================================================================
% PROBLEM 4.  It's a long shot! 
%--------------------------------------------------------------------------
%
% Function Name: moveBall
% Inputs  (4): - (double) An array of x-coordinates    
%              - (double) An array of y-coordinates
%              - (double) An array of z-coordinates
%              - (double) The angle of rotation
%
% Outputs (3): - (double) The rotated x-coordinates
%              - (double) The rotated y-coordinates
%              - (double) The rotated z-coordinates
%   
% Function Description:
%  Write a function called "moveBall" that takes in 3 arrays representing
%  the x, y, and z coordinates of your ball and an angle to rotate them by.
%  "moveBall" should return the new coordinates after they have been
%  rotated about the y-axis. Your function should also plot the ball in 3D
%  space. 
%
%   Notes:
%      - You may not use the rotate() function
%
%   Hints:
%      - You may find rotation matrices helpful.
%      - You will need to move your ball away from the y-axis before you
%        rotate it in order to see it move.
%
% Test Cases:
%   
%   [x, y, z] =  makeBall(1:3, [1 2 1], linspace(1, 2.*pi, 100));
%	[xx, yy, zz] = moveBall(x, y, z, pi/4);
%   surf(xx, yy, zz)
%   view([0, 0])
%   axis([-10,10,-10,10,-10,10]) 
%       => should look something like rotated1.fig
% 
%   [xx1, yy1, zz1] = moveBall(x, y, z, 0);
%   surf(xx1, yy1, zz1)
%   view([0, 0])
%   axis([-10,10,-10,10,-10,10])
%      => should look something like rotated2.fig
% 
%   [xx2, yy2, zz2] = moveBall(x,y,z,pi);
%   surf(xx2, yy2, zz2)
%   view([0, 0])
%   axis([-10,10,-10,10,-10,10])
%      => should look something like rotated3.fig
%
%==========================================================================
% PROBLEM 5.  Score a Goal
%--------------------------------------------------------------------------
%
% Function Name: scoreGoal
% Inputs  (0)
% Outputs (0)
% Output Plots (1): Animated plot of the ball going into the goal
% 
% Function Description:
%   Now that you've written functions to create a moving ball and goal,
%   write a function called "scoreGoal" that uses the previously made
%   functions to animate a scene of a ball flying toward a goal.
%
%   Because creating an animation to incoporate your other functions is
%   challenging, skeleton code has been provided for you inside
%   scoreGoal.m. This skeleton code contains comments that should guide you
%   in using your other functions from this homework to create the
%   animation.
%
%   The file scoreGoal_sample.p has also been provided for you to see an
%   example of what your scoreGoal animation may look like.
%
%==========================================================================
% TOUCHDOWN!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
