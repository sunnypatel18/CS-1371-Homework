subtotal = 101.68; %subtotal of the bill
taxpercentage = .0975; %amount of tax charged. changed the percent into decimal format
tippercentage = .2; %amount of tip given. changed the percent into decimal format

tipBefore = subtotal * tippercentage; %multiply the tip percent with the subtotal to get tipBefore
tipAfter = ((subtotal * taxpercentage)+ subtotal )* tippercentage; %find the cost of the tax and then add that to the subtotal and then you multiply that by the tip percentage
difference = tipAfter - tipBefore; %simply subtract tipBefore from tipAfter