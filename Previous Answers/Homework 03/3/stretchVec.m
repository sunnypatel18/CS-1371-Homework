function outVec = stretchVec ( inVec , scale )
% takes an input vector and stretches or compresses by the scaling factor.
% Rounds the stretched vector length after multiplying the length of the input vector and the scale 
% usage: outVec = stretchVec ( inVec , scale )

outVecLength = round(scale .* length(inVec) );
% determines the desired output length, rounds to nearest integer

indexVector = round( linspace( 1, length(inVec), outVecLength));
% creates a numerical index vector of length determined above by evenly distributing numbers in the
% linear space between 1 and the length of inVec. 

outVec = inVec(indexVector);
% indexes inVec at with indexVector to pull correct values and put in
% outVec

end


