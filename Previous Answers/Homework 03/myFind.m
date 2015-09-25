function[location nomatch] = myFind(vec1, num)
 A = length(vec1); % A is the length of the input vector
 B = 1:A; % B returns a vector from 1 to the last index of vec1
 logic = vec1 == num; % logic returns a vector displaying true for all values = to num
 location = B(logic);
 nomatch = vec1(~logic);
end