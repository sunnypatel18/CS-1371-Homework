function [mix] = interweave(str1,str2)

mixlength = max(length(str1),length(str2));
%max length out of the 2 strings
mix = zeros(1,2*mixlength);
%double the length of the maximum string and make a zeros vector with only one row
mix(1:end) = '-';
%replaces all zeros with '-'
str2rev = str2(end:-1:1); 
%reverses the second string
mix(1:2:(2*length(str1))) = str1;
% odd values are replaced with string 1
mix(2:2:(2*length(str2))) = str2rev; 
%even values are replaced with string 2 reversed
mix = char(mix);
%display new string

end
