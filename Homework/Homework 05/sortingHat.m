function [house] = sortingHat(name,character)
brave = find(name=='G'|name=='g');
%makes sure 'g' is not case sensitive 
bravemult = length(brave);
loyal = find(name=='H'|name=='h');
%makes sure 'h' is not case sensitive 

loyalmult = length(loyal);
intel = find(name=='R'|name=='r');
%makes sure 'r' is not case sensitive 

intelmult = length(intel);
cun = find(name=='S'|name=='s');
%makes sure 's' is not case sensitive 

cunmult = length(cun);
%finds the length of cun
character(1) = character(1).*bravemult;
%multiplies the character to either the brave, loyal, intel, or cun
character(2) = character(2).*loyalmult;
%multiplies the character to either the brave, loyal, intel, or cun
character(3) = character(3).*intelmult;
%multiplies the character to either the brave, loyal, intel, or cun
character(4) = character(4).*cunmult;
%multiplies the character to either the brave, loyal, intel, or cun
maxcharacter = max(character);
% finds the max out of the characters
if character(1)==maxcharacter
    house = 'Gryffindor';
    % if character 1 wins the max this house wins
elseif character(2)==maxcharacter
    house = 'Hufflepuff';
        % if character 2 wins the max this house wins

elseif character(3)==maxcharacter
    house = 'Ravenclaw';
        % if character 3 wins the max this house wins

else
    house = 'Slytherin';
end
end
