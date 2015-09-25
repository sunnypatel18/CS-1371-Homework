
function [bigCans smallCans] = paintRoom(length, width, height, windowArea, coats)
smallWalls = 2 .* width .* height; %area of smaller walls
bigWalls = 2 .* length .* height; %area of larger walls
ceiling = length .* width; %area of ceiling
areaTotal = smallWalls + bigWalls + ceiling - windowArea; %total area needed to paint
gallonsNeededWCT = areaTotal ./ 350; %gallons needed for 1 coat
gallonsNeeded = gallonsNeededWCT .* coats; % total gallons needed
bigCans = floor(gallonsNeeded ./ 5);
smallCans = ceil(mod(gallonsNeeded,5));
end