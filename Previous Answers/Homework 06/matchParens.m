function [log imbalance] = matchParens(str1)
    % First set imbalance = 0
    vec = []
    imbalance = 0;
    for x = 1:length(str1)
        if str1(x) == '('
            imbalance = imbalance + 1; % Adds one for every (
            vec = [vec imbalance]
        elseif str1(x) == ')'
            imbalance = imbalance - 1; % Subtracts one for every )
            vec = [vec imbalance]
            if min(vec) < 0
                log = false
            end
        end
       
        if min(vec) < 0 % This loop checks if the imbalance is 0. If it is
                         % it returns true. If not, it returns false
            log = false;
        elseif min(vec) == 0
            log = true;
        else
            log = false;
        end
    end