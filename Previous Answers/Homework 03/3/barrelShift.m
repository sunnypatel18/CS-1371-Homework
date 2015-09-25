function shifted = barrelShift ( inVec, shift )
% takes a vector and moves digits by a number of positions indicated by
% 'shift' ... shift also indicates direction by neg/pos
% usage: shifted = barrelShift ( inVec, shift )

realShift = mod( shift , length(inVec) );
% simplifies shift needed to less than 


part1 = inVec((length(inVec)- realShift+1):end);
part2 = inVec(1:(length(inVec)-realShift));
% splits inVec into two parts

sizeIn= size(inVec);
numCols = sizeIn(2);
% determines number of colums in inVec to see if it is a column or row
% vector

if numCols > 1
    shifted = [part1 part2];
    % if inVec is a row vector then concatenate parts 1 and 2 in row form

else
    shifted = [part1 ; part2];
    % if inVec is a column vector then concatenate parts 1 and 2 in column form


% recieved help after finishing that suggested setting the output vector
% equal to the input vector

end