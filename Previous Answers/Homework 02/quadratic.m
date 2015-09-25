function[plus minus] = quadratic(A,B,C)
plus = ((-1) .* B + sqrt(B .^ 2 - 4 .* A .* C)) ./ (2 .* A);
minus = ((-1) .* B - sqrt(B .^ 2 - 4 .* A .* C)) ./ (2 .* A);

end
% Function quadratic uses inputs A, B, and C to solve the quadratic formula
% in the form
%                Ax^2 + Bx + C