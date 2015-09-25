% PROBLEM 3.  Tip Before Tax or After?
%--------------------------------------------------------------------------
function [tipBefore tipAfter difference] = compareTips(subtotal, salesTax, tipPercentage)
a = subtotal .* (1 + .01 .* tipPercentage); %Where a is the total amount paid
tipBeforeRND = a - subtotal; %tipBeforeRND is the the tip before rounding to the nearest hundredth
tipBefore = (ceil(tipBeforeRND .* 100)) ./ 100;
%end of tipBefore
b = subtotal .* (1 + .01 .* salesTax); %Total with tax no tip
tipAfterRND = .01 .* tipPercentage .* b; %Tip unrounded
tipAfter = (ceil(100 .* tipAfterRND)) ./ 100;
%end of tipAfter
difference = tipAfter - tipBefore;
end
