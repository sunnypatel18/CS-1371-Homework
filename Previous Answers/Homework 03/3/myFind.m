function [queryIndex noMatch] = myFind ( vector , query )
% takes 'vector' and looks for 'query' - returns index value(s) of 'vector' where 'query' can be found and a
% vector with the numbers from 'vector' that did not match 'query'
% usage: [queryIndex noMatch] = myFind ( vector , query )


logicalIndex = (vector == query);
% creates a logical index where true when the value of 'vector' = the
% 'query'

indexVec = 1:length(vector);
% creates a vector equal in length to 'vector' where the value is the index value

queryIndex = indexVec(logicalIndex);
% uses locigalIndex to return index values of 'vector' where 'vector' equals
% 'query'

noMatch = vector( vector ~= query);
% returns the values in 'vector' that are not equal to 'query' 

end
