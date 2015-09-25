function [castlesize] = bouncyHouse(yd)
[row,col] = size(yd);
mask = yd~='g';
yd(mask) = '0';
for x = find(yd=='g')'
   top = str2num(yd(x-1));
   right = str2num(yd(x-row));
   topright = str2num(yd(x-(row+1)));
   minnum = min([top,right,topright]);
   yd(x) = num2str(minnum+1);
end
if any(any(yd>='6'))
   castlesize = 'Large';
elseif any(any(yd=='5'))
   castlesize = 'Medium';
elseif any(any(yd=='4'))
   castlesize = 'Small';
else
   castlesize = 'Sorry. There''s not enough room for a bouncy house.';
end