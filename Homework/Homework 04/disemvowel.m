function [output] = disemvowel(str,vow)

vowCap = char(vow-32);
% changing lowercase vowel to uppercase
mask = str==vow|str==vowCap;
% logical values 0/1 if in the string you find vowel or vowel cap then make it true (1)
str(mask) = [];
%whatever is true delete that value
output = str;
%display new string

end
