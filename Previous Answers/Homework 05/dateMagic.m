function [sentence] = dateMagic(date, name)
    % Put in mm/dd/yyyy format
    month = strtok(date, '/');
    if length(month) == 1
        date = ['0' date];
    end
    % If in mm/d/yyyy format, switches to mm/dd/yyyy
    day = strtok(date(4:end), '/');
    if length(day)== 1 
            date = [date(1:3) '0' date(4:end)];
    end
    
    % Converts all char values to numbers
    month = str2num (month);
    day = str2num(date(4:5));
    year = str2num(date(9:end));
    fullYear = str2num(date(7:end));
    % Plug and chug using magic formula
    step2 = floor(year ./ 4);
    step3 = step2 + year;
    step4 = step3 + day;
    
    % Determines the month
    switch month
        case {1, 10}
            step5 = step4 + 0;
        case {2 , 3 , 11 }
            step5 = step4 + 3;
        case {4, 7}
            step5 = step4 + 6;
        case {5}
            step5 = step4 + 1;
        case {6}
            step5 = step4 + 4;
        case {8}
            step5 = step4 + 2;
        case {9, 12}
            step5 = step4 + 5;
        otherwise
            error('Invalid month input')
    end
    % Finds the year and applies the formula
    if fullYear >= 2000
        step6 = step5 - 1;
    else
        step6 = step5;
    end
    % returns the remainder of step6 
    step7 = mod(step6, 7);
    % Assigns a day based on the remainder
    switch step7
        case 0
            dayOfWeek = 'Sunday';
        case 1
            dayOfWeek = 'Monday';
        case 2
            dayOfWeek = 'Tuesday';
        case 3
            dayOfWeek = 'Wednesday';
        case 4
            dayOfWeek = 'Thursday';
        case 5
            dayOfWeek = 'Friday';
        case 6 
            dayOfWeek = 'Saturday';
    end
        
    % concatonates the output statement
    sentence = [ name ' was founded on a ' dayOfWeek '.'];


end