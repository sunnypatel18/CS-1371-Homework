tanksize = 5.12; %tank size of the car
distancetraveledinonetank = 155.36; %how many miles the car can drive before it runs out of gas
totaldistanceoftrip = 350; %the total distance of the trip. how many miles to cover
pricepergallon = 3.84; %the cost of gas per gallon at the gas station

cost = ((totaldistanceoftrip / distancetraveledinonetank) * tanksize) * pricepergallon;
%to find the total cost I first found how many tanks we would need to cover
%for the entire trip. I multiplied that by the tank size of the given car.
%That gave me a result of the number of gallons needed to complete the
%trip. I took that and multiplied it by the price per gallon. I finally got
%the total cost.