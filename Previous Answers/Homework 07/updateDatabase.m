% PROBLEM 6.  Serve Your Customer!
%--------------------------------------------------------------------------
%
% Function Name: updateDatabase
% Inputs  (2): - (struct) Nested structure array representing a database
%              - (cell)   Contains information on new sale
% Outputs (2): - (double) Total price of sale
%              - (struct) Nested structure array representing updated 
%                         database
%              
% Background Information: 
%  You are running a shop that sells electronic devices, where a complete
%  inventory of your products and sales are stored in a database. When a 
%  customer enters your store and tells you what products they wants to
%  buy, you want to take this information to update the database and
%  calculate the total sale. Since you are taking CS 1371 and have now
%  learned about structures, you decide that MATLAB can do this for you!
%
% Function Description:
%  Write a function called "updateDatabase" that takes in a nested
%  structure and a cell array containing information about the sale and
%  returns the total price of the sale and the updated database.
%
%  The nested structure representing the database contains a structure
%  named 'sales' and a structure named 'inventory'. 'sales' and
%  'inventory' act like tables with fields containing information about the
%  customer and products respectively. Below is a diagram representing the
%  format of structure, with the corresponding field names:
%
%                               database(struct)
%                         ______________|_______________
%                        |                              |
%                __sales(struct)___          ___inventory(struct)___
%               |         |        |        |          |            |
% fields:  'salesID' 'customer' 'date'  'product'  'quantity'    'price'
%           (double)  (char)    (char)  (char)     (double)      (double)
%
%  The function also takes in a cell array containing information on a new
%  sale. The cell array will be formatted such as below:
%       
%       newSale = {salesID, customer, product, quantity, date}
%
%  The classes of the data will match the classes of the data in the
%  structure above. After extracting the data from the cell array, update
%  the database by adding an additional structure to the structure array to
%  the 'sales' structure with the salesID, customer, and date. In addition,
%  the function should update the 'inventory' structure with the new
%  quantity of product left, and return the total price of the new sale.
%
%
% Notes: 
%   - The quantity of a product ordered must be subtracted from inventory.
%   - If quantity ordered is more than quantity in inventory, then change
%     quantity in inventory to zero, but only charge for how many were
%     actually sold. 
%   - Every field in the database will contain a value. Make sure you
%     use the correct variable names for fields and structures.
%   - You are guaranteed that the customer will only buy one type of
%     product, but they can buy any quantity of that particular product.
%   - You can guarantee the product asked for will be within the database.
%
% Hints:
%   - You may find strcmp() and it's functionality to compare across cell
%     arrays of strings particularly helpful.
%   - When dealing with structure arrays, it is often helpful to pull data
%     from a particular field into a either a cell array or vector if you
%     know the data type. For instance, if you know the class of the field
%     is all double, you can pull out all the values into a vector with the
%     structure dot operator like so:
%                      vec_of_values = [str.<field_name>];
%     Likewise, you can pull out a cell array if all your data is of type
%     char in a similar fashion:
%                      ca_of_strings = {str.<field_name>};
%
% Test Case:
%   database.sales = struct('salesID',{298457,349579,345345},...
%                    'customer',{'Steve Jobs','Jeremy Lin','Phillip J. Fry'},...
%                   'date',{'06-16-2011','06-16-2011','07-20-2011'});
% 
%   database.inventory = struct('product',{'iPad','Galaxy Tab','Nook',...
%            'Kindle'},'quantity',{5,10,8,12},'price',{600,700,200,150});
% 
%
%   new_sale = {758493,'Yellow Mamba','iPad',3,'02-07-2012'};
%   
%   [total new_database] = updateDatabase(database,new_sale);
%	total => 1800
%
%   check_database.sales = struct('salesID',{298457,349579,345345,758493},...
%                   'customer',{'Steve Jobs','Jeremy Lin','Phillip J. Fry',...
%                   'Yellow Mamba'},'date',{'06-16-2011','06-16-2011',...
%                   '07-20-2011','02-07-2012'});
% 
%   check_database.inventory = struct('product',{'iPad','Galaxy Tab','Nook',...
%            'Kindle'},'quantity',{2,10,8,12},'price',{600,700,200,150});
% 
%   out = isequal(check_database,new_database) 
%   out => true