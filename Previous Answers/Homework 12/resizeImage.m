% PROBLEM 2.  Resizing Images
%--------------------------------------------------------------------------
% 
% Function Name: resizeImage
% Inputs  (3): - (char) The file name of an image
%              - (double) The number of rows in the new image
%              - (double) The number of columns in the new image
% Outputs (0): 
% Output Files (1): - The resized image file whose file name is identical 
%                     to the original except the string '_RxC' has been
%                     appended to the end. R should be the number of rows
%                     in the new image and C should be the number of
%                     columns in the new image.
%
% Function Description:
%   Write a function called "resizeImage" that takes in a filename
%   specifying an image, and two integer values which represent the number
%   of rows and columns the image should be resized to. The function then
%   resizes the image to the specified by dimensions and then writes out
%   the resized image. The file name of the resized image should be
%   identical to the original, except the string '_RxC' has been appended
%   to the end, where R should be the number of rows in the new image and C
%   should be the number of columns.
function resizeImage(fn, rows, cols)
    img = imread(fn);
    img = imresize(img, [rows cols]);
    
%     name = [fn '_'];
    
    image(img);
end
% Notes:
%   - You must use the resizing method taught in class and/or recitation. 
%     Failure to do so will result in *zero* points for this problem. 
%   - Make sure that the written image's file name is formatted exactly as
%     described. Note, the end of the new file name should be the original 
%     extension, and not the string '_RxC'. For example, if the original 
%     file name was 'test.jpg', and the new size was 400x600, then the new 
%     file name should be 'test_400x600.jpg'.
%   
% Test Cases:
%   resizeImage('falcons.png', 125, 125);
%       -> 'falcons_125x125.png' should look like 'falcons_125x125soln.png'
%
%   resizeImage('gtlogo.png', 320, 240);
%       -> 'gtlogo_320x240.png' should look like 'gtlogo_320x240soln.png'
%
%   resizeImage('america.png', 90, 180);
%       -> 'america_90x180.png' should look like 'america_90x180soln.png'