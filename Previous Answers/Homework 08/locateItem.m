% PROBLEM 2.  Vending Machines 101 
%--------------------------------------------------------------------------
%
% Function Name: locateItem
% Inputs  (2): - (struct) A MxN structure array representing a vending 
%                         machine with fieldnames 'item', 'price', and 
%                         'quantity'
%              - (char)   A string representing the name of the item you
%                         want to purchase
% Outputs (2): - (char)   A string representing the location of the item in
%                         the vending machine OR the string 'Item not
%                         found'
%              - (double) The price of the item you want to purchase OR if
%                         the item is not found, the number 0
function [location price] = locateItem(struct, name)

    % First finds the size of the machine
    [rows cols] = size(struct);
    rLine = char(('A' - 1) + (1:rows));
    cLine = 1:cols;
    
    location1 = find(strcmp(name, {struct.item}) == true);
    
    if ~any(strcmp(name, {struct.item}) == true);
        location = 'Item not found';
        price = 0;
    else
    rowloc = mod(location1, rows);
    columnloc = ceil(location1/rows);
    rowloc = rLine(rowloc);
    location = [rowloc num2str(columnloc)];
    
    priceloc = find(strcmp(name, {struct.item}));
    price = struct(priceloc).price;
    end
    
end
% Function Description:
%   Write a function named "locateItem" that takes in a structure array
%   representing a vending machine full of snack items and a string
%   representing the name of the item you want to purchase. The function
%   should return a string representing the location of the item in the
%   vending machine based on the naming convention described below as well
%   as the price of the item. If the item is not found in the vending 
%   machine, the function should return the string 'Item not found' and a 
%   price of 0.
%
%   As specified in the description of inputs, the vending machine
%   structure array will contain the fieldnames 'item', 'price', and
%   'quantity'. For this function, you should only be concerned with the
%   first two fields, which will contain the item name and price,
%   respectively.
%   
%   When naming the position of an item in the vending machine, the rows of
%   the machine will be represented by the capital letters of the alphabet,
%   in order, beginning with the letter A. The columns of the vending 
%   machine will be numbered in order beginning with the number 1. For 
%   example, an item in the fifth row and third column would be described
%   with the location string 'E3'. You may assume there will never be more
%   than 26 rows in the vending machine, so that the row index will never
%   be greater than 'Z'.
% 
% Notes:
%   - The function should be case-sensitive when locating item names.  
%   - To generate the vending machine structure array for the test cases, a
%     p-file has been provided. To generate the machine, right click on the
%     "makeMachine.p" file and click Run. 
%
% Test Cases:
%   ***Remember to generate the "machine" variable by running the
%   "makeMachine.p" file first!***
%
%	[loc1 price1] = locateItem(machine, 'Pork Rinds')
%       loc1 => B3
%       price1 => 0.8000
%
%   [loc2 price2] = locateItem(machine, 'Kit Kat')
%       loc1 => 'Item not found'
%       price1 => 0