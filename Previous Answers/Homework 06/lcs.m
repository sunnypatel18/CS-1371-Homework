function len = lcs(str1, str2)    
    arr = [];
    for j = 1:length(str1)
        for i = 1:length(str2)
            if str1(j) == str2(i)
                if i == 1 | j == 1
                    arr(i, j) = 1;
                else
                    arr(i, j) = arr(i-1, j-1) + 1;
                end
            else
                arr(i, j) = 0;
            end
        end
    end
    len = max(max(arr));
end