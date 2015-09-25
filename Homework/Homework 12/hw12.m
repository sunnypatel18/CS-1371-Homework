%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : <Sunny Patel>
% GT Email     : <sunnypatel18@gmail.com>
% Homework     : hw12
% Section      : <B05>
% Collaboration: <place here one of the following:
%                 "I worked on the homework assignment alone, using
%                  only course materials."
%                 >"
%
%
% Files provided with this homework:  
%   - hw12.m
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
%   - Atl_Skyline.bmp
%   - dr_m.bmp
%   - gz.bmp
%   - lookit.bmp
%   - pic.bmp
%   - soln1.bmp
%   - soln2.bmp
%   - soln3.bmp
%   - soln4.bmp
%   - trex.bmp
%   - ttower.bmp
%   - buzz.png
%   - imageInterp1.png
%   - imageInterp2.png
%   - imageInterp_fixit.m
%   - sample.png
%   - PostScramble_1.png
%   - PostScramble_2.png
%   - PostScramble_3.png
%   - PostScramble_4.png
%   - PostScramble_5.png
%   - PreScramble_1.png
%   - PreScramble_2.png
%   - PreScramble_3.png
%   - PreScramble_4.png
%   - PreScramble_5.png
%   - Scramble_1.txt
%   - Scramble_2.txt
%   - Scramble_3.txt
%   - Scramble_4.txt
%   - Scramble_5.txt
%   - falcons_msg.png
%   - gtlogo_msg.png
%   - steganos_encrypt.m
%   - ABCs_images.m
%
% Files to submit:
%   - hw12.m
%   - ABCs_images.m
%   - checkImage.m
%   - colorScreen.m
%   - imageInterp.m
%   - scrambleImage.m
%   - steganos.m
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
% Homework Video of the Week:
% http://www.youtube.com/watch?v=RDiZOnzajNU
%==========================================================================
% PART 1.  ABC Problems
%--------------------------------------------------------------------------
%
% Part of this homework is an m-files called "ABCs_images" 
% Open this file in MATLAB and complete it according to the
% directions contained within. Since the ABCs cover upcoming topics for the
% next homework, it is suggested you complete them last. 
%
% Files to Complete: 
%       - ABCs_images.m
% ABCs File Testing:
%  >> ABCs_pretest_hw12
%
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic(s):
%   - Images
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
%  Given two images, write a function called "checkImage" that determines 
%  if the two images are the same, and if they are different, why. 
%
%  - If the two images are completely identical, the output should read 'The
%    images are the same.' 
%  - If the two images do not have the same dimensions, the output should
%    read 'The images have different dimensions.'
%  - If the two images have the same dimensions, but have different color
%    values at the same pixel, the output should read 'The RGB values are
%    different.'. Additionally, if the two images have different colors,
%    you should write a new image that is white everywhere the two images
%    have the same RGB values and black everywhere they are different. This
%    new image should be called <image1>VS<image2>.png. For example, if I
%    was comparing 'lilacs.png' and 'roses.png', I would call my new image
%    'lilacsVSroses.png'.
%
% Hints:
%  - You may find the function imwrite() useful.
%  - It is not necessary to use iteration for pixel-by-pixel comparisons.
%    This will cause your code run very slowly and is inefficient.
%  - This function should be useful for the rest of your homework.
%
% Test Cases:	
%   out1 = checkImage('apples.png', 'oranges.png');
%       out1 => 'The images have different dimensions.'
%
%   out2 = checkImage('flower1.png', 'flower2.png');
%       out2 => 'The images are the same.'
%
%   out3 = checkImage('oranges.png', 'tangerines.png');
%      out3 => 'The RGB values are different.' 
%      'orangesVStangerines.png' => should look like 
%                                   'orangesVStangerinesTest.png'
%
% As a double-check:
%  out4 = checkImage('orangesVStangerines.png', 'orangesVStangerinesTest.png')
%    out4 => 'The images are the same.'
%
%==========================================================================
% PROBLEM 2.  The Weather Man Isn't Really There
%--------------------------------------------------------------------------
%
%Function Name: colorScreen
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
%             colorScreen('img1.bmp','img2.bmp', [0 255 0]);
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
%   imshow(im1) 
%       => should look like soln1.bmp
%
%   im2 = colorScreen('lookit.bmp','pic.bmp',[237 28 36]);  
%   imshow(im2) 
%       => should look like soln2.bmp
%
%==========================================================================
% Problem 3. Image Resizing
%--------------------------------------------------------------------------
% 
% Function Name: imageInterp
% Inputs (3): - (uint8) An image array
%             - (double) The new number of rows the image should have
%             - (double) The new number of columns the image should have
% Output (1): - (uint8) A resized image using interpolation
%
% Function Description:
%  Write a function called "imageInterp" that takes in an image array and
%  the new dimensions of the images and scales the image using
%  interpolation. Scaling using interpolation results in clearer images
%  when resizing versus traditional techniques. 
%
%  To scale an image with interpolation, the function first scales the
%  width of the image to the new column amount. This can be accomplished by
%  iterating through each row of image and using the interp() function to
%  find the new pixel values. The interp() function takes in a vector of
%  x-values, a vector of corresponding y-values, and a vector of new
%  x-values within the same range as the original, and gives back what the
%  probable new y-values would be if there was a linear relationship
%  between the data sets. For additional information, please type 'help
%  interp' in the Command Window.
%
%  When performing the linear interpolation, the x-values are taken to be
%  the column indices of the image, and the y-values are the current values
%  at a layer. The new x-values are then the indices found using the
%  conventional re-indexing formula taught in class, except that the
%  round() is not applied. Essentially, the new x-values should equal the
%  linspace(1, col, new_col). After all the rows are scaled, the image has
%  been scaled to the given width. The same process is then repeated except
%  we now loop through the columns and use the row indices as the
%  x-values, completing the resizing of the image.
%
% Test Cases:
%   img = imread('sample.png');
%   new_img = imageInterp(img, 400, 400);
%   imshow(new_img)
%       => Should look like imageInterp1.png
%
%   img = imread('buzz.png');
%   new_img = imageInterp(img, round(336*1.4), round(445*1.4));
%   imshow(new_img)
%       => Should look like imageInterp2.png
%
%==========================================================================
% PROBLEM 4.  Image Scramble
%--------------------------------------------------------------------------
%
% Function Name: scrambleImage
% Inputs  (2): - (char)  The filename of an image to be manipulated. 
%              - (char)  filename of .txt file with all the image 
%                        manupilation commands
% Outputs (1): - (uint8) An image matrix containing data for the
%                        manipulated image.
%
% Function Description:
%  Given the file name of an image and text file, write a function named
%  "scrambleImage" that performs the various operations described in given 
%  .txt file on the image. There are 2 types of commands in .txt file that
%  operate on different quadrants of the image: 
%
%       1.) 180 Degree Rotation given as "Rotate: Q<#>"
%       2.) Swap Quadrants given as "Swap Quandrants: Q<#>,Q<#>"
%
%   where <#> indicates a quadrant number from 1-4.
%
%  To help you visualize the problem imagine a whole image split into
%  4 quadrants, like the following:
%
%           ---------------------
%           |    Q1   |    Q2   |
%           |         |         |
%           |---------|---------| 
%           |    Q3   |    Q4   |
%           |         |         |
%           ---------------------
%
%     1.) Rotate Command: The rotate command will be given with only a
%         rotation of 180 degrees.
%         Ex. "Rotate: Q1" should change the image to where the 1st
%             quardrant is rotated by 180 degrees.
%
%       2.) Swap Quadrants: Swaps two of the four quadrants in given image.
%           Ex. "Swap Quadrants: Q2,Q3" (Swaps 2nd and 3rd Quadrants)
%          
%           A visualization of the quadrant swaps is below:
%           ------------     ------------
%           |  Q1 | Q2 |     |  Q1 | Q3 |   Q3 takes position of Q2.
%           |-----|----| =>  |-----|----|  
%           |  Q3 | Q4 |     |  Q2 | Q4 |   Q2 is now the new Q3.
%           ------------     ------------           
%      
% Notes:
%   - You may assume that every image will have an even number of rows and
%     columns to avoid any rounding errors.
%   - Format of commands will be like the ones in each example given above.
%     With that in mind think how you would parse through each line to
%     scramble your image.
%   - You will not be told to swap Q1 w/ Q1 or Q2 w/ Q2, etc... 
%
% Constraints:
% 	- You may *not* use imrotate() for this problem. 
%
% Hints:
%   - Making helper functions for each command might help keep your code 
%     cleaner and easier to debug. 
%   - Use of switch statements may also be useful.
%
%  Test Cases:
%   out1 = scrambleImage('PreScramble_1.png', 'Scramble_1.txt');
%   imshow(out1)
%   => should look like PostScramble_1.png
%
%   out2 = scrambleImage('PreScramble_2.png', 'Scramble_2.txt');
%   imshow(out2)
%   => should look like PostScramble_2.png
%
%   out3 = scrambleImage('PreScramble_3.png', 'Scramble_3.txt');
%   imshow(out3)
%   => should look like PostScramble_3.png
%
%==========================================================================
% A Beautiful Mind
%--------------------------------------------------------------------------
% 
% Function Name: steganos.m
% Input  (1): - (char) The file name of an image that has a secret message 
%                      encoded within it
% Output (1): - (char) The decoded message from the image
%
% Function Description:
%   Write a function called "steganos" that will take in the filename of an
%   image and reveal the secret message hidden within the image. The
%   message is hidden in the image based on the idea of Steganography. To
%   learn how this message was encoded, you can read up on steganography
%   at:
%
%          http://www.garykessler.net/library/steganography.html
%
%   Warning: Encoding and Decoding is slightly complicated, so this
%   explanation is long in comparison to most problem statements.
%
%   The actual method on encoding/decoding the string is based on the idea 
%   that all values in a computer are actually represented in binary.
%   Specifically, anything, whether it is a character, a number, or a pixel
%   value are all represented by a sequence of 1s and 0s.
%
%           Example. The letter 'a' -> 01100001
%                    The number 44 -> 00101100
%
%   When encoding a message string, the string is broken down into its
%   individual characters. Then, each character is converted to into an 
%   8-bit binary value. For example, if the first letter of the string was 
%   'a', then 'a' is translated into 01100001. If the second letter was 
%   'd', then 'd' is translated into 01100100. 
%
%   Each bit (aka each 1 or 0) in the binary string is then encoded into
%   the image. To understand how this is done, one should realize that the
%   pixel values can also be represented in binary.
%
%          Example: Red Layer Pixel Value 241 -> 11110001
%
%   Then, to encode the image, take a bit at a time (going from left to 
%   right) from the binary representation of each character in the message.
%   That bit is then stored in the least-significant bit in the binary 
%   value of the pixel (aka the last position of the binary sequence).
%
%           Example: 'a' being encoded. First pixel value is 241.
%                    'a' -> 01100001
%                    241 -> 11110001
%
%   Since the 'a' binary value starts with 0, the last position of pixel
%   value 241 is then changed to 0. That makes the new binary string
%   11110000, which is the pixel value 240. The process is then repeated
%   with the next pixel value in the image, and the next bit of 'a'. The
%   encoding process goes through the RGB values of each pixel (goes across
%   a row at a time) and encodes every bit of every character in the
%   message.
%
%           Example: RGB values of First Pixel -> (241, 44, 255)
%                    Pixel Values in Binary -> 11110001 00101100 11111111
%                    'a' -> 01100001
%                    Encoded Pixel Binary -> 11110000 00101101 11111111
%                    Encoded Pixel Values -> (240, 45, 255)
%
%   Once all the characters of the message have been encoded into the 
%   image, the binary value 00000000 (aka ascii value 0) is also encoded 
%   into the image. This way, when the image is being decrypted, the 
%   decrypter will know when to stop.
%
%   If you understood the encoding process, then you probably have an idea
%   on how to do the decrypting process. Essentially, the idea is to build
%   the message back up by going through the pixel values and then taking
%   the last bit of the binary representation of each pixel value. Every
%   time 8 bits are found from the pixel value, those 8 bits are combined
%   together to form a character in the message. This continues until the 8
%   bits are all 0 (aka the ascii value 0 is found). 
%           
% Notes:
%   - You might find the dec2bin() and bin2dec() functions useful for this 
%     problem.
%   - Do *not* include the ending char(0) character into the message 
%     string.
%
% Test Cases:
%   message = steganos('gtlogo_msg.png');
%   message -> 'Hi! I bet you did not realize that there was a secret
%               message encoded in me. I know, this is like some crazy 
%               Da Vinci Code stuff right here.'
%   
%   message = steganos('falcons_msg.png');
%   message -> 'Watch me: http://www.youtube.com/watch?v=OlbuWC1fOH0'
%
%   message = steganos('america_msg.png');
%   message -> ''
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.