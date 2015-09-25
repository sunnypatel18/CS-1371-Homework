function [probnotrotredapp, probnotrotgreenapp] = probability (redapp, greenapp, redrot, greenrot)
    
% Inputs are listed below
% redapp = the number of red apples in a bag
% greenapp = the number of green apples in a bag
% redrot = the percentage of red apples that are rotten
% greenrot = the percentage of green apples that are rotten


% Outputs are listed below
% probnotrotredapp = the probability of pulling a non-rotten red apple
% probnotrotgreenapp = the probability of pulling a non-rotten green apple

probnotrotredapp = ((redapp - (redapp.* (redrot./100)))/(redapp + greenapp)).*100;
% to find the probability of non-rotten red apples i first multiplied the
% percent of rotten red apples with the total number of red apples. that
% gave me the number of rotton red apples in the bunch. i took the total
% number of red apples and subtracted it from the rotten red apples to get
% the number of non rotten red apples. I then had to find the percentage of
% the non rotten red apples out of the bunch. The bunch consists of both
% green and red apples, so i divided by that. The homework assignment then
% told me that Percentages will be represented as a whole number so i
% multipied by 100. 

probnotrotgreenapp = ((greenapp - (greenapp.* (greenrot./100)))/(redapp + greenapp)).*100;

% to find the probability of non-rotten green apples i first multiplied the
% percent of rotten green apples with the total number of green apples. that
% gave me the number of rotton green apples in the bunch. i took the total
% number of green apples and subtracted it from the rotten green apples to get
% the number of non rotten green apples. I then had to find the percentage of
% the non rotten green apples out of the bunch. The bunch consists of both
% green and red apples, so i divided by that. The homework assignment then
% told me that Percentages will be represented as a whole number so i
% multipied by 100. 

end


