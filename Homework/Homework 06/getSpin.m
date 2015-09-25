function spin = getSpin(seed, index)
    % Seed the random numbers and create a random number vector with
    % numbers between 1 and 20 that will turn into the spins.
    rand('seed', seed);
    possible = round(19 .* rand(1,150) + 1);
    ind = possible(index);
    % Get the current random spin
    spinCell = {'bankrupt', '300', '450', 'lose-a-turn', '1000', '750', '600', ...
        '250', 'bankrupt', 'lose-a-turn', '400', '1500', '1250', '550', '700', ...
        'lose-a-turn', '900', '500', '1300', '350'};
    spin = spinCell{ind};
end