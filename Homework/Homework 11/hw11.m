%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : <Sunny Patel>
% GT Email     : <sunnypatel18@gmail.com>
% Homework     : hw11
% Section      : <B05>
% Collaboration: <place here one of the following:
%                 "I worked on the homework assignment alone, using
%                  only course materials."
%                 >"
%
% Files provided with this homework:  
%   - HW11.m
%   - pirateShipexample.m
%   - pirateShip.m
%   - makeCone.p
%   - HW11rubric.pdf
%   - cannonBall5.png
%   - cannonBall10.png
%   - cylinder1.png
%   - cylinder2.png
%   - cylinder3.png
%   - ship1.png
%   - ship2.png
%   - rotated1.png
%   - rotated2.png
%   - rotated3.png
%
% Files to submit:
%   - hw11.m
%   - cannonBall.m
%   - CylindArrs.m
%   - makeShip.m
%   - rotateAxis.m
%   - pirateShip.m
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
%==========================================================================
% PART 1.  Explanation of the Homework
%--------------------------------------------------------------------------
%   This homework is different than the homeworks that you have done
%   before. Instead of having many problems to solve with different
%   funtions, you will be graded only on one function, pirateShip, which
%   will use bodies of rotation, surface plotting, and rotations to animate
%   a scene of a pirate ship moving and shooting a cannonball.
%
%   Problems 1-4 are designed to assist you in creating several
%   separate components (e.g. a cannonball, a pirate ship) that will be 
%   used together in the pirateShip animation function. These problems are 
%   not required in order to recieve full credit on this homework. However,
%   it is *HIGHLY RECOMMENDED* that you utilize them in your pirateShip 
%   function. They will be helpful in breaking down the final animation
%   into maneagable components, and they will also help organize your code.
%   In addition, if you correctly complete any of Problems 1-4
%   you will recieve partial credit even if your pirateShip function does
%   not work correctly.
%      
% Grading Scheme:
%   Unlike previous homeworks, this homework will not be graded with the
%   autograder. Instead, the pirateShip function will be hand-graded by
%   your section's TA using the rubric provided in the HW11rubric.pdf
%   file.
%
% Extra Credit:
%   The animation aspect of this homework will give you an opportunity to 
%   be creative. If you go above and beyond what the problem statement
%   specifies, there is potential to recieve extra credit. Extra credit 
%   will be awarded by your TA based on how many creative additions you 
%   make to the animation. You *MUST* include a statement at the bottom of 
%   your pirateShip file (below all of the code) detailing the additions 
%   that you made or saying that you did not make any additions in order
%   for you to be eligible for extra credit. *The TAs WILL NOT BE
%   RESPONSIBLE FOR HELPING YOU IMPLEMENT YOUR EXTRA CREDIT PORTIONS*.
%   
%   Some example additions could include:
%   - Make a background, for example the ocean, the sky, or a nearby island
%   - Make a cannonball or ship that is colored with a colormap other than 
%     the default
%   - Make additions to the ship, such as oars, or multiple masts and sails
%   - Make a stick figure person standing on the boat or on an island
%     
%==========================================================================
% PART 2.  Smaller Problems 
%--------------------------------------------------------------------------
%   Again, as noted above, you do not have to do these smaller problems,
%   but they are very beneficial when you are going to do the animation
%   part.  Also, if your animation does not work correctly, then you can
%   earn partial credit by doing these smaller problems!
%==========================================================================
% PROBLEM 1. Make the cannon ball!
%--------------------------------------------------------------------------
%
% Function Name: cannonBall
% Inputs  (1): - (double) radius of the ball to make
%
% Outputs (3): - (double) xx-data
%              - (double) yy-data
%              - (double) zz-data
%
% Function Description:
%   Write a function called "cannonBall" that takes in a radius and uses
%   that radius to create a 3-D ball. To do this, you should create x and y
%   values corresponding to the radius as well as a vector of theta values.
%   You then use bodies of rotation to make the 3-dimensional coordinates
%   for the ball. You should name your final x, y, and z-coordiates "xx",
%   "yy", and "zz".
%
% Forbidden Functions:
%   You MAY NOT use the sphere() function to complete this problem. Doing
%   so will result in receiving no credit.
%
% Test Cases:
%
%   [xx1 yy1 zz1] = cannonBall(5);
%   mesh(xx1,yy1,zz1);
%   axis equal
%       => figure looks like 'cannonBall5.png'
%
%   [xx2 yy2 zz2] = cannonBall(10);
%   mesh(xx2,yy2,zz2)
%   axis equal
%       => figure looks like 'cannonBall10.png'
%
%==========================================================================
% PROBLEM 2. Make the Cannon or Mast or Palm Tree!
%--------------------------------------------------------------------------
%
% Function Name: CylindArrs
% Inputs  (3): - (double) length of the cylinder
%              - (double) radius of the cylinder
%              - (char) an axis to rotate around
% Outputs (3): - (double) xx-data
%              - (double) yy-data
%              - (double) zz-data
%
% Function Description:
%   Write a function called "CylindArrs" that takes in the length of a
%   cylinder, the radius of that cylinder and the axis to make a cylinder
%   around. The axis input will just be one letter 'x', 'y', or 'z', and
%   you should rotate a line around the corresponding axis to make a
%   cylinder. You should use bodies of rotation to accomplish this. Your
%   cylinder should not be visibly hollow inside.
%
% Forbidden Functions:
%    You MAY NOT use the cylinder() function to complete this problem.
%    Doing so will result in receiving no credit.
%
% Hints:
%   - You will find meshgrid() and linspace() useful in this problem.
%   
% Test Cases:
% 
%   [X1,Y1,Z1] = CylindArrs(5,2,'x');
%   surf(X1,Y1,Z1); xlabel('x'); ylabel('y'); zlabel('z');
%       => should look something like 'cylinder1.png'
%
%   [X2,Y2,Z2] = CylindArrs(5,2,'y');
%   surf(X2,Y2,Z2); xlabel('x'); ylabel('y'); zlabel('z');
%       => should look something like 'cylinder2.png'
%
%   [X3,Y3,Z3] = CylindArrs(5,2,'z');
%   surf(X3,Y3,Z3); xlabel('x'); ylabel('y'); zlabel('z');
%       => should look something like 'cylinder3.png'
% 
%==========================================================================
% PROBLEM 3. All Aboard!
%--------------------------------------------------------------------------
%
% Function Name: makeShip 
% Inputs (4): -(double) a vector of u coordinates of a closed 2D shape
%             -(double) a vector of v coordinates of a closed 2D shape
%             -(double) an angle in radians to rotate the shape by
%             -(char) an axis to rotate around
% 
% Outputs(3): -(double) xx-data
%             -(double) yy-data
%             -(double) zz-data
%
% Function Description:
%   Write a function that takes in two vectors of u and v coordinates that
%   describe a closed 2D shape and rotate this shape around the axis
%   specified in the third input by the amount of degress specified by the
%   third input. The axis input will just be one letter 'x', 'y', or 'z'. 
%
% Note:
%   -You should use 300 evenly spaced angles between 0 and the given angle
%
%
% Test Cases:
% clf
% u1 = linspace(0,-30);
% v1 = linspace(-100,0);
% u2 = linspace(-30,0);
% v2 = linspace(0,100);
% ang1 = pi;
% 
% [xx1 yy1 zz1]=makeShip(u1, v1, ang1, 'y');
% [xx2 yy2 zz2]=makeShip(u2, v2, ang1, 'y');
% mesh(xx1,yy1,zz1); hold on
% mesh(xx2,yy2,zz2); xlabel('x'); ylabel('y'); zlabel('z');
% axis equal
% view(-37.5, 10)
%   ==> should look like ship1.png
%
% clf
% u3 = linspace(0,-10);
% v3 = linspace(-10,0);
% u4 = [-10, -10, 0];
% v4 = [0, 40, 40];
% ang3=pi;
% ang4 = -pi;
% [xx3 yy3 zz3]=makeShip(u3, v3, ang3, 'y');
% [xx4 yy4 zz4]=makeShip(u4, v4, ang3, 'y');
% mesh(xx3,yy3,zz3); hold on
% mesh(xx4,yy4,zz4); xlabel('x'); ylabel('y'); zlabel('z');
% axis equal
% view(123.5, 30)
%   ==>should look like ship2.png
%
%==========================================================================
% PROBLEM 4. Rotate Axis
%--------------------------------------------------------------------------
%
% Function Name: rotateAxis
% Inputs  (5): - (double) An array of x-coordinates   
%              - (double) An array of y-coordinates
%              - (double) An array of z-coordinates
%              - (double) The angle of rotation
%              - (char) Rotation Axis
%
% Outputs (3): - (double) The rotated x-coordinates
%              - (double) The rotated y-coordinates
%              - (double) The rotated z-coordinates
%  
% Function Description:
%  Write a function called "rotateAxis" that takes in 3 arrays representing
%  x, y, and z coordinates, an angle to rotate them by, and the axis to
%  rotate around. "rotateAxis" should return the new coordinates after they
%  have been rotated about the given axis.
%
% Notes:
%   - You may not use the rotate() function
%   - When comparing figures, be sure to rotate the answer figure to see
%       if it matches yours.
%
% Hints:
%   - You may find rotation matrices helpful.
%
% Test Cases:
%  
%   clf
%   [x, y, z] =  makeCone;
%   z = z+3;
%   [xx, yy, zz] = rotateAxis(x, y, z, 3*pi/2,'y');
%   mesh(xx, yy, zz)
%   view([-45,45])
%   axis([-5,5,-5,5,-5,5])
%   xlabel('x'); ylabel('y'); zlabel('z');
%       => should look something like rotated1.fig
%
%   clf
%   [x, y, z] = makeCone;
%   z = z-3;
%   [xx1, yy1, zz1] = rotateAxis(x, y, z, 3*pi/4, 'x');
%   surf(xx1, yy1, zz1)
%   view([-45, 45])
%   axis([-5,5,-5,5,-5,5])
%   xlabel('x'); ylabel('y'); zlabel('z');
%      => should look something like rotated2.fig
%
%   clf
%   [x, y, z] = makeCone;
%   x = x-2;
%   y = y-2;
%   [xx2, yy2, zz2] = rotateAxis(x,y,z,0,'z');
%   surf(xx2, yy2, zz2)
%   view([-45, 45])
%   axis([-5,5,-5,5,-5,5])
%   xlabel('x'); ylabel('y'); zlabel('z');
%      => should look something like rotated3.fig
%==========================================================================
% PART 3.  Animation Magic!
%--------------------------------------------------------------------------
%
%   You now are ready to build your animation!  A shell code, pirateShip.m,
%   has been provided to you.  This shell code has the basics done for you.
%   There are commented sections to help guide you in making your
%   animations.  You don't have to follow these, but they are there for
%   your benefit.  You can make this animation be your own (as long as you
%   have the necessary elements designated on the rubric).  Good luck and
%   have fun with this!  Be creative!