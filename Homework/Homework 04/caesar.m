function [code] = caesar(str,amount)

shift = mod(amount,26);
%using the mod to find the remainder from the amount divided by the 26 characters in the alphabet
mask1 = double(str)>=65&double(str)<=90&str+shift>=65&str+shift<=90;
%takes the string and finds the ASCII value between 65 and 90 which is
%capital A to capital Z and after the shift is applied the new string
%should only have ASCII values between 65 and 90. prevents from continuing
%after capital Z
mask2 = double(str)>=65&double(str)<=90&str+shift>90;
%takes the string and finds the ASCII value between 65 and 90 which is
%capital A to capital Z and after the shift is applied the values above 90
%will be taken
leftoverA = (str(mask2)+shift)-90;
%find the remaining shifts after it passes Capital Z
str(mask1) = str(mask1)+shift;
%apply mask 1 to the string and since this is within the range it shifts
%properly. 
str(mask2) = 64+leftoverA;
%apply mask 2 to the string and since this is not within the range make
%sure to start the shift from the beginning and the left over shifts
%remaining. (starts again with Capital A)
mask3 = double(str)>=97&double(str)<=122&str+shift>=97&str+shift<=122;
%same code except dealing with lowercase values. 
mask4 = double(str)>=97&double(str)<=122&str+shift>122;
%same code except dealing with lowercase values. 
leftoverB = (str(mask4)+shift)-122;
%same code except dealing with lowercase values. 
str(mask3) = str(mask3)+shift;
%same code except dealing with lowercase values. 
str(mask4) = 96+leftoverB;
%same code except dealing with lowercase values. 
code = str;
% displays new string

end
