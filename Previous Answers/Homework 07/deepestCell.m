 function [ndx depth] = deepestCell(c)  
    % First set up a vector of zeros that will change based on how many {
    % are in c

    num = zeros(1, length(c))
    
    % Loop checks for the class of the blocks in ca, and adds one to
    % num each time the class is a cell
    
    for i = 1:length(c)
        while iscell(c{i})
            num(i) = num(i)+1
            c(i) = c{i}
        end
    end
    
    % The index will be the location of the highest value of num, which is
    % the cell array with the most braces
    [depth ndx] = max(num)

 end