function connectA(coords, order, color)
    coords = coords';
    % Define the color based on the input string
    if strcmp(color, 'black')
        truecolor = 'k';
    else
        truecolor = color(1);
    end   
    [rows cols] = size(coords);
    xVec = coords(1:rows);
    yVec = coords(rows+1:end);
    xVals = xVec(order);
    yVals = yVec(order);
    
    plot(xVals, yVals, truecolor); 
end