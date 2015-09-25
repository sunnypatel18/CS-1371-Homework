function poke = iChooseYou(yours, rivals)
    switch yours
        case 'Bulbasaur'
            if strcmp(rivals, 'Charmander')
                poke = 'This will be difficult...';
            else
                poke = 'No sweat!';
            end
        case 'Charmander'
            if strcmp(rivals, 'Squirtle')
                poke = 'This will be difficult...';
            else
                poke = 'No sweat!';
            end
        case 'Squirtle'
            if strcmp(rivals, 'Bulbasaur')
                poke = 'This will be difficult...';
            else
                poke = 'No sweat!';
            end
    end
end
