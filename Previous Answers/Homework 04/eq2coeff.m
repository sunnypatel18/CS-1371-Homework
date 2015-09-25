function [A B C] = eq2coeff(str)
    A = strtok(str, 'x');
    % Eliminate spaces in the function
    str(str == ' ') = [];
    % Eliminate values after the =
    beforeEq = strtok(str, '=');
    % Split string into values before and after the +
    [beforePlus betweenPlusEq] = strtok(beforeEq, '+')
    % Eliminate the +
    betweenPlusEq(betweenPlusEq == '+') = [];
    % Find the value of the coefficient of Y
    betweenPlusEq(betweenPlusEq == 'y') = []
    B = betweenPlusEq
    % Spilt the original spaceless string into before and after =
    [beforeEq afterEq] = strtok(str, '=');
    % Eliminate the = sign and set that = to C
    afterEq(afterEq == '=') = []
    C = afterEq
end