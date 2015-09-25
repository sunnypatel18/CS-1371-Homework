function [xx yy zz] = makeCylinder(len, rad, ax)
    % Define theta
    th = linspace(0, 2*pi, 100);
    
    % Decides how to rotate the rectangle about the decided axis
    
    % The height will be the x-values and the radius will be the y
    % values on the xy plane
    switch ax
        case 'x'
            % The height will be on the y axis and the radius on the x axis
            u = [len len 0];
            v = [0 rad rad];
            [uu tth] = meshgrid(u, th);
            [vv tth] = meshgrid(v, th);
            rr = vv;
            xx = uu;
            zz = rr .* cos(tth);
            yy = rr .* sin(tth);
        case 'y'
            u = [rad rad 0];
            v = [0 len len];
            [uu tth] = meshgrid(u, th);
            [vv tth] = meshgrid(v, th);
            rr = uu;
            yy = vv;
            zz = rr .* cos(tth);
            xx = rr .* sin(tth);
        case 'z'
            u = [rad rad 0];
            v = [0 len len];
            [uu tth] = meshgrid(u, th);
            [vv tth] = meshgrid(v, th);
            rr = uu;
            zz = vv;
            xx = rr .* cos(tth);
            yy = rr .* sin(tth);
    end
end
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