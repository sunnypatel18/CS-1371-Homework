function [out1] = isMagic(ar1)
    % Finds the magic number of the particular array of a certain length
    M = (length(ar1) .* (length(ar1) .^2 + 1)) ./ 2;
    % Returns a vector made of the sums of each row in ar1    
    vecSumRows = sum(ar1);
    % Transposes the vector and sums the rows, which returns the sum of the
    % columns
    vecSumColumns = sum(ar1');
    % Takes the sum of the diagonal of the vector
    sumDiag = sum(diag(ar1));
    % Takes the sum of the minor diagonal of the vector
    sumMinDiag = sum(diag(ar1(end:-1:1,1:end)));
    % Creates a vector of the sums of each row, column, and diagonal
    sumsVec = [vecSumRows vecSumColumns sumDiag sumMinDiag];
    % Creates a logial vector displaying which values are equal to M
    logic = sumsVec == M;
    % Tests if all values are true
    out1 = all(logic);
end