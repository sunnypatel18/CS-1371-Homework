%==========================================================================
function [filled] = madLib(file, unfilled)

nouncount = 2;
verbcount = 2;
adjcount = 2;
proceed = true;
filled = [];
[num text raw] = xlsread(file);
while ~isempty(unfilled)
    [word rest] = strtok(unfilled, ' ');
    unfilled = rest;
    if length(word) > 1
        switch word(1:2)
            case {'%n'}
                word = [text{nouncount, 1} word(3:end)];
                nouncount = nouncount+1;
                filled = [filled word ' '];
            case {'%v'}
                word = [text{verbcount, 2} word(3:end)];
                verbcount = verbcount+1;
                filled = [filled word ' '];
            case {'%a'}
                word = [text{adjcount, 3} word(3:end)];
                adjcount = adjcount+1;
                filled = [filled word ' '];
            otherwise
                filled = [filled word ' '];
        end
    else
        filled = [filled word ' '];
    end
end
filled(end) = [];

end