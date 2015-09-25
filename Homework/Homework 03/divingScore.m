function [finalscore] = divingScore(scores, difficulty)
% Inputs  (2): scores = (double) A vector of judge's scores for a single dive
%              difficulty = (double) the degree of difficulty of the dive performed
% Outputs (1): finalscore = (double) The final diving score

finalscore = (sum(scores)-min(scores)-max(scores))*difficulty;


%the final score consists of taking the judge's scores and dropping the
%minimum and maximum scores and then multiplying the difficulty. what i did
%was that i took the total of the scores given by all the judges and then i
%sutracted the minimum score and the maximum score. i took the answer of
%that and multiplied it by the difficulty. 
end
