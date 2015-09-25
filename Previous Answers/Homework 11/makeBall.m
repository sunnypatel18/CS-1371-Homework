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
function [xx yy zz] = makeBall(u, v, th)
    [uu tth] = meshgrid(u, th);
    [vv tth] = meshgrid(v, th);
    rr = vv;
    xx = uu;
    yy = sin(tth).*rr;
    zz = cos(tth).*rr;
    surf(xx, yy, zz);
    axis equal;
end
% Hints:
%   -You should perform your bodies of rotation around the x axis.
%   -Use axis equal to create correct dimensions
%   -You will find surf() useful in this problem
%
% Test Cases:3
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