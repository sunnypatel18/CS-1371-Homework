function [bank name] = weakestLink(confidence, answers)


A = find(answers==0);%finds where all the answers are false
A = mod(A,6);%uses the mod function to find the remainder
Amy = 0;% sets the count to 0 for each person
Brad = 0;% sets the count to 0 for each person
Chris = 0;% sets the count to 0 for each person
Daisy = 0;% sets the count to 0 for each person
Erica = 0;% sets the count to 0 for each person
Fred = 0;% sets the count to 0 for each person

i = 1;
while i <= length(A)%finds the length of A
    
if A(i)==1 %if the remainder is 1 then amy gets one added to her count
    Amy = Amy +1;
elseif A(i)==2 %if the remainder is 2 then brad gets one added to his count
    Brad = Brad +1;
elseif A(i)==3; %if the remainder is 3 then chris gets one added to his count
    Chris = Chris +1;
elseif A(i)==4%if the remainder is 4 then daisy gets one added to her count
    Daisy = Daisy +1;
elseif A(i)==5;%if the remainder is 5 then erica gets one added to her count
    Erica = Erica +1;
elseif A(i)==0;%if the remainder is 0 then fred gets one added to his count
    Fred = Fred +1;
end
i = i+1;
end

names = [Amy Brad Chris Daisy Erica Fred];
[value pos] = max(names);%finds which player had the most questions wrong

if pos ==1 %same concept as above
    name = 'Amy';
elseif pos ==2
    name = 'Brad';
elseif pos ==3
    name = 'Chris';
elseif pos ==4
    name = 'Daisy';
elseif pos ==5
    name = 'Erica';
else
    name = 'Fred';
end


i = 6;
confidenceLine = confidence;

while i<length(answers)
    confidenceLine = [confidenceLine confidence];
    i = i + 6; %incorportes the confidence level for each player
end


ques = 1;
streak = 0;
bank = 0;
pool = 0;

while ques<=length(answers)
    if streak >=confidenceLine(ques) 
        bank = bank + pool;% calculates the total amount of money in the bank
        pool = 0;
    if answers(ques) 
        streak = 1;%creates a streak of the questions
    else
        streak = 0;% resets the streak
    end
    
    else
        if answers(ques) %calculates the pool of money as the streak increases
            streak = streak + 1;
            pool = 250 * (2 .^ (streak-1));
        else
            pool = 0;
            streak = 0;
        end
    end
    ques = ques + 1;
end


end