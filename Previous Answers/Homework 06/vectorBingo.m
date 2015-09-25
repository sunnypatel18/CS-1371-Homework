function [logic direction location] = vectorBingo(arr, vec)
    % First finds the size of the array & sorts rows and cols
    [rows columns] = size(arr)
    arrRowSort = sort(transpose((arr)))
    arrColSort = sort(arr)
    vecSort = sort(vec)
    % Now checks to see if vec matches any row in arr
    logic = false
    i = 1
    while (i <= rows) & (logic == false)
        logic = (arrRowSort(1:end, i) == transpose(vecSort))
        if all(logic)
            logic = true
            direction = 'across'
            location = i
        elseif ~logic
            logic = false
            direction = 'no bingo'
            location = 0;
        end
        i = i + 1
    end
    % Now change the vector to a column vector
    colVec = sort(transpose(vec))
    % And checks to see if any columns match
    i = 1
    logic = all(logic)
    while (i <= columns) & (logic == false)
        logic = (arrColSort(1:end, i) == colVec);
        if all(logic)
            logic = true
            direction = 'down'
            location = i
        elseif ~logic
            logic = false
            direction = 'no bingo'
            location = 0

        end
        i = i + 1;
    end
    % Now for the diagonals
    diagArr = sort(diag(arr));
    minDiagArr = sort((diag(arr(end:-1:1, 1:end))));
    if diagArr == colVec
        logic = true
        direction = 'diagonal'
        location = 1
    elseif minDiagArr == colVec
        logic = true
        direction = 'diagonal'
        location = 2
    elseif (diagArr ~= colVec) & (minDiagArr ~= colVec)
            logic = false
            direction = 'no bingo'
            location = 0
    end
    if ~all(logic)
        logic = false
        direction = 'no bingo'
        location = 0
    end
    
end