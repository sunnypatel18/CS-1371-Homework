%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : <Sunny Patel>
% GT Email     : <sunnypatel18@gatech.edu>
% Homework     : hw09
% Section      : <B05>
% Collaboration: <place here one of the following:
%                 "I worked on the homework assignment alone, using
%                  only course materials."
%                 >"
%
% Files provided with this homework:  
%   - hw09.m
%   - makeMachineDC.p
%   - makeMachineMarvel.p
%   - Princesses.txt
%   - apples.txt
%   - capriSun.txt
%   - coke.txt
%   - ABCs_structures.m
%   - ABCs_structure_arrays.m
%   - ABCs_pretest_hw09.p
%
% Files to submit:
%   - hw09.m
%   - ABCs_structures.m
%   - ABCs_structure_arrays.m
%   - calcGrades.m
%   - whichWand.m
%   - evolvePokemon.m
%   - findActionFigure.m
%   - file2struct.m
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
% Homework Videos of the Week:
% http://www.youtube.com/watch?v=K7ZcDShqCl0
% http://www.youtube.com/watch?v=7LV7M_WeGX8
%==========================================================================
% PART 1.  ABC Problems
%--------------------------------------------------------------------------
%
% Part of this homework is an m-files called "ABCs_" 
% Open this file in MATLAB and complete it according to the
% directions contained within. Since the ABCs cover upcoming topics for the
% next homework, it is suggested you complete them last. 
%
% Files to Complete: 
%       - ABCs_structures.m
%       - ABCs_structure_arrays.m
% ABCs File Testing:
%  >> ABCs_pretest_hw09
%
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic(s):
%   - Structures and Structure Arrays
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
% PROBLEM 1. Ride the Curve!
%--------------------------------------------------------------------------
%
% Function Name: calcGrades
% Inputs  (2): - (struct) A 1xN structure array containing sections and
%                         grades
%              - (char)   Which section the average should be taken from
% Outputs (1): - (double) The average of that section
%
% Function Description:
%  You've just got back your last test grade for a class and didn't do so
%  well. However, with Tech being a school infamous for grading on a curve,
%  you have a chance to get that grade curved up! Nevertheless, to have the
%  curve work for you, you must know how you did compared to the average.
%
%  Write a function called "calcGrades" that takes in a structure array
%  that contains different sections and each sections' grades and extracts
%  the specified section's grades and average.
%
% Notes:
%  - You can assume that the structure will always be 1 x N with only 2
%    fields. The section asked for will always be present in the structure.
%  - You are guaranteed that the fields will always be 'Sections' and
%    'Grades'.
%     
% Test cases:   
%   grades1 = struct('Sections',{'A01','B04','C05','D01'},'Grades',...
%              {[91 92 45 55 67 81 12 50],[43 53 21 99 83 71 88 44],...
%              [100 12 65 85 66 74 33 92], [90 96 55 14 15 26 85 26]});
%        
%   average1 = calcGrades(grades1,'B04')
%       average1 => 62.7500
%          
%  grades2 = struct('Sections',{'E01','B05','H09'},'Grades',...
%              {[82 25 93 35 20],[26 62 48 36 84],...
%              [76 39 57 8 6]});
%          
%  average2 = calcGrades(grades2,'E01')
%       average2 => 51
%     
%  grades3 = struct('Sections',{'A01','A02','A03','A04','A05'},'Grades',...
%              {[92 84 79 24 25 27 84],[33 66 75 59 75 24 74],...
%              [98 87 9 37 69 60], [79 37 21 9 78 21 39],...
%              [56 23 65 49 16 79 11]});
%          
%  average3 = calcGrades(grades3,'A05')
%       average3 => 42.7143
% 
%==========================================================================
% PROBLEM 2. Which Wand?
%--------------------------------------------------------------------------
%
% Function Name: whichWand
% Inputs  (2): - (struct) an 1xN structure array
%              - (char)   a field name that may or may not be in the
%                         structure array
% Outputs (1): - (struct) an 1xN array of structures that is the original 
%                         structure array sorted by the values in the
%                         specified input field
%
% Function Description:
%   Ollivander is trying to sort the wands in his shop based off one of the
%   characteristics of each wand, like 'Core Material', 'Length', 'Price',
%   'Type of Wood', etc. To help him out, you decide to use MATLAB to do it
%   for him!
%
%   Write a function called "whichWand" that takes in a structure array and
%   then sorts that structure array by the values in the inputted field. If
%   the values are numeric, then the structure sorts them from lowest to
%   highest. If the values are characters, then the structure sorts the
%   *words* alphabetically (with case mattering, e.g. 'Phoenix' is before
%   'phoenix'). If the field does not exist in the structure array, then
%   the function returns the string 'Invalid Field Name'.
%
% Note:
%   - You may assume that each field in the input structure will either
%     contain doubles or chars, but not both.
%
% Hint: 
%   - The second output of the sort() function may be helpful.
%
% Test Cases:
%   strArr = struct('Type_of_Wood', {'Holly', 'hazel', 'Oak',... 
%               'ivy','hawthorn'},'Price', {7, 5, 8, 6, 10},... 
%               'Core_Material', {'phoenix feather', 'dragon heartstring',... 
%               'Phoenix feather', 'unicorn hair', 'Thestral tail hair'});
%
%   whichWandArr1 = whichWand(strArr, 'Type_of_Wood')
%   whichWandArr1 => struct('Type_of_Wood', {'Holly', 'Oak', 'hawthorn',...
%         'hazel', 'ivy'},'Price', {7, 8, 10, 5,  6}, ...
%         'Core_Material', {'phoenix feather', 'Phoenix feather', ...
%         'Thestral tail hair', 'dragon heartstring', 'unicorn hair'});
%
%   whichWandArr2 = whichWand(strArr, 'Price')
%   whichWandArr2 => struct('Type_of_Wood', {'hazel', 'ivy', 'Holly', ...
%         'Oak', 'hawthorn'},'Price', {5,6,7,8,10}, ...
%         'Core_Material', {'dragon heartstring','unicorn hair', ...
%         'phoenix feather','Phoenix feather','Thestral tail hair'});
%
%   whichWandArr3 = whichWand(strArr, 'Core_Material')
%   whichWandArr3 => struct('Type_of_Wood', {'Oak','hawthorn','hazel',...
%          'Holly','ivy'},'Price', {8,10,5,7,6},'Core_Material', ...
%          {'Phoenix feather','Thestral tail hair','dragon heartstring',...
%          'phoenix feather','unicorn hair'});
%
%   whichWandArr4 = whichWand(strArr, 'No_Field')
%   whichWandArr4 => 'Invalid Field Name'
%
%==========================================================================
% PROBLEM 3.  What? Evee Is Evolving!
%--------------------------------------------------------------------------
%
% Function Name: evolvePokemon
% Inputs  (2): - (struct) A structure array containing various Pokemon's
%                names and their evolutions
%              - (char) A name of a Pokemon
% Outputs (1): - (cell or char) A cell array containing the names of the 
%                input Pokemon and its evolution line, OR the string
%                '<input name> is not a Pokemon.', with <input name> being 
%                replaced by the second input.
%
% Function Description:
%   Hello, there! Glad to meet you! Welcome to the world of Pokemon! My
%   name is Professor Oak! People affectionately refer to me as the Pokemon
%   Professor.
%
%   This world is inhabited far and wide by creatures called Pokemon. Some
%   Pokemon can evolve into new, stronger Pokemon. Why, my grandson Gary 
%   started with a Squirtle, which later on evolved into a Wartortle, and 
%   then a Blastoise. Others, like Ditto, do not evolve into any other
%   Pokemon, nor do other Pokemon evolve into it. Pokemon nature truly is
%   full of mysteries, and I have spent every day trying to unravel them.
%   To make a complete guide on all the Pokemon in the world...That is my
%   dream! 
%
%   Are you interested in helping me with my Pokemon research? Excellent! 
%   But first, I need to see if your programming skills are sufficient.
%   Write a function called "evolvePokemon" that takes in a structure array
%   as an input and returns a cell array of all subsequent evolutions of
%   that pokemon. Each structure from the input structure array, which
%   we'll call a Pokedex from now on, has two fields containing information
%   about a Pokemon. The first field, "Name", contains a Pokemon's name as
%   a string. The second field, "Evolution", contains the name of the
%   Pokemon that the Pokemon indicated in the Name field evolves into, also
%   represented as a string. If a Pokemon indicated in the Name field does
%   not evolve into another Pokemon, the value for the Evolution field of
%   that structure will just be an empty string.
%
%   This is an example of some structures from the Pokedex:
%
%       Name: 'Squirtle'
%       Evolution: 'Wartortle'
%
%   This structure contains information about Squirtle. We can see from the 
%   second field that Squirtle evolves into Wartortle. Now let's look at 
%   another structure:
%
%       Name: 'Wartortle'
%       Evolution: 'Blastoise'
%   
%   This is Wartortle, the evolved form of Squirtle. Here, we can see that
%   Wartortle evolves into Blastoise. Now let's wrap this example up by
%   looking at one more structure:
%
%       Name: 'Blastoise'
%       Evolution: ''
%
%   This is Blastoise, the evolved form of Wartortle. Since the Evolution
%   field has an empty string as its value, we can infer that Blastoise 
%   does not evolve into another Pokemon. We can also say that Blastoise is 
%   the fully evolved form of Squirtle.
%
%   The output of the function should returns a cell array containing the
%   input Pokemon's name as well as the names of all Pokemon within the
%   input Pokemon's evolution line. The first cell of the output
%   contains the name of the input Pokemon while each subsequent cell must
%   contains the name of the Pokemon, if any, that the Pokemon from the 
%   previous cell evolves into, up to the input Pokemon's fully evolved 
%   form. For example, if given 'Squirtle' as the Pokemon's name for the 
%   second input, assuming that the Pokedex includes those three structures 
%   mentioned above, your function should return {'Squirtle', 'Wartortle', 
%   'Blastoise'}.
%   
%   However, if the second input cannot be found in the Name field of any 
%   structure from the Pokedex, then your function should output 
%   '<input name> is not a Pokemon.' as a string (not a cell!), with 
%   <input name> being replaced by the actual second input. 
%
%   Now, get going, and don't forget to do your best!
%
% Notes:
%   - This problem MUST be solved using structure concepts. Do not write a 
%     loop that contains, as of now, 649 conditionals (or 650 if you count
%     Missingno.).
%   - If a Pokemon listed in the Pokedex can evolve, the Pokedex is 
%     guaranteed to have all structure(s) pertaining to its evolution line.
%   - Structure(s) pertaining to a Pokemon's evolution(s) will not 
%     necessarily be located next to the structure pertaining to that
%     pre-evolved Pokemon in the Pokedex, nor will these Pokemon 
%     necessarily appear in the Pokedex in order from pre-evolved to fully 
%     evolved form.
%   - If an input Pokemon's name can be found in the Name fields of the 
%     Pokedex, but that Pokemon does not evolve into any other Pokemon, 
%     then the output should just be a single cell containing the input 
%     Pokemon's name.
%   - The Evolution field of a structure will never contain names of
%     multiple Pokemon.
%
% Test Cases:
% pokedex = struct('Name', {'Charizard','Riolu','Chandelure',...
%     'Aerodactyl','Lucario','Charmeleon','Murkrow','Lombre',...
%     'Honchkrow','Litwick','Lotad','Skarmory','Lampent','Charmander',...
%     'Ludicolo'}, 'Evolution', {'','Lucario','','','','Charizard',...
%     'Honchkrow','Ludicolo','','Lampent','Lombre','','Chandelure',...
%     'Charmeleon',''});
%
%     murkrow = evolvePokemon(pokedex, 'Murkrow')
%         CoolHatSir => {'Murkrow', 'Honchkrow'}
%
%     charmander = evolvePokemon(pokedex, 'Charmander')
%         charmander => {'Charmander', 'Charmeleon', 'Charizard'}
%
%     aerodactyl = evolvePokemon(pokedex, 'Aerodactyl')
%         aerodactyl => {'Aerodactyl'}
%
%     alwaysBetterThanYou = evolvePokemon(pokedex, 'Gary Oak')
%         alwaysBetterThanYou => 'Gary Oak is not a Pokemon.'
%
%==========================================================================
% PROBLEM 4. To Infinity and Beyond!
%--------------------------------------------------------------------------
%
% Function Name: findActionFigure 
% Inputs  (2): - (struct) A MxN structure array
%                         representing a vending machine with fieldnames
%                         'Name', 'Powers', and 'Price'
%              - (char)   A string representing the name of the item you
%                         want to purchase
% Outputs (3): - (char)   A string representing the location of the item in
%                         the  OR the string 'Item not
%                         found'
%              - (double) The price of the item you want to purchase OR if
%                         the item is not found, the number 0
%              - (char)   A string representing the powers of the action
%                         figure that you want to purchacse OR the string
%                         'Item not found'
%
%Function Description:
%   You just found the best vending machine ever! What does it have? Food?
%   Nope. Action figures. You want to buy one of your favorite super hero
%   (or villain), but first you need to figure out if it's there, what it
%   costs, and what powers that super hero (or villain) has. 
%
%   Write a function named "findActionFigure" that takes in a MxN structure
%   array representing a vending machine full of action figures and a
%   string representing the name of the item you want to purchase. The
%   function should return a string representing the location of the item
%   in the vending machine, as well as the price of the item and the power
%   of the super hero (or villain) the action figure represents. For
%   example, if there is a Spiderman action figure in the machine, the
%   powers would be 'Spider Powers'. If the item is not found in the
%   vending machine, the function should return the string 'Item not found'
%   for both Name and Powers outputs and a Price of 0.
%
%   As specified in the description of inputs, the vending machine
%   structure array will contain the fieldnames 'Name', 'Price', and
%   'Powers'. 
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
%   - To generate the vending machine structure array for the test cases,
%     two-files has been provided. To generate the machine right click on
%     the appropriate p-file and click 'Run' or copy and paste the code
%     below
%   
%
% Test Cases:  
% machine=makeMachineMarvel;
% 	[loc1 price1 powers1] = findActionFigure(machine, 'Hulk');
%       loc1 => 'A3'
%       price1 => 5
%       powers1=> 'Hulk Smash!'
%
% machine=makeMachineDC;
%   [loc2 price2 powers2] = findActionFigure(machine, 'Hulk');
%       loc1 => 'Item not found'
%       price2 => 0
%       powers2=> 'Item not found'
%
%==========================================================================
% PROBLEM 5. File...Destruct?
%--------------------------------------------------------------------------
% Function Name: file2struct
% Inputs  (1):  - (char)   the name of the file containing data in JSON
%                          format
% Outputs (1):  - (struct) A structure containing data from the file
%
% Function Description:   
%   Write a function called "file2struct" that takes in the filename of a
%   file in JSON format, reads the file, and returns a 1x1 structure
%   containing the data from the file. 
%
%   JSON is a text format that is replacing XML as the standard for
%   data-interchange between web applications. It is used to represent
%   name/value pairs of information, as well as ordered lists of values.
%   For more information on JSON, see the websites below:
%
% Websites:
%   - http://www.json.org/
%   - http://en.wikipedia.org/wiki/JSON
%
%   For this problem a slightly simplified version of JSON formatting will
%   be used.  
%   
% Basics:
%   - The file will start with an open curly brace "{" on a line by
%     itself.
%   - The data-containing lines will be formatted as shown below:
%
%       "<structure's fieldname>": <data contained in the field>,
%
%      and this is how it will need to be formatted in output structure.  
%    - If the data is of type char, then they will be enclosed in
%      *double quotes* (not two single quotes) in the file and will need to
%      likewise be of type char in the output structure. 
%    - If the data is numeric in the file, then it will need to be of type
%      double in the structure. 
%    - If the data is an array of strings or numbers, then the list of
%      numbers or strings will be enclosed in square brackets separated by
%      commas in the file. If it contains strings, then each string will
%      also be enclosed in double quotes. In the output structure, all
%      arrays of strings should be placed in a cell array, and all arrays
%      of numbers will be placed in a vector of type double. 
%   - The file will end with a closing curly brace "}" on a line by
%     itself.
%
%   For example, the text from the file:
%
%           {
%           "Field1": 14
%           "Field2": "Hello World"
%           "Field3": [1, 2, 3]
%           "Field4": ["A", "B", "C"]
%           }
%
%   would become the structure:
%
%   str = struct('Field1', 14, 'Field2', 'HelloWorld', 'Field3', [1 2 3]);
%   str.Field4 = {'A', 'B', 'C'};
%   
%   str = 
%     Field1: 14
%     Field2: 'HelloWorld'
%     Field3: [1 2 3]
%     Field4: {'A'  'B'  'C'}
%
% Notes:
%   - The data inside the file will only be a single integer,
%     a vector of integers, a single string, or an array of strings.
%   - The file will contain at least one name/value pair.
%   - The fieldnames in the file are guaranteed to be unique and valid.
%   - When you open the files in Notepad, the files may not appear to be 
%     formatted correctly. Instead, use MATLAB or Wordpad to open it to
%     understand how to best iterate through the file to create the
%     structure. 
%   - To make it easier, you can assume that the individual words that make
%     up a list in the file will contain no additional spaces. i.e. words
%     like 'Hello World', would be represented as 'HelloWorld' if contained
%     in a list. 
%
% Hints:
%   - You may find the functions isempty(), strfind(), and strtok() useful.
%
% Test Cases:
%   out1 = file2struct('apples.txt');
%   out1 => 
%          Types: {'RedDelicious'  'GrannySmith'  'SummerYellow'}
%   NumberPicked: 99
%
%  out2 = file2struct('Princesses.txt');
%  out2 =>  
%      Princess: {'Aurora' 'Belle' 'Cinderella' 'Tiana'}
% DateOfRelease: [1959 1991 1950 2009]
%        Oldest: 1950
%   MostPopular: 'Belle'
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
%
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.
