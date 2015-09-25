function [tipBefore, tipAfter, difference] = compareTips (subtotal, tax, tip)

% Inputs are listed below
% subtotal = subtotal of the bill
% tax = amount of tax charged. 
% tip = amount of tip given. 

% Outputs are listed below
% tipBefore = the cost of tip before adding the tax charge
% tipAfter = the cost of tip after adding the tax charge
% difference = the difference between before and after cost of tax

tipBefore = ceil((subtotal.* (tip./100)).*100)./100; 
%multiply the tip percent with the subtotal to get tipBefore and to round I multiplied the entire equation by 100 and then used ceil to round up and then i took that entire funtion and divided it by 100.
tipAfter = ceil((((subtotal.* (tax./100))+ subtotal).* (tip./100)).*100)./100; 
%find the cost of the tax and then add that to the subtotal and then you multiply that by the tip percentage and to round I multiplied the entire equation by 100 and then used ceil to round up and then i took that entire funtion and divided it by 100.
difference = (tipAfter - tipBefore); 
%simply subtract tipBefore from tipAfter

end