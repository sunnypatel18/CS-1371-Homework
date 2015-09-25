function unfolded = arrayUnfold(arr)
    % mirrors the vector along the y axis
    flip1 = arr(1:end, end:-1:1);
    % combines the original array and its mirror
    mirror1 = [arr flip1];
    % mirrors the vector along the x axis (Step 3)
    flip2 = mirror1(end:-1:1,:);
    % combines the two mirrored images
    unfolded = [mirror1; flip2];
end