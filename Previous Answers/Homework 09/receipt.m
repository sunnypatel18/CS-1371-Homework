% PROBLEM 5.  Would You Like a Receipt?
%--------------------------------------------------------------------------
function receipt(list, date, customer, cccode)

file = [customer '_receipt.txt'];
newcccode = cccode;
newcccode(1:4) = 'XXXX';
newcccode(6:9) = 'XXXX';
newcccode(11:14) = 'XXXX';
totalraw = 0;
[num text raw] = xlsread('Inventory.xlsx');
fh = fopen(file, 'w');
fprintf(fh, 'CS1371 Grocery Store\n\n');
fprintf(fh, [date '\n' customer '\n' newcccode '\n\n']);
for x = 1:length({list.product});
    quantity = list(x).quantity;
    product = list(x).product;
    [r c] = find(strcmp(product, raw));
    price = round(raw{r, 2}*100)/100;
    productprice = quantity*price;
    totalraw = totalraw + productprice;
    line = sprintf('%dx %s     %.2f\n', quantity, product, productprice);
    fprintf(fh, line);
end
tax = num2str(round((.1 * totalraw)*100)/100);
total = num2str(totalraw + str2num(tax));
taxstatement = sprintf('Tax     %s', tax);
totalstatement = sprintf('Total     %s', total);
fprintf(fh, [taxstatement '\n']);
fprintf(fh, totalstatement);
fclose(fh);

end
% Function Name: receipt
% Inputs  (4): - (struct) A structure array of the customer's shopping list
%              - (char) Date of sale ('DD-MM-YYYY')
%              - (char) Name of customer
%              - (char) Credit card code 
% Outputs (0): - None
%
% Output Files (1): a .txt file that contains a receipt of the items bought
%
% Function Description:
%   Write a function called "receipt" that takes in a structure array of
%	the customer's shopping list and three input strings representing the
%	date of the sale, the name of the customer and his credit card code.
%	The structure contains two fields 'product' and 'quantity'. The
%	'product' field contains the name of the product and the 'quantity'
%   field contains the corresponding number of the product. The function
%	should return a text file representing the receipt of the purchase.
%
%   Follow the steps below to construct the receipt. The receipt should be
%	created in a text file under the format '<name>_receipt.txt' 
%        (E.g. for first test case -> 'Tim Tebow_receipt.txt')
%       
%       1. At the top (first line) enter the name of the grocery store as
%          'CS1371 Grocery Store' and skip the next line.
%
%       2. On the third line enter the date & on the fourth line enter the 
%           name of the customer.
%
%       3. Enter the first 12 numbers of the credit card code as Xs and
%          leave the last four digits. Don't forget the dashes,
%          (e.g.'XXXX-XXXX-XXXX-2341'). Skip the next line.
%
%       4a. Find the price of products in the shopping list using the 
%           'Inventory.xlsx' spreadsheet. Note: The first row will contain
%           'Product' and 'Price'.
%
%       4b. Enter product purchase information citing the product name, 
%           quantity and total price in the following format 
%           (quantity)x (product)(5 spaces) (total price of product).
%           (e.g. '3x Air Freshner     20.97')
%           Round the total price of product to two total decimal places.
%
%       5. Calculate total cost of all goods. Tax will always be 10%
%          Enter 'Tax (5 spaces) (tax value)'
%
%       6. Calculate the total including tax. 
%          Enter 'Total (5 spaces) (total value)'
%
% Constraints:
%   - All values displayed must be rounded to two decimal places. When
%     calculating the total cost of all products however, the products 
%     should NOT be rounded.
%   - Total cost including tax = tax amount(rounded to 2 decimal places) 
%                              + total cost of all products (not rounded)
% Hints:
%   - Use the sprintf function. '%.1f' Can be used in the sprintf function
%	  to round to one decimal place. 
%   - '\n' represents the new line character. 
%   - Watch out for upper/lowercase and extra lines/spaces. Use the test
%     cases as a guide.
%
% Test Cases:
%
%   name = 'Tim Tebow'
%   date = '05-07-2010'
%   credit_card = '9876-3729-9372-8629'
%   list = struct('product',{'Tomatoes','Air Freshner','Milk','Detergent','Nuts','Tea'...
%    'Muesli Bar','Pickles','Cake','Bleach'},'quantity',{4,1,2,1,5,1,6,5,2,1})
%   
%   receipt(list,date,name,credit_card)
%       => file named 'Tim Tebow_receipt.txt' -> looks like receipt1.txt
%
%   name = 'David Smith'
%   date = '12-09-2011'
%   credit_card = '8379-3801-4728-1836'
%   list = struct('product',{'Matches','Dozen Eggs','Milk','Lotion','Tea'...
%    'Soup','Pickles','Bananas','Dog Food'},'quantity',{3,4,1,2,1,2,2,1,4})
%
%   receipt(list,date,name,credit_card)
%       => file named 'David Smith_receipt.txt' -> looks like receipt2.txt