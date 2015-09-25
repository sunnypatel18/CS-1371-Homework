%PROBLEM 2.  Hit The Road!
%--------------------------------------------------------------------------
%
% Script Name: roadTrip           
% Script Outputs (1): cost (double) the cost of the amount of gas needed 
%                                   for the road trip
%
% Script Description:
%   Write a script named "roadTrip" that uses the number of miles a
%   car can travel with a specified number of gallons of gas, as well as 
%   the length of a road trip and the price of gas per gallon and
%   calculates the cost of the amount of gas needed for the trip. Name your
%   final output variable "cost". 
%
% Notes:
%   - Again, you do not have to account for rounding to the nearest penny.
%
% Inputs:
tankSize = 5.12; %gallons
distanceTraveledInOneTank = 155.36; %miles
totalDistanceOfTrip = 350; %miles
pricePerGallon = 3.84; %dollars
%
% Outputs: 
%   - cost => 44.2925

cost = tankSize*pricePerGallon*(totalDistanceOfTrip/distanceTraveledInOneTank);