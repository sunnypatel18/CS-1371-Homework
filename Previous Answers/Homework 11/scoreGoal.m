function scoreGoal()
% Football Shape
  x = linspace(0,pi);
  x1 = x(3:end-3);
  y1 = sin(x1);
  th1 = linspace(0,2.*pi);
  [xx1 yy1 zz1] = makeBall(x1,y1,th1);
  i = 1;
% Now use a loop and surface plots to make the animation.


% Put everything inside of a loop. You do not necessarily need to do
% everything in the order specified below, but you will need to do things
% in an order that makes sense, such as turning "hold on" on before
% plotting more than one thing.
while true
    surf(xx1 - 20, yy1 - 1, zz1);
    axis([-20 20 -10 10 -30 30])
    axis off
    view(0, 0);
    hold on
    makeGoal
    colormap copper
    shading interp
    grid off;
	moveBall(xx1, yy1, zz1, th1(i));
    xx1 = xx1 + 1;
    yy1 = yy1 + 1;
    zz1 = zz1 + 1;
    i = i + 1;
    pause(0.05)
    hold off
end

end