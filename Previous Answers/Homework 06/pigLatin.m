function trans = pigLatin(str)
    % Creates a cell array of vowels and consonants
    vowels = ['a' 'e' 'i' 'o' 'u'];
    a = str
    trans = []
    remainder = str
    concatnated = []
    [a remainder] = strtok(remainder, ' ')
     while (~isempty(a))
    % Starts by checking if the word starts with a vowel of consonant
        if a(1) ~= vowels
            [b remain] = strtok(a, vowels)
            two = [b 'ay']
            one = [remain '-']
            word = [one two]
    % If not, it will add '-ay' to the end of the word
        else
            word = [a '-way']
        end
        [a remainder] = strtok(remainder, ' ')
        trans = [trans ' ' word]
     end
        trans(1) = []
        
        
end