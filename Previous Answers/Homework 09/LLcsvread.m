function cA = LLcsvread (fn)
    fh = fopen(fn, 'r');
    arr = {};
    go = true
    while go
        line = fgetl(fh);
        if ~ischar(line)
            break
        end
    arr = [arr; line];
    end
    [rows cols] = size(arr);
    cA = arr;
    for row = 1:rows
        newLine = arr{row, 1};
        count = 0;
        while ~isempty(newLine)
            [first newLine] = strtok(newLine, ',');
            count = count + 1;
            cA{row, count} = [first];
        end
    end
end