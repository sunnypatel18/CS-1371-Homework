function [out] = whichWand(st,field)
out = []; index = [];
if isfield(st,field)
if ischar(st(1).(field))
[cells index] = sort({st.(field)});
else
[cells index] = sort([st.(field)]);
end
for i=1:length(index)
out = [out st(index(i))];
end
else
out = 'Invalid Field Name';
end
end