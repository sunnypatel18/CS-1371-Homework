function slope = findSlopes( x , y )
yVal = y(2:end) - y(1:(length(y)-1));
xVal = x(2:end) - x(1:(length(x)-1));
slope = yVal ./ xVal;
end