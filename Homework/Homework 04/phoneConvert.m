function[out] = phoneConvert(penis)

hy=find(penis=='-'); % finds where a - is in the number
lasthy = hy(end); %stop at the last - found
fuckyou=penis(lasthy+1:end);% shows the number without any -s

fuckyou(fuckyou >= 'A' & fuckyou <= 'C')='2';% represents the charcters on a phone related to a number 
fuckyou(fuckyou >= 'D' & fuckyou <= 'F')='3';% represents the charcters on a phone related to a number 
fuckyou(fuckyou >= 'G' & fuckyou <= 'I')='4';% represents the charcters on a phone related to a number 
fuckyou(fuckyou >= 'J' & fuckyou <= 'L')='5';% represents the charcters on a phone related to a number 
fuckyou(fuckyou >= 'M' & fuckyou <= 'O')='6';% represents the charcters on a phone related to a number 
fuckyou(fuckyou >= 'P' & fuckyou <= 'S')='7';% represents the charcters on a phone related to a number 
fuckyou(fuckyou >= 'T' & fuckyou <= 'V')='8';% represents the charcters on a phone related to a number 
fuckyou(fuckyou >= 'W' & fuckyou <= 'Z')='9';% represents the charcters on a phone related to a number 

fuckyou=[fuckyou(1:3) '-' fuckyou(4:7)]; %takes the first 3 letters and converts them into 3 numbers. and then a - is added following with the last 4 digits.

out=[penis(1:lasthy), fuckyou];%displays a string with the letters convertd to numbers
end