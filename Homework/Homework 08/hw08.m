%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Name         : <Sunny Patel>
% GT Email     : <sunnypatel18@gatech.edu>
% Homework     : hw08
% Section      : <B05>
% Collaboration: <place here one of the following:
%                 "I worked on the homework assignment alone, using
%                  only course materials."
%                 >"
%
%
% Files provided with this homework:  
%   - hw08.m
%   - supply1.xls
%   - supply5.xls
%   - grades.txt
%   - grades_solution.xls
%   - groceryList.txt
%   - groceryList_solution.xls
%   - planeInfo1.xls
%   - planeInfo2.xls
%   - ABCs_HighLevelFileIO.m
%   - ABCs_cell_arrays.m
%
% Files to submit:
%   - hw08.m
%   - ABCs_HighLevelFileIO.m
%   - ABCs_cell_arrays.m
%   - nameGen.m
%   - iceSkate.m
%   - reStock.m
%   - txt2xls.m
%   - airTrafficControl.m
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
% Homework Video of the Week
% http://www.youtube.com/watch?v=WcMWnNcOxg4
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
%       - ABCs_HighLevelFileIO.m
%       - ABCs_cells_arrays.m
% ABCs File Testing:
%  >> ABCs_pretest_hw08
%
%==========================================================================
% PART 2. Drill Problems
%--------------------------------------------------------------------------
%
% The drill problems cover the following major topic(s):
%   - High Level Level File IO
%   - Cell Arrays
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
% PROBLEM 1. The Name Game
%--------------------------------------------------------------------------
%
% Function Name: nameGen
% Inputs  (1): - (cell)   cell array containing first and last names and a
%                         a vector of numbers   
% Outputs (1): - (cell)   cell array of GT usernames
%
% Function Description:
%   Given a nested cell array containing 2 cell arrays of first and last
%   names and a vector of doubles, write a function called "nameGen" that
%   creates a new cell array containing the corresponding GT usernames. The
%   first nested cell array contains the first names, the second nested
%   cell array contains the last names and the vector contains the
%   numbers. The format for the GT usernames is below:
%  
%           'First Letter of First Name + Last Name + Number'
%
% Note: 
%   - The output must be a cell array and each element must be a string.
%   - The nested cells and the vectors are guaranteed to be the same 
%     length.
%   - You may find the function 'num2str()' useful.
%
% Test Cases:
%   in1 = {{'David','Kristin','Olfisayo'},{'Smith','Marsicano','Omojunken'},
%       ...[6 7 1]};
%
%   in2 = {{'Emilio','Adrianna','Timothy'},{'Salazar','Carter','Philip'},
%       ...[3 35 3]};
%
%   out1 = nameGen(in1);
%       out1 => {'dsmith6','kmarsicano7','oomojunken1'}
%
%   out2 = nameGen(in2);
%       out2 => {'esalazar3','acarter35','tphilip3'}
%
%==========================================================================
% PROBLEM 2.  Figure-Eight Out!
%--------------------------------------------------------------------------
%
% Function Name: iceSkate
% Inputs  (1): - (cell)   An N x 4 cell array representing ice skaters and 
%                         the scores given to them by three judges for each
%                         of three different events     
% Outputs (2): - (cell)   A cell array identical to the input cell array
%                         but with a column for overall scores appended
%              - (char)   The name of the skater with the highest overall
%                         score
%
% Function Description:
%   Write a function named "iceSkate" that takes in a cell array
%   representing a group of ice skaters and their scores in three events
%   and outputs the same cell array with a column appended showing each
%   skater's overall score. The function should also output the name of the
%   winning skater, the skater with the highest overall score.
%
%   The input cell array will be given in the following format:
%
%   [{'Skater'}   {<Event1>}        {<Event2>}        {<Event3>}; 
%    {<Skater1>}  {<Score Vector>}  {<Score Vector>}  {<Score Vector>};
%    {<Skater2>}  {<Score Vector>}  {<Score Vector>}  {<Score Vector>}...]
%   
%   The three events are guaranteed to be the strings 'Short Program',
%   'Long Program', and 'Bonus Event', though they may appear in any order
%   in the second, third, and fourth columns. The skaters will be strings
%   representing the skaters' names. Finally, each score vector will
%   contain three double values, representing three judge's scores for a
%   given event. 
%
%   Each of the three judges scores for a given event are weighted equally
%   when determining a skater's average score for that event. However, the
%   scores for the three different events are weighted differently into a
%   skater's total score. In this function, the Short Program will be 
%   weighted 30% of a skater's overall score, the Long Program will be 
%   weighted 60%, and the Bonus Event will be weighted 10%.
% 
%   For example, consider the cell array:
%   [{'Skater'}  {'Long Program'}  {'Short Program'}  {'Bonus Event'};
%    {'Juliet'}  {[10, 9.5, 9]}    {[8, 9, 8.5]}      {[10, 10, 10]}]
%
%   Juliet's average scores for each event are 9.5, 8.5, and 10 for the
%   Long Program, Short Program, and Bonus Event respectively. To
%   calculate her overall score, we can add:
%
%                  9.5*0.6 + 8.5*0.3 + 10*0.1 = 9.25
%
%   All skaters' overall scores should be appended in a column titled
%   'Overall Score'.
%
%   Note:
%    - There may be any number of skaters.
%
%   Hint:
%    - You may find the function cell2mat() useful when determining the
%      winning skater.
%
% Test Cases:
%   ca1 = [{'Skater'}, {'Long Program'}, {'Short Program'}, {'Bonus Event'};...
%   {'Rachel'}, {[6 7 7]}, {[7 7 7.5]}, {[8.5 8 7.5]};...
%   {'Tara'}, {[9 8 7]}, {[8 8 8]}, {[9.5 9.5 8.5]};...
%   {'Anu'} {[10 10 9]}, {[9 9 8]}, {[4 5 5]}]
%
%  ca2 = [{'Skater'}, {'Bonus Event'}, {'Short Program'}, {'Long Program'};...
%   {'Nancy'}, {[10 7.5 8]}, {[8 9 9.5]}, {[8.5 8.5 8.5]};...
%   {'George'} {[10 8.5 9]}, {[9 9.5 8]}, {[10 10 10]}]
%
%	[newca1 winner1] = iceSkate(ca1)
%       newca1 => [{'Skater'}, {'Long Program'}, {'Short Program'},...
%                 {'Bonus Event'}, {'Overall Score'};...
%                 {'Rachel'}, {[6 7 7]}, {[7 7 7.5]}, {[8.5 8 7.5]} {6.95};...
%                 {'Tara'}, {[9 8 7]}, {[8 8 8]}, {[9.5 9.5 8.5]} {8.1167};...
%                 {'Anu'} {[10 10 9]}, {[9 9 8]}, {[4 5 5]} {8.8667}]
%       winner1 => 'Anu'
%
%	[newca2 winner2] = iceSkate(ca2)
%       newca2 => [{'Skater'}, {'Bonus Event'}, {'Short Program'},...
%                 {'Long Program'}, {'Overall Score'};...
%                 {'Nancy'}, {[10 7.5 8]}, {[8 9 9.5]}, {[8.5 8.5 8.5]}...
%                 {8.6};...
%                 {'George'} {[10 8.5 9]}, {[9 9.5 8]}, {[10 10 10]} {9.5667}]
%       winner2 => 'George'
%
%==========================================================================
% PROBLEM 3.  Have a Coke and a Smile :)
%--------------------------------------------------------------------------
%
% Function Name: reStock
% Inputs  (2): - (char) A filename of an Excel file containing 
%                       the current stock of a grocery store
%              - (cell) A cell array containing the stores and the aisles
%                       that need to be checked
% Outputs (1): - (cell) A cell array containing the grocery stores that
%                       need to be restocked
%
% Function Description:
%   You are working as an intern at Coca-Cola (who's CEO is a Georgia Tech
%   graduate!) when you're assigned a project to determine which grocery
%   stores in the local area need to be restocked with Coca-Cola products.
%   Write a function called "reStock" that takes in information on local
%   grocery stories and their supplies and outputs a cell array of the
%   stores that need restocking. 
%
%   You are given two items of information:
%    
%   1. A cell array containing the grocery stores and the aisle numbers 
%      that Coca Cola products are located on that specific store.
%    
%   2. An Excel file containing the current stock of ALL the aisles in each
%      grocery store. The aisle number corresponds to row numbers in the
%      array, not including the first row. (The first row is
%      the store names.) An 'x' means the it is full, and an '' means it
%      needs to be restocked. 
%
%   For each grocery store, check each aisle in the spreadsheet to see
%	whether that grocery store needs to be restocked.  If any of the aisles
%	which contain Coke products are not full, then that grocery store needs
%	be restocked.  
%
%  The cell array will be in the following format:
%
%     {'Publix'   'Kroger'  'Wal-Mart'
%         1          2          5
%         2          6          1
%         4          5          4 }
% 
%	The Excel file will be in the following format:
%    
%        'Publix'      'Kroger'    'Wal-Mart'
%           'x'           'x'         'x'    
%           ''            ''          'x'
%           'x'           'x'         'x' 
%           ''            'x'         'x'
%           'x'           'x'         'x'
%           ''            'x'         '' 
%
%    Using this case as an example, both 'Publix' and 'Kroger' need to be
%    restocked with Coke products, so the output would look like:
%       
%       => {'Publix', 'Kroger'}
%
% Notes: 
%   - The Excel file can contain any number of rows and columns.
%
% Test Cases:
%  cArr1 = {'Publix','Kroger','Wal-Mart','Trader Joes';4,10,8,1;
%           5,12,7,2;9,3,12,6;13,2,10,7};
%  cArr2 = {'Publix','Kroger','Wal-Mart','Trader Joes'; 1,2,1,7;
%     10,3,14,9; 11,6,13,10; 3,10,10,1; 4,14,8,3; 5,11,9,14};
%                     
%  a = reStock('supply1.xls',cArr1);
%       a => {'Publix','Kroger}
%
%  b = reStock('supply1.xls',cArr2);
%       b => {'Kroger','Wal-Mart'}
%   
% =========================================================================
% PROBLEM 4.   Data Type Conversion
% -------------------------------------------------------------------------
% 
% Function Name: txt2xls
% Inputs  (1): - (char) The name of a .txt file containing grades
% Outputs (0): - None
%
% Output files (1): a .xls file containing the information from the .txt
%                   file
%
% Function Description:
%   Given a text (.txt) file containing comma separated values, write a
%   function called "txt2xls" that re-writes the values into an excel
%   (.xls) file. The first input is the file to read and the output will be
%   an excel file with the same name (ie. grades.txt should become
%   grades.xls). The values in the text file will always be in the
%   following format:
% 
%      <Header1>: <item1a>, <Header2>: <item2a>, ..., <HeaderN>: <itemNa>
%      <Header1>: <item1b>, <Header2>: <item2b>, ..., <HeaderN>: <itemNb>
% 
%   The headers should appear in the first row of the excel file only as
%   the header (see grades_solution.xls). Each item should remain under the
%   appropriate header in the excel file. Each line in the text should be
%   it's own row in the excel file. You are guaranteed that the same
%   headers and number of items will appear on each line. 
%
%   Example Excel Output:
%
%   <Header1>  <Header2>   .     .    <HeaderN>
%   <item1a>   <item2a>    .     .    <itemNa>
%   <item1b>   <item2b>    .     .    <itemNb>
%   .          .           .     .    .
%   .          .           .     .    .
%   .          .           .     .    .
%   <item1N>   <item2N>    .     .    <itemNN>
%   
% Notes:
%   - Make sure that there are no spaces before the header.
% 
% Test Cases:
%   txt2xls('grades.txt')
%     => 'grades.xls' should look like 'grades_solution.xls'
%
%   txt2xls('groceryList.txt')
%     => 'groceryList.xls' should look like 'groceryList_solution.xls'
%
% =========================================================================
% PROBLEM 5.   "Come in Traffic Control.  Traffic Control?  Hello?"
% -------------------------------------------------------------------------
% 
% Function Name: airTrafficControl
% Inputs  (3): - (cell)   A NxN cell array containing the data from your
%                         air traffic radar
%              - (char)   The name of a file containing information on planes
%              - (double) The distance between neighboring cells
% Outputs (1): - (cell)   A cell array of the order the planes will land
% 
% Function Description:
%   "Come in Traffic Control. We are headed your way and will be there in T
%   minus 33 minutes. Will there be runway space available?"
%
%   You are the Air Traffic Control. Your mission, is to make sure all the
%   planes land in your airport safely. In order for this to happen, you
%   must tell each plane the order that they need to land in.
%
%   Write a function called "airTrafficControl" that takes in a cell array
%   representing the air traffic radar, the filename of an Excel file that
%   has data on each specific plane and how fast it travels, and a number
%   representing the distance between neighboring cells, output a cell
%   array of the order the planes will land in.
%
%   The input cell array (from now on refered to as radar) will be of size
%   NxN, where N will always be odd. You, as the air traffic controller,
%   will ALWAYS be located in the center of the radar (hence why the radar
%   will always be square). For example if the radar is a 3x3 cell array,
%   you would be at (2,2), or the center. It will be represented by the
%   string 'ATC'. Each plane will be represented by a 3-4 letter code. If a
%   cell contains neither the airport OR an airplane, it will just be an
%   empty cell which looks like this: {[]}
%
%   Example:
%
% 
%        []    'BMOC'    []    []     'SWA'    
%        []        []    []    []     []  
%        []        []   'ATC'  []     []  
%        'MOA'     []    []    []     'DLT'  
%        []        []    []    []     []  
%  
% 
%   The distance between cells is a given input, and applies if the plane
%   is flying to left/right or above/below. For example, if that input is
%   25 miles, the the distance between the cell located at (1,1) and the
%   cell located at (2,1) is 25 miles. However, the distance between cell
%   (1,1) and cell (2,2) is described by the Pythagorean Theorem, and would
%   give an answer of 35.35 miles.
%
%   The input Excel file will have two columns: the first column will
%   contain the abbreviated codes of the airplanes and the second column
%   corresponds to the speeds those planes travel. After figuring out the
%   distance each plane needs to travel, you will use it's speed to figure
%   out its arrival time. 
%
%   After determining the arrival times of each plane, you will output a
%   cell array that lists the order each plane will arrive, from shortest
%   arrival time to longest arrival time. 
%
%   So if airplane 'ABBA' is 2.42 hours away, and 'YOLO' is 1.54 hours
%   away, then the output would be:
%       =>{'YOLO', 'ABBA'}
%
% Notes: 
%   - Multiples of the same plane code can exist in the radar multiple
%     times. 
%   - We are measuring distance "as the bird flys".  You want to
%     find the straightest path to the airport. You may find the
%     pythagorean theorem useful
%   - The outputs will be a cell array of the airplane abbreviations. 
%   - Time = Distance / Speed
%
% Example of input file:
%   - A couple examples of the input file have been given to you. They are
%     ordered by the first column being the plane abbreviation, and the
%     second column being the speed of that plane (in miles per hour). The
%     number of planes, the abbreviations of planes, the order of the
%     planes, and the speeds of the planes can change, so you need to
%     actually use data from the spreadsheet, not hard-coded values.
% 
% Test Cases:
%   radar1 = cell(15);
%   radar1(8,8) = {'ATC'};
%   radar1([61, 15, 19, 87, 151, 187, 221, 107]) = {'BMOC', 'ABBA', ...
%         'MOAB', 'AARP', 'YOLO', 'TIC', 'TAC', 'YAK'};
%   file1 = 'planeInfo1.xls';
%   cellDist1 = 50;
% 
%   radar2 = cell(9);
%   radar2(5,5) = {'ATC'};
%   radar2([2, 9, 34, 65, 78]) = {'MOAB', 'YOLO', 'VISA', 'AWOL', 'YOLO'};
%   file2 = 'planeInfo2.xls';
%   cellDist2 = 350;
%
%   out1 = airTrafficControl(radar1, file1, cellDist1);
%     out1 => {'AARP', 'BMOC', 'ABBA', 'YOLO', 'TIC', 'YAK', 'TAC', 'MOAB'}
%
%   out2 = airTrafficControl(radar2, file2, cellDist2);
%     out2 => {'YOLO', 'VISA', 'YOLO', 'MOAB', 'AWOL'}
%
%==========================================================================
% FINISHED!!!
%--------------------------------------------------------------------------
% Congratulations, you've finished this homework assignment.  Before you
% turn in your code be sure you have tested it throughly.  Once you've
% tested it you may submit it to T-square.  Be sure all files are submitted
% with the correct filenames.