function out = passwordStrength (str)
    % First checks the lengths of the passwords
    if length(str)>21
        out = 'Password must not exceed 21 characters'
    elseif length(str)<5
        out = 'Password must be at least 5 characters'
    else
        num = 0;
    % Then finds the different types of characters and assigns a value to
    % num for each condition met
    if any(str>='0' & str<='9')
       num = num + 1
       x = 3
    end
    
    if any(str>='a' & str<='z')
        num = num + 1
        y = 3
    end
    
    if any(str>='A' & str<='Z')
        num = num + 1
        z = 3
    end
    
    if any(str == '@' | str == '#' | str == '$' | str == '_' | str == '-' | str == '%' | str == '(' | str == ')')
        num = num + 1
        w = 3
    end
    % Establishes the base case for the password
    switch num
        case 4
            bc = 5
        case {2,3}
            bc = 3
        case 1
            bc = 2
    end
    % Finds the amount of each character in the password
    amountNums = sum(str>='0' & str<='9'); % Amount of characters from 0-9
    amountLower = sum(str>='a' & str<='z'); % Amount of characters from a-z
    amountCaps = sum(str>='A' & str<='Z'); % Amount of characters from A-Z
    % Finds the amount of each special character
    amountAt = sum(str == '@');
    amountPound = sum(str == '#');
    amounDollar = sum(str == '@');
    amountUScore = sum(str == '@');
    amountDash = sum(str == '@');
    amountPcent = sum(str == '@');
    amountStart = sum(str == '@');
    amountEnd = sum(str == '@');
    % Sums the amount of special characters
    amountSpec = (amountAt + amountPound + amounDollar + amountUScore + amountDash + amountPcent + amountStart + amountEnd);
    % Determines the most occuring character type and how many times it
    % occurs
    factor1 = max([amountNums amountLower amountCaps amountSpec]);
    % Creates the value for the factor
    factor = round(factor1 ./ (length(str)));
    % Determines the strength of the password
    strength = bc - factor;
    % Displays the strength
    out = ['Password has a strength of ' num2str(strength)];
end
end