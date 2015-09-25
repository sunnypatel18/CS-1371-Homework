function makeGoal
    [X1 Y1 Z1] = makeCylinder(10, 1, 'x');
    surf(X1,Y1,Z1);
    hold on
    [X2 Y2 Z2] = makeCylinder(20, 1, 'z');
    Z2 = Z2 - 1;
    surf(X2,Y2,Z2);
    [X3 Y3 Z3] = makeCylinder(20, 1, 'z');
    Z3 = Z3 - 1;
    X3 = X2 + 10;
    surf(X3,Y3,Z3);
    [X4 Y4 Z4] = makeCylinder(5, 1, 'z');
    X4 = X3 - 5;
    Z4 = Z3 - 20;
    surf(X4,Y4,Z4);
    hold off
    xlabel('x'); ylabel('y'); zlabel('z');
    axis equal
    colormap jet
end