function [curved] = balanceGrades(array, avg)

    mArray = mean(mean(array));
        % mArray finds the average for the whole array
    add = avg - mArray;
        % add is the differnce between the desired average and the average
        % of the original array
    curved = add + array;
        % adds the difference between the desired average and the input
        % array's average to the original array
end