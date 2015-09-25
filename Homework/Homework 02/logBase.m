function [loganswer] = logBase (num,base)

% Inputs are listed below
% num = a number to take the log of
% base = the base of the log to use

% Outputs are listed below
% the log (answer)


loganswer = log (num)./ log (base);
% using the base change rule I found the log answer

end