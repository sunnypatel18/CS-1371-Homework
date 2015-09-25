%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : <Ben Coordes>
% GT Email     : <bcoordes3@gmail.com>
% Homework     : hw12
% Section      : <C02>
% Collaboration: <"I worked on the homework assignment alone, using
%                  only course materials."
%
%
% Files provided with this homework:  
%   - hw12.m
%   - ABCs_pretest_hw12.m
%   - ABCs_pretest_hw12.p
%   - abcs_output_soln.png
%   - abcs_pretest1.png
%   - abcs_pretest2.png
%   - apples.png
%   - flower1.png
%   - flower2.png
%   - flower3.png
%   - grapes.png
%   - grapes2.png
%   - oranges.png
%   - orangesVStangerinesTest.png
%   - tangerines.png
%   - america.png
%   - america_90x180soln.png
%   - falcons.png
%   - falcons_125x125soln.png
%   - gtlogo.png
%   - gtlogo_320x240soln.png
%   - imgres.jpg
%   - lookit.bmp
%   - pic.bmp
%   - soln1.bmp
%   - soln2.bmp
%   - trex.bmp
%   - ttower.bmp
%   - img1_sol.bmp
%   - img2_sol.bmp
%   - img3_sol.bmp
%   - matlab_logo.bmp
%   - techTower.bmp
%   - A.png
%   - B.png
%   - C.png
%   - COMMA.png
%   - D.png
%   - DASH.png
%   - E.png
%   - EXCLAMATION_POINT.png
%   - F.png
%   - G.png
%   - H.png
%   - I.png
%   - J.png
%   - K.png
%   - L.png
%   - M.png
%   - N.png
%   - O.png
%   - P.png
%   - Q.png
%   - QUESTION_MARK.png
%   - R.png
%   - S.png
%   - SPACE.png
%   - T.png
%   - U.png
%   - V.png
%   - W.png
%   - X.png
%   - Y.png
%   - Z.png
%   - grandmaFindsInternet.png
%   - insanityWolf.png
%   - scumbagSteve.png
%   - solution_grandmaFindsInternet.png
%   - solution_insanityWolf.png
%   - solution_scumbagSteve.png
%   - solution_successKid.png
%   - successKid.png
%   - ABCs_images.m
%
% Files to submit:
%   - hw12.m
%   - ABCs_images.m
%   - checkImage.m
%   - resizeImage.m
%   - colorScreen.m
%   - mosaic.m
%   - memeGenerator.m
%
% Instructions:
%   1) Follow the directions for each problem very carefully or you will
%   lose points.
%   2) Make sure you name functions exactly as described in the problems or
%   you will not receive credit.
%   3) Read the announcements! Any clarifications and/or updates will be
%   announced on T-Square. Check the T-Square announcements at least once
%   a day.
%   4) You should not use any of the following functions in any file that 
%   you submit to T-Square:
%       a) clear
%       b) clc
%       c) solve
%       d) input
%       e) disp
%       f) close all
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%==========================================================================
% COMMENTING
%--------------------------------------------------------------------------
%
% Whenever you program, it is always a good idea to comment your code.
% Commenting helps you keep track of what you are attempting to code, and 
% it helps others in understanding why you wrote various lines of code.  
% Since the AutoGrader does not give partial credit for attempting a 
% problem, we have added a commenting system to give some incentive to at 
% least attempt each problem. From now on, when you write a solution to a
% problem, you should comment your code and explain what you were 
% attempting to code. Some good places to comment would be sections of your
% code that directly relate with your algorithm. However, don't comment
% every line of code. Instead comment the lines of code that are either  
% difficult to understand or are important to solving the problem. 
%
% Commenting will purely be for extra-credit purposes, so if you don't want
% to comment your code, you don't have to. Your Section TA will grade the
% comments from each Homework and will keep track of your commenting points
% throughout the semester. Commenting points will not change the score you
% receive on a homework assignment, but they will be factored into your
% homework average at the end of the semester. 
%
% Finally, if you come to help desk, you are expected to have your code
% commented. If a TA sees that your code is not commented, he or she will
% move on to another student until you comment your code.


%==========================================================================
% PART 1.  ABC Problems
%--------------------------------------------------------------------------
%
% Part of this homework is an m-file called ABCs_images. Open this file in
% MATLAB and complete it according to the directions contained within.
% Since the ABCs cover upcoming topics for the next homework, it is
% suggested you complete them last. 
%
% Files to Complete: 
%       - ABCs_images.m
% ABCs File Testing:
%  >> ABCs_pretest_hw12
%
%
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic(s):
%   13.  Images
%
% Follow the directions carefully and make sure files names as well as
% function headers are written exactly as described in the problem text. If
% your function headers are not written as specified, then you will recieve
% an automatic zero for the problem.
%
% All drill problems must be functions (i.e. contain valid function
% headers).  Any scripts turned in will be given a 0 automatically.
%
%==========================================================================
% PROBLEM 1.  Look At Me Now
%--------------------------------------------------------------------------
%
% Function Name: checkImage 
% Inputs  (2): - (char) the name of an image file
%              - (char) the name of a second image file
% Outputs (1): - (char) a sentence comparing the two images
%
% Function Description:
%	Given two images, write a function called "checkImage" that tells if
%	the two images are the same. If the two images are not the same, the
%	function should tell us how the two images are different.
%   - If the two images are completely identical, the output should read
%     'The images are the same.' 
%   - If the two images do not have the same dimensions, the output should
%     read 'The images have different dimensions.' 
%   - If the two images have the same dimensions, but have different color
%     values at the same pixel, the output should read 'The RGB values are
%     different.'.
%
%
% Hints:
%  - You should not need to use iteration to solve this problem. This will
%    make your code run very slowly and is inefficient. Remember instead 
%    how images are just uint8 arrays in MATLAB. 
%
% Test Cases:
%	
%   out1 = checkImage('apples.png', 'oranges.png');
%       out1 => 'The images have different dimensions.'
%
%	
%   out2 = checkImage('flower1.png', 'flower2.png');
%       out2 => 'The images are the same.'
%
%
%   out3 = checkImage('oranges.png', 'tangerines.png');
%      out3 => 'The RGB values are different.' 
%
%==========================================================================
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
%
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
%
%==========================================================================
% PROBLEM 3.  Chroma Keying
%--------------------------------------------------------------------------
%
% Function Name: colorScreen
% Inputs  (3): - (char) a filename of a foreground image
%              - (char) a filename of a background image
%              - (double) a vector of length three of RGB values to replace
% Outputs (1): - (uint8) a uint8 array with the colorScreen effect applied
%
% Function Description:
%   Given two images, write a function called "colorScreen" that will
%   replace all pixels in the first image that match a given RGB value with
%   the corresponding pixels in the second image. For example, if  the
%   following is called:
%
%               colorScreen('img1.bmp','img2.bmp', [0 255 0]);
%
%   A uint8 array should be returned that should look like 'img1.bmp', but 
%   with all of the pure green pixels replaced with the corresponding pixel
%   in 'img2.bmp'.
%
% Notes:
%   - You do not have to use a for loop in this problem. For loops are a
%     very slow and inefficent due to the size of the images that must be
%     looped though. Consider logical indexing instead.
%   - The two input images will always be the same size.
%
% Test Cases:
%   im1 = colorScreen('trex.bmp','ttower.bmp',[0 255 0]);
%       imshow(im1) should look like soln1.bmp
%
%   im2 = colorScreen('lookit.bmp','pic.bmp',[237 28 36]);  
%       imshow(im2) should look like soln2.bmp
%
%==========================================================================
% PROBLEM 4. Pictures within a Picture
%--------------------------------------------------------------------------
%
% Function Name: mosaic
% Inputs  (2): - (char) filename of an image file
%              - (double) a number indicating the number of rows and the 
%                         number of columns of the miniature pictures
% Outputs (1): - (uint8) the image representing the mosaic
%
% Function Description:
%   Given the name of an image file and a number indicating the number of
%   rows and columns, write a function called "mosaic" that returns a
%   modified image array comprised of many small, repeated versions of the
%   original image tinted to resemble the overall image. The small images
%   should form an N x N array (note that N refers to a minitiarized image,
%   not to a pixel), as specified by the second input of the function. Each
%   small image should be "tinted" to match the average color value of the
%   corresponding section of the large image. For example, if N = 2 and the
%   original image is 200x300 pixels, the reduced image will be 100x150
%   pixels(200/2 and 300/2), and it will be copied 4 times with different
%   tints in each reproduction. If the original image's first 100 rows and
%   first 150 columns has an average intensity of red = 240, green = 0, and
%   blue = 0, then each pixel of the reduced image that will occupy the top
%   left 100 rows and 150 columns of the final output image will be
%   averaged with [240 0 0], thus giving a red tint. Doing this for each
%   reduced image should make the final output look like a mosaic version
%   of the input image. 
%
% Notes: 
%   - The input image's number of rows and columns will always be
%     divisible by the second input of the function.
%   - When finding the average color value of a section in the original
%     image, it would be easier to find the average across the entire
%     section before averaging it with each pixel of the minitiarized
%     image. 
%   - When averaging the pixel of the minitarized image with the overall
%     average in its corresponding section, use the round() function to
%     determine the integer value after you finish averaging. Do not round
%     at any time before this step.
%   - The output image will have the exact same dimensions as the input
%     image.
%
% Test Cases:
%
%   img1 = mosaic('matlab_logo.bmp', 10)
%       => imshow(img1) should look like img1_sol.bmp
%       
%   img2 = mosaic('matlab_logo.bmp', 50)
%       => imshow(img2) should look like img2_sol.bmp
%
%   img3 = mosaic('techTower.bmp', 50)
%       => imshow(img3) should look like img3_sol.bmp
%
%==========================================================================
% PROBLEM 5.  What's in a Meme?
%--------------------------------------------------------------------------
%
% Function Name: memeGenerator
% Inputs  (2): - (char) a string containg the filename of a picture
%              - (char) a string of text to split up and put onto the
%                       picture
% Outputs (0):
% Output File (1): A new meme in a .png file.
%
% Function Description:
%   Write a function called "memeGenerator" that takes in a string
%   containing the name of a .png file containing a blank meme. Then, take
%   the second input and split it at the newline character (\n) to form a
%   top string and a bottom string. Using the provided pictures that
%   contain individual letters, make images of the top and bottom strings.
%   Finally, insert these into the top and bottom of the picture,
%   respectively, to form a "meme". Then, save this as whatever it was
%   originally called, with "new_" appended to the beginning.
%
%   For examples of memes, go to http://www.youtube.com/watch?v=oHg5SJYRHA0
%   or www.quickmeme.com
%
%   Both lines must have a 5% left and right margin. Both lines must have a
%   5% margin from the top and span 10% of the page. 
%
%   Example: Your image file is 100x100. The top line of text will span
%   rows 5:15 and columns 5:95. The bottom line of text will span rows
%   85:95 and colums 5:95.
%
%   Notes:
%   - Your code MUST be able to account for commas, dashes, exclamation
%     points, question marks, spaces. You may program it to work for more
%     punctuation, but we will not be testing for it and pictures have not
%     been provided for it.
%   - Use round() whenever there is a possibility of fractions occuring.
%   - You may find the concepts in resizeImage() helpful.
%   - All image files must be .png files.
%   - There is guaranteed to be a newline character.
%
% Test Cases:
%
%   memeGenerator('grandmaFindsInternet.png', 'Hmmmmmmmmmmmmmm\nWhy is ...
%                      this mirror black?');
%       Looks like: solution_grandmaFindsInternet.png
%
%   memeGenerator('insanityWolf.png', 'Code a merge sort\nRECURSIVELY');
%       Looks like: solution_insanityWolf.png
%
%   memeGenerator('successKid.png', 'Finished the CS\nOn a Sunday');
%       Looks like: solution_succesKid.png
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
