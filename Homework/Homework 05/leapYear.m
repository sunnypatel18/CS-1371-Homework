function [out] = leapYear(year)
if mod(year,400)==0;
    %uses the mod using 400 ( 100 per year) every 4 years a leap year
    %occurs
    out = 'It is a leap year.';
elseif mod(year,100)==0;
    %uses the mod using 100 (100 per year) to determine that the year isn't
    %a leap year
    out = 'It is not a leap year.';
elseif mod(year,4)==0
    out = 'It is a leap year.';
else
    out = 'It is not a leap year.';
end
end
