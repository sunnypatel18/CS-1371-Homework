function [cost] = roadTrip (distancetraveledinonetank,tanksize,totaldistanceoftrip, pricepergallon)

%Inputs are listed below 
% distancetraveledinonetank = the number of miles a car can travel with the
% amount of gas in the tank size
% tanksize = 5.12; %tank size of the car
% totaldistanceoftrip = 350; %the total distance of the trip. how many miles to cover
% pricepergallon = 3.84; %the cost of gas per gallon at the gas station

%Outputs are listed below
% cost = the amount of money needed to cover the road trip

cost = ceil((((totaldistanceoftrip./ distancetraveledinonetank).* tanksize).* pricepergallon).*100)./100;

%to find the total cost I first found how many tanks we would need to cover
%for the entire trip. I multiplied that by the tank size of the given car.
%That gave me a result of the number of gallons needed to complete the
%trip. I took that and multiplied it by the price per gallon. Now we need
%to round to the nearest hundred for the cost so we multiple the entire
%equation by 100 and then use ceil to round up to the nearest integer and
%then divide by a 100 to get the cost. 
end

