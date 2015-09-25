% PROBLEM 2.  I Like Big Vectors And I Cannot Lie
%--------------------------------------------------------------------------
function[mix] = sirMixALot(vec1, vec2)
len1 = length(vec1);
len2 = length(vec2);
mixLength = max([len1 len2]); 
zeroMix = zeros(1,(2 .* mixLength)); %takes the longer vector and doubles its length
zeroMix(1:2:len1 .* 2) = vec1;
zeroMix(2:2:len2 .* 2) = vec2;
mix = zeroMix;
end