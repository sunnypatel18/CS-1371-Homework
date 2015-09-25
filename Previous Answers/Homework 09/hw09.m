%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : <Ben Coordes>
% GT Email     : <bcoordes3@gatech.edu>
% Homework     : hw09
% Section      : <C02>
% Collaboration: <"I worked on the homework assignment alone, using
%                 only course materials."
%
% Files provided with this homework:  
%   - hw09.m
%   - ABCs_plotting_soln.png
%   - test1.txt
%   - test1_email_soln.txt
%   - words1.xls
%   - words2.xls
%   - Prof.xls
%   - Prof1.xls
%   - Prof1_new_soln.xls
%   - Prof2.xls
%   - Prof_new_soln.xls
%   - findStruct2_sol.m
%   - payMachine2_sol.m
%   - problem1.m
%   - problem4.m
%   - inventory.xlsx
%   - receipt1.txt
%   - receipt2.txt
%   - textcsv.csv
%   - ABCs_recursion.m
%   - ABCs_plotting.m
%
% Files to submit:
%   - hw09.m
%   - ABCs_recursion.m
%   - ABCs_plotting.m
%   - emailGen.m
%   - madLib.m
%   - courseCritique.m
%   - printFunctionHeader.m
%   - receipt.m
%   - LLcsvread.m
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
% Files to Complete: 
%       - ABCs_recursion.m
%       - ABCs_plotting.m
% ABCs File Testing:
%  >> ABCs_pretest_hw09
%     
% NOTE: The pretest will only test ABCs_recursion! To test plotting, please
% run your code and use the ABCs_plotting_soln.png provided.
%
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic(s):
%   - High and Low Level File I/O
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
% PROBLEM 1.  You've Got Mail!
%--------------------------------------------------------------------------
%
% Function Name: emailGen
% Inputs  (1): - (char) a filename of a text file containing GT usernames 
% Outputs (0): - None
%
% Output Files (1): A text file containing the email addresses of the
%                   people in the original text file
%
% Function Description:
%   Write a function called "emailGen" that takes in one string input. The
%   string will be the filename of a .txt file that features
%   comma-separated GT usernames (ex. gburdell3, dsmith3). The function
%   should read in the GT usernames and write a new text file containing
%   the e-mail addresses that correspond to the GT usernames. First,
%   check to make sure each email ends in a number. If it does not, then do
%   not include the invalid username in the output file. Each e-mail
%   address should be on its own line and appear in the order corresponding
%   to the order the usernames appear in the original .txt file. All e-mail
%   addresses to valid usernames will include '@gatech.edu' appended to the
%	end of a GT username. The filename of the output .txt file should be
%	the name of the original file (excluding the .txt) with the string
%   "_email.txt" appended to the end. 
%
% Constraints:
%	- You are *not* allowed to use textscan().
%
% Notes: 
%   - The last line of the text file should contain the last email address 
%     (not a blank line)
%   - The GT usernames will be comma-separated in the .txt file.
%     However, they may also be placed on multiple lines, and there might 
%     be different numbers of GT usernames on each line. Example:
%
%           jdoe3,jsmith9,mryan7 
%           mturner,rwhite7
%           msmith1 
%   
% Hints:
%   - You may find fgetl() and strtok() useful.
%   - To avoid the last line containing a blank line, consider specific
%     conditions that denote when you reach the last line of the .txt file.
%
% Test Cases:
%
%    emailGen('test1.txt') 
%       => Should create a file named 'test1_email.txt', that should be 
%          exactly the same as the file test1_email_soln.txt.
%
%==========================================================================
% PROBLEM 2.  MadLibs in MATLAB!
%--------------------------------------------------------------------------
%
% Function Name: madLib
% Inputs  (2): - (char) the filename of a .xls file containing nouns,
%                       verbs, and adjectives
%              - (char) unedited MadLib sentence
% Outputs (1): - (char) completed MadLib sentence
%
% Background Information:
%   MadLib is a word game where one player prompts another for a list of
%   words to substitute for blanks in a story; these word substitutions
%   have a humorous effect when the resulting story is then read aloud. 
%
% Function Description:
%   Write a function called "madLib" that accepts two inputs. The first
%   will be the filename of a .xls file containing nouns, verbs, and
%   adjectives. 
%
%   The .xls file will be in the following form:
%     - A list of nouns in the first column with a column heading "Nouns"
%     - A list of verbs in the second column with a column heading "Verbs"
%     - A list of adjectives in the third column with a column heading
%       "Adjectives"
%
%   The second input will be a string containing an unedited MadLib
%   sentence. The unedited MadLib sentence will contain specific strings,
%   '%n'(noun),'%v'(verb), and '%a'(adjective) which indicate what type of
%   word must be replaced in that spot. After that word (noun, verb, or
%   adjective) has been used, it cannot be used again and the function must
%   use the next available word in the corresponding list. The function
%   should then output the completed MadLib sentence after it has completed
%   all of its word replacements.
%
%   The identifiers %n, %v, and %a will always appear as an individual
%   words, like so:
%
%       'Today I went to the %n and bought a %n.'
%
% Notes:
%   - Not all nouns, verbs, and adjectives in their respective columns
%     will be used. However, there will always be enough nouns, verbs, and
%     adjectives to use with the input string.
%   - Though nouns, verbs, and adjectives are guaranteed to appear as
%     individual words, they are not guaranteed to be separated exclusively
%     by spaces. For example, a punctuation may follow the %n, %v, or %a
%     symbol. However, you may assume that punctuation or any other
%     character will never precede the prompt for the noun, verb, or
%     adjective (e.g. ' "%n ' will not occur, but '%n,' is a possibility).
%   - In order to facilitate function testing, we have provided a method
%     of comparing your output to the correct answer using the strcmp()
%     function. You will find examples of this method in the test cases.
%
% Hint:
%   - You may find strtok() useful.
%
% Test Cases:
%
%   fn1 = 'words1.xls';
%   sentence1 = ['You mean like a %a %n? Okay! May I %v your %n, sir?'...
%               ' May I %v your %n, sir?'];
% 
%   out1 = madLib(fn1, sentence1);
%       out1_test = ['You mean like a buttery zebra? Okay! May I eat'...
%                    ' your doorknob, sir? May I obfuscate your Lion-O,'...
%                    ' sir?'];
%       strcmp(out1, out1_test) % should return true
%
%   fn2 = 'words2.xls';
%   sentence2 = ['The %n that the %n %v the %n was a %a one, a %n '...
%               'which I will never %v.'];
%
%   out2 = madLib(fn2, sentence2);
%       out2_test = ['The smock that the pancakes wiggled the dubstep'...
%                    ' was a family-friendly one, a pottery which I will'...
%                    ' never stampede.']
%       strcmp(out2, out2_test) % should return true
%
%==========================================================================
% PROBLEM 3.  Which Courses Should I Take?
%--------------------------------------------------------------------------
% Function Name: courseCritique
% Inputs  (2): - (char)   A filename of a text file with professors and their
%						  respectiveGPAs
%              - (double) A GPA threshold
% Outputs (2): - (char)   Top-GPA professor's name 
%                (struct) Structure with 'Professor' and 'GPA' fields for 
%                         professors who surpassed the threshold GPA
% 
% Output Files (1): A new Excel file containing data of professors whose
%					GPAs were greater than the given threshold
% 
%              
% Function Description:
%   You're about to enter fall registration and you don't know which 
%   professors to select. You decide that selecting a professor by their
%   GPAs might be a good way to go about it. Excited about this, you
%   construct a list of professors and their GPAs and use Matlab to
%	determine the best options.
%   
%	Given the filename of an Excel file containing professors' GPA 
%	data write a function called "courseCritique" that reads in the data 
%	and performs the following operations on the data:
%
%	1. Puts all the Professors and GPAs into a structure array. 
%	2. Depending on the threshold input, filter the structure array so it
%      only has professors whose grades are equal to or greater than the
%      threshold. The professor may not have a GPA. If so, then it will be
%      given as "N/A".
%	3. Write a new Excel file with the same name as the input file, with 
%      '_new' attached before the ".xls". The new Excel file should
%	   contain the same information in the same format as the input file,
%	   but it should only contain the professors whose grades were greater
%	   than the threshold.
%	4. Return the name of the professor with the highest GPA. The output
%	   should be like the following. If highest-GPA professor is 'Lin Y', 
%	   the ouput should be 'Professor: Lin Y.'
%   5. In the case the no professor passes the threshold you should return
%      empty vector [] instead of a structure and an empty string: '' for 
%      the professor's output. You should also not write any new file.
%
%	An example of the output file naming scheme can be found below:
%
%   Input file: 'ProfFall2012.xls'
%   Output file: 'ProfFall2012_new.xls'
%
%	The Excel file will be in the following format:
%   
%    'Professor'    'GPA' 
%    'Silow F.'     3.2   
%    'Colasus Z.'   'N/A'
%    'Mandus G.'    2.4     
%    'Kashtar S.'   2.7      
%     ...
%
% Notes: 
%   - The Excel file can contain any number of rows, but will always have 2
%     columns with the first as professors and the second as GPA.
%   - You should not include in your final spreadsheet or structure array
%	  the professors with "N/A" as their GPA
%   - When you get your outputs please make sure they match up with the
%     outputs we give you. strcmp() (as used in the previous problem)
%	  among other methods are available - please use them.
%
% Test Cases:
%
%   [p1 s1] = courseCritique('Prof.xls',3.7);
%     p1 => 'Professor: Tool D.'
%     s1 => struct('GPA', {3.7, 3.9, 4}, 'Professor', {'Jakacki, D.',...
%     'Colatrella, C.', 'Tool D.'})
% 	  Output file looks like "Prof_new_soln.xls"
% 
%   [p2 s2] = courseCritique('Prof1.xls',2.75);
%     p2 => 'Professor: David T.'
%     s2 => struct('GPA', {3.21, 3.4, 2.93, 2.99, 2.94}, 'Professor',...
%     {'Berthelot, Y.','David T.', 'Pierron, O.','Germanovich, L.','Carnell, P.'})
%     Output file looks like "Prof1_new_soln.xls"
% 
%   [p3 s3] = courseCritique('Prof2.xls',3);
%      p3 => ''
%      s3 => []
%      => No output file is returned
%
%==========================================================================
% PROBLEM 4.  Homework that Does My Homework? Homeworkception!
%--------------------------------------------------------------------------
%
% Function Name: printFunctionHeader
% Inputs  (1): - (char) the filename of a file containing information about
%						a desired function header
% Outputs (0): - None
%
% Output Files (1): An m-file containing the function header
% 
% Function Description:
%   So on your last homework you accidentally misspelled one of your
%   functions, and you decided that you were never going to let that happen
%   again. Your solution was to use the function description to create a
%   starting file for you, with the correct name and a function header
%   already in it.
%
%	Given a filename, write a function called "printFunctionHeader" that
%	creates a m-file for the function described in the input file. This
%	function should not return any outputs; it should just create a file.
%	The input file will be formatted like the beginning of a problem
%	description. The output file should include a function header in it.
%	Your function header should be formatted as follows:
%
%                'function [out1,out2]=<function_name>(in1)' 
%
%   The number of inputs and outputs will be based on the number inside the
%   parentheses after the word 'Inputs' or 'Outputs'. You can assume that
%   the input file will be formatted exactly the same as how that segment
%   of a homework description would be.
%
% Notes:
%	- For the purposes of this problem, you are guaranteed that the function
%	  headers will have at least one input and one output.
%   - The only space in the function header is between the word function and
%     the first square bracket of the outputs. 
%   - The name of the function will always be found in the first line. 
%
% Hints:
%	- You might find strfind() useful.
%   - You can use fopen() with .m files. Just make sure you specify the
%     correct file extension. For more information search "help fopen".
%
% Test Cases:
%
%   printFunctionHeader('problem1.m');
%   	payMachine2.m should look like payMachine2_sol.m
%
%   printFunctionHeader('problem4.m');
%   	findStruct2.m should look like findStruct2_sol.m
%
%==========================================================================
% PROBLEM 5.  Would You Like a Receipt?
%--------------------------------------------------------------------------
%
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
%
%==========================================================================
% PROBLEM 6.  Low Level CSV Read
%--------------------------------------------------------------------------
%
% Function Name: LLcsvread
% Inputs  (1): - (char) name of a non-numeric csv file
% Outputs (1): - (cell) an M-by-N cell array representing the values in
%                       the csv file
%
% Function Description:
%   In MATLAB, we've learned about the built-in csvread() function, which
%	reads in numeric data from a comma separated value file and outputs the
%	numeric data in an array. However, in other applications csv files may
%	also contain strings separated by commas. Write a function called
%	"LLcsvread" that will take in a csv file with non-numeric data and
%	return all of the values as strings in a cell array.
% 
%   For example, if the csv file named themesong.csv contains the
%   following lines:
%     
%          I,want,to,be,the very, best
%          That,no one, ever,was!
%     
%   out=LLcsvread('themesong.csv')
% 
%   would return:
% 
%           out =>  {'I', 'want', 'to', 'be', 'the very', ' best';
%                   'That', 'no one', ' ever', 'was!', [], []}
% Notes:
%   - Each line in the csv file should correspond to a row in the cell
%     array.
%   - The file will not have any blank lines.
%   - Retain spaces from the csv file in your output cell array.
%   - Any cells that are not filled with data should be filled with
%	  empty vectors.
%
% Test Cases:
%
%   out = LLcsvread('textcsv.csv')
%       out => {'if', 'you', 'did', 'this', 'correctly';
%               'you', ' should', ' have a', [], [];
%               'great', ' cell array', [], [], []}
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
