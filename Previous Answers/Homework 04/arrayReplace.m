function out1 = arrayReplace(arr1, arr2, num)
    % Create an index vector of the values of num
    mask1 = find(arr1 == num);
    % Replaces the values from arr2 with those from arr1
    arr1(mask1) = arr2(mask1);
    % Sets the output
    out1 = arr1
end