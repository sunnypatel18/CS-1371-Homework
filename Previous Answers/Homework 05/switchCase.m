function resStr = switchCase(str, modifier)
str = 'a b c d e'
modifier = 'Title Case'
    switch modifier
        case 'Title Case'
            remainder = str;
            concatnated = [];
            while (remainder ~= -1);
                [a remainder] = strtok(remainder, ' ')
                a(1) = char(a(1)-32)
                concatnated = [concatnated ' ' a]
                resStr = concatnated
            end
        case 'Camel Case'
            [first remainder] = strtok(str, ' ');
            first(1) = (first(1) + 32)
            concatnated = [];
            while (remainder ~= -1);
                [a remainder] = strtok(remainder, ' ');
                a(1) = char(a(1)-32);
                concatnated = [concatnated a];
                resStr = [first concatnated];
            end
        case 'ROT13'
            % Create a vector of numerical values that represent the letters of str
            doubleStr = double(str);
            % Finds the shift if shift > 26
            realShift = 13;
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
            resStr = char(doubleStr)
        case 'Da Vinci'
            % Creates a vector of numerical values for str
            doubles = double(str);
            % Creates an index vector for the double values of str
            len = length(str);
            ndx = 1:len;
            % Reverses that index
            revNdx = len:-1:1;
            % Assigns values of doules to the reversed index
            revDoubles = doubles(revNdx);
            % Converts the type from doubles to characters
            resStr = char(revDoubles);
    end
end