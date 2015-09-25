function [new_walletarr coins_used] = payMachine(wallet, name, cost)
    % First matches the position of the wallet to the name
    namesList = {wallet.name};
    log = strcmp(name, namesList);
    ndx = 1:length(log);
    location = ndx(log);
    
    % Because the position of the name corresponds to the positions of the
    % coins, we know what coins are in the person's wallet.
    
    % Now let's define what coins are in the wallet
    
    quarters = wallet(location).quarters;
    dimes = wallet(location).dimes;
    nickels = wallet(location).nickels;
    pennies = wallet(location).pennies;
    
    change = [quarters dimes nickels pennies];
    
    % Find the total amount of money in the wallet, and compare it to the
    % price
    
    cashvec = [(quarters.*.25) (dimes.*.1) (nickels.*.05) (pennies.*.01)];
    cash = sum(cashvec);

    if cash < cost
        coins_used = 'You don''t have enough money';
        new_walletarr = wallet;
    else
    used = struct('quarters', 0, 'dimes', 0, 'nickels', 0, 'pennies', 0);
    while cost > 0
        while quarters > 0
            if cost <= 0
                break
            end
            cost = cost - 0.25;
            cash = cash - 0.25;
            quarters = quarters - 1;
            used.quarters = used.quarters + 1;
        end
        while dimes > 0
            if cost <= 0
                break
            end
            cost = cost - 0.10;
            cash = cash - 0.10;
            dimes = dimes - 1;
            used.dimes = used.dimes + 1;
        end
        while nickels > 0
            if cost <= 0
                break
            end
            cost = cost - 0.05;
            cash = cash - 0.05;
            nickels = nickels - 1;
            used.nickels = used.nickels + 1;
        end
        while pennies > 0
            if cost <= 0
                break
            end
            cost = cost - 0.01
            cash = cash - 0.01
            pennies = pennies - 1
            used.pennies = used.pennies + 1
        end
    end
        wallet(location).quarters = quarters;
    wallet(location).dimes = dimes;
    wallet(location).nickels = nickels;
    wallet(location).pennies = pennies;
    
    new_walletarr = wallet;
    coins_used = used;
    end
end