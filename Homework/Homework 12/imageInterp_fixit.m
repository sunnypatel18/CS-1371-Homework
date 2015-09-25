function ret = imageInterp(img, newR, newC)
[r c l] = size(img); % Find the size of the image
% Convert the image to double so can be used in interpolation
img = double(img); 
% Generate the scaling indices needed to resize the image. Do not use
% round().

% Take out each of the layers and store them in variable names
red = ???
green = ???
blue = ???

% Initialize empty arrays to contain an image where only the columns have
% been scaled. Aka, the dimensions should be the same number of rows, but
% the columns should now be the new number of columns
red2 = ???
green2 = ???
blue2 = ???
% Loop through the rows and use interpolation to scale through 
for i = 1:r
    red2(i, :) = interp1();
    green2(i, :) = interp1();
    blue2(i, :) = interp1();
end

% Generate zeros arrays for the final layers. Should have the final
% dimensions.
red3 = ???
green3 = ???
blue3 = ???
% Loop through the columns and scale each column
for i = 1:newC
    red3(:, i) = interp1();
    green3(:, i) = interp1();
    blue3(:, i) = interp1();
end
% Put the layers back into the image
ret(:, :, 1) = ???
ret(:, :, 2) = ???
ret(:, :, 3) = ???
ret = uint8(); % Cast the image back to uint8
end