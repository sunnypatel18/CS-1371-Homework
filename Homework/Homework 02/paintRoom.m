function [fivegal, onegal] = paintRoom (onedim, twodim, threedim, area, coats)

%Inputs are listed below
% onedim = one dimension of a rectangular room (in feet)
% twodim = a second dimension of the room (in feet)
% threedim = the third dimension of the room (in feet)
% area = the total area (in square feet) of any windows in the room
% coats = the number of coats of paint needed

%Outputs are listed below
% fivegal = the number of 5-gallon paint cans needed 
% onegal = the number of 1-gallon paint cans needed

fivegal = floor(((((((((2.*(onedim.*twodim))+ (2.*(threedim.*twodim))+(2.*(onedim.*threedim)))- area) - (onedim.* twodim))./350)).*coats)./5));

%I first had to find out the surface area of the room. then i subtracted
%the area of the windows. then i subtracted the floor area which were the
%first 2 number multiplied. This gave me the total area i need to paint on.
%I divided that by 350 because each gallon covers that much. After getting
%how many gallons i needed i multiplied by the number of coats that i need
%to apply on the walls. i get the number of gallons needed. i divide by 5
%since these are 5 gallon buckets and i used the floor syntax to round down becuase you dont want to
%buy an extra 5 gallon bucket. 

onegal = ceil(mod((((((((2.*(onedim.*twodim))+ (2.*(threedim.*twodim))+(2.*(onedim.*threedim)))- area) - (onedim.* twodim))./350)).*coats),fivegal));

%I first had to find out the surface area of the room. then i subtracted
%the area of the windows. then i subtracted the floor area which were the
%first 2 number multiplied. This gave me the total area i need to paint on.
%I divided that by 350 because each gallon covers that much. After getting
%how many gallons i needed i multiplied by the number of coats that i need
%to apply on the walls. i get the number of gallons needed. I used the ceil syntax to round up. i used the mod
%syntax in order to use the remainder of gallons needs after buying the
%maximun fivegallon buckets. this would give me the number of one gallon buckets i
%need to buy without squandering money. 
end