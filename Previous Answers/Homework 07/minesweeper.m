function numboard = minesweeper(board)
    
    % Outline the boad with empty vectors
    [rows cols] = size(board);
    eRows = rows + 2;
    eCols = cols + 2;
    emptyBoard = cell(eRows, eCols);
    
    emptyBoard(2:end-1,2:end-1) = board(1:end,1:end);
    
    % Now check the boxes for mines
    for i = 2:rows + 1
        for j = 2:cols + 1
            count = 0
            if isempty(emptyBoard{i,j})
                if emptyBoard{i + 1, j} == '*'
                    count = count + 1
                end
                if emptyBoard{i + 1, j + 1} == '*'
                    count = count + 1
                end
                if emptyBoard{i, j + 1} == '*'
                    count = count + 1
                end
                if emptyBoard{i - 1, j + 1} == '*'
                    count = count + 1
                end
                if emptyBoard{i - 1, j} == '*'
                    count = count + 1
                end
                if emptyBoard{i - 1, j - 1} == '*'
                    count = count + 1
                end
                if emptyBoard{i, j - 1} == '*'
                    count = count + 1
                end
                if emptyBoard{i + 1, j - 1} == '*'
                    count = count + 1
                end
                emptyBoard{i,j} = num2str(count)
            end
        end
    end
        numboard = cell(rows, cols)
        numboard(1:end,1:end) = emptyBoard(2:end-1,2:end-1)

end