function [shiftedarray] = barrelShift (Arr, shift)

% Inputs  (2): Arr = (double) an array
%              shifts = (double) the number of times to shift the array
% Outputs (1): shifterarray = (double) the shifted array

shiftedarray = reshape(circshift(reshape(Arr, 1, numel(Arr)), [0, shift]), (numel(Arr) ./ length(Arr)), length(Arr));

% i first had to reshape the array with 1 row and the number of elements in
% the original as the number of columns. once i did that i used the syntax
% circchift shifting it amongst the columns and not the rowshence
% [0,shift]. once i did that i reshaped the array back to the original with
% the number of columns and the number of rows. 

end