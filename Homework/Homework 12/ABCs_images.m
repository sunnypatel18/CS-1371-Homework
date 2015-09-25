function [A B C D E] = ABCs_images(img1, img2)
% ABCs of Images
%
% This is a multi-part problem. Do each of the parts below.
%
% DO NOT CHANGE THE FUNCTION HEADER (the first line of code)

% a) imread. Read in the image matrix of the file whose name is stored in
% the variable img1. Store the image matrix in a variable named A.
%
% Write your code here:

A = imread(img1);

% b) Flipping images. Create a copy of A and then flip the image matrix
% along the diagonal. Store your result in B. Do *NOT* use the flipup() or
% fliplr() function. 
%
% Write your code here:

B = A(end:-1:1,end:-1:1,:);

% c) Swapping colors. Swap the green and blue layers of A. Store your
% result in C.
%
% Write your code here:

C = A;
C(:,:,2) = A(:,:,3);
C(:,:,3) = A(:,:,2);

% d) Grayscale. Store the grayscale of the image matrix A in the variable
% D. Use the simpler grayscale formula where the pixel value is the average
% of the three layers. Do *NOT* use the weighted average formula or any
% built-in MATLAB functions such as rgb2gray() or gray(). Note: First the
% image matrix will need to by type double, and the final image needs to be
% returned to uint8.
%
% Write your code here (it will be a few lines):

D = double(A);
gray = (D(:,:,1)+D(:,:,2)+D(:,:,3))/3;
D = cat(3, gray, gray, gray);
D = uint8(D);


% e) Negative. Store the negative of the image matrix A in the variable E. 
%
% Write your code here:
E = 255 - A;

% f) imwrite. Write a new image that is similar to the image matrix A,
% except that the values should be a third as bright. The name of the new
% image is stored in the variable img2. 
%
% Write your code here:

imwrite((A ./ 3),img2);


%---------------------------------------------------------------------
% uint8 math at work in colours.
% R,G,B values are used to describ colours. 
% Common RGB Values: Red - Green - Blue
% Black -  0 0 0
% White 255 255 255
% Green 0 255 0
% 
% 245 + 20 = 255
% 245 + 20 - 10 = 245 (order matters in uint8 math)
% 
% Images are three dimensional arrays in Matlab with the layers in the
% order of Red (outermost), green and blue. 
% All the things that you do with arrays, you can do them with images.
% 
% How to read images to MATLAB: i
% ing = imread('dexter.jpg')
% 
% Class of image variables is 'uint8'
% 
% imshow - used to see the image after you assign it to a variable.
%

%--------------------------------------------------------------------------
% How to turn michael Jackson white?
% 
% im = imread('stick.jpg')
% r = im(:,:,1);
% g = im(:,:,2);
% b = im(:,:,3);
% 
% mL = (r==0 & g==0 & b==0);
% mask = cat(3,mL,mL,mL); ---> A three dimension logical array!
% 
% im(mask) = 255;
%--------------------------------------------------------------------------
% 
% How to get Tiger Woods more girls?
% 
% im2 = imread('im2.jpg');
% im1 = imread('im1.jpg');
% 
% r1 = im1(:,:,1);
% g1 = im1(:,:,2);
% b1 = im1(:,:,3);
% mL = make mask 
% and put it on the other image. 
% 
% -------------------------------------------------------------------------
%
% How to make in into a grayscale?
% 
% im  = imread(im1.jpg)
% im = 255 - im; (memorise this!Turns into negative)
% 
% r = im(:,:,1);
% g = im(:,:,2);
% b = im(:,:,3);
% 
% gL = (r+g+b) ./3
% gL = uint8(gL);
% gray = cat(3,gL,gL,gL);


