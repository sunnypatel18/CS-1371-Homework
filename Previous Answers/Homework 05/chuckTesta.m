function CT = chuckTesta(str)
switch str

    case {'deer', 'coyote', 'pheasant'}
        CT = 'Nope, Chuck Testa.';

    case {'cat', 'dog', 'hamster', 'fish'}
        CT = 'Chuck Testa does not taxadermize pets.';

    otherwise
        CT = 'The animal was alive!';
end