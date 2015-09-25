function [fore] = colorScreen(forename,backname,length)

fore = imread(forename);
back = imread(backname);

r = fore(:,:,1)==length(1);
g = fore(:,:,2)==length(2);
b = fore(:,:,3)==length(3);

mask = (r + g + b)>2;
mask = cat(3,mask,mask,mask);
fore(mask) = back(mask);
end