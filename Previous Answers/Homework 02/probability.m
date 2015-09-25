function [red1 green1] = probability(totalRed, totalGreen, rotRed, rotGreen)
rotRed = (.01 .* rotRed .* totalRed); %Number of rotten red apples
red1 = ((totalRed - rotRed) ./ (totalRed + totalGreen)) .* 100; %Probability of getting a red apple that isn't rotten

rotGreen = (.01 .* rotGreen .* totalGreen); %Number of rotten green apples
green1 = ((totalGreen - rotGreen) ./ (totalRed + totalGreen)) .* 100; %probability of picking a nonrotten green apple
end