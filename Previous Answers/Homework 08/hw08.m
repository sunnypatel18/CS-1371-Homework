%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : <Ben Coordes>
% GT Email     : <bcoordes3@gatech.edu>
% Homework     : hw08
% Section      : <C09>
% Collaboration: <place here one of the following:
%                 "I worked on the homework assignment alone, using
%                  only course materials.">
%
%
% Files provided with this homework:  
%   - hw08.m
%   - makeMachine.p
%   - buildStruct.p
%   - buildStruct.p
%   - ABCs_HighLevelFileIO.m
%   - ABCs_LowLevelFileIO.m
%   - abcs_lights.txt
%   - rubric_shifts.csv
%   - rubric_testdlm.dlm
%   - rubric_hw1grades.xls
%
% Files to submit:
%   - hw08.m
%   - ABCs_HighLevelFileIO.m
%   - ABCs_LowLevelFileIO.m
%   - payMachine.m
%   - locateItem.m
%   - getSnacks.m
%   - findStruct.m
%   - findMinPath.m
%   - cableNetwork.m
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
%
%==========================================================================
% PART 1.  ABC Problems
%--------------------------------------------------------------------------
%
% Part of this homework are two ABCs m-files. Open these files in MATLAB
% and complete it according to the directions contained within. Since the
% ABCs cover upcoming topics for the next homework, it is suggested you
% complete them last. 
%
% Files to Complete: 
%       - ABCs_HighLevelFileIO.m
%       - ABCs_LowLevelFileIO.m
% ABCs File Testing:
%  >> ABCs_pretest_hw08
%
%
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic(s):
%   - Structure Arrays
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
% PART 2A. Vending Machines 
%--------------------------------------------------------------------------
% Like previous homeworks, this homework will consist of 6 problems.
% However, unlike previous homeworks, 3 problems each will be interrelated
% to a certain topic, and the first two functions will be used in the last
% problem of the set. 
%
% The first problem set will be dealing with functions concerning vending
% machines. The first two problems will deal with finding an item in a
% machine and how to pay for it, while the last one will combine different
% aspects of two in buying multiple items and paying for all of them. Good
% luck!
%
%==========================================================================
% PROBLEM 1.  Bills, Bills, Bills 
%--------------------------------------------------------------------------
%
% Function Name: payMachine
% Inputs  (3): - (struct)      A 1xN structure array representing a
%                              the contents of a wallet
%              - (char)        A string representing a person's name
%              - (double)      The cost of the purchase
% Outputs (2): - (struct)      A 1xN structure array similar to the input
%                              structure array, updated to reflect the 
%                              purchase
%              - (struct/char) A 1x1 structure with the fields 'quarters',
%                              'dimes', 'nickels', and 'pennies' OR the
%                              string 'You don't have enough money'
%
% Function Description:
%   Write a function named "payMachine" that takes in a structure array
%   representing a collection of wallets from a group of people, the
%   name of the person who will make the vending machine purchase, and the
%   cost of the purchase. The function should output the same structure
%   array of wallets, but the input buyer's wallet should be updated to 
%   account for the coins used to make the purchase. In addition, the 
%   function should also return a single structure with fields representing
%   the number of each type of coin used to make the purchase. If the buyer 
%   does not have enough money to make the purchase, the second output 
%   should be the string 'You don't have enough money'.
% 
%   Both the wallet structure array and the output single structure should
%   contain the fieldnames 'quarters', 'dimes', 'nickels', and 'pennies'.
%   Each of these fields will contain a number representing the quantity of
%   that coin type. The wallet structure array will have an additional
%   field called 'name' that representing the person that each wallet
%   belongs to.
%
%   In order to determine how many of each coin type should be used to make
%   the purchase, the function should employ a "greedy algorithm." That is,
%   the largest denomination coins should be used first, followed by the
%   next largest denomination coins, and so on until the amount paid is 
%   greater than or equal to the price. For example, if the cost of the
%   purchase is $0.77, and the buyer's wallet structure contains the
%   following:
%
%           name: 'Aurora'
%           quarters: 3
%           dimes: 0
%           nickels: 1
%           pennies: 5
%
%   The buyer should use the largest coins first and pay with 3 quarters, 
%   even though she is able to make exact change using coins of lower 
%   denominations.
%
%  
% Test Cases:
%
%	walletarr =struct('name', {'Velma', 'Shaggy', 'Freddy', 'Daphne'},...
%	'quarters', {4 1 3 1}, 'dimes', {2 1 0 0}, 'nickels', {5 0 9 2}, ...
%   'pennies', {0 3 6 50})
%
%   [new_walletarr coins_used] = payMachine(walletarr, 'Daphne', 0.72)
%           new_walletarr => looks like:
%                              struct('name', {'Velma', 'Shaggy', 'Freddy',
%                              'Daphne'}, 'quarters', {4 1 3 0}, 'dimes', 
%                              {2 1 0 0}, 'nickels', {5 0 9 0}, 'pennies',
%                              {0 3 6 13});
%           coins_used => looks like:
%                               struct('quarters', 1, 'dimes', 0,
%                               'nickels', 2, 'pennies', 37)
%
%   [new_walletarr2 coins_used2] = payMachine(walletarr, 'Shaggy', 1.10)
%           new_walletarr2 => looks like:
%                                struct('name', {'Velma', 'Shaggy', 
%                                'Freddy', 'Daphne'}, 'quarters', 
%                                {4 1 3 1}, 'dimes', {2 1 0 0}, 'nickels',
%                                {5 0 9 2}, 'pennies', {0 3 6 50})
%           coins_used => 'You don't have enough money'
%
%==========================================================================
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
%
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
%
%==========================================================================
% PROBLEM 3.  Get Snacks Om nom nom!
%--------------------------------------------------------------------------
%
% Function Name: getSnacks
% Inputs  (3): - (struct) A MxN structure array representing a vending 
%                         machine with fieldnames 'item', 'price', and 
%                         'quantity'
%              - (struct) A 1xR structure array representing a group of
%                         orders with fieldnames 'item', 'price', and
%                         'quantity'
%              - (double) The amount of money you have to spend
% Outputs (2): - (struct) A MxN structure array similar to the input
%                         vending machine structure array
%              - (struct) A 1xQ structure array with the fields 'item' and
%                         'quantity'
%
% Function Description:
%   Write a function named "getSnacks" that takes in a structure array
%   representing a vending machine full of snack items, another structure
%   array representing an order list of items you want to buy, and the 
%   amount of money you have to spend. The function should return the 
%   vending machine structure array with the 'quantity' field values 
%   updated to reflect the items purchased and dispensed by the machine. 
%   The function should also output a 1xN structure array representing the 
%   items that were able to be purchased. 
%
%   As specified in the input and output descriptions above, both the input
%   vending machine structure array and the input order list structure
%   array will contain the fieldnames 'item', 'price', and 'quantity'. The 
%   'item' field will contain the item name as a string, and the other two
%   fields will contain type double values. The output structure array
%   describing the items purchased should contain the fieldnames 'item' and
%   'quantity'. Like the input structure arrays, these should contain a
%   string of the item's name and a double value, respectively.
%
%   If all the items in the order list cannot be purchased with the 
%   available amount of money, items should be given priority based on
%   their price from highest to lowest. You should also attempt to purchase
%   all the desired quantity of one item before moving on to an item of
%   lower price. For example, if you have $3.30, and you want three bags of
%   chips costing $1.00 each and two Snickers bars costing $1.10 each, you 
%   should buy the two Snickers bars first, and then one bag of chips.
%
% Notes:
%   - If two items are of the same price, assume priority for purchase is
%     based on the order in which the items are listed. You may find the
%     third input of sort() useful for this.
%   - If the quantity of an item is 0 in the vending machine, assume it
%     cannot be purchased.
%   - If no items can be purchased, the second output should be an empty
%     vector
%
% Hints:
%   - You may find your locateItem() function useful for this problem.
%
% Test Cases:
%  *****Remember to use the "makeMachine.p" file to generate the "machine" 
%   variable
%
%   order1 = struct('item', {'Honey Buns', 'Salt and Vinegar Chips',
%   'Oreos'}, 'quantity', {2,4,5}, 'price', {1.10,1.00,1.10})
%
%   order2 = struct('item', {'Orbit Gum', 'Ruffles'}, 'quantity', {3,2},... 
%   'price', {0.6,0.90})
%
%	[new_machine orders_made] = getSnacks(machine, order1, 4.30)
%           new_machine => looks like machine BUT
%                           new_machine(3,1).quantity = 18
%                           new_machine(6,1).quantity = 19
%                           new_machine(2,5).quantity = 19
%           orders_made => looks like:
%                               struct('item', {'Honey Buns','Oreos','Salt 
%                               and Vinegar Chips'}, 'quantity', {2, 1, 1})
%
%	[new_machine2 orders_made2] = getSnacks(machine, order2, 20.00)
%           new_machine2 => looks like machine BUT
%                           new_machine(7,4).quantity = 0
%                           new_machine(2,2).quantity = 18
%           orders_made2 => looks like:
%                               struct('item', {'Ruffles','Orbit Gum'} 
%                               Chips'}, 'quantity', {2 2})
%
%	[new_machine3 orders_made3] = getSnacks(machine, order2, 0)
%           new_machine3 => looks like machine
%           orders_made => []
%
%==========================================================================
% PART 2B. Cable Company
%--------------------------------------------------------------------------
% The next 3 problems deal with working for a cable company laying cable in
% a new town. They want to optimize the amount of cable they have to lay to
% connect all of the houses. They have given you a list of the houses in
% the neighborhood, and all of the ways that the houses can be connected in
% the form of a structure array. Your job is to find the least amount of
% cable required to connect all of the houses, and the paths that the
% company should take to achieve this amount.
%
% The data is set up as follows: The company has given us a structure array
% where each structure represents a house that must be connected. Each
% structure has 3 fields: 
%
%       name: the name of the home 
%       paths: a list of homes that can be directly connected to this one 
%       lengths: the corresponding length of each path
%
% Given this, we can describe an algorithm that will find the optimal paths
% to take to connect all of the houses.
%
% 1. Select a starting house. For this problem, we'll just use the first
%    house in the structure array.
%
% 2. Find the path with the least length from this house to any other
%    house, and lay cable along that path.
%
% 3. Now, we've connected 2 houses. Now, we need to take the least path
%    from either of these two houses that will connect a house that is NOT
%    already connected, and lay cable along that path.
%
% 4. We continue this process of connecting houses and finding the minimum
%    length until we've connected all of the houses.
%
% Finally, you have been supplied with a function called buildStruct.p.
% This file will, given an array as described below and a list of names,
% will build a structure array for use with this problem. Basically, at
% every (row, column) index in the array, if array(row, column) is 0, there
% is no path between names(row) and names(column). Otherwise, the weight of
% the path from names(row) to names(column) is array(row, column). Also, it
% is guaranteed that array(row, column) == array(column, row), since paths
% are the same length regardless of the starting and ending house.
%
% For an example of how the problem will work, look at the example below:
%
% First, s = buildStruct([0 2 1; 2 0 0; 1 0 0], {'a' 'b' 'c'}) will return
% a structure array like so:
%
% s(1)
% 	name: 'a' 
%   paths: {'b' 'c'} 
%   lengths: [2 1]
%
% s(2)
% 	name: 'b' 
%   paths: {'a'} 
%   lengths: 2
%
% s(3)
% 	name: 'c' 
%   paths: {'a'} 
%   lengths: 1
%
% Now, if we were to run the algorithm by hand, the house to start at would
% be house 'a'.  Now, the path with the least length from house 'a' is to
% house 'c', of length 1.  So, if we lay cable along that path, our set of
% connected houses is 'a' and 'c', and we've laid 1 unit of cable so far.
% Now, we need to take the path of least weight from either 'a' or 'c' to a
% house that we haven't connected yet. The only path that works is then
% from 'a' to 'b', of length 2. By laying cable along that path, we will
% connect 'a' to 'b', and so all of the houses are connected, and the total
% amount of cable laid was 3 units.
%
% The following problems will build towards this final problem, so make
% sure you do them in order. Good luck!
%
%==========================================================================
% PROBLEM 4.  Finding Structures Within Structure Arrays.
%--------------------------------------------------------------------------
%
% Function Name: findStruct
% Inputs  (2): - (char)   a name
%              - (struct) a structure array of houses as described above
% Outputs (1): - (struct) the structure representing the house with the 
%                         given name 
%
% Function Description:
%   Given the name of a house and a structure array of houses, write a
%   function called "findStruct" that will return the structure from the
%   given structure array with the same value in the name field as the
%   given name.  If a structure with that name doesn't exist in the
%   structure array, return -1.
%
% Test Cases:
%	s = buildStruct([0 2 1; 2 0 0; 1 0 0], {'a' 'b' 'c'}) 
%
%   st = findStruct('b', s)
%       st =
%           name: 'b'
%           paths: {'a'}
%           lengths: 2
%
%	st2 = findStruct('d', s)
%       st => -1
%
%==========================================================================
% PROBLEM 5.  Finding a Minimum Path
%--------------------------------------------------------------------------
%
% Function Name: findMinPath
% Inputs  (1): - (struct) A structure array of houses 
% Outputs (3): - (char) The name of the house to start laying cable from
%                (char) The name of the house to connect to
%                (double) The length of the path between the two houses
%
% Function Description:
%   This function will be used to achieve step 2 in the overall
%   cableNetwork problem, so be sure you understand the overall concept
%   before beginning this problem.
%
%   Given a structure array of the currently connected houses, write a
%   function findMinPath that will find the minimum path from one of the
%   connected houses to a house that hasn't been connected yet.
%
% Hints:
%	- Remember that the path that you find shouldn't connect two houses
%	  that are already connected. This also includes houses that are
%	  connected by an intermediate house. Basically, this means we should
%	  avoid any circular paths in our network.
%   - If there are two paths of the same length that connect a house, take
%     the first path that you come across when iterating from the first
%     house in the structure array to the last house.
%
% Test Cases:
%	s = buildStruct([0 2 1; 2 0 0; 1 0 0], {'a' 'b' 'c'}) 
%
%   [from to len] = findMinPath(s(1))
%       from => 'a'
%       to => 'c'
%       len => 1
%
%	[from to len] = findMinPath(s([1 3]))
%       from => 'a'
%       to => 'b'
%       len => 2
%
%==========================================================================
% PROBLEM 6.  Laying Cable
%--------------------------------------------------------------------------
%
% Function Name: cableNetwork
% Inputs  (1): - (struct) a structure array of houses as described above 
% Outputs (2): - (cell) a cell array of strings describing the paths taken
%              - (double) the total amount of cable laid
%
% Function Description:
%   Given a structure array of houses as described above, write a function
%   cableNetwork that will use the algorithm described above to find the
%   optimal path to connect all of the houses with the least amount of
%   cable.  As a reminder, here is a bit more specific version of the
%   algorithm as described above:
%
%   1. Select the first house in the structure array as the starting
%      house, and add it to your list of connected houses.
%
%   2. Find the minimum path from all connected houses to any other house. 
%      The findMinPath() function will be useful here.
%
%   3. Find the actual house that the path connects you to. The
%      findStruct() function will be useful here.
%
%   4. Add the newly connected house to your list of connected houses, and
%      repeat from step 2, until you have no unconnected houses left.
%
%   The first output should be a list of all of the paths that you take of
%   this form: '(a, b): 1'.  This string indicates a path starting at 'a',
%   ending at 'b', with length 1. To get the second output, you should
%   simply add up the length of each path that you find using
%   findMinPath().
%
% Hints:
%	- To use other functions that you have written, just make sure that
%	  they're in the same directory as this function, and you can call them
%	  normally.
%
% Test Cases:
%	s1 = buildStruct([0 2 1; 2 0 0; 1 0 0], {'a' 'b' 'c'});
%   arr = [0 6 6 7 6; 6 0 14 6 15; 6 14 0 9 11; 7 6 9 0 9; 6 15 11 9 0];
%   s2 = buildStruct(arr, {'h1' 'h2' 'h3' 'h4' 'h5'});
%
%   [e1 len1] = cableNetwork(s1)
%       e1 => {'(a, c): 1' '(a, b): 2'}
%       len1 => 3
%       isequal(e1, {'(a, c): 1', '(a, b): 2'}) => true
%
%	[e2 len2] = cableNetwork(s2)
%		e2 => {'(h1, h2): 6'    '(h1, h3): 6'    '(h1, h5): 6'  ...  
%             '(h2, h4): 6'}
%       len2 => 24
%       isequal(e2, {'(h1, h2): 6'    '(h1, h3): 6'    '(h1, h5): 6' ... 
%       '(h2, h4): 6'}) => true
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
