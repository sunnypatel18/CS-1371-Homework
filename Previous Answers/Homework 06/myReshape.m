function arr = myReshape(in1, row, col)   
    % Finds the size of the input array
    [rows cols] = size(in1)
    int = []
    for r = 1:rows
        change = in1(r, 1:end)
        int = [int change]
    end
    int = int'
    int2 = ones(row,1)
    for rowA = (1:row:col*row)
        change2 = int(rowA:rowA+row-1, 1)
        int2 = [int2 change2]
    end
    int2(:,1) = []
    arr = int2    
end