function [costGas] = roadTrip(milesGivenGas, gallonsRequired, lengthTrip, pricePerGallon)
a = lengthTrip ./ milesGivenGas; %amount of times all gas is used up
b = a .* gallonsRequired; %amount of gallons needed for the whole trip
costGas = (ceil(pricePerGallon .* b .* 100)) ./ 100;
end
