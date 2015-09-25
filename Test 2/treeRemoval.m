function [updatedMap, trees] = treeRemoval(filename, map)

[num txt raw] = xlsread(filename);
x=1;
[rows cols] = size(num);
count = 0;

while x <= rows
    y = rows+1;
    while y < rows*cols 
        if strcmp(map(num(x), num(y)), 'o');
            map{num(x), num(y)} = 'x';
            count = count +1;
        end
        y = y+1;
    end
    x = x+1;
end

trees = count;
updatedMap = map;

end