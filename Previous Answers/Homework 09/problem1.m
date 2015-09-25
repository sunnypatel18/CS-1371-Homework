% Function Name: payMachine2
% Inputs  (3): - (struct)      A 1xN structure array representing a
%                              the contents of a wallet
%              - (char)        A string representing a person's name
%              - (double)      The cost of the purchase
% Outputs (2): - (struct)      A 1xN structure array similar to the input
%                              structure array, updated to reflect the 
%                              purchase
%              - (struct/char) A 1x1 structure with the fields 'quarters',
%                              'dimes', 'nickels', and 'pennies' OR the
%                              string 'You don't have enough money'