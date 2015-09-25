function [winner, spins, banked] = wheelOfFortune(phrase, board, letters, seed)


players = [1,2,3];
stillPlaying =  true;
x = 1;
spins = 0;
banked= [0,0,0];

while stillPlaying
    
    currentPlayer = players(x);
    if any(letters(1) == 'AEIOU');
        banked(currentPlayer) = banked(currentPlayer) -150;
        spinResult ='0';
    else
        spinResult = getSpin(seed, spins+1);
        spins = spins +1;
    end
    
    if strcmp(spinResult, 'bankrupt');
        x=x+1;
        if x>3;
            x=1;
        end
        banked(currentPlayer) = 0;
        continue;
    elseif strcmp(spinResult, 'lose-a-turn');
        x=x+1;
        if x>3
            x =1;
        end
        
        continue;
    else
        addThis = str2num(spinResult);
        
    end
    
    if ~any(letters(1) == phrase)
        x = x+1;
        if x>3
            x=1;
        end
    else
        board(phrase==letters(1)) = letters(1);
    end
    
    
    multiplyThis = length(find(letters(1) == phrase));
    banked(currentPlayer) = banked(currentPlayer) + addThis .*multiplyThis;
    
    letters(1) = [];
    currentPlayer = num2str(currentPlayer);
    if strcmp(board, phrase)
        winner = ['Player' currentPlayer];
        stillPlaying = false;
    end
        




end