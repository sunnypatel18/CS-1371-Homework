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
function [rotx roty rotz] = moveBall(x, y, z, th)
    R = [cos(th) 0 sin(th); 0 1 0; -sin(th) 0 cos(th)];
    y = 5.*y;
    [r c] = size(x);
    ndx = 1;
    rotxCone = [];
    rotyCone = [];
    rotzCone = [];
    % Column one
    while ndx <= r
        % Takes each point in xyz and multiplies the vector by the rotation
        % matrix
        vec = [x(ndx, 1); y(ndx, 1); z(ndx, 1)];
        newVec = R*vec;
        rotxCone = [rotxCone; newVec(1)];
        rotyCone = [rotyCone; newVec(2)];
        rotzCone = [rotzCone; newVec(3)];
        ndx = ndx + 1;
    end
    ndx = 1;
    rotxCTwo = [];
    rotyCTwo = [];
    rotzCTwo = [];
    
    % Column two
    while ndx <= r
        vec = [x(ndx, 2); y(ndx, 2); z(ndx, 2)];
        newVec = R*vec;
        rotxCTwo = [rotxCTwo; newVec(1)];
        rotyCTwo = [rotyCTwo; newVec(2)];
        rotzCTwo = [rotzCTwo; newVec(3)];
        ndx = ndx + 1;
    end
    ndx = 1;
    % Column three
    rotxCThree = [];
    rotyCThree = [];
    rotzCThree = [];
    while ndx <= r
        vec = [x(ndx, 3); y(ndx, 3); z(ndx, 3)];
        newVec = R*vec;
        rotxCThree = [rotxCThree; newVec(1)];
        rotyCThree = [rotyCThree; newVec(2)];
        rotzCThree = [rotzCThree; newVec(3)];
        ndx = ndx + 1;
    end
    rotx = [rotxCone rotxCTwo rotxCThree];
    roty = [rotyCone rotyCTwo rotyCThree];
    rotz = [rotzCone rotzCTwo rotzCThree];
end