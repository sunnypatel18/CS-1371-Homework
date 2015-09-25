% PROBLEM 3. Quadratic Formula
%--------------------------------------------------------------------------
% 
% Script Name: quadratic 
% Script Outputs (2): plus_sol  (double) The plus solution from the 
%                                        quadratic formula
%                     minus_sol (double) The minus solution from the
%                                        quadratic equation
% Script Description:
%   Write a script called "quadratic" that uses the coefficients A, B, and
%   C of a quadratic equation in the form
%
%                              Ax^2 + Bx + C = 0
%
%   and then applies the quadratic formula to find the two solutions of the
%   equation. Name the first output from the 'plus' solution of the
%   plus-or-minus part of the equation "plus_sol", and name the second
%   output from the 'minus' solution "minus_sol".
%
% Inputs:
A = 4;
B = -10;
C = 4;
%
% Outputs:
%   - plus_sol: 2
%   - minus_sol: 0.5

plus_sol = (-B + sqrt(B^2-4*A*C))/(2*A);
minus_sol = (-B - sqrt(B^2-4*A*C))/(2*A);