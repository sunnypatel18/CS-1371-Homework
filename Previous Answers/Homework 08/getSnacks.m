function [newMachine ordersMade] = getSnacks(str, items, cash)

    % Establish the orders made structure
    ordersMade = struct('item', {}, 'quantity', []);
    % First sort the items we want by their price
    wantedPrices = [items.price];
    [orderedPrices priceLocs] = sort(wantedPrices, 'descend');

    % Now we have the indicies for the prices in highest to lowest order,
    % and a vector with the prices in descending order.
    
    % We need to find where the first item is in the machine and define its
    % price
    pricevec = [];
    for i = 1:length(priceLocs)
        snack = [items(priceLocs(i)).item];
        priceloc = find(strcmp(snack, {str.item}));
        price = [str(priceloc).price];
        pricevec = [pricevec price];
        ordersMade(i).item = snack;
    end
    
    % Now we have a vector listing the price of each item we want to buy.
    % We can use this to subtract the price 'quantity' times from the cost,
    % and update the machine's quantity.
    
    for n = 1:length(priceLocs)
        quantity = [items(priceLocs(n)).quantity];
        u = 1;
        while u <= quantity
            if cash < pricevec(n)
                break
            end
            snack = [items(priceLocs(n)).item];
            quantloc = find(strcmp(snack, {str.item}));
            str(quantloc).quantity = (str(quantloc).quantity - 1);
                if str(quantloc).quantity < 0
                    str(quantloc).quantity = 0;
                    break
                end
            cash = cash - pricevec(n);
            ordersMade(n).quantity = u;
            u = u + 1;
        end
    end
    a = ordersMade(1).quantity
    if isempty(a)
        ordersMade = [];
    end
    
    
  newMachine = str;
  
end