function [plussol , minussol] = quadratic (A, B, C)
% Inputs are listed below
% A is the coefficient of the x^2 term
% B is the coefficient of the x term
% C is the coefficient of the constant

% Outputs are listed below
% plussol is the positive solution of the quadratic equation
% minussol is the negative solution of the quadratic equation

plussol =(-B + sqrt(B^2-(4.*A.*C)))./(2.*A); 

%the positive solution equal to the positive part of the quadratic equation

minussol = (-B - sqrt(B^2-(4.*A.*C)))/(2.*A);

%the negative solution equal to the negative part of the quadratic equation

end