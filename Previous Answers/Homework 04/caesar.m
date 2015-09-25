function [coded] = caesar( str, shift)
    % Create a vector of numerical values that represent the letters of str
    doubleStr = double(str);
    % Finds the shift if shift > 26
    realShift = mod(shift, 26);
    % Find all space values
    spaces = find(str == ' ');
    % Finds the letters in str1
    letters = find(str ~= ' ' & str > 64);
    % Find the capital letters
    caps = find(str >= 'A' & str <= 'Z');
    % Decapitalize all capital letters
    doubleStr(caps) = doubleStr(caps) + 32;
    % Shift all letter values by value "shift"
    doubleStr(letters) = doubleStr(letters) + realShift;
    % Change the letters that are > than z values
    doubleStr(doubleStr > 'z') = doubleStr(doubleStr > 'z') - 26;
    % Capitalize values that were decapitalized
    doubleStr(caps) = doubleStr(caps) - 32;
    % Convert ASCII values into letters
    coded = char(doubleStr) 
end