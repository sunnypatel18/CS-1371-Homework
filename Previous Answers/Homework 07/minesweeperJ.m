
	function [newfieldfixed] = minesweeper(field)

    [rows cols] = size(field);
    newfield = cell(rows+2, cols+2)
    newfield(2:end-1,2:end-1) = field(1:end,1:end)
    for r = 2:rows+1
        for c = 2:cols+1
            count = 0
            if isempty(newfield{r,c})
                if newfield{r+1,c} == '*'
                    count = count+1
                end
                if newfield{r-1,c} == '*'
                    count = count+1
                end
                if newfield{r,c+1} == '*'
                    count = count+1
                end
                if newfield{r,c-1} == '*'
                    count = count+1
                end
                if newfield{r+1,c+1} == '*'
                    count = count+1
                end
                if newfield{r-1,c-1} == '*'
                    count = count+1
                end
                if newfield{r+1,c-1} == '*'
                    count = count+1
                end
                if newfield{r-1,c+1} == '*'
                    count = count+1
                end
                newfield{r,c} = num2str(count)
            end
        end
    end
    newfieldfixed = cell(rows, cols)
    newfieldfixed(1:end,1:end) = newfield(2:end-1,2:end-1)

end