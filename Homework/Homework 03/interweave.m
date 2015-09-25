function[mix] = interweave(vec1, vec2)

% Inputs  (2): vec1 =  (double) A 1xN vector of numbers
%              vec2 =  (double) A 1xN vector of numbers
% Outputs (1): mix  =  (double) A vector of the two vectors mixed together

len1 = length(vec1);%finds the length of vector 1

len2 = length(vec2);%finds the length of vector 2

mixLength = max([len1 len2]); %finds the largest length out of the 2 vectors. 
zeroMix = zeros(1,(2 .* mixLength)); %takes the longer vector and doubles its length and fills the open spots with zeros
zeroMix(1:2:len1* 2) = vec1;%adds a gap between every other number starting with 1 and goes up to the max length of vector 1
zeroMix(2:2:len2* 2) = vec2;%adds a gap between ever other number starting with 2 and goes up to the max length of vector 2

mix = zeroMix;%combines the 2 vectors and outputs the new long vector
end