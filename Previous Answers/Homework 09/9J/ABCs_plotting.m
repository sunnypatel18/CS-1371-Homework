% DO NOT CHANGE THIS LINE %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function ABCs_plotting(x1, y1, x2, y2, z2, x3, y3, x4, y4, x5, y5)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% ABCs of Plotting
%
%
% Directions:
%   Follow the steps specified below and fill in the blanks to complete
%   this plotting code.

% 1. Create a 2x2 subplot and begin plotting at the top left quarter

% 2. Plot the 2-dimensional curve specified by the x-points held in the 
% vector x1, and the y points held in the vector y1. The plot should be
% done using red circles.


% 3. Continue with the 2x2 subplot, but plot in the top right quarter.

% 4. Plot the 3-dimensional curve specified by the x-points held in the 
% vector x2, the y points held in the vector y2, and the z points held in
% the vector z2. The plot should be with black stars.


% 5. Continue with the 2x2 subplot, but plot in the bottom left quarter.

% 6. Plot the following two 2-D curves. The first curve is specified by the
% x and y points in x3 and y3. It should be plotted with green plus signs.
% The second curve is specified by the x and y points in x4 and y4. It
% should be plotted with blue squares. You should only use one plot call to
% achieve this plot.


% 7. Continue with the 2x2 subplot, but plot in the bottom right quarter.

% 8. Set hold on so the following plots will show up on top of each
% other.

% 9. Plot a red half-circle (upper portion) with a radius of 3. 
% For the theta, use 100 evenly spaced values from 0 to pi (inclusive).

% 10. Plot the 2-D curve specified by the x and y points in x5 and y5. The
% plot should be with a blue dashed line.

% 11. Make the axis square.

% 12. Set hold to off, so that no more plots will plot over the current
% plot.

% 13. Title the graph as 'ABCs Plotting'. Exactly.

% 14. Label the x-axis as 'x-axis'. Exactly.

% 15. Label the y-axis as 'y-axis'. Exactly.

% Test Case:
%     x1 = [2.1 1.2 1.4 3 4 2.2 2 4 1.4 3.2];
%     y1 = [4 2.2 2.4 2 1 3.3 5 3 3.2 1.4];
%     th = linspace(0, 4*2*pi, 4*100);
%     x2 = 3.2*cos(th);
%     y2 = 3.2*sin(th);
%     z2 = th;
%     x3 = -3.18:0.2:3.18;
%     y3 = x3.^3;
%     x4 = linspace(-pi-1, pi+1);
%     y4 = cos(x4);
%     x5 = -3.5:2.5;
%     y5 = x5;
%     ABCs_plotting(x1, y1, x2, y2, z2, x3, y3, x4, y4, x5, y5)
%       => Should look like 'ABCs_plotting_soln.png'

end
