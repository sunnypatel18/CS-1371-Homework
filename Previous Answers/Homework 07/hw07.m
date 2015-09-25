%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : <Ben Coordes>
% GT Email     : <bcoorde3@gatech.edu>
% Homework     : hw07
% Section      : <C02>
% Collaboration:  "I worked on the homework assignment alone, using
%                  only course materials."
%                 
%
% Files provided with this homework:  
%   - hw07.m
%   - buildQueue.p
%   - ABCs_structure_arrays.m
%   - ABCs_pretest_hw07.p
%
% Files to submit:
%   - hw07.m
%   - ABCs_structure_arrays.m
%   - nameGen.m
%   - deepestCell.m
%   - cellToStruct.m
%   - findPrintJob.m
%   - minesweeper.m
%   - updateDatabase.m
%
% Instructions:
%   1) Follow the directions for each problem very carefully or you will
%   lose points.
%   2) Make sure you name functions exactly as described in the problems or
%   you will not receive credit.
%   3) Read the announcements! Any clarifications and/or updates will be
%   announced on T-Square. Check the T-Square announcements at least once
%   a day.
%   4) You should not use any of the following functions in any file that 
%   you submit to T-Square:
%       a) clear
%       b) clc
%       c) solve
%       d) input
%       e) disp
%       f) close all
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%==========================================================================
% PART 1.  ABC Problems
%--------------------------------------------------------------------------
%
% Part of this homework are a m-file called ABCs_structure_arrays. Open
% this file in MATLAB and complete it according to the directions contained
% within. Since the ABCs cover upcoming topics for the next homework, it is
% suggested you complete them last. 
%
% Files to Complete: 
%       - ABCs_structure_arrays
% ABCs File Testing:
%  >> ABCs_pretest_hw07
%
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic(s):
%   - Cell Arrays
%   - Structures
%
% Follow the directions carefully and make sure files names as well as
% function headers are written exactly as described in the problem text. If
% your function headers are not written as specified, then you will recieve
% an automatic zero for the problem.
%
% All drill problems must be functions (i.e. contain valid function
% headers).  Any scripts turned in will be given a 0 automatically.
%
%==========================================================================
% PROBLEM 1. GT Usernames
%--------------------------------------------------------------------------
%
% Function Name: nameGen
% Inputs  (1): - (cell) cell array containing first names, last names and 
%                       a vector of doubles
% Outputs (1): - (cell) cell array of GT usernames
%
% Function Description:
%   Given a cell array that contains nested cells of first and last names
%   and a vector of doubles, write a function called "nameGen" that creates
%   a new cell array of the GT usernames of each person.
%
%   The input cell array will contain within it 3 pieces of data: The first
%   will be a cell array containing first names, and the second will be a
%   cell array of the corresponding last names, and the last one will
%   be a vector of doubles.
%
%   The output will be cell array where each entry is the corresponding GT
%   username of that person, formatted like so:  
%
%           First Letter of First Name + Last Name + Number
%
%   For instance, if the input was {{'Jeremy'},{'Lin'},[17]} then
%   the output would be:
%
%           {'jlin17'}
%
% Notes: 
%   - Each element in the output cell array must be a string with all
%     letters lowercase.
%   - The cells and vectors within the input are guaranteed to be the same
%     length.
%   - You may find the function num2str() useful.
%
% Test Cases:
%   in = {{'David','Kristin','John'},{'Smith','Marsicano','Krasinski'},...
%         [3 7 1]}
%   out = nameGen(in);
%       out -> {'dsmith3','kmarsicano7','jkrasinski1'}
%
%==========================================================================
% PROBLEM 2.  How Deep IS the Rabbit Hole? 
%--------------------------------------------------------------------------
%
% Function Name: deepestCell  
% Inputs  (1): - (cell)   A Nx1 cell array containing any number of nested
%                         cells
% Outputs (2): - (double) The index at which the most nested cell is found
%              - (double) The "depth" of the most nested cell
%                   
% Function Description:
%   Write a function called "deepestCell" that takes in a cell array of
%   nested cells and determines the index at which the most nested cell is
%   located and how deep that nested cell is. The "depth" is defined as how
%   many nested cells the data are contained in, and does not include the
%   enclosing cell array. If there are two deepest cells, then the function
%   should return the index of the first one. 
%
%   For an example of cell "depth":
%
%   Given the cell array:
%       cA = {{'Drive safely!'}, {{{{[false false false]}}}}, {{8}}}
%
%   - The depth of the cell in the first position is 1, because there is 1
%     nested cell inside of the cell array.
%   - The depth of the cell in the second position is 4, because there are
%     4 nested cells inside of the cell array.
%   - The depth of the cell in the third position is 2, because there are 2
%     nested cells inside of the cell array.
%
% Notes:
%   - All nested cells with contain non-empty data of type 'char', 'double'
%     or 'logical'.
%   - The length of the cell array is guaranteed to be at least 1.
%   - The nested cells will always be 1x1, but the data contained in them
%     will not always be.
%   - All nested cells will have a depth of at least 1.
%
% Hints:
%   - You may find the iscell() function helpful in solving this problem.
%
% Test Cases:
%   cA1 = {{'Do the criss-cross, Norcross'}, {{{'yeet'}}}, {{[2 2 9]}}};
%   [index1 depth1] = deepestCell(cA1);
%       index1 => 2
%       depth1 => 3
% 
%   cA2 = {'CHOCOLATE!!!', {{{{{{{{{{{{'May I take your hat, sir?'}}}}}}}}}}}}};
%   [index2 depth2] = deepestCell(cA2);
%       index2 => 2
%       depth2 => 12
%
%   cA3 = {{{{{true}}}}};
%   [index3 depth3] = deepestCell(cA3);
%       index3 => 1
%       depth3 => 4
%
%   **Note that in the third test case the outer brackets are still
%   considered to be cell array brackets and are not included in the
%   depth!**
%
%==========================================================================
% PROBLEM 3. cellToStruct? I Thought You Said Self-Destruct!
%--------------------------------------------------------------------------
%
% Function Name: cellToStruct
% Inputs  (1): - (cell) A cell
% Outputs (1): - (struct) A structure
%
% Background Information:
%   "Good morning, MATLAB Coder 2012. Your mission, should you choose to
%   accept it, involves the transfer of data from our widely used cell
%   arrays to a more secretive method of data storage: the structure. It
%   has come to our attention that Professor Marsicano, an ex-associate of
%   Lab 1371, is plotting to steal sensitive data from the lab. As an
%   ex-associate, she is adept at interpreting the data that is stored in
%   our cell arrays and plans to use them to reveal the secret plans of the
%   lab. Our sources have determined that she will begin her operation at
%   9PM on Friday, February 24th. You need to develop a way to convert our
%   sensitive data before then so that it will be safe from Professor
%   Marsicano, as well as anyone else who may be trying to get their hands
%   on it. As always, should your identity be compromised, the directors
%   will deny all knowledge of your actions. This message will
%   "self-destruct" in five seconds."
%
% Function Description:
%   Given a cell, write a function called "cellToStruct" that will change
%   the input from a cell to a structure. The odd indexed elements of
%   the cell will be fieldnames, and the even indexed elements are the
%   corresponding values for the fields.
%
%   For example: 
%   
%  st = cellToStruct({'FirstName', 'Ethan', 'LastName', 'Hunt', ...
%                     'NumberOfMissions', 4}) 
%
%   would return: 
%                 st = FirstName: 'Ethan'
%                      LastName:  'Hunt'
%                      NumberOfMissions: 4
%
% Constraints:
%	- You may not use struct(), cell2struct(), or struct2cell() to
%	  complete this problem.
%
% Test Cases:
%
%   ca1 = {'f1', 'v1', 'f2', 'v2'};
%   st1= cellToStruct(ca1);
%       st1 => f1: 'v1'
%              f2: 'v2'
%
%   ca2 = {'HW1', 100, 'HW2', 97, 'HW3', 67, 'HW4', 88, 'HWavg', 88};
%   st2= cellToStruct(ca2);
%       st2 => HW1: 100
%              HW2: 97
%              HW3: 67
%              HW4: 88
%            HWavg: 88
%
%==========================================================================
% PROBLEM 4.  Finding Printer Jobs 
%--------------------------------------------------------------------------
%
% Function Name: findPrintJob
% Inputs  (2): - (struct)       A structure as described below
%                (char)         The name of a print job to search for
% Outputs (1): - (struct/char)  The print job, if found, or the string
%                               'Not Found'
%
% Function Description:
%   Often, printers will store their pending print jobs in a data structure
%   known as a linked list. A linked list is simply a set of nodes where
%   each node has some data as well as a refrence to the next node. In this
%   problem we will represent a linked list using nested structures.
%
%   Given a structure representing a linked list of print jobs and the name
%   of a job to search for, write a function called "findPrintJob" that will
%   return the structure representing the print job with that name if
%   found, or the string 'Not Found' otherwise.
%   
%   The input structure will have 3 fields: 'name', 'pages', and 'next'.
%   'name' is simply the name of the print job, 'pages' is the number of
%   pages to print, and 'next' holds either the job to be printed after
%   this job, or an empty vector ([]). For example, if we had 2 jobs in
%   queue, we might have a setup like this:
%
%       Job1
%           name: 'job1'
%           pages: 100
%           next: [1x1 struct] <- This represents Job2
%     
%       Job2
%           name: 'job2'
%           pages: 1000
%           next: []  <- Since there's nothing to print after Job2
%
%   Your output structure should be the structure with the same name as the
%   input name, but with the next field removed. So if we use the example
%   above, j2 = findPrintJob(Job1, 'job2') should return:
%
%   j2 = name: 'job2'
%        pages: 1000
%
% Hints:
%	- You may find the function rmfield() useful.
%   - The p-file 'buildQueue.p' has been provided for your convenience.  It
%     can create test cases for this problem. As an example, to create the
%     example above, we would call
%               str = buildQueue({'job1' 'job2'}, [100 1000])
%     str is then a structure representing the linked list described
%     above.
%
% Test Cases:
%	s = buildQueue({'MATLAB test', 'Essay', 'Thesis'}, [100,  5, 9001]);
%
%   job1 = findPrintJob(s, 'Thesis')
%       job1 =>
%           name: 'Thesis'
%           pages: 9001
%
%	job2 = findPrintJob(s, 'My Homework')
%       job2 => 'Not Found'
%
%==========================================================================
% PROBLEM 5.  Games to Pass the Time Away 
%--------------------------------------------------------------------------
%
% Function Name: minesweeper
% Inputs  (1): - (cell) a cell array that represents a minesweeper board
% Outputs (1): - (cell) a cell array with updated minefield number
%
% Function Description:
%   Given a cell array which represents a minesweeper board filled with 
%   mines, write a function called "minesweeper" that searches through the
%	cell array and adds numbers to the minefield to mark the number of
%	mines around each square. The function should then return a new cell
%	array with those numbers updated.
% 
%   Each square is surrounded by 8 adjacent squares. The number shown
%   in each square will depend on the number of mines around that square.
%   We will use '*' to represent a mine, '3' to represent a square
%   surrounded by 3 mines, [] to represent a string of number needs to be
%   filled in. 
% 
%   For example, given:
%      {[] '*' []
%       [] [] '*'
%       [] '*' []}
%   The function should return:
%      {'1' '*' '2'
%       '2' '3' '*'
%       '1' '*' '2'}
%   
%   Basically, you should iterate through each square and find how many
%   mines are adjacent to it, and then place that number into the current
%   square. Please note the number placed is of class char, not class
%   double. 
%   
% Hints:
%   - You might find isempty() useful for determining whether there is an
%     adjacent mine.
%   - It may be helpful to create a new board of a larger size to avoid
%     indexing out of bounds. Then remove the excess empty space for the
%     final answer.
%   - You might find cell() useful for creating a new board.
%   - You might find str2num() useful.
%
% Test Cases:
%   board1 = {[] []  []
%             [] '*' []
%             [] []  []}
%   ret_board1 = minesweeper(board1)
%       ret_board1 => {'1','1','1'
%                      '1','*','1'
%                      '1','1','1'}
%   board2 = {[] '*' []
%             [] []  '*'
%             [] '*' []}
%   ret_board2 = minesweeper(board2)
%       ret_board2 => {'1','*','2'
%                      '2','3','*'
%                      '1','*','2'}
%   board3 = cell(5,6);
%   board3{2,3} = '*';
%   board3{3,5} = '*';
%   board3{4,1} = '*';
%   board3{5,4} = '*';
%   board3{1,3} = '*';
%   ret_board3 = minesweeper(board3)
%       ret_board3 => {'0','2','*','2','0','0'
%                      '0','2','*','3','1','1'
%                      '1','2','1','2','*','1'
%                      '*','1','1','2','2','1'
%                      '1','1','1','*','1','0'}
%
%==========================================================================
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
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
