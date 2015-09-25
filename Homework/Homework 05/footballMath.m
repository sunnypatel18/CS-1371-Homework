function [updated] = footballMath(info,play)
[down,yard] = strtok(info,'&');
%seperates the down and the yards
yard(1) = [];
down = str2num(down);
yard = str2num(yard);
newyard = yard-play;
newdown = down+1;
if newyard<=0
    updated = '1&10';
elseif newdown>=5&&newyard>0
    updated = 'turnover on downs';
else
    updated = [num2str(newdown),'&',num2str(newyard)];
end
end
