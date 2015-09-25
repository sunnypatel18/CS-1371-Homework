function mixedUp = allMixedUp ( v1, v2 )
% takes 'v1' and 'v2' and returns a vector where [v1(1) v2(1) v1(2) ...]
% and any length discrepencies are filled with zeros
% usage: mixedUp = allMixedUp ( v1, v2 )

maxLength = max( [length(v1) length(v2)] );
% returns length of the longer vector, v1 or v2

zeroFillOne = zeros(1, maxLength - length(v1));
zeroFillTwo = zeros(1, maxLength  - length(v2));
% creates a row vector with the zeros needed on the end of v1 or v2
% at least one zeroFill vector will always be empty

new_v1 = [v1(1:end) zeroFillOne];
new_v2 = [v2(1:end) zeroFillTwo];
% adds the zeros to one or neither vectors so that we can work with vectors
% of equal lengths

mixedUp = zeros( 1, 2 .* maxLength);
% initializes mixedUp by zero-filling to proper length

mixedUp(1:2:end) = new_v1;
% adds v1 values to mixedUp

mixedUp(2:2:end) = new_v2;
% adds v2 values to mixedUp, completing the function

