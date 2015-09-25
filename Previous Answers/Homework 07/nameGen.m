function out = nameGen(in)
    % Isolates the first cell of first names
    firsts = in{1};
    
    % For each name entry, isolates the first letter and converts it to
    % a lowercase letter, then concatenates each first letter in a vector
    decap = [];
    for i = firsts
        name = i{1};
        letter = strtok(name, name(2));
        decap = [decap char(letter + 32)];
    end
    
    % Isolates the second cell entry
    lasts = in{2};
    
    % Converts all capital letters to lowercase and concatnates the capital
    % letters with the rest of the letters
    
    lastDecaps = [];
    for i = lasts
        strLasts = i{1};
        [lastFirst rest] = strtok(strLasts, strLasts(2));
        lastDecaps = [lastDecaps ' ' char(lastFirst + 32) rest];
    end
    
    % Sets the result ID vector to an empty vector
    iDs = [];
    % Concatnates the lowercase first letters, lowercase last names, and
    % numbers
    nums = in{3};
    vec = 1:length(nums);
    j = 1;
    for i = vec
        decaps = decap(j);
        [lastDecap rest] = strtok(lastDecaps, ' ');
        iD1 = [decaps lastDecap num2str(nums(i))];
        lastDecaps = rest;
        j = j + 1;
        iDs = [iDs iD1 ' ']
    end
    
    % Now that the IDs are in a vector, they need to be put into a cell
    % array
    out = {};
    
    for i = decap;
        [iD rest] = strtok(iDs, ' ')
        out = [out, iD]
        iDs = rest
    end
   
end